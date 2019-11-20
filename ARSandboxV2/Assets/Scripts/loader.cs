using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class loader : MonoBehaviour{

    public GameObject UIMainMenu;
    public GameObject DemoA;
    public GameObject UIDemoA;

    public void restartGame(){
        Debug.Log("reload");
        SceneManager.LoadScene("main", LoadSceneMode.Single);
    }

    public void LoadDemoA() {
        UIMainMenu.SetActive(false);
        DemoA.SetActive(true);
        UIDemoA.SetActive(true);
    }

    public void LoadDemoB() {
    }

    public void LoadDemoC() {
    }

    public void ReturnToMenu() {
        UIMainMenu.SetActive(true);
        DemoA.SetActive(false);
        UIDemoA.SetActive(false);
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
