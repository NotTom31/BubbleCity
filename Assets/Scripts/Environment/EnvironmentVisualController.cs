using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using UnityEngine;
using static Unity.VisualScripting.Member;
using static UnityEngine.ParticleSystem;

public class EnvironmentVisualController : MonoBehaviour
{
    [System.Serializable]
    public class NodeEntry
    {
        public MapNode.NodeType Type;
        public ParticleSystem ParticlePrefab;
        public VizEnvironmentSO Settings;

        public ParticleSystem ParticleInstance { get; set; }
    }

    public struct State
    {
        public Color SkyColor;
        public Color LightColor;
        public Color AmbientColor;
        public Color FogColor;
        public float FogDistance;

        public ParticleSystem Particles { get; set; }
        public NodeHazards.NodeStats NodeStats { get; set; }
    }

    public GeneralEnvSettings Settings;
    public VizEnvironmentSO Target;
    public ParticleSystem CloudSystemPrefab;
    public NodeEntry[] Entries;

    public bool EnableBlending = false;
    public float BlendSpeed = 1.0f;

    public Light SceneLight;

    private Camera _camera;
    private State _state;
    private ParticleSystem _clouds;
    private ShipMovementSpeedSetting _currentShipSpeed;

    // ------------------------------------------------------------------
    private void Awake()
    {
        
    }

    // ------------------------------------------------------------------
    private void Start()
    {
        _camera = Camera.main;
        Debug.Assert(_camera != null, "Missing camera in scene!");

        // Setup prefab allocations
        foreach (var entry in Entries)
        {
            if (entry.ParticlePrefab)
            {
                var particles = GameObject.Instantiate(entry.ParticlePrefab, _camera.transform);
                particles.Stop(true, ParticleSystemStopBehavior.StopEmittingAndClear);
                particles.transform.localPosition = Vector3.zero;
                particles.transform.localRotation = Quaternion.identity;
                particles.transform.localScale = Vector3.one;

                entry.ParticleInstance = particles;
            }
        }

        if(CloudSystemPrefab)
        {
            var clouds = GameObject.Instantiate(CloudSystemPrefab, _camera.transform);
            clouds.transform.localPosition = Vector3.zero;
            clouds.transform.localRotation = Quaternion.identity;
            clouds.transform.localScale = Vector3.one;

            _clouds = clouds;
            _clouds.Play(true);
        }

        _state.SkyColor = _camera ? _camera.backgroundColor : Color.black;
        _state.LightColor = SceneLight ? SceneLight.color : Color.black;
        _state.AmbientColor = RenderSettings.ambientLight;
        _state.FogColor = RenderSettings.fogColor;
        _state.FogDistance = RenderSettings.fogEndDistance;

        OnHazardsSet(MapNode.NodeType.Clear, new NodeHazards.NodeStats()
        {
            windDirection = Vector3.forward
        });

        // Subscribe to hazarding
        var hazards = GameManager.Instance ? GameManager.Instance.nodeHazards : null;
        Debug.Assert(hazards != null, "Hazards are missing!");
        if (hazards != null)
        {
            hazards.OnNodeTypeSet += OnHazardsSet;
        }

        var logistics = GameManager.Instance ? GameManager.Instance.Logistics : null;
        if(logistics != null)
        {
            logistics.OnShipMevementSpeedEnumChanged += Logistics_OnShipMevementSpeedEnumChanged;
        }
    }

    private void Logistics_OnShipMevementSpeedEnumChanged(ShipMovementSpeedSetting speed)
    {
        _currentShipSpeed = speed;
    }

    // ------------------------------------------------------------------
    private void OnDestroy()
    {
        if (GameManager.Instance != null && GameManager.Instance.nodeHazards != null)
        {
            GameManager.Instance.nodeHazards.OnNodeTypeSet -= OnHazardsSet;
        }

        if (GameManager.Instance != null && GameManager.Instance.Logistics != null)
        {
            GameManager.Instance.Logistics.OnShipMevementSpeedEnumChanged -= Logistics_OnShipMevementSpeedEnumChanged;
        }
    }

    // ------------------------------------------------------------------
    private void OnHazardsSet(MapNode.NodeType type, NodeHazards.NodeStats stats)
    {
        if (_state.Particles)
        {
            _state.Particles.Stop(true, ParticleSystemStopBehavior.StopEmitting);
        }

        var entry = Entries.FirstOrDefault((x) => x.Type == type);
        if(entry != null)
        {
            _state.NodeStats = stats;
            _state.Particles = entry.ParticleInstance;

            SetTargetEnvironmentSettings(entry.Settings);

            if(_state.Particles != null)
            {
                _state.Particles.Play(true);

                var rotation = Quaternion.LookRotation(_state.NodeStats.windDirection);
                var euler = rotation.eulerAngles;
                euler.x = 0;
                euler.z = 0;
                rotation.eulerAngles = euler;

                _state.Particles.transform.rotation = rotation;
            }
        }
    }

    public void TestWind() => SetNodeType(MapNode.NodeType.Wind);
    public void TestClear() => SetNodeType(MapNode.NodeType.Clear);
    public void TestCold() => SetNodeType(MapNode.NodeType.Cold);
    public void TestAsteroid() => SetNodeType(MapNode.NodeType.Asteroid);

    // ------------------------------------------------------------------
    public void SetNodeType(MapNode.NodeType type)
    {
        var yaw = UnityEngine.Random.Range(0, 3) * 90f;
        var rot = Quaternion.Euler(0, yaw, 0);

        OnHazardsSet(type, new NodeHazards.NodeStats()
        {
            windDirection = rot * Vector3.forward
        });
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
            return;
        }

        UpdateCloudSpeed();

        float t = EnableBlending ? BlendSpeed * Time.deltaTime : 1.0f;
        SetBlend(t);
    }

    private void UpdateCloudSpeed()
    {
        if(_clouds)
        {
            var particleSystems = _clouds.GetComponentsInChildren<ParticleSystem>();
            foreach(var p in particleSystems)
            {
                var main = p.main;
                main.simulationSpeed = GetCurrentShipSpeed();
            }
        }
    }

    private float GetCurrentShipSpeed()
    {
        switch(_currentShipSpeed)
        {
            case ShipMovementSpeedSetting.Slow:
                return Settings ? Settings.SlowSpeedMult : 1;

            case ShipMovementSpeedSetting.Medium:
                return Settings ? Settings.SpeedMult : 1;

            case ShipMovementSpeedSetting.Fast:
                return Settings ? Settings.FastSpeedMult : 1;

            default:
                return 1;
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
