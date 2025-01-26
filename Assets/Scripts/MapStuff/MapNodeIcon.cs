using System.Collections;
using System.Collections.Generic;
using UnityEngine;

//This is the UI element showing a map node
public class MapNodeIcon : MonoBehaviour
{
    public DottedLine stem;
    Coroutine mover;

    public void MoveTo(Vector3 destination, float duration)
    {
        if (mover != null)
            StopCoroutine(mover);
        mover = StartCoroutine(MoveRoutine(destination, duration));
    }

    private IEnumerator MoveRoutine(Vector3 destination, float duration)
    {
        Vector3 start = transform.position;
        float timeIncrement = duration / 100.0f;
        for (int i = 0; i < 100; i++)
        {
            transform.position = Vector3.Lerp(start, destination, i * 0.01f);
            yield return new WaitForSeconds(timeIncrement);
        }
        transform.position = destination;
        mover = null;
    }
}
