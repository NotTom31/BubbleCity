using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[CreateAssetMenu(fileName = "New VizEnvironmentSO", menuName = "JamAssets/VizEnvironmentSO")]
public class VizEnvironmentSO : ScriptableObject
{
    public Color SkyColor = Color.white;
    public Color LightColor = Color.white;
    public Color AmbientColor = Color.black;
    public Color FogColor = Color.white;
    public float FogDistance = 300.0f;
}
