using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MapNode
{
    NodeType type;
    MapNode parent;
    List<MapNode> children = new List<MapNode>();
    public MapNodeIcon icon;

    public enum NodeType
    {
        Cold,
        Heat,
        Wind,
        Thunder,
        Asteroid
    }

    public MapNode(NodeType t, MapNode p)
    {
        type = t;
        parent = p;
    }
    public MapNode(NodeType t, List<MapNode> c)
    {
        type = t;
        children = c;
    }
    public MapNode(NodeType t)
    {
        type = t;
    }

    public void SetChildren(List<MapNode> c)
    {
        children = c;
    }

    //accessor methods
    public List<MapNode> GetChildNodes()
    {
        return children;
    }
    public MapNode GetParent()
    {
        return parent;
    }
    public NodeType GetNodeType()
    {
        return type;
    }
}
