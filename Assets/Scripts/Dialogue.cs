using UnityEngine;
using UnityEngine.UI;
using TMPro;

public class Dialogue : MonoBehaviour
{
    [Header("UI References")]
    public GameObject dialoguePanel;
    public TextMeshProUGUI dialogueText;
    public Button nextButton;

    [Header("Dialogue Data")]
    public string[] dialogueLines;
    private int currentLineIndex = 0;

    private void Start()
    {
        nextButton.onClick.AddListener(NextDialogue);
        GameManager.Instance.PauseGame();
        GameManager.Instance.isInDialogue = true;
        if (dialogueLines.Length > 0)
        {
            ShowDialogue();
        }
        else
        {
            Debug.LogWarning("No dialogue lines assigned!");
        }
    }

    private void ShowDialogue()
    {
        dialoguePanel.SetActive(true);
        dialogueText.text = dialogueLines[currentLineIndex];
    }

    private void NextDialogue()
    {
        currentLineIndex++;

        if (currentLineIndex < dialogueLines.Length)
        {
            dialogueText.text = dialogueLines[currentLineIndex];
        }
        else
        {
            CloseDialogue();
        }
    }

    private void CloseDialogue()
    {
        GameManager.Instance.isInDialogue = false;
        dialoguePanel.SetActive(false);
        currentLineIndex = 0;
        GameManager.Instance.PauseGame();
    }
}
