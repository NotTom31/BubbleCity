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
    
    public enum StationType
    {
        None, Fuel, Navigation, Temperature    
    }
    
    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        
    }

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
}
