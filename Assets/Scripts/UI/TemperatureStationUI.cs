using System;
using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;

public class TemperatureStationUI : MonoBehaviour
{
    public TextMeshProUGUI temperatureText;
    public CanvasGroup canvasGroup;
    
    void OnEnable()
    {
        GameManager.Instance.Logistics.OnTemperatureChanged += OnTemperatureChanged;
        OnTemperatureChanged(GameManager.Instance.Logistics.CurrentTemperatureString);
    }

    private void OnDisable()
    {
        GameManager.Instance.Logistics.OnTemperatureChanged -= OnTemperatureChanged;
    }

    private void OnTemperatureChanged(string newTemperature)
    {
        temperatureText.text = newTemperature;
    }

    public void Show()
    {
        canvasGroup.alpha = 1f;
    }
    
    public void Hide()
    {
        canvasGroup.alpha = 0f;
    }
}
