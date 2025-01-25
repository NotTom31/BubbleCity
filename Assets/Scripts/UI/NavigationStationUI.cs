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
    }
    void OnEnable()
    {
        GameManager.Instance.Logistics.OnNavigationDirectionChanged += OnNavigationDirectionChanged;
        OnNavigationDirectionChanged(GameManager.Instance.Logistics.CurrentNavigationDirectionString);
    }

    private void OnDisable()
    {
        GameManager.Instance.Logistics.OnNavigationDirectionChanged -= OnNavigationDirectionChanged;
    }

    private void OnNavigationDirectionChanged(string newNavigationDirection)
    {
        directionText.text = newNavigationDirection;
    }
}
