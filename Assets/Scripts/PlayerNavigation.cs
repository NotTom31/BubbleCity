using UnityEngine;
using UnityEngine.AI;

public class PlayerNavigation : MonoBehaviour
{
    [SerializeField] private NavMeshAgent navMeshAgent;
    [SerializeField] private Input inputScript;

    private void Start()
    {
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
}
