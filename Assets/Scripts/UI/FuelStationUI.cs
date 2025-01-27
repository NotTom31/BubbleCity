using System;
using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;
using UnityEngine.EventSystems;
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
        
        Hide();
        
    }

    private void OnFuelChanged(float newFuelAmount)
    {
        fuelText.text = Mathf.FloorToInt(newFuelAmount * 100).ToString();
        fuelFillMeter.fillAmount = Mathf.Clamp01(newFuelAmount / 100.0f);

        GameManager.Instance.Logistics.OnShipMovementSpeedSettingChanged += OnShipMovementSpeedSettingChanged;
        OnShipMovementSpeedSettingChanged(GameManager.Instance.Logistics.CurrentShipMovementSpeedSettingString);
    }

    private void OnDestroy()
    {
        GameManager.Instance.Logistics.OnShipMovementSpeedSettingChanged -= OnShipMovementSpeedSettingChanged;
    }

    private void OnShipMovementSpeedSettingChanged(string newSetting)
    {
        shipMovementSpeedText.text = newSetting;
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

    public void ButtonOnPointerEnterCallback(BaseEventData eventData)
    {
        AudioManager.Instance.UIHover();
    }

    public void ButtonOnClick()
    {
        AudioManager.Instance.UISelect();
    }
}
