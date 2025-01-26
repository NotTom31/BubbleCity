using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class DottedLine : MonoBehaviour
{
    static readonly float X_TO_W = 128f;
    static readonly float HEIGHT = 32f;
    static readonly float BUFFER = 50f;
    
    Vector3 vertex0;
    Vector3 vertex1;

    RectTransform rt;
    RawImage ri;

    private void Awake()
    {
        rt = GetComponent<RectTransform>();
        ri = GetComponent<RawImage>();
    }

    public void SetVertices(Vector3 v0, Vector3 v1)
    {
        Vector3 vec = v1 - v0;
        rt.sizeDelta = new Vector2(vec.magnitude - BUFFER * 2f, HEIGHT);
        vec /= 2;
        vec = v0 + vec;
        rt.localPosition = vec;
        float angle = Mathf.Atan2(v1.y - v0.y, v1.x - v0.x);
        rt.eulerAngles = new Vector3(0, 0, angle * Mathf.Rad2Deg);
        ri.uvRect = new Rect(0f, 0f, rt.rect.width / X_TO_W, 1f);
        
        vertex0 = v0;
        vertex1 = v1;
    }
}
