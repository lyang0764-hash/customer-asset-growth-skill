# Example: Opportunity Mapping

## Input

```json
{
  "entity_id": "demo-004",
  "entity_type": "account",
  "relationship_status": "active",
  "context_signals": [
    "Recent engagement",
    "Multiple interactions",
    "Clear unresolved question"
  ],
  "available_evidence": [
    "Recent engagement",
    "Open issue"
  ],
  "missing_evidence": [
    "Decision timeline"
  ],
  "task_goal": "Map opportunity priority"
}
```

## Expected Output Summary

The Skill should classify this as a high-priority follow-up or clarification opportunity, with a recommendation to act soon.
