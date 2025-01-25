using System;
using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;
using UnityEngine.UI;

public class FuelStationUI : MonoBehaviour
{
    public TextMeshProUGUI fuelText;
    public TextMeshProUGUI shipMovementSpeedText;
    public Image fuelFillMeter;
    [Space(10)] 
    public Button speedForwardButton;
    public Button speedBackwardButton;
    [Space(10)] 
    public CanvasGroup canvasGroup;

    void Start()
    {
        speedForwardButton.onClick.AddListener(() =>
        {
            GameManager.Instance.Logistics.IncreaseShipMovementSpeed();
        });
        speedBackwardButton.onClick.AddListener(() =>
        {
            GameManager.Instance.Logistics.DecreaseShipMovementSpeed();
        });
        
        GameManager.Instance.Logistics.OnFuelChanged += OnFuelChanged;
    }

    private void OnFuelChanged(float newFuelAmount)
    {
        fuelText.text = Mathf.FloorToInt(newFuelAmount * 100).ToString();
        fuelFillMeter.fillAmount = Mathf.Clamp01(newFuelAmount / 100.0f);
    }

    void OnEnable()
    {
        GameManager.Instance.Logistics.OnShipMovementSpeedChanged += OnShipMovementSpeedSettingChanged;
        OnShipMovementSpeedSettingChanged(GameManager.Instance.Logistics.CurrentShipMovementSpeedSettingString);
    }

    private void OnDisable()
    {
        GameManager.Instance.Logistics.OnShipMovementSpeedChanged -= OnShipMovementSpeedSettingChanged;
    }

    private void OnShipMovementSpeedSettingChanged(string newSetting)
    {
        shipMovementSpeedText.text = newSetting;
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
