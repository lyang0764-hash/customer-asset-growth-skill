# Example: Prior Interaction Follow-Up

## Input

```json
{
  "entity_id": "demo-002",
  "entity_type": "lead",
  "relationship_status": "prior_interaction",
  "interaction_history": [
    {
      "date": "2026-02-01",
      "type": "meeting",
      "summary": "Discussed a possible need but no decision was made."
    }
  ],
  "context_signals": [
    "Recent interaction",
    "Unclear next step"
  ],
  "available_evidence": [
    "Meeting occurred",
    "No next step confirmed"
  ],
  "missing_evidence": [
    "Decision owner",
    "Timeline",
    "Priority"
  ],
  "task_goal": "Recommend next action"
}
```

## Expected Output Summary

The Skill should recommend clarification, not pressure. The best next action is to ask one focused question about timeline or next step.
