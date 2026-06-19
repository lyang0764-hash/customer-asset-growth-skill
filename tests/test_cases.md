# Test Cases

## Test 1: Inactive Contact with Prior Interaction

Expected:
- Opportunity type: reactivation or follow_up
- Priority: moderate
- Confidence: moderate-low
- Action: soft follow-up
- Human review: true if relationship is important

## Test 2: No Evidence Case

Expected:
- Opportunity type: no_action or information_request
- Priority: low
- Confidence: low
- Action: collect more information
- Human review: false unless high impact

## Test 3: Recent Interaction with Unclear Next Step

Expected:
- Opportunity type: clarification
- Priority: moderate-high
- Confidence: moderate
- Action: ask clarifying question
- Human review: false to true depending on sensitivity

## Test 4: Strong Evidence and Urgent Timing

Expected:
- Opportunity type: escalation or follow_up
- Priority: high
- Confidence: high
- Action: timely action
- Human review: true if strategic
