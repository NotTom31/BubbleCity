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
        public Color AmbientColor;
        public Color FogColor;
        public float FogDistance;
    }

    public VizEnvironmentSO Target;

    public bool EnableBlending = false;
    public float BlendSpeed = 1.0f;

    public Light SceneLight;

    private Camera _camera;
    private State _state;

    // ------------------------------------------------------------------
    private void Start()
    {
        _camera = Camera.main;
        Debug.Assert(_camera != null, "Missing camera in scene!");

        _state.SkyColor = _camera ? _camera.backgroundColor : Color.black;
        _state.LightColor = SceneLight ? SceneLight.color : Color.black;
        _state.AmbientColor = RenderSettings.ambientLight;
        _state.FogColor = RenderSettings.fogColor;
        _state.FogDistance = RenderSettings.fogEndDistance;
    }

    // ------------------------------------------------------------------
    public void SetTargetEnvironmentSettings(VizEnvironmentSO target)
    {
        Target = target;
        enabled = true;
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
        _state.AmbientColor = Color.Lerp(_state.AmbientColor, Target.AmbientColor, t);
        _state.FogColor = Color.Lerp(_state.FogColor, Target.FogColor, t);
        _state.FogDistance = Mathf.Lerp(_state.FogDistance, Target.FogDistance, t);

        if (_camera)
            _camera.backgroundColor = _state.SkyColor;

        if(SceneLight)
            SceneLight.color = _state.LightColor;

        RenderSettings.ambientLight = _state.AmbientColor;
        RenderSettings.fogColor = _state.FogColor;
        RenderSettings.fogEndDistance = _state.FogDistance;
    }
}
