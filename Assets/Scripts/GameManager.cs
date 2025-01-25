using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public enum GameState
{
    MAIN_MENU,
    PAUSE,
    PLAY
}

public class GameManager : MonoBehaviour
{
    public static GameManager Instance;
    public GameState gameState { get; private set; } = GameState.MAIN_MENU;
    public ShipLogistics Logistics = new ShipLogistics();
    
    // UI Elements
    public TemperatureStationUI temperatureStationUI;
    public FuelStationUI fuelStationUI;
    public NavigationStationUI navigationStationUI;

    private void Awake()
    {
        // Singleton pattern
        if (Instance != null && Instance != this)
        {
            Destroy(this);
        }
        else
        {
            Instance = this;
            DontDestroyOnLoad(Instance);
        }
    }
    
    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        
    }
    

    public void OpenNodeMap()
    {
        Debug.Log("Opening Node Map");
    }
}

#region Enums

public enum StationType
{
    None, Fuel, Navigation, Temperature    
}

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

#endregion // Enums