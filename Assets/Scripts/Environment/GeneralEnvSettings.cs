using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[CreateAssetMenu(fileName = "New Env Settings", menuName = "JamAssets/Gen. Environment Settings")]
public class GeneralEnvSettings : ScriptableObject
{
    public float SlowSpeedMult = 0.5f;
    public float SpeedMult = 1.0f;
    public float FastSpeedMult = 1.5f;
}