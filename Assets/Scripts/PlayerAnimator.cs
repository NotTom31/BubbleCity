using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public class PlayerAnimator : MonoBehaviour
{
    public Animator Animator;
    public NavMeshAgent Agent;
    public bool IsWorking;

    public static readonly int WALK_HASH = Animator.StringToHash("IsWalking");
    public static readonly int WORK_HASH = Animator.StringToHash("DoingAction");

    private void Update()
    {
        if (!Animator)
            return;

        if (!Agent)
            return;

        Animator.SetBool(WALK_HASH, Agent.velocity.magnitude > float.Epsilon);
        Animator.SetBool(WORK_HASH, IsWorking);
    }

    public void PlayFootstep()
    {
        AudioManager.Instance.PlayFootstep();
    }
}
