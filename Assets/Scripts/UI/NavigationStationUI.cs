using System;
using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;
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
        GameManager.Instance.CloseNodeMap();
    }
    
    public void SetUpcomingNodes(MapNode leftNode, MapNode rightNode)
    {
        string positives = "Fuel Consumption--";
        string negatives = "Player Speed --\nShip Speed -- \n";
        string descriptionText = $"<<color=#9F5255>{negatives}<color=#AAB99A>{positives}";
        
        leftMapNodeChoiceUI.SetNodeText($"{leftNode.GetNodeType().ToString()} Storm", "Stuff");
        rightMapNodeChoiceUI.SetNodeText($"{rightNode.GetNodeType()} Storm", "Right Stuff");
    }
}
