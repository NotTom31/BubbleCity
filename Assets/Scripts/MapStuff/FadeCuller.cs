using System.Collections;
using System.Collections.Generic;
using UnityEngine;

//combine this component with a CanvasGroup component. Allows a UI element to fade out and be removed.
public class FadeCuller : MonoBehaviour
{
    CanvasGroup cg;

    private void Awake()
    {
        cg = GetComponent<CanvasGroup>();
    }

    public void FadeAndCull(float duration)
    {
        StartCoroutine(EndRoutine(duration));
    }

    private IEnumerator EndRoutine(float duration)
    {
        float increment = duration / 100.0f;
        for (int i = 0; i < 100; i++)
        {
            cg.alpha = 1.0f - i * 0.01f;
            yield return new WaitForSeconds(increment);
        }
        cg.alpha = 0f;
        Destroy(gameObject);
    }
}
