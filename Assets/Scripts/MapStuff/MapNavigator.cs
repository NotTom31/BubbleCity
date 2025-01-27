using System;
using System.Collections;
using System.Collections.Generic;
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
    static readonly float SPEED_COEFFICIENT = 0.003f;

    public event Action<MapNode> OnReachNode;
    public void ReachNodeEvent(MapNode nodeReached)
    {
        if (OnReachNode != null)
            OnReachNode(nodeReached);
    }
    public event Action OnReachEnd;
    public void ReachEndEvent()
    {
        if (OnReachEnd != null)
            OnReachEnd();
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
        float speed = GameManager.Instance.Logistics.ShipMovementSpeed;
        segmentProgress += speed * Time.deltaTime * SPEED_COEFFICIENT;
        if (segmentProgress >= 1f)
        {
            fromNode = toNode;
            if (fromNode.GetChildNodes().Count == 0)
            {
                moving = false;
                ReachEndEvent();
                return;
            }
            NavigationDirection dir = GameManager.Instance.Logistics.CurrentNavigationDirection;
            if (dir == NavigationDirection.Left)
                toNode = fromNode.GetChildNodes()[0];
            else
                toNode = fromNode.GetChildNodes()[1];
            ReachNodeEvent(fromNode);
            segmentProgress = 0f;
        }
        else
            mRenderer.UpdatePointer(segmentProgress);
    }

    //creates a map node graph with exclusively binary branching and random node types
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
            return NewParentNode(RandomType(), children);
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

    private NodeType RandomType(bool includeClear = false)
    {
        int start = 1;
        if (includeClear)
            start = 0;
        return (NodeType)UnityEngine.Random.Range(start, Enum.GetValues(typeof(NodeType)).Length);
    }

    public MapNode GetFromNode()
    {
        return fromNode;
    }
    public MapNode GetToNode()
    {
        return toNode;
    }

    public void SetRendererActive(bool active)
    {
        mRenderer.gameObject.SetActive(active);
    }
}
