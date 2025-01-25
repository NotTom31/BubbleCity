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
    [Space(10)] 
    public Button speedForwardButton;
    public Button speedBackwardButton;
    
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
}
