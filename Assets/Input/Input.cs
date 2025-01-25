using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.InputSystem;

public class Input : MonoBehaviour
{

    private PlayerInput input;

    private InputAction Select;

    private void Awake()
    {
        input = new PlayerInput();
    }

    private void OnEnable()
    {
        input.Player.Select.Enable();
        input.Player.Select.performed += OnSelect;
    }

    private void OnDisable()
    {
        input.Player.Select.Disable();
    }

    private void OnSelect(InputAction.CallbackContext context)
    {
        
    }

    private void FixedUpdate()
    {

    }
}