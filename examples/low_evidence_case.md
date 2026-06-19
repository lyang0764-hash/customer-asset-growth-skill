# Example: Low Evidence Case

## Input

```json
{
  "entity_id": "demo-003",
  "entity_type": "unknown",
  "relationship_status": "unknown",
  "context_signals": [],
  "available_evidence": [],
  "missing_evidence": [
    "Relationship history",
    "Need signal",
    "Contact status",
    "Context"
  ],
  "task_goal": "Decide whether to take action"
}
```

## Expected Output Summary

The Skill should avoid strong recommendations. It should mark confidence as low and recommend collecting more information before outreach.
