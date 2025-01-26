using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class NodeHazards
{
    public struct NodeStats
    {
        public float shipSpeedMult;
        public float playerSpeedMult;
        public float refuelAmount;
        public float rockAmount;
        public float fuelConsumptionMult;
        public bool isCold;
        public bool isHot;
        public bool isWind;
    }

    public NodeStats coldStats;
    public NodeStats heatStats;
    public NodeStats asteroidStats;
    public NodeStats windStats;
    public NodeStats thunderStats;
    public NodeStats defaultStats;

    private MapNode.NodeType activeNodeType; //replace with evans enum

    public void SetNodeType(MapNode.NodeType nodeType) //replace 
    {
        activeNodeType = nodeType;

        switch (activeNodeType)
        {
            case MapNode.NodeType.Clear:
                GameManager.Instance.environmentVisualController.SetTargetEnvironmentSettings(
                    GameManager.Instance.calmEnvironment);
                break;
            case MapNode.NodeType.Cold:
                GameManager.Instance.environmentVisualController.SetTargetEnvironmentSettings(
                    GameManager.Instance.coldEnvironment);
                break;
            case MapNode.NodeType.Heat:
                GameManager.Instance.environmentVisualController.SetTargetEnvironmentSettings(
                    GameManager.Instance.warmEnvironment);
                break;
            case MapNode.NodeType.Wind:
                GameManager.Instance.environmentVisualController.SetTargetEnvironmentSettings(
                    GameManager.Instance.windyEnvironment);
                break;
            case MapNode.NodeType.Thunder:
                GameManager.Instance.environmentVisualController.SetTargetEnvironmentSettings(
                    GameManager.Instance.windyEnvironment);
                break;
            case MapNode.NodeType.Asteroid:
                GameManager.Instance.environmentVisualController.SetTargetEnvironmentSettings(
                    GameManager.Instance.asteroidEnvironment);
                break;
            default:
                throw new ArgumentOutOfRangeException();
        }
    }

    public NodeStats GetActiveNodeStats()
    {
        switch (activeNodeType)
        {
            case MapNode.NodeType.Cold:
                return coldStats;
            case MapNode.NodeType.Heat:
                return heatStats;
            case MapNode.NodeType.Asteroid:
                return asteroidStats;
            case MapNode.NodeType.Wind:
                return windStats;
            case MapNode.NodeType.Thunder:
                return thunderStats;
            case MapNode.NodeType.Clear:
                return defaultStats;
            default:
                Debug.LogWarning("Invalid node type.");
                return defaultStats;
        }
    }

    public void Initialize()
    {
        coldStats = new NodeStats
        {
            shipSpeedMult = 0.8f,
            playerSpeedMult = 0.8f,
            refuelAmount = 0f,
            rockAmount = 0f,
            fuelConsumptionMult = 1.0f,
            isCold = true,
            isHot = false,
            isWind = false
        };

        heatStats = new NodeStats
        {
            shipSpeedMult = 1.2f,
            playerSpeedMult = 0.9f,
            refuelAmount = 50f,
            rockAmount = 10f,
            fuelConsumptionMult = 0.8f,
            isCold = false,
            isHot = true,
            isWind = false
        };

        asteroidStats = new NodeStats
        {
            shipSpeedMult = 1f,
            playerSpeedMult = 0.9f,
            refuelAmount = 50f,
            rockAmount = 10f,
            fuelConsumptionMult = 1.0f,
            isCold = false,
            isHot = true,
            isWind = false
        };

        windStats = new NodeStats
        {
            shipSpeedMult = 1.4f,
            playerSpeedMult = 1f,
            refuelAmount = 0f,
            rockAmount = 0f,
            fuelConsumptionMult = 1.2f,
            isCold = false,
            isHot = false,
            isWind = true
        };

        defaultStats = new NodeStats
        {
            shipSpeedMult = 1f,
            playerSpeedMult = 1f,
            refuelAmount = 0f,
            rockAmount = 0f,
            fuelConsumptionMult = 1.0f,
            isCold = false,
            isHot = false,
            isWind = true
        };
    }
}