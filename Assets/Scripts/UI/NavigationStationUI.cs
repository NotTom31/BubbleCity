using System;
using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;
using UnityEngine.UI;

public class NavigationStationUI : MonoBehaviour
{
    public TextMeshProUGUI directionText;
    public Button toggleDirectionButton;
    public Button openMapButton;
    public CanvasGroup canvasGroup;

    void Start()
    {
        toggleDirectionButton.onClick.AddListener(() =>
        {
            GameManager.Instance.Logistics.ToggleNavigationDirection();
        });
        
        openMapButton.onClick.AddListener(() =>
        {
            GameManager.Instance.OpenNodeMap();
        });
        
        Hide();
        
        GameManager.Instance.Logistics.OnNavigationDirectionChanged += OnNavigationDirectionChanged;
        OnNavigationDirectionChanged(GameManager.Instance.Logistics.CurrentNavigationDirectionString);
    }

    private void OnDestroy()
    {
        GameManager.Instance.Logistics.OnNavigationDirectionChanged -= OnNavigationDirectionChanged;
    }

    private void OnNavigationDirectionChanged(string newNavigationDirection)
    {
        directionText.text = newNavigationDirection;
    }
    
    public void Show()
    {
        canvasGroup.alpha = 1f;
        canvasGroup.blocksRaycasts = true;
        canvasGroup.interactable = true;
    }
    
    public void Hide()
    {
        canvasGroup.alpha = 0f;
        canvasGroup.blocksRaycasts = false;
        canvasGroup.interactable = false;
    }
}
