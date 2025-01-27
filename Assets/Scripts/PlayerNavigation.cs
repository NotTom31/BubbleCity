using UnityEngine;
using UnityEngine.AI;

public class PlayerNavigation : MonoBehaviour
{
    [SerializeField] private NavMeshAgent navMeshAgent;
    [SerializeField] private Input inputScript;

    private Vector3 windForce = Vector3.zero;
    private float windStrength;

    private bool hasReachedDestination = false;

    private void Start()
    {
        GameManager.Instance.SetStation(GameManager.StationType.None);

        if (navMeshAgent == null)
        {
            navMeshAgent = GetComponent<NavMeshAgent>();
        }

        if (inputScript == null)
        {
            inputScript = FindObjectOfType<Input>();
        }

        inputScript.PointSelected += MoveToPoint;

        //SetWind(Vector3.left, 4f);
    }

    private void OnDestroy()
    {
        inputScript.PointSelected -= MoveToPoint;
    }

    private void Update()
    {
        ApplyWindForce();
        CheckIfReachedDestination(); //We will get stuck navigating in the wind without this
    }

    private void ApplyWindForce()
    {
        if (windForce != Vector3.zero && GameManager.Instance.station == GameManager.StationType.None)
        {
            Vector3 windVelocity = windForce.normalized * windStrength * Time.deltaTime;
            navMeshAgent.Move(-windVelocity);
        }
    }

    private void MoveToPoint(Vector3 point)
    {
        if (NavMesh.SamplePosition(point, out NavMeshHit navMeshHit, 1.0f, NavMesh.AllAreas))
        {
            navMeshAgent.SetDestination(navMeshHit.position);
            navMeshAgent.isStopped = false;
            hasReachedDestination = false;
        }
        else
        {
            Debug.Log("Clicked point is not on the NavMesh.");
        }
    }

    private void CheckIfReachedDestination()
    {
        if (!navMeshAgent.enabled) return;
        if (!navMeshAgent.pathPending && navMeshAgent.remainingDistance <= navMeshAgent.stoppingDistance)
        {
            if (!hasReachedDestination)
            {
                hasReachedDestination = true;
                OnReachedDestination();
            }
        }
    }

    private void OnReachedDestination()
    {
        navMeshAgent.isStopped = true;
        //Debug.Log("Destination reached!");
    }

    public void SetSpeed(float speed)
    {
        navMeshAgent.speed = speed;
    }

    public void SetWind(Vector3 direction, float strength)
    {
        Debug.Log("Here");
        windForce = direction.normalized;
        windStrength = strength;
    }

    private void OnTriggerEnter(Collider other)
    {
        switch (other.gameObject.tag)
        {
            case "Fuel":
                GameManager.Instance.SetStation(GameManager.StationType.Fuel);
                break;
            case "Navigation":
                GameManager.Instance.SetStation(GameManager.StationType.Navigation);
                break;
            case "Temperature":
                GameManager.Instance.SetStation(GameManager.StationType.Temperature);
                break;
        }
    }

    private void OnTriggerExit(Collider other)
    {
        switch (other.gameObject.tag)
        {
            case "Fuel":
                GameManager.Instance.SetStation(GameManager.StationType.None);
                break;
            case "Navigation":
                GameManager.Instance.SetStation(GameManager.StationType.None);
                break;
            case "Temperature":
                GameManager.Instance.SetStation(GameManager.StationType.None);
                break;
        }
    }
}
