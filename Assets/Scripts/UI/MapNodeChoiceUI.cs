using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;
using UnityEngine.UI;

public class MapNodeChoiceUI : MonoBehaviour
{
    public Image backgroundImage;
    public TextMeshProUGUI nodeTitleText;
    public TextMeshProUGUI nodeDescriptionText;

    public void SetHighlighted(bool isHighlighted)
    {
        backgroundImage.enabled = isHighlighted;
    }
    
    public void SetNodeText(string nodeType, string nodeDescription)
    {
        nodeTitleText.text = nodeType;
        nodeDescriptionText.text = nodeDescription;
    }
}
