using System.Collections;
using System.Collections.Generic;
using UnityEngine;
public enum NodeTypePlaceholder
{
    COLD,
    HEAT,
    ASTEROID,
    WIND,
    THUNDER,
    DEFAULT
}

public class NodeHazards : MonoBehaviour
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

    private NodeTypePlaceholder activeNodeType; //replace with evans enum

    public void SetNodeType(NodeTypePlaceholder nodeType) //replace 
    {
        activeNodeType = nodeType;
    }

    public NodeStats GetActiveNodeStats()
    {
        switch (activeNodeType)
        {
            case NodeTypePlaceholder.COLD:
                return coldStats;
            case NodeTypePlaceholder.HEAT:
                return heatStats;
            case NodeTypePlaceholder.ASTEROID:
                return asteroidStats;
            case NodeTypePlaceholder.WIND:
                return windStats;
            case NodeTypePlaceholder.THUNDER:
                return thunderStats;
            case NodeTypePlaceholder.DEFAULT:
                return defaultStats;
            default:
                Debug.LogWarning("Invalid node type.");
                return defaultStats;
        }
    }

    private void Start()
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