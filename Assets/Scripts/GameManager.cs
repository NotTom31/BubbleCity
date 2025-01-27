using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;
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
    public StationType station = StationType.None;
    public ShipLogistics Logistics = new ShipLogistics();
    public NodeHazards nodeHazards;
    [SerializeField] GameObject playerObject;
    [SerializeField] MapNavigator mapNavigator;
    [SerializeField] ObstacleSpawner obstacleSpawner;
    private PlayerNavigation playerNavigation;
    private bool GameOver = false;
    
    public enum StationType
    {
        None, Fuel, Navigation, Temperature    
    }
    
    // UI Elements
    [Header("UI Elements")]
    public TemperatureStationUI temperatureStationUI;
    public FuelStationUI fuelStationUI;
    public NavigationStationUI navigationStationUI;

    [Header("Environment VFX")] 
    public EnvironmentVisualController environmentVisualController;
    public VizEnvironmentSO calmEnvironment;
    public VizEnvironmentSO coldEnvironment;
    public VizEnvironmentSO warmEnvironment;
    public VizEnvironmentSO windyEnvironment;
    public VizEnvironmentSO asteroidEnvironment;
    
    [Header("Game Objects to Drop")]
    public GameObject[] dropObjects;
    
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
        nodeHazards = new NodeHazards();
        nodeHazards.Initialize();
        if (playerObject == null)
        {
            playerObject = GameObject.FindWithTag("Player");
            playerNavigation = playerObject.GetComponent<PlayerNavigation>();
        }

        mapNavigator.OnReachNode += NodeReached;
    }

    private void NodeReached(MapNode node)
    {
        nodeHazards.SetNodeType(node.GetNodeType());
        //Debug.Log("heres where we reach a node in GameManager :)");
        //node.GetNodeType();
        switch (node.GetNodeType())
        {
            case MapNode.NodeType.Clear:
                obstacleSpawner.DisableSpawner();
                playerNavigation.SetWind(Vector3.zero, 0f);
                break;
            case MapNode.NodeType.Cold:
                obstacleSpawner.DisableSpawner();
                playerNavigation.SetWind(Vector3.zero, 0f);
                break;
            case MapNode.NodeType.Heat:
                obstacleSpawner.DisableSpawner();
                playerNavigation.SetWind(Vector3.zero, 0f);
                break;
            case MapNode.NodeType.Asteroid:
                obstacleSpawner.EnableSpawner();
                playerNavigation.SetWind(Vector3.zero, 0f);
                obstacleSpawner.SetSpawnPoint(4);
                break;
            case MapNode.NodeType.Wind:
                obstacleSpawner.EnableSpawner();
                playerNavigation.SetWind(nodeHazards.GetActiveNodeStats().windDirection, nodeHazards.GetActiveNodeStats().windSpeed);
                Debug.Log(nodeHazards.GetActiveNodeStats().windDirection + "" + nodeHazards.GetActiveNodeStats().windSpeed);

                if (nodeHazards.GetActiveNodeStats().windDirection == Vector3.left)
                {
                    obstacleSpawner.SetSpawnPoint(0);
                }
                else if (nodeHazards.GetActiveNodeStats().windDirection == Vector3.right)
                {
                    obstacleSpawner.SetSpawnPoint(1);
                }
                else if (nodeHazards.GetActiveNodeStats().windDirection == Vector3.forward)
                {
                    obstacleSpawner.SetSpawnPoint(2);
                }
                else if (nodeHazards.GetActiveNodeStats().windDirection == Vector3.back)
                {
                    obstacleSpawner.SetSpawnPoint(3);
                }

                break;
            default:
                obstacleSpawner.DisableSpawner();
                playerNavigation.SetWind(Vector3.zero, 0f);
                break;
        }

        
        var childNodes = node.GetChildNodes();
        navigationStationUI.SetUpcomingNodes(childNodes[0], childNodes[1]);

        AudioManager.Instance.SetActiveNodeType(node.GetNodeType());
    }

    // Update is called once per frame
    void Update()
    {
        if (GameOver) return;
        
        if (!Logistics.ConsumeFuel(Time.deltaTime))
        {
            GameOver = true;
            foreach (var go in dropObjects)
            {
                var rb = go.GetComponent<Rigidbody>();
                if (!rb) rb = go.AddComponent<Rigidbody>();
                if (rb)
                {
                    var xfm = go.GetComponent<Transform>();
                    if (xfm) xfm.SetParent(null);

                    var meshColliders = go.GetComponentsInChildren<MeshCollider>();
                    if (meshColliders != null && meshColliders.Length > 0)
                    {
                        foreach (var mc in meshColliders)
                        {
                            mc.convex = true;
                        }
                    }

                    var nma = go.GetComponent<NavMeshAgent>();
                    if (nma) nma.enabled = false;
                    
                    rb.isKinematic = false;
                    rb.useGravity = true;
                }
            }
        }
    }

    public void OpenNodeMap()
    {
        mapNavigator.SetRendererActive(true);
    }

    public void CloseNodeMap()
    {
        mapNavigator.SetRendererActive(false);
    }

    public void SetStation(StationType type)
    {
        Debug.Log(type);
        station = type;
        switch (type)
        {

            case StationType.Fuel:
                fuelStationUI.Show();
                break;
            case StationType.Navigation:
                navigationStationUI.Show();
                break;
            case StationType.Temperature:
                temperatureStationUI.Show();
                break;
            
            case StationType.None:
                fuelStationUI.Hide();
                navigationStationUI.Hide();
                temperatureStationUI.Hide();
                break;
            default:
                break;
        }
    }

    public void SetPlayerSpeed(float speed)
    {
        playerNavigation.SetSpeed(speed);
    }
}

#region Enums

public enum StationType
{
    None, Fuel, Navigation, Temperature    
}

public enum ShipMovementSpeedSetting
{
    None = 1,
    Slow = 2,
    Medium = 3,
    Fast = 4
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