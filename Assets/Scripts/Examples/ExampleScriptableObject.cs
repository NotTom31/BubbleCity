using System.Collections;
using System.Collections.Generic;
using UnityEngine;

/// <summary>
/// Boiler plate for a scriptable object, as an example.
/// 
/// CreateAssetMenu creates a context-menu entry (use 'slash' for folder separation), which is used to create new assets.
/// 
/// Reference by type in your scripts however you need. Assign a new or existing asset to the script. Done!
/// </summary>
[CreateAssetMenu(fileName = "ExampleAsset", menuName = "JamAssets/Example Asset")]
public class ExampleScriptableObject : ScriptableObject
{
    public string ExampleString = "Here's an example string";


    public void ExampleFunction()
    {
        // This works! You can just call functions like any script.
        Debug.Log($"I'm being called from ExampleFunction. {ExampleString}");
    }
}
