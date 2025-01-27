using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ThunderFx : MonoBehaviour
{
    public Light Light;
    public ParticleSystem Particles;
    public GameObject[] Lightnings;

    private void Awake()
    {
        foreach(var lightning in Lightnings)
        {
            lightning.SetActive(false);
        }

    }

    private void OnEnable()
    {
        StartCoroutine(ControlFlashing());
    }

    private IEnumerator ControlFlashing()
    {
        while(true)
        {
            yield return new WaitForSeconds(Random.Range(2.0f, 7.0f));
        }
    }

    public IEnumerator TriggerFlash()
    {
        foreach (var lightning in Lightnings)
        {
            lightning.SetActive(true);
        }
        
        Light.intensity = 3.0f;
        yield return new WaitForSeconds(Random.Range(0.3f, 0.6f));
        Light.intensity = 1.0f;
        
        foreach (var lightning in Lightnings)
        {
            lightning.SetActive(false);
        }
    }
}
