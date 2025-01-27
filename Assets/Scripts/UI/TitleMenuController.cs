using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.EventSystems;
using UnityEngine.SceneManagement;
using UnityEngine.UI;

public class TitleMenuController : MonoBehaviour
{
    public Button StartButton;
    public Button CreditsButton;
    public Button QuitButton;

    private void Start()
    {
        StartButton.onClick.AddListener(StartGame);
        CreditsButton.onClick.AddListener(ShowCredits);
        QuitButton.onClick.AddListener(QuitGame);
    }

    private void StartGame()
    {
        Debug.Log("Start Game");
        SceneManager.LoadScene("Game");
        // AudioManager.Instance?.PlayGameStart();
    }
    
    private void ShowCredits()
    {
        Debug.Log("Show Credits");
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
