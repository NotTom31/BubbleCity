using System;
using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;
using UnityEngine.EventSystems;
using UnityEngine.UI;

public class NavigationStationUI : MonoBehaviour
{
    public TextMeshProUGUI directionText;
    public Button toggleDirectionButton;
    public Button openMapButton;
    public CanvasGroup canvasGroup;
    public MapNodeChoiceUI leftMapNodeChoiceUI;
    public MapNodeChoiceUI rightMapNodeChoiceUI;
    
    void Start()
    {
        toggleDirectionButton.onClick.AddListener(() =>
        {
            GameManager.Instance.Logistics.ToggleNavigationDirection();
        });
        
        openMapButton.onClick.AddListener(() =>
        {
            GameManager.Instance.OpenNodeMap();
        });
        
        Hide();
        
        GameManager.Instance.Logistics.OnNavigationDirectionChanged += OnNavigationDirectionChanged;
        OnNavigationDirectionChanged(GameManager.Instance.Logistics.CurrentNavigationDirection);
        
    }

    private void OnDestroy()
    {
        GameManager.Instance.Logistics.OnNavigationDirectionChanged -= OnNavigationDirectionChanged;
    }

    private void OnNavigationDirectionChanged(NavigationDirection newNavigationDirection)
    {
        directionText.text = GameManager.Instance.Logistics.CurrentNavigationDirectionString;

        switch (newNavigationDirection)
        {
            case NavigationDirection.None:
                break;
            case NavigationDirection.Left:
                leftMapNodeChoiceUI.SetHighlighted(true);
                rightMapNodeChoiceUI.SetHighlighted(false);
                break;
            case NavigationDirection.Right:
                leftMapNodeChoiceUI.SetHighlighted(false);
                rightMapNodeChoiceUI.SetHighlighted(true);
                break;
            default:
                throw new ArgumentOutOfRangeException(nameof(newNavigationDirection), newNavigationDirection, null);
        }
        
    }
    
    public void Show()
    {
        canvasGroup.alpha = 1f;
        canvasGroup.blocksRaycasts = true;
        canvasGroup.interactable = true;
    }
    
    public void Hide()
    {
        canvasGroup.alpha = 0f;
        canvasGroup.blocksRaycasts = false;
        canvasGroup.interactable = false;
        // GameManager.Instance.CloseNodeMap();
    }
    
    public void SetUpcomingNodes(MapNode leftNode, MapNode rightNode)
    {
        GetNodeDescription(leftNode);
        string positives = "Fuel Consumption--";
        string negatives = "Player Speed --\nShip Speed -- \n";
        string descriptionText = $"<<color=#9F5255>{negatives}<color=#AAB99A>{positives}";
        
        leftMapNodeChoiceUI.SetNodeText($"{leftNode.GetNodeType().ToString()} Storm", "Stuff");
        rightMapNodeChoiceUI.SetNodeText($"{rightNode.GetNodeType()} Storm", "Right Stuff");
    }

    private (string, string) GetNodeDescription(MapNode node)
    {
        (string, string) description = ("", "");
        // switch (node.GetNodeType())
        // {
        //     case MapNode.NodeType.Cold:
        //         description = "Player Speed--\n" +
        //                       "Ship Speed--\n";
        //         break;
        //     case MapNode.NodeType.Heat:
        //         description = "Heat Storm";
        //         break;
        //     case MapNode.NodeType.Asteroid:
        //         description = "Asteroid Storm";
        //         break;
        //     case MapNode.NodeType.Wind:
        //         description = "Wind Storm";
        //         break;
        //     case MapNode.NodeType.Thunder:
        //         description = "Thunder Storm";
        //         break;
        //     case MapNode.NodeType.Clear:
        //         description = "Clear Skies";
        //         break;
        //     default:
        //         throw new ArgumentOutOfRangeException();
        // }

        return description;
    }
    
    public void ButtonOnPointerEnterCallback(BaseEventData eventData)
    {
        // Debug.Log("Pointer Enter");
    }

    public void ButtonOnClick()
    {
        // Debug.Log("Button Clicked");

    }
}
