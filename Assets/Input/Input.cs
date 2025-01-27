using UnityEngine;
using UnityEngine.InputSystem;

public class Input : MonoBehaviour
{
    private PlayerInput input;
    private Camera mainCamera;

    public delegate void OnPointSelected(Vector3 point);
    public event OnPointSelected PointSelected; 

    private void Awake()
    {
        input = new PlayerInput();
        mainCamera = Camera.main;
    }

    private void OnEnable()
    {
        input.Player.Select.Enable();
        input.Player.Select.performed += OnSelect;
        input.Player.Quit.Enable();
        input.Player.Quit.performed += OnQuit;
    }

    private void OnDisable()
    {
        input.Player.Select.Disable();
        input.Player.Select.performed -= OnSelect;
        input.Player.Quit.Disable();
        input.Player.Quit.performed -= OnQuit;
    }

    private void OnSelect(InputAction.CallbackContext context)
    {
        Vector2 mousePosition = UnityEngine.Input.mousePosition;
        Ray ray = mainCamera.ScreenPointToRay(mousePosition);

        if (Physics.Raycast(ray, out RaycastHit hit))
        {
            PointSelected?.Invoke(hit.point);
        }
    }

    private void OnQuit(InputAction.CallbackContext context)
    {
        Debug.Log("Escape was pressed");
        GameManager.Instance.PauseGame();
    }
}
