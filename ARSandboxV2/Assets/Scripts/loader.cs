using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;
using GoogleARCore;

public class loader : MonoBehaviour{

    public GameObject UIMainMenu;
    public GameObject DemoA;
    public GameObject SessionDemoA;
    public GameObject UIDemoA;
    public GameObject DemoB;
    public GameObject SessionDemoB;
    public GameObject UIDemoB;
    private ARCoreSession _sessionA;
    private ARCoreSession _sessionB;
    private ARCoreSessionConfig _myConfigA;
    private ARCoreSessionConfig _myConfigB;

    private void Start() {
        _sessionA = SessionDemoA.GetComponent<ARCoreSession>();
        _sessionB = SessionDemoB.GetComponent<ARCoreSession>();
        _myConfigA = _sessionA.SessionConfig;
        _myConfigB = _sessionB.SessionConfig;
    }

    public void restartGame(){
        Debug.Log("reload");
        SceneManager.LoadScene("main", LoadSceneMode.Single);
    }

    public void LoadDemoA() {
        UIMainMenu.SetActive(false);
        DemoA.SetActive(true);
        UIDemoA.SetActive(true);

        if (_sessionA == null) {
            _sessionA = SessionDemoA.AddComponent<ARCoreSession>();
            _sessionA.SessionConfig = _myConfigA;
            _sessionA.enabled = true;
        }
    }

    public void LoadDemoB() {
        UIMainMenu.SetActive(false);
        DemoB.SetActive(true);
        UIDemoB.SetActive(true);

        if (_sessionB == null) {
            _sessionB = SessionDemoB.AddComponent<ARCoreSession>();
            _sessionB.SessionConfig = _myConfigB;
            _sessionB.enabled = true;
        }
    }

    public void LoadDemoC() {
    }

    public void ReturnToMenu() {
        UIMainMenu.SetActive(true);
        DemoA.SetActive(false);
        Destroy(_sessionA);
        UIDemoA.SetActive(false);
        DemoB.SetActive(false);
        Destroy(_sessionB);
        UIDemoB.SetActive(false);
    }

    public void exitGame(){
        Invoke("delayedQuit", 0.1f);
        //Time.timeScale = 0f;
    }

    void delayedQuit(){
        Debug.Log("quit");
        Application.Quit();
    }
}
