using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TestCubeChase : MonoBehaviour
{
    private Vector3 cubeTarget;
    public float step = 0.1f;

    void Start()
    {
        
    }

    void Update()
    {
        cubeTarget = Camera.main.transform.TransformPoint(Vector3.forward * 2);
        cubeTarget.y = -0.75f;
        transform.position = Vector3.MoveTowards(transform.position, cubeTarget, step);
    }
}
