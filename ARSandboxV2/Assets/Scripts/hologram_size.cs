using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UIElements;

public class hologram_size : MonoBehaviour
{
    public GameObject hologramObject;
    private Material hologramMat;
    private Slider radius_slider;
    public float radius_size;
    void Start()
    {
        radius_slider = this.gameObject.GetComponent<Slider>();
        hologramMat = hologramObject.GetComponent<Renderer>().sharedMaterial;
    }

    public void GetRadiusSize() {
        radius_size = radius_slider.value;
        hologramMat.SetFloat("_circle_size", radius_size);
    }
}
