using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class EnvironmentVisualTestUI : MonoBehaviour
{
    public List<VizEnvironmentSO> Environments;
    public GameObject ButtonPrefab;
    public Transform Container;

    public void Start()
    {
        var obj = GameObject.Instantiate(ButtonPrefab, Container);
        var button = obj.GetComponentInChildren<Button>();
        button.onClick.AddListener(OnClick);
    }

    private void OnDestroy()
    {
           
    }

    void OnClick()
    {

    }
}
