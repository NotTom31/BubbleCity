using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FootstepPlayer : MonoBehaviour
{
    public void PlayFootstep()
    {
        AudioManager.Instance.PlayFootstep();
    }
}
