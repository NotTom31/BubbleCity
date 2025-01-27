using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.EventSystems;
using UnityEngine.SceneManagement;
using UnityEngine.Serialization;
using UnityEngine.UI;

public class PauseMenuController : MonoBehaviour
{
    public Button TitleButton;
    public Button CreditsButton;
    public Button QuitButton;

    private void Start()
    {
        TitleButton.onClick.AddListener(ReturnToTitle);
        CreditsButton.onClick.AddListener(ShowCredits);
        QuitButton.onClick.AddListener(QuitGame);
    }

    private void ReturnToTitle()
    {
        Debug.Log("Return to title");
        Time.timeScale = 1;
        SceneManager.LoadScene("Title");
    }
    
    private void ShowCredits()
    {
        GameManager.Instance.PauseGame();
    }
    
    private void QuitGame()
    {
#if UNITY_EDITOR
        if (Application.isEditor)
        {
            UnityEditor.EditorApplication.isPlaying = false;
        }
        else
#endif
        {
            Application.Quit();
        }
    }
    
    public void ButtonOnPointerEnterCallback(BaseEventData eventData)
    {
        AudioManager.Instance?.UIHover();
    }

    public void ButtonOnClick()
    {
        AudioManager.Instance?.UISelect();
    }
}
