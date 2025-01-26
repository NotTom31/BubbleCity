using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Obstacle : MonoBehaviour
{
    private Vector3 windDirection;
    private float windStrength;

    private float oscillationAmplitude = 0.5f;
    private float oscillationSpeed = 2f;

    private Vector3 startPosition;

    void Start()
    {
        windDirection = GameManager.Instance.nodeHazards.GetActiveNodeStats().windDirection;
        windStrength = GameManager.Instance.nodeHazards.GetActiveNodeStats().windSpeed;

        //windDirection = Vector3.left;
        //windStrength = 4f;

        startPosition = transform.position;

        Invoke("DeleteObstacle", UnityEngine.Random.Range(5f, 8f));
    }

    // Update is called once per frame
    void Update()
    {
        PushObstacle();
    }

    private void DeleteObstacle()
    {
        Destroy(gameObject);
    }

    void PushObstacle()
    {
        transform.position -= windDirection * windStrength * Time.deltaTime;

        float newY = startPosition.y + Mathf.Sin(Time.time * oscillationSpeed) * oscillationAmplitude;

        // Set the new position (keep x and z unchanged)
        transform.position = new Vector3(transform.position.x, newY, transform.position.z);

    }
}
