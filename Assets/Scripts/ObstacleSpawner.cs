using UnityEngine;

public class ObstacleSpawner : MonoBehaviour
{
    [SerializeField] private GameObject obstaclePrefab;
    [SerializeField] private GameObject asteroidPrefab;
    [SerializeField] private GameObject[] spawnPoints;
    [SerializeField] private Vector3 spawnArea;
    [SerializeField] private float spawnInterval = 2f;
    [SerializeField] private bool isSpawningEnabled = true;

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
    }

    private void Start()
    {
        SetSpawnPoint(1);
        //EnableSpawner();
        DisableSpawner();
    }

    private void SpawnObstacle()
    {
        if (spawnPoints.Length > 0 && currentSpawnIndex == 0 || currentSpawnIndex == 1 && currentSpawnIndex < spawnPoints.Length)
        {
            SetSpawnInterval(2f);
            Vector3 spawnPosition = spawnPoints[currentSpawnIndex].transform.position;

            //spawnPosition.x += Random.Range(-spawnArea.x / 2, spawnArea.x / 2);
            spawnPosition.x += 0f;
            spawnPosition.z += Random.Range(-spawnArea.z / 2, spawnArea.z / 2);

            Instantiate(obstaclePrefab, spawnPosition, Quaternion.identity);
        }
        else if (spawnPoints.Length > 0 && currentSpawnIndex == 2 || currentSpawnIndex == 3 && currentSpawnIndex < spawnPoints.Length)
        {
            SetSpawnInterval(2f);
            Vector3 spawnPosition = spawnPoints[currentSpawnIndex].transform.position;

            spawnPosition.x += Random.Range(-spawnArea.x / 2, spawnArea.x / 2);
            spawnPosition.z += 0f;
            //spawnPosition.z += Random.Range(-spawnArea.z / 2, spawnArea.z / 2);

            Instantiate(obstaclePrefab, spawnPosition, Quaternion.identity);
        }
        else if(spawnPoints.Length > 0 && currentSpawnIndex == 4 && currentSpawnIndex < spawnPoints.Length)
        {
            SetSpawnInterval(0.5f);
            Debug.Log("asteroid");
            Vector3 spawnPosition = spawnPoints[currentSpawnIndex].transform.position;

            spawnPosition.x += Random.Range(-spawnArea.x, spawnArea.x);
            spawnPosition.z += Random.Range(-spawnArea.z, spawnArea.z);

            Instantiate(asteroidPrefab, spawnPosition, Quaternion.identity);
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
}
