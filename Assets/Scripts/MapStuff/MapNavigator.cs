using System;
using System.Collections;
using System.Collections.Generic;
using Unity.VisualScripting.ReorderableList;
using UnityEngine;
using static MapNode; //for using NodeType

//This is the logic which keeps the ship moving through map nodes and encountering in-game events
public class MapNavigator : MonoBehaviour
{
    [SerializeField] MapRenderer mRenderer;
    MapNode rootNode;

    MapNode fromNode; //Node the ship is currently leaving
    MapNode toNode; //Node the ship is heading toward
    float segmentProgress = 0;
    bool moving = true;
    static readonly float SPEED_COEFFICIENT = 0.005f;

    public event Action<MapNode> OnReachNode;
    public void ReachNodeEvent(MapNode nodeReached)
    {
        if (OnReachNode != null)
            OnReachNode(nodeReached);
    }

    private void Awake()
    {
        rootNode = GenerateBinaryTree(5);
        toNode = rootNode;
        fromNode = NewTerminalNode(NodeType.Clear);
        List<MapNode> list = new List<MapNode>();
        list.Add(toNode);
        fromNode.SetChildren(list);

        mRenderer.SetNavigator(this);
    }

    private void Update()
    {
        if (!moving)
            return;
        //float speed = GameManager.Instance.Logistics.ShipMovementSpeed;
        float speed = 10f;
        segmentProgress += speed * Time.deltaTime * SPEED_COEFFICIENT;
        if (segmentProgress >= 1f)
        {
            ReachNodeEvent(toNode);
            fromNode = toNode;
            toNode = fromNode.GetChildNodes()[0]; //TODO: check to see which direction we're navigating
            segmentProgress = 0f;
        }
        else
            mRenderer.UpdatePointer(segmentProgress);
    }

    //creates a map node graph with exclusively binary branching and arbitrary node types
    private MapNode GenerateBinaryTree(int depth)
    {
        if (depth == 0)
            return null;
        else if (depth == 1)
            return NewTerminalNode(NodeType.Cold);
        else
        {
            List<MapNode> children = new List<MapNode>();
            children.Add(GenerateBinaryTree(depth - 1));
            children.Add(GenerateBinaryTree(depth - 1));
            return NewParentNode(NodeType.Cold, children);
        }
    }

    private MapNode NewTerminalNode(NodeType type)
    {
        return new MapNode(type);
    }

    private MapNode NewParentNode(NodeType type, List<MapNode> children)
    {
        return new MapNode(type, children);
    }

    public MapNode GetFromNode()
    {
        return fromNode;
    }
    public MapNode GetToNode()
    {
        return toNode;
    }
}
