using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;


[System.Serializable]
public class ShipLogistics
{
    [field: SerializeField] public float ShipMovementSpeed = 10.0f; // Movement speed of the engineer
    [field: SerializeField] public float MaxFuel = 1.0f; // Max fuel of the ship
    
    private Temperature _currentTemperature = Temperature.Nominal;
    public Temperature CurrentTemperature {
        get => _currentTemperature;
        set
        {
            _currentTemperature = value;
            OnTemperatureChanged?.Invoke(CurrentTemperatureString);
        } 
    }
    private NavigationDirection _currentNavigationDirection = NavigationDirection.Left;
    public NavigationDirection CurrentNavigationDirection 
    {
        get => _currentNavigationDirection;
        set
        {
            _currentNavigationDirection = value;
            OnNavigationDirectionChanged?.Invoke(CurrentNavigationDirectionString);
        }
    }
    private ShipMovementSpeedSetting _shipMovementSpeedSetting = ShipMovementSpeedSetting.Medium;
    public ShipMovementSpeedSetting CurrentShipMovementSpeedSetting 
    {
        get => _shipMovementSpeedSetting;
        set
        {
            _shipMovementSpeedSetting = value;
            OnShipMovementSpeedChanged?.Invoke(CurrentShipMovementSpeedSettingString);
        }
    }
    
    
    public float CurrentShipFuel = 1.0f;
    public float CurrentShipSpeed = 1.0f;

    public Action<string> OnTemperatureChanged;
    public Action<string> OnNavigationDirectionChanged;
    public Action<string> OnShipMovementSpeedChanged;
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
}
