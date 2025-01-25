using System.Collections;
using System.Collections.Generic;
using UnityEngine;


[System.Serializable]
public class ShipLogistics
{
    [field: SerializeField] public float ShipMovementSpeed = 10.0f; // Movement speed of the engineer
    [field: SerializeField] public float MaxFuel = 1.0f; // Max fuel of the ship

    public enum ShipMovementSpeedSetting
    {
        None,
        Slow = 5,
        Medium = 10,
        Fast = 15
    }
    
    public enum NavigationDirection
    {
        None, Left, Right
    }
    
    public enum Temperature
    {
        None,
        TooCold,
        Cold,
        Nominal,
        Hot,
        TooHot
    }
    
    public Temperature CurrentTemperature { get; set; } = Temperature.Nominal;
    public NavigationDirection CurrentNavigationDirection { get; set; } = NavigationDirection.Left;
    public ShipMovementSpeedSetting CurrentShipMovementSpeedSetting { get; set; } = ShipMovementSpeedSetting.Medium;
    public float CurrentShipFuel = 1.0f;
    public float CurrentShipSpeed = 1.0f;

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
    public string ShipMovementSpeedSettingString
    {
        get
        {
            return (int)ShipMovementSpeed switch
            {
                (int)ShipMovementSpeedSetting.Slow => "Ahead Slow",
                (int)ShipMovementSpeedSetting.Medium => "Ahead Standard",
                (int)ShipMovementSpeedSetting.Fast => "Ahead Flank",
                _ => "None"
            };
        }
    }
    
    // Event Handlers for when the character reaches a station
    void HandleOnReachedStation()
    {
        
    }
    
}
