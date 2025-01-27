using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public class PlayerAnimator : MonoBehaviour
{
    public Animator Animator;
    public NavMeshAgent Agent;
    public bool IsWorking;
    public float FootstepDelay = 0.25f;

    public static readonly int WALK_HASH = Animator.StringToHash("IsWalking");
    public static readonly int WORK_HASH = Animator.StringToHash("DoingAction");

    private Coroutine _stepsCoroutine;

    private void Start()
    {
        _stepsCoroutine = StartCoroutine(DoFootsteps());
    }

    private IEnumerator DoFootsteps()
    {
        while(true)
        {
            if(AudioManager.Instance && Agent && Agent.velocity.sqrMagnitude > 0.1f)
            {
                AudioManager.Instance.PlayFootstep();
            }
            yield return new WaitForSeconds(FootstepDelay);
        }
    }

    private void Update()
    {
        if (!Animator)
            return;

        if (!Agent)
            return;

        Animator.SetBool(WALK_HASH, Agent.velocity.magnitude > float.Epsilon);
        Animator.SetBool(WORK_HASH, IsWorking);

    }
}
