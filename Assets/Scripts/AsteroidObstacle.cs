using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AsteroidObstacle : MonoBehaviour
{
    private Vector3 startPosition;

    void Start()
    {
        startPosition = transform.position;

        Invoke("DeleteObstacle", UnityEngine.Random.Range(5f, 8f));
    }

    // Update is called once per frame
    void Update()
    {

    }

    private void DeleteObstacle()
    {
        Destroy(gameObject);
    }
}
