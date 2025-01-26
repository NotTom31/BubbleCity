using System;
using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;

public class TemperatureStationUI : MonoBehaviour
{
    public TextMeshProUGUI temperatureText;
    public CanvasGroup canvasGroup;
    public RectTransform needle;
    [Space(10)] 
    public float needleAngleWarm = 0f;
    public float needleAngleCold = 70f;
    public float needleAngleTooCold = 140f;
    public float needleAngleHot = -70f;
    public float needleAngleTooHot = -140f;

    private void Start()
    {
        Hide();
        GameManager.Instance.Logistics.OnTemperatureChanged += OnTemperatureChanged;
        OnTemperatureChanged(GameManager.Instance.Logistics.CurrentTemperatureString, GameManager.Instance.Logistics.CurrentTemperature);
    }

    private void OnDestroy()
    {
        GameManager.Instance.Logistics.OnTemperatureChanged -= OnTemperatureChanged;
    }

    private void OnTemperatureChanged(string newTemperature, Temperature temperature)
    {
        temperatureText.text = newTemperature;
        needle.rotation = Quaternion.Euler(0, 0, GetNeedleAngle(temperature));
    }

    private float GetNeedleAngle(Temperature temperature)
    {
        return temperature switch
        {
            Temperature.None => needleAngleWarm,
            Temperature.TooCold => needleAngleTooCold,
            Temperature.Cold => needleAngleCold,
            Temperature.Nominal => needleAngleWarm,
            Temperature.Hot => needleAngleHot,
            Temperature.TooHot => needleAngleTooHot,
            _ => 0f
        };
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
