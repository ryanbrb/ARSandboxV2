using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class ARPostEffect : MonoBehaviour
{
    public Material effect;

    public GameObject debugTextObject;

    void Start()
    {
        //effect.SetFloat("_glitch_multiplier", 0f);
    }

    void OnRenderImage(RenderTexture source, RenderTexture destination)
    {
        Graphics.Blit(source, destination, effect);
    }

    private void OnTriggerEnter(Collider other) {
        effect.SetFloat("_Damage", 1f);
        debugTextObject.GetComponent<Text>().text = "damage";
        //Debug.Log("entered");
    }

    private void OnTriggerExit(Collider other) {
        effect.SetFloat("_Damage", 0f);
        debugTextObject.GetComponent<Text>().text = "";
        //Debug.Log("exit");
    }
}
