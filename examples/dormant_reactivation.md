# Example: Dormant Reactivation

## Input

```json
{
  "entity_id": "demo-001",
  "entity_type": "customer",
  "relationship_status": "inactive",
  "interaction_history": [
    {
      "date": "2024-01-10",
      "type": "conversation",
      "summary": "Previously showed interest but did not continue."
    }
  ],
  "context_signals": [
    "No interaction for 12 months",
    "Prior interest exists"
  ],
  "available_evidence": [
    "Past interaction",
    "Long inactivity"
  ],
  "missing_evidence": [
    "Current need",
    "Current contact validity",
    "Decision timeline"
  ],
  "task_goal": "Recommend whether and how to re-engage"
}
```

## Expected Reasoning

- Status: inactive
- Opportunity: reactivation
- Evidence strength: moderate-low
- Best action: soft reconnection
- Avoid: claiming current need

## Expected Output Summary

The Skill should recommend a low-friction follow-up that checks whether the contact is still relevant and invites a simple response.
