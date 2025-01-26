using System;
using System.Collections;
using System.Collections.Generic;
using TMPro;
using Unity.Mathematics;
using UnityEngine;
using UnityEngine.UI;

public class TemperatureStationUI : MonoBehaviour
{
    public TextMeshProUGUI temperatureText;
    public CanvasGroup canvasGroup;
    public RectTransform needle;
    public Button regulateTemperatureButton;
    [Space(10)] 
    public float needleAngleWarm = 0f;
    public float needleAngleCold = 70f;
    public float needleAngleTooCold = 140f;
    public float needleAngleHot = -70f;
    public float needleAngleTooHot = -140f;
    public float needleAngleStep = 7f;
    private bool movingNeedle = false;
    private float targetAngle = 0f;
    private void Start()
    {
        Hide();
        GameManager.Instance.Logistics.OnTemperatureChanged += OnTemperatureChanged;
        OnTemperatureChanged(GameManager.Instance.Logistics.CurrentTemperatureString, GameManager.Instance.Logistics.CurrentTemperature);
        movingNeedle = false;
        needle.localRotation = Quaternion.identity;
        regulateTemperatureButton.onClick.AddListener(() =>
        {
            GameManager.Instance.Logistics.ToggleTemperatureRegulation();
        });
    }

    private void OnDestroy()
    {
        GameManager.Instance.Logistics.OnTemperatureChanged -= OnTemperatureChanged;
    }

    private void OnTemperatureChanged(string newTemperature, Temperature temperature)
    {
        temperatureText.text = newTemperature;
        targetAngle = GetNeedleAngle(temperature);
        movingNeedle = true;
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
    
    private float GetNeedleAngleStep(Temperature temperature)
    {
        float step = needleAngleStep * (GameManager.Instance.Logistics.temperatureRegulationTargetClicks - GameManager.Instance.Logistics.temperatureRegulationCounter);
        return temperature switch
        {
            Temperature.None => 0,
            Temperature.TooCold => step*=-1,
            Temperature.Cold => step*=-1,
            Temperature.Nominal => 0,
            Temperature.Hot => step*=1,
            Temperature.TooHot => step*=1,
            _ => step*=1
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

    private void Update()
    {
        if (!movingNeedle && GameManager.Instance.Logistics.temperatureRegulationCounter > 0)
        {
            movingNeedle = true;
        }
        if (!movingNeedle) return;
        if (GameManager.Instance.Logistics.CurrentTemperature == Temperature.Hot || GameManager.Instance.Logistics.CurrentTemperature == Temperature.Cold)
        {
            movingNeedle = false;
            return;
        }
        
        var stats = GameManager.Instance.nodeHazards.GetActiveNodeStats();
        float stepAmount = GetNeedleAngleStep(GameManager.Instance.Logistics.CurrentTemperature);
        // if (stats.isCold) stepAmount = -stepAmount;
        
        needle.localRotation = Quaternion.Slerp(needle.localRotation, Quaternion.Euler(0, 0, targetAngle + stepAmount), Time.deltaTime * 5f);
        if (needle.localRotation.eulerAngles.z < targetAngle + 0.1f && needle.localRotation.eulerAngles.z > targetAngle - 0.1f)
        {
            movingNeedle = false;
        }
    }
}
