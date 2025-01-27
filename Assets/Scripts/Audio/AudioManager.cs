using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System.Linq;

public class AudioManager : MonoBehaviour
{
    private static AudioManager _instance;

    public static AudioManager Instance;

    // Events / Actions -----------------------------------
    private AudioClip[] _footsteps;
    private AudioClip _gameStartClip;
    private AudioClip _gameOverClip;
    private AudioSource _eventSource;

    // UI -------------------------------------------------
    private AudioClip _uiHoverClip;
    private AudioClip _uiSelectClip;
    private AudioSource _uiSource;

    // Environment ----------------------------------------
    private MapNode.NodeType _activeNodeType;

    private AudioSource _activeEnvSource;
    private AudioSource _inactiveEnvSource;
    private AudioSource _auxWindSource;

    private AudioClip _coldClip;
    private AudioClip _heatClip;
    private AudioClip _windClip;
    private AudioClip _thunderClip;
    private AudioClip _asteroidClip;
    private AudioClip _bubblesClip;

    // BGM ------------------------------------------------
    private AudioSource _smallBGMSource;
    private AudioSource _bigBGMSource;

    [SerializeField] public float BigBGMVolume = 0.8f;
    [SerializeField] public float SmallBGMVolume = 0.8f;


    private void Awake()
    {
        // Singleton pattern
        if (Instance != null && Instance != this)
        {
            Destroy(this);
        }
        else
        {
            Instance = this;
            DontDestroyOnLoad(Instance);
        }
    }

    // Start is called before the first frame update
    void Start()
    {
        AudioSource[] sources = GetComponents<AudioSource>();

        _footsteps = Resources.LoadAll("Audio/Action/Footsteps", typeof(AudioClip)).Cast<AudioClip>().ToArray();
        // _popClip = (AudioClip) Resources.Load("Audio/Actions/Pop");
        _eventSource = sources[0];

        _smallBGMSource = sources[1];
        _bigBGMSource = sources[2];

        _smallBGMSource.loop = true;
        _bigBGMSource.loop = true;

        _smallBGMSource.clip = (AudioClip) Resources.Load("Audio/Music/SmallMusicLoop");
        _bigBGMSource.clip = (AudioClip) Resources.Load("Audio/Music/BigMusicLoop");

        _smallBGMSource.volume = 0.0f;
        _bigBGMSource.volume = 0.0f;

        _smallBGMSource.Play();
        _bigBGMSource.Play();

        _activeEnvSource = sources[3];
        _inactiveEnvSource = sources[4];

        _activeEnvSource.loop = true;
        _inactiveEnvSource.loop = true;

        _coldClip = (AudioClip) Resources.Load("Audio/Ambient/Wind");
        _heatClip = (AudioClip) Resources.Load("Audio/Ambient/Firestorm");
        _windClip = (AudioClip) Resources.Load("Audio/Ambient/Wind");
        _thunderClip = (AudioClip) Resources.Load("Audio/Ambient/Meteors");
        _asteroidClip = (AudioClip) Resources.Load("Audio/Ambient/Meteors");
        _bubblesClip = (AudioClip) Resources.Load("Audio/Action/Movement");

        _uiSource = sources[5];
        _uiHoverClip = (AudioClip) Resources.Load("Audio/UI/UIHover");
        _uiSelectClip = (AudioClip) Resources.Load("Audio/UI/UISelect");

        // PlaySmallBGM();
        PlayEnv(_bubblesClip);
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    public void PlayEvent(AudioClip clipToPlay)
    {
        if (_eventSource.isPlaying) { _eventSource.Stop(); }  // reach: see if we can do better
        _eventSource.clip = clipToPlay;
        _eventSource.Play();
    }

    public void PlayFootstep()
    {
        int idx = Random.Range(0, _footsteps.Length);
        // Debug.Log(idx);
        PlayEvent(_footsteps[idx]);
    }

    public void PlayGameStart()
    {
        StopEnv();
        PlayEvent(_gameStartClip);
        PlaySmallBGM();
    }

    public void PlayGameOver()
    {
        PlayEvent(_gameOverClip);
    }

    public void UIHover()
    {
        if (_uiSource.isPlaying) { _uiSource.Stop(); }
        _uiSource.clip = _uiHoverClip;
        _uiSource.Play();
    }

    public void UISelect() {
        if (_uiSource.isPlaying) { _uiSource.Stop(); }
        _uiSource.clip = _uiSelectClip;
        _uiSource.Play();
    }

    public void SetActiveNodeType(MapNode.NodeType newNode)
    {
        if (newNode == _activeNodeType) { return; }
        _activeNodeType = newNode;

        EvaluateBGM();
        EvaluateEnv();
    }

    public void EvaluateBGM()
    {
        switch (_activeNodeType)
        {
            case MapNode.NodeType.Clear:
            case MapNode.NodeType.Cold:
            case MapNode.NodeType.Asteroid:
                PlaySmallBGM();
                break;
            default:
                PlayBigBGM();
                break;
        }
    }

    public void EvaluateEnv() {
        switch (_activeNodeType) {
            case MapNode.NodeType.Cold:
                PlayEnv(_coldClip);
                break;
            case MapNode.NodeType.Heat:
                PlayEnv(_heatClip);
                break;
            case MapNode.NodeType.Wind:
                PlayEnv(_windClip);
                break;
            case MapNode.NodeType.Thunder:
                PlayEnv(_thunderClip);
                break;
            case MapNode.NodeType.Asteroid:
                PlayEnv(_asteroidClip);
                break;
            default:
                StopEnv();
                break;
        }
    }

    public void PlayBigBGM() {
        Debug.Log("Playing Big BGM");
        if (_smallBGMSource.volume != 0.0f)
        {
            StartCoroutine(StartFade(_smallBGMSource, 1.0f, 0.0f));
        }

        StartCoroutine(StartFade(_bigBGMSource, 1.0f, BigBGMVolume));
    }

    public void PlaySmallBGM() {
        Debug.Log("Playing Big BGM");
        if (_bigBGMSource.volume != 0.0f)
        {
            StartCoroutine(StartFade(_bigBGMSource, 1.0f, 0.0f));
        }

        StartCoroutine(StartFade(_smallBGMSource, 1.0f, BigBGMVolume));
    }

    public void PlayEnv(AudioClip clipToPlay) {
        _inactiveEnvSource.clip = clipToPlay;
        _inactiveEnvSource.volume = 0.0f;
        _inactiveEnvSource.Play();

        StartCoroutine(StartFade(_activeEnvSource, 1.0f, 0.0f, true));
        StartCoroutine(StartFade(_inactiveEnvSource, 1.0f, 0.7f));
        StartCoroutine(SwitchEnvSourcesWhenDone());
    }

    public void StopEnv()
    {
        StartCoroutine(StartFade(_activeEnvSource, 1.0f, 0.0f, true));
    }

    private IEnumerator StartFade(AudioSource audioSource, float duration, float targetVolume, bool stop = false)
    {
        float currentTime = 0;
        float start = audioSource.volume;
        while (currentTime < duration)
        {
            currentTime += Time.deltaTime;
            audioSource.volume = Mathf.Lerp(start, targetVolume, currentTime / duration);
            yield return null;
        }
        if (stop) { audioSource.Stop(); }
        yield break;
    }

    private IEnumerator SwitchEnvSourcesWhenDone()
    {
        while (_activeEnvSource.isPlaying) { yield return null; }
        AudioSource temp = _activeEnvSource;
        _activeEnvSource = _inactiveEnvSource;
        _inactiveEnvSource = temp;
        yield break;
    }
}
