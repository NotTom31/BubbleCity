using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using static Unity.VisualScripting.Member;

public class EnvironmentVisualController : MonoBehaviour
{
    public struct State
    {
        public Color SkyColor;
        public Color LightColor;
    }

    public VizEnvironmentSO Target;

    public bool EnableBlending = false;
    public float BlendSpeed = 1.0f;

    public Light SceneLight;

    private float _timeStamp;
    private Camera _camera;
    private State _state;

    // ------------------------------------------------------------------
    private void Start()
    {
        _camera = Camera.main;
        Debug.Assert(_camera != null, "Missing camera in scene!");

        _state.SkyColor = _camera ? _camera.backgroundColor : Color.black;
        _state.LightColor = SceneLight ? SceneLight.color : Color.black;
    }

    // ------------------------------------------------------------------
    public void SetTargetEnvironmentSettings(VizEnvironmentSO target)
    {
        Target = target;
        enabled = true;
        _timeStamp = Time.time;
    }

    // ------------------------------------------------------------------
    public void Update()
    {
        if (!Target)
        {
            //enabled = false;
            return;
        }

        float t = EnableBlending ? BlendSpeed * Time.deltaTime : 1.0f;
        SetBlend(t);

        if (t >= 1.0f)
        {
            //enabled = false;
        }
    }

    // ------------------------------------------------------------------
    private void SetBlend(float t)
    {
        _state.SkyColor = Color.Lerp(_state.SkyColor, Target.SkyColor, t);
        _state.LightColor = Color.Lerp(_state.LightColor, Target.LightColor, t);

        if(_camera)
            _camera.backgroundColor = _state.SkyColor;

        if(SceneLight)
            SceneLight.color = _state.LightColor;
    }
}
