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
        Debug.Log("Setting Upcoming Nodes, Left: " + leftNode.GetNodeType() + " Right: " + rightNode.GetNodeType());
        var descriptions = GetNodeDescription(leftNode);
        string descriptionText = $"<color=#9F5255>{descriptions.negatives}<color=#AAB99A>{descriptions.positives}";
        leftMapNodeChoiceUI.SetNodeText($"{leftNode.GetNodeType().ToString()}", descriptionText); 
        
        descriptions = GetNodeDescription(rightNode);
        descriptionText = $"<color=#9F5255>{descriptions.negatives}<color=#AAB99A>{descriptions.positives}";
        rightMapNodeChoiceUI.SetNodeText($"{rightNode.GetNodeType()}", descriptionText);
    }

    private (string positives, string negatives) GetNodeDescription(MapNode node)
    {
        (string positives, string negatives) description = ("", "");
        switch (node.GetNodeType())
        {
            case MapNode.NodeType.Cold:
                description.negatives = "Player Speed-\n" +
                                        "Ship Speed-\n";
                description.positives = "Player Speed-\n" +
                                        "Ship Speed-\n";
                break;
            case MapNode.NodeType.Heat:
                description.negatives = "Its Hot\n" +
                                        "Ship Speed--\n";
                description.positives = "Ship Speed+\n";                
                break;
            case MapNode.NodeType.Asteroid:
                description.negatives = "Has Rocks\n";
                description.positives = "Has Rocks\n";
                break;
            case MapNode.NodeType.Wind:
                description.negatives = "Get Blown Around\n" +
                                        "Fuel Consumption+\n";
                description.positives = "Player Speed--\n" +
                                        "Ship Speed+++\n";
                break;
            case MapNode.NodeType.Thunder:
                description.negatives = "Loud\n";
                description.positives = "Bright\n";
                break;
            case MapNode.NodeType.Clear:
                description.negatives = "Not Exciting\n";
                description.positives = "Not Exciting\n";
                break;
            default:
                throw new ArgumentOutOfRangeException();
        }

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
