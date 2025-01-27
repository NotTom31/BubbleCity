using System.Collections;
using System.Collections.Generic;
using System.Xml;
using UnityEngine;
using static MapNode; //for using NodeType

public class MapRenderer : MonoBehaviour
{
    [SerializeField] GameObject mapNodeIconPrefab;
    [SerializeField] GameObject pointerPrefab;
    [SerializeField] GameObject dottedLinePrefab;
    [SerializeField] float layersize; //size of vertical gap between rows of icons
    [SerializeField] float startingY; //y value of first row
    [SerializeField] int viewDepth; //how deep into the tree the player can see
    [SerializeField] Sprite[] nodeIconSprites;

    MapNavigator nav;
    Transform pointer;

    private void Start()
    {
        InitialRender();
        gameObject.SetActive(false);
    }

    private void InitialRender()
    {
        float xOffset = Screen.width / 2f;
        GameObject o = Instantiate(mapNodeIconPrefab, new Vector3(xOffset, startingY, 0), Quaternion.identity, this.transform);
        nav.GetFromNode().icon = o.GetComponent<MapNodeIcon>();
        nav.GetFromNode().icon.SetImage(GetSprite(nav.GetFromNode().GetNodeType()));
        RecursiveRender(Screen.width, xOffset, startingY + layersize, nav.GetToNode(), viewDepth);
        RenderLine(nav.GetFromNode().icon, nav.GetToNode().icon);
        pointer = Instantiate(pointerPrefab, nav.GetFromNode().icon.transform.position, Quaternion.identity, this.transform).transform;
    }

    private void RecursiveRender(float xSpace, float xOffset, float yOffset, MapNode root, int remainingDepth)
    {
        if (remainingDepth == 0)
            return;
        GameObject o = Instantiate(mapNodeIconPrefab, new Vector3(xOffset, yOffset, 0), Quaternion.identity, this.transform);
        root.icon = o.GetComponent<MapNodeIcon>();
        root.icon.SetImage(GetSprite(root.GetNodeType()));

        if (root.GetChildNodes().Count == 0)
            return;
        xSpace /= 2f;
        yOffset += layersize;
        remainingDepth--;

        RecursiveRender(xSpace, xOffset + xSpace / 2f, yOffset, root.GetChildNodes()[0], remainingDepth);
        RecursiveRender(xSpace, xOffset - xSpace / 2f, yOffset, root.GetChildNodes()[1], remainingDepth);
        
        RenderLine(root.icon, root.GetChildNodes()[0].icon);
        RenderLine(root.icon, root.GetChildNodes()[1].icon);
    }

    private void RenderLine(MapNodeIcon parentIcon, MapNodeIcon childIcon)
    {
        if (parentIcon == null || childIcon == null)
            return;
        DottedLine line = Instantiate(dottedLinePrefab, transform).GetComponent<DottedLine>();
        line.SetVertices(parentIcon.transform.localPosition, childIcon.transform.localPosition);
        nav.GetFromNode().icon.stem = line;
    }

    //updates position of the pointer showing where the player is
    public void UpdatePointer(float segment_progress)
    {
        if (!pointer ||nav.GetToNode().icon == null) return;
        pointer.localPosition = Vector3.Lerp(nav.GetFromNode().icon.transform.localPosition,
                                        nav.GetToNode().icon.transform.localPosition, segment_progress);
    }

    private void ReachNodeRerender(MapNode reached)
    {
        //TODO: cull half the nodes and re-order everything
    }

    public void SetNavigator(MapNavigator navi)
    {
        nav = navi;
        nav.OnReachNode += ReachNodeRerender;
    }

    public Sprite GetSprite(NodeType t)
    {
        return nodeIconSprites[(int)t];
    }
}
