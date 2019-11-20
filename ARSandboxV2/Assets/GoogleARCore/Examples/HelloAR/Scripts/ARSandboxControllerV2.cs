namespace GoogleARCore.Examples.HelloAR {
    using System.Collections.Generic;
    using GoogleARCore;
    using GoogleARCore.Examples.Common;
    using UnityEngine;
    using UnityEngine.EventSystems;
    using UnityEngine.UI;

#if UNITY_EDITOR
    // Set up touch input propagation while using Instant Preview in the editor.
    using Input = InstantPreviewInput;
#endif

    /// <summary>
    /// Controls the HelloAR example.
    /// </summary>
    public class ARSandboxControllerV2 : MonoBehaviour {
        /// <summary>
        /// The first-person camera being used to render the passthrough camera image (i.e. AR
        /// background).
        /// </summary>
        public Camera FirstPersonCamera;

        /// <summary>
        /// A prefab to place when a raycast from a user touch hits a vertical plane.
        /// </summary>
        public GameObject GameObjectVerticalPlanePrefab;

        /// <summary>
        /// A prefab to place when a raycast from a user touch hits a horizontal plane.
        /// </summary>
        public GameObject GameObjectHorizontalPlanePrefab;

        /// <summary>
        /// A prefab to place when a raycast from a user touch hits a feature point.
        /// </summary>
        public GameObject GameObjectPointPrefab;

        /// <summary>
        /// The rotation in degrees need to apply to prefab when it is placed.
        /// </summary>
        private const float k_PrefabRotation = 180.0f;

        /// <summary>
        /// True if the app is in the process of quitting due to an ARCore connection error,
        /// otherwise false.
        /// </summary>
        private bool m_IsQuitting = false;

        //[HideInInspector]
        //public bool planeDetected = false;
        private bool noPlaneExists = true;
        [HideInInspector]
        public Vector3 planePosition;
        private GameObject arObject;
        private Anchor anchorObject;
        public GameObject debugTextObject;

        /// <summary>
        /// The Unity Awake() method.
        /// </summary>
        public void Awake() {
            // Enable ARCore to target 60fps camera capture frame rate on supported devices.
            // Note, Application.targetFrameRate is ignored when QualitySettings.vSyncCount != 0.
            Application.targetFrameRate = 60;
        }

        /// <summary>
        /// The Unity Update() method.
        /// </summary>
        public void Update() {
            _UpdateApplicationLifecycle();

            // If the player has not touched the screen, we are done with this update.
            Touch touch;
            if (Input.touchCount < 1 || (touch = Input.GetTouch(0)).phase != TouchPhase.Began) {
                return;
            }

            // Should not handle input if the player is pointing on UI.
            if (EventSystem.current.IsPointerOverGameObject(touch.fingerId)) {
                return;
            }

            // Raycast against the location the player touched to search for planes.
            TrackableHit hit;
            TrackableHitFlags raycastFilter = TrackableHitFlags.PlaneWithinPolygon |
                TrackableHitFlags.FeaturePointWithSurfaceNormal;

            if (Frame.Raycast(touch.position.x, touch.position.y, raycastFilter, out hit)) {
                // Use hit pose and camera pose to check if hittest is from the
                // back of the plane, if it is, no need to create the anchor.
                if ((hit.Trackable is DetectedPlane) &&
                    Vector3.Dot(FirstPersonCamera.transform.position - hit.Pose.position,
                        hit.Pose.rotation * Vector3.up) < 0) {
                    Debug.Log("Hit at back of the current DetectedPlane");
                }
                else {
                    // Choose the prefab based on the Trackable that got hit.
                    GameObject prefab;
                    if (hit.Trackable is FeaturePoint) {
                        prefab = GameObjectPointPrefab;
                    }
                    else if (hit.Trackable is DetectedPlane) {
                        DetectedPlane detectedPlane = hit.Trackable as DetectedPlane;
                        if (detectedPlane.PlaneType == DetectedPlaneType.Vertical) {
                            prefab = GameObjectVerticalPlanePrefab;
                        }
                        else {
                            prefab = GameObjectHorizontalPlanePrefab;
                        }
                    }
                    else {
                        prefab = GameObjectHorizontalPlanePrefab;
                    }

                    // Instantiate prefab at the hit pose.
                    var gameObject = Instantiate(prefab, hit.Pose.position, hit.Pose.rotation);

                    // Compensate for the hitPose rotation facing away from the raycast (i.e.
                    // camera).
                    gameObject.transform.Rotate(0, k_PrefabRotation, 0, Space.Self);

                    // Create an anchor to allow ARCore to track the hitpoint as understanding of
                    // the physical world evolves.
                    var anchor = hit.Trackable.CreateAnchor(hit.Pose);

                    // Make game object a child of the anchor.
                    gameObject.transform.parent = anchor.transform;
                }
            }
        }

        public void GenerateAnchorAndObject(DetectedPlane plane, Vector3 centerPlanePosition) {
            if (noPlaneExists == true) {
                noPlaneExists = false;
                arObject = Instantiate(GameObjectPointPrefab, centerPlanePosition, transform.rotation);
                anchorObject = plane.CreateAnchor(new Pose(centerPlanePosition, Quaternion.identity));
                arObject.transform.parent = anchorObject.transform;
                debugTextObject.GetComponent<Text>().text = "prefab generated";
            }
        }

        /// <summary>
        /// Check and update the application lifecycle.
        /// </summary>
        private void _UpdateApplicationLifecycle() {
            // Exit the app when the 'back' button is pressed.
            if (Input.GetKey(KeyCode.Escape)) {
                Application.Quit();
            }

            // Only allow the screen to sleep when not tracking.
            if (Session.Status != SessionStatus.Tracking) {
                Screen.sleepTimeout = SleepTimeout.SystemSetting;
            }
            else {
                Screen.sleepTimeout = SleepTimeout.NeverSleep;
            }

            if (m_IsQuitting) {
                return;
            }

            // Quit if ARCore was unable to connect and give Unity some time for the toast to
            // appear.
            if (Session.Status == SessionStatus.ErrorPermissionNotGranted) {
                _ShowAndroidToastMessage("Camera permission is needed to run this application.");
                m_IsQuitting = true;
                Invoke("_DoQuit", 0.5f);
            }
            else if (Session.Status.IsError()) {
                _ShowAndroidToastMessage(
                    "ARCore encountered a problem connecting.  Please start the app again.");
                m_IsQuitting = true;
                Invoke("_DoQuit", 0.5f);
            }
        }

        /// <summary>
        /// Actually quit the application.
        /// </summary>
        private void _DoQuit() {
            Application.Quit();
        }

        public void PauseGame() {
            Time.timeScale = 0;
            arObject.transform.parent = FirstPersonCamera.transform;
        }

        public void UnpauseGame() {
            Time.timeScale = 1;
            arObject.transform.parent = anchorObject.transform;
            arObject.transform.position = new Vector3(arObject.transform.position.x, anchorObject.transform.position.y, arObject.transform.position.z);
            arObject.transform.eulerAngles = new Vector3(anchorObject.transform.localEulerAngles.x, arObject.transform.localEulerAngles.y, anchorObject.transform.localEulerAngles.z);
        }

        /// <summary>
        /// Show an Android toast message.
        /// </summary>
        /// <param name="message">Message string to show in the toast.</param>
        private void _ShowAndroidToastMessage(string message) {
            AndroidJavaClass unityPlayer = new AndroidJavaClass("com.unity3d.player.UnityPlayer");
            AndroidJavaObject unityActivity =
                unityPlayer.GetStatic<AndroidJavaObject>("currentActivity");

            if (unityActivity != null) {
                AndroidJavaClass toastClass = new AndroidJavaClass("android.widget.Toast");
                unityActivity.Call("runOnUiThread", new AndroidJavaRunnable(() => {
                    AndroidJavaObject toastObject =
                        toastClass.CallStatic<AndroidJavaObject>(
                            "makeText", unityActivity, message, 0);
                    toastObject.Call("show");
                }));
            }
        }
    }
}
/*
namespace GoogleARCore.Examples.HelloAR
{
    using System.Collections.Generic;
    using GoogleARCore;
    using GoogleARCore.Examples.Common;
    using UnityEngine;
    using UnityEngine.EventSystems;

#if UNITY_EDITOR
    // Set up touch input propagation while using Instant Preview in the editor.
    using Input = InstantPreviewInput;
#endif

    /// <summary>
    /// Controls the HelloAR example.
    /// </summary>
    public class ARSandboxControllerV2 : MonoBehaviour
    {
        /// <summary>
        /// The first-person camera being used to render the passthrough camera image (i.e. AR
        /// background).
        /// </summary>
        public Camera FirstPersonCamera;

        /// <summary>
        /// A prefab for tracking and visualizing detected planes.
        /// </summary>
        public GameObject DetectedPlanePrefab;

        /// <summary>
        /// A model to place when a raycast from a user touch hits a vertical plane.
        /// </summary>
        public GameObject AndyVerticalPlanePrefab;

        /// <summary>
        /// A model to place when a raycast from a user touch hits a horizontal plane.
        /// </summary>
        public GameObject AndyHorizontalPlanePrefab;

        /// <summary>
        /// A model to place when a raycast from a user touch hits a feature point.
        /// </summary>
        public GameObject AndyPointPrefab;

        /// <summary>
        /// The rotation in degrees need to apply to model when the Andy model is placed.
        /// </summary>
        private const float k_ModelRotation = 180.0f;

        /// <summary>
        /// True if the app is in the process of quitting due to an ARCore connection error,
        /// otherwise false.
        /// </summary>
        private bool m_IsQuitting = false;

        [HideInInspector]
        public bool planeDetected = false;
        private bool noPlaneExists = true;
        [HideInInspector]
        public Vector3 planePosition;
        private GameObject arObject;
        private Anchor anchorObject;

        /// <summary>
        /// The Unity Awake() method.
        /// </summary>
        public void Awake()
        {
            // Enable ARCore to target 60fps camera capture frame rate on supported devices.
            // Note, Application.targetFrameRate is ignored when QualitySettings.vSyncCount != 0.
            Application.targetFrameRate = 60;
        }

        /// <summary>
        /// The Unity Update() method.
        /// </summary>
        public void Update()
        {
            _UpdateApplicationLifecycle();

            // If the player has not touched the screen, we are done with this update.
            Touch touch;
            if (Input.touchCount < 1 || (touch = Input.GetTouch(0)).phase != TouchPhase.Began)
            {
                return;
            }

            // Should not handle input if the player is pointing on UI.
            if (EventSystem.current.IsPointerOverGameObject(touch.fingerId))
            {
                return;
            }

            // Raycast against the location the player touched to search for planes.
            TrackableHit hit;
            TrackableHitFlags raycastFilter = TrackableHitFlags.PlaneWithinPolygon |
                TrackableHitFlags.FeaturePointWithSurfaceNormal;

            if (Frame.Raycast(touch.position.x, touch.position.y, raycastFilter, out hit))
            {
                // Use hit pose and camera pose to check if hittest is from the
                // back of the plane, if it is, no need to create the anchor.
                if ((hit.Trackable is DetectedPlane) &&
                    Vector3.Dot(FirstPersonCamera.transform.position - hit.Pose.position,
                        hit.Pose.rotation * Vector3.up) < 0)
                {
                    Debug.Log("Hit at back of the current DetectedPlane");
                }
                else
                {
                    // Choose the Andy model for the Trackable that got hit.
                    GameObject prefab;
                    if (hit.Trackable is FeaturePoint)
                    {
                        prefab = AndyPointPrefab;
                    }
                    else if (hit.Trackable is DetectedPlane)
                    {
                        DetectedPlane detectedPlane = hit.Trackable as DetectedPlane;
                        if (detectedPlane.PlaneType == DetectedPlaneType.Vertical)
                        {
                            prefab = AndyVerticalPlanePrefab;
                        }
                        else
                        {
                            prefab = AndyHorizontalPlanePrefab;
                        }
                    }
                    else
                    {
                        prefab = AndyHorizontalPlanePrefab;
                    }

                    // Instantiate Andy model at the hit pose.
                    var andyObject = Instantiate(prefab, hit.Pose.position, hit.Pose.rotation);

                    // Compensate for the hitPose rotation facing away from the raycast (i.e.
                    // camera).
                    andyObject.transform.Rotate(0, k_ModelRotation, 0, Space.Self);

                    // Create an anchor to allow ARCore to track the hitpoint as understanding of
                    // the physical world evolves.
                    var anchor = hit.Trackable.CreateAnchor(hit.Pose);

                    // Make Andy model a child of the anchor.
                    andyObject.transform.parent = anchor.transform;
                }
            }
            //if(planeDetected == true && noPlaneExists == true) {
            //    noPlaneExists = false;
            //    var andyObject = Instantiate(AndyPointPrefab, planePosition, hit.Pose.rotation);
            //    var anchor = hit.Trackable.CreateAnchor(hit.Pose);
            //    andyObject.transform.parent = anchor.transform;
            //}
        }

        public void GenerateAnchorAndObject(DetectedPlane plane, Vector3 centerPlanePosition) {
            if (noPlaneExists == true) {
                noPlaneExists = false;
                arObject = Instantiate(AndyPointPrefab, centerPlanePosition, transform.rotation);
                anchorObject = plane.CreateAnchor(new Pose(centerPlanePosition, Quaternion.identity));
                arObject.transform.parent = anchorObject.transform;
            }
        }

        /// <summary>
        /// Check and update the application lifecycle.
        /// </summary>
        private void _UpdateApplicationLifecycle()
        {
            // Exit the app when the 'back' button is pressed.
            if (Input.GetKey(KeyCode.Escape))
            {
                Application.Quit();
            }

            // Only allow the screen to sleep when not tracking.
            if (Session.Status != SessionStatus.Tracking)
            {
                Screen.sleepTimeout = SleepTimeout.SystemSetting;
            }
            else
            {
                Screen.sleepTimeout = SleepTimeout.NeverSleep;
            }

            if (m_IsQuitting)
            {
                return;
            }

            // Quit if ARCore was unable to connect and give Unity some time for the toast to
            // appear.
            if (Session.Status == SessionStatus.ErrorPermissionNotGranted)
            {
                _ShowAndroidToastMessage("Camera permission is needed to run this application.");
                m_IsQuitting = true;
                Invoke("_DoQuit", 0.5f);
            }
            else if (Session.Status.IsError())
            {
                _ShowAndroidToastMessage(
                    "ARCore encountered a problem connecting.  Please start the app again.");
                m_IsQuitting = true;
                Invoke("_DoQuit", 0.5f);
            }
        }

        /// <summary>
        /// Actually quit the application.
        /// </summary>
        private void _DoQuit()
        {
            Application.Quit();
        }

        public void PauseGame() {
            Time.timeScale = 0;
            arObject.transform.parent = FirstPersonCamera.transform;
        }

        public void UnpauseGame() {
            Time.timeScale = 1;
            arObject.transform.parent = anchorObject.transform;
            arObject.transform.position = new Vector3(arObject.transform.position.x, anchorObject.transform.position.y, arObject.transform.position.z);
            arObject.transform.eulerAngles = new Vector3(anchorObject.transform.localEulerAngles.x, arObject.transform.localEulerAngles.y, anchorObject.transform.localEulerAngles.z);
        }

        /// <summary>
        /// Show an Android toast message.
        /// </summary>
        /// <param name="message">Message string to show in the toast.</param>
        private void _ShowAndroidToastMessage(string message)
        {
            AndroidJavaClass unityPlayer = new AndroidJavaClass("com.unity3d.player.UnityPlayer");
            AndroidJavaObject unityActivity =
                unityPlayer.GetStatic<AndroidJavaObject>("currentActivity");

            if (unityActivity != null)
            {
                AndroidJavaClass toastClass = new AndroidJavaClass("android.widget.Toast");
                unityActivity.Call("runOnUiThread", new AndroidJavaRunnable(() =>
                {
                    AndroidJavaObject toastObject =
                        toastClass.CallStatic<AndroidJavaObject>(
                            "makeText", unityActivity, message, 0);
                    toastObject.Call("show");
                }));
            }
        }
    }
}
*/