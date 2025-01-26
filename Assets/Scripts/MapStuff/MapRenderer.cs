using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using static MapNode; //for using NodeType

public class MapRenderer : MonoBehaviour
{
    [SerializeField] GameObject mapNodeIconPrefab;
    [SerializeField] GameObject dottedLinePrefab;
    [SerializeField] float layersize; //size of vertical gap between rows of icons
    [SerializeField] float startingY; //y value of first row
    [SerializeField] float iconBuffer;
    [SerializeField] int viewDepth; //how deep into the tree the player can see
    MapNode rootNode;

    private void Awake()
    {
        rootNode = GenerateBinaryTree(5);
    }

    private void Start()
    {
        InitialRender();
    }

    private void InitialRender()
    {
        RecursiveRender(Screen.width, 0.0f, startingY, rootNode, viewDepth);
    }

    private void RecursiveRender(float xSpace, float xOffset, float yOffset, MapNode root, int remainingDepth)
    {
        if (remainingDepth == 0)
            return;
        GameObject o = Instantiate(mapNodeIconPrefab, new Vector3(xOffset, yOffset, 0), Quaternion.identity, this.transform);
        root.icon = o.GetComponent<MapNodeIcon>();

        if (root.GetChildNodes().Count == 0)
            return;
        xSpace /= 2f;
        yOffset += layersize;
        remainingDepth--;

        RecursiveRender(xSpace, xOffset + xSpace / 2f, yOffset, root.GetChildNodes()[0], remainingDepth);
        RecursiveRender(xSpace, xOffset - xSpace / 2f, yOffset, root.GetChildNodes()[1], remainingDepth);
    }

    private MapNode NewTerminalNode(NodeType type)
    {
        return new MapNode(type);
    }

    private MapNode NewParentNode(NodeType type, List<MapNode> children)
    {
        return new MapNode(type, children);
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


}
