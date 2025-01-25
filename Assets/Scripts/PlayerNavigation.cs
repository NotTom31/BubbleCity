using UnityEngine;
using UnityEngine.AI;

public class PlayerNavigation : MonoBehaviour
{
    [SerializeField] private Camera mainCamera;
    [SerializeField] private NavMeshAgent navMeshAgent;

    void Start()
    {
        if (mainCamera == null)
        {
            mainCamera = Camera.main;
        }
        if (navMeshAgent == null)
        {
            navMeshAgent = GetComponent<NavMeshAgent>();
        }
    }

    void Update()
    {
        if (Input.GetMouseButtonDown(0)) //change with new input system
        {
            HandleMouseClick();
        }
    }

    private void HandleMouseClick()
    {
        Ray ray = mainCamera.ScreenPointToRay(Input.mousePosition);
        if (Physics.Raycast(ray, out RaycastHit hit))
        {
            if (NavMesh.SamplePosition(hit.point, out NavMeshHit navMeshHit, 1.0f, NavMesh.AllAreas))
            {
                navMeshAgent.SetDestination(navMeshHit.position);
            }
            else
            {
                Debug.Log("Clicked point is not on the NavMesh.");
            }
        }
    }
}
