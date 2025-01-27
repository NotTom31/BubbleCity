using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;


[System.Serializable]
public class ShipLogistics
{
    [SerializeField] private float _baseShipMovementSpeed = 10.0f; // Speed of the ship
    public float ShipMovementSpeed => _baseShipMovementSpeed * (int)CurrentShipMovementSpeedSetting * GameManager.Instance.nodeHazards.GetActiveNodeStats().shipSpeedMult;
    public float BaseFuelConsumptionRate = 1.0f; // Fuel consumption rate of the ship

    public float FuelConsumptionRate => BaseFuelConsumptionRate * (int)CurrentShipMovementSpeedSetting *
                                        GameManager.Instance.nodeHazards.GetActiveNodeStats().fuelConsumptionMult;
    private Temperature _currentTemperature = Temperature.Nominal;
    public Temperature CurrentTemperature 
    {
        get => _currentTemperature;
        set
        {
            _currentTemperature = value;
            OnTemperatureChanged?.Invoke(CurrentTemperatureString, _currentTemperature);
        } 
    }
    private NavigationDirection _currentNavigationDirection = NavigationDirection.Left;
    public NavigationDirection CurrentNavigationDirection 
    {
        get => _currentNavigationDirection;
        set
        {
            _currentNavigationDirection = value;
            OnNavigationDirectionChanged?.Invoke(_currentNavigationDirection);
        }
    }
    private ShipMovementSpeedSetting _shipMovementSpeedSetting = ShipMovementSpeedSetting.Medium;
    public ShipMovementSpeedSetting CurrentShipMovementSpeedSetting 
    {
        get => _shipMovementSpeedSetting;
        set
        {
            _shipMovementSpeedSetting = value;
            OnShipMevementSpeedEnumChanged?.Invoke(value);
            OnShipMovementSpeedSettingChanged?.Invoke(CurrentShipMovementSpeedSettingString);
        }
    }
    
    
    private float _currentShipFuel = 1.0f;

    public float CurrentShipFuel
    {
        get => _currentShipFuel;
        set
        {
            _currentShipFuel = value;
            _currentShipFuel = Mathf.Clamp01(_currentShipFuel);
            OnFuelChanged?.Invoke(_currentShipFuel);
        }
    }
    public float CurrentShipSpeed = 1.0f;

    public Action<string, Temperature> OnTemperatureChanged;
    public Action<NavigationDirection> OnNavigationDirectionChanged;
    public Action<string> OnShipMovementSpeedSettingChanged;
    public event Action<ShipMovementSpeedSetting> OnShipMevementSpeedEnumChanged;
    public Action<float> OnFuelChanged;
    // UI Strings
    public string CurrentTemperatureString
    {
        get
        {
            return CurrentTemperature switch
            {
                Temperature.TooCold => "Too Cold",
                Temperature.Cold => "Cold",
                Temperature.Nominal => "Nominal",
                Temperature.Hot => "Hot",
                Temperature.TooHot => "Too Hot",
                _ => "None"
            };
        }
    }
    public string CurrentNavigationDirectionString
    {
        get
        {
            return CurrentNavigationDirection switch
            {
                NavigationDirection.Left => "Left",
                NavigationDirection.Right => "Right",
                _ => "None"
            };
        }
    }
    public string CurrentShipMovementSpeedSettingString
    {
        get
        {
            return _shipMovementSpeedSetting switch
            {
                ShipMovementSpeedSetting.Slow => "Ahead Slow",
                ShipMovementSpeedSetting.Medium => "Ahead Standard",
                ShipMovementSpeedSetting.Fast => "Ahead Flank",
                _ => "None"
            };
        }
    }
    
    // Event Handlers for when the character reaches a station
    void HandleOnReachedStation(StationType stationType)
    {
        
    }

#region UI Callbacks

    public void ToggleNavigationDirection()
    {
        CurrentNavigationDirection = _currentNavigationDirection == NavigationDirection.Left ? 
            NavigationDirection.Right : NavigationDirection.Left;
    }

    public void IncreaseShipMovementSpeed()
    {
        switch (_shipMovementSpeedSetting)
        {
            case ShipMovementSpeedSetting.Slow:
                CurrentShipMovementSpeedSetting = ShipMovementSpeedSetting.Medium;
                break;
            case ShipMovementSpeedSetting.Medium:
                CurrentShipMovementSpeedSetting = ShipMovementSpeedSetting.Fast;
                break;
            case ShipMovementSpeedSetting.Fast:
                
                break;
        }
    }

    public void DecreaseShipMovementSpeed()
    {
        switch (_shipMovementSpeedSetting)
        {
            case ShipMovementSpeedSetting.Slow:
                break;
            case ShipMovementSpeedSetting.Medium:
                CurrentShipMovementSpeedSetting = ShipMovementSpeedSetting.Slow;
                break;
            case ShipMovementSpeedSetting.Fast:
                CurrentShipMovementSpeedSetting = ShipMovementSpeedSetting.Medium;
                break;
                
        }
    }
    
    #endregion // UI Callbacks

    public bool ConsumeFuel(float deltaTime)
    {
        bool hasFuel = CurrentShipFuel > 0;
        CurrentShipFuel -= (deltaTime / 100.0f) * FuelConsumptionRate;
        if (CurrentShipFuel <= 0)
        {
            CurrentShipFuel = 0;
            hasFuel = false;
        }

        return hasFuel;
    }

    private bool temperatureInNeedOfRegulation = false;
    public int temperatureRegulationCounter = 0;
    public int temperatureRegulationTargetClicks = 10;

    public void ToggleTemperatureRegulation()
    {
        if (!temperatureInNeedOfRegulation) return;
        
        temperatureRegulationCounter--;
        if (temperatureRegulationCounter <= 0)
        {
            temperatureInNeedOfRegulation = false;
            temperatureRegulationCounter = 0;

            if (CurrentTemperature == Temperature.TooCold &&  GameManager.Instance.nodeHazards.GetActiveNodeStats().isCold)
                CurrentTemperature = Temperature.Cold;
            else if (CurrentTemperature == Temperature.TooHot && GameManager.Instance.nodeHazards.GetActiveNodeStats().isHot)
                CurrentTemperature = Temperature.Hot;
            else
            {
                CurrentTemperature = Temperature.Nominal;
            }
        }
    }

    public void SetTemperatureInNeedOfRegulation(bool isCold, bool isHot)
    {
        if ((isCold || isHot) )
        {
            temperatureInNeedOfRegulation = true;
            temperatureRegulationCounter = temperatureRegulationTargetClicks;
            if (isCold) CurrentTemperature = Temperature.TooCold;
            else if (isHot) CurrentTemperature = Temperature.TooHot;
        }
        
        if (!isCold && !isHot)
        {
            temperatureInNeedOfRegulation = false;
            temperatureRegulationCounter = 0;
            CurrentTemperature = Temperature.Nominal;
        }
        

    }
}
