using UnityEngine;

public class ObstacleSpawner : MonoBehaviour
{
    [SerializeField] private GameObject obstaclePrefab;
    [SerializeField] private GameObject[] spawnPoints;
    [SerializeField] private float spawnInterval = 2f;
    [SerializeField] private bool isSpawningEnabled = true;
    [SerializeField] private Vector3 spawnArea;

    private float spawnTimer = 0f;
    private int currentSpawnIndex = 0;

    private void Update()
    {
        if (!isSpawningEnabled) return;

        spawnTimer += Time.deltaTime;

        if (spawnTimer >= spawnInterval)
        {
            SpawnObstacle();
            spawnTimer = 0f;
        }

        EnableSpawner();
    }

    private void Start()
    {
        SetSpawnPoint(2);
    }

    private void SpawnObstacle()
    {
        if (spawnPoints.Length > 0 && currentSpawnIndex >= 0 && currentSpawnIndex < spawnPoints.Length)
        {
            Vector3 spawnPosition = spawnPoints[currentSpawnIndex].transform.position;

            if (currentSpawnIndex == 0 || currentSpawnIndex == 1) // Left or Right spawn points
            {
                spawnPosition.z += Random.Range(-spawnArea.z / 2, spawnArea.z / 2);
                spawnPosition.x = 0f;
            }
            else if (currentSpawnIndex == 2 || currentSpawnIndex == 3) // Top or Bottom spawn points
            {
                spawnPosition.x += Random.Range(-spawnArea.x / 2, spawnArea.x / 2);
                spawnPosition.z = 0f;
            }

            Instantiate(obstaclePrefab, spawnPosition, Quaternion.identity);
        }
        else
        {
            Debug.LogWarning("Invalid spawn point.");
        }
    }

    public void SetSpawnPoint(int index)
    {
        if (index >= 0 && index < spawnPoints.Length)
        {
            currentSpawnIndex = index;
            Debug.Log("Spawn point set to index: " + index);
        }
        else
        {
            Debug.LogWarning("Invalid index.");
        }
    }

    public void EnableSpawner() => isSpawningEnabled = true;

    public void DisableSpawner() => isSpawningEnabled = false;

    public void ToggleSpawner() => isSpawningEnabled = !isSpawningEnabled;

    public void SetSpawnInterval(float interval) => spawnInterval = Mathf.Max(0.1f, interval);

    public void SetSpawnArea(Vector3 area) => spawnArea = area;
}
