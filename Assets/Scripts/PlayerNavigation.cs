using UnityEngine;
using UnityEngine.AI;

public class PlayerNavigation : MonoBehaviour
{
    [SerializeField] private NavMeshAgent navMeshAgent;
    [SerializeField] private Input inputScript;

    private void Start()
    {
        GameManager.Instance.station = GameManager.StationType.None;

        if (navMeshAgent == null)
        {
            navMeshAgent = GetComponent<NavMeshAgent>();
        }

        if (inputScript == null)
        {
            inputScript = FindObjectOfType<Input>();
        }

        inputScript.PointSelected += MoveToPoint;
    }

    private void OnDestroy()
    {
        inputScript.PointSelected -= MoveToPoint;
    }

    private void MoveToPoint(Vector3 point)
    {
        if (NavMesh.SamplePosition(point, out NavMeshHit navMeshHit, 1.0f, NavMesh.AllAreas))
        {
            navMeshAgent.SetDestination(navMeshHit.position);
        }
        else
        {
            Debug.Log("Clicked point is not on the NavMesh.");
        }
    }

    private void OnTriggerEnter(Collider other)
    {
        switch (other.gameObject.tag)
        {
            case "Fuel":
                GameManager.Instance.station = GameManager.StationType.Fuel;
                break;
            case "Navigation":
                GameManager.Instance.station = GameManager.StationType.Navigation;
                break;
            case "Temperature":
                GameManager.Instance.station = GameManager.StationType.Temperature;
                break;
        }
    }
    private void OnTriggerExit(Collider other)
    {
        switch (other.gameObject.tag)
        {
            case "Fuel":
                GameManager.Instance.station = GameManager.StationType.None;
                break;
            case "Navigation":
                GameManager.Instance.station = GameManager.StationType.None;
                break;
            case "Temperature":
                GameManager.Instance.station = GameManager.StationType.None;
                break;
        }
    }
}
