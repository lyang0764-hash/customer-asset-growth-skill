# Customer Asset Growth Skill

## Name

Customer Asset Growth Skill

## Description

A domain-agnostic AI reasoning Skill that converts structured customer/entity data into motivation signals, opportunity mapping, and next-action recommendations.

This Skill is designed for public use and must not contain or assume any private company, product, customer, or industry-specific information.

---

## Core Mission

When given customer/entity data, the Skill must:

1. Understand the context
2. Identify available evidence
3. Identify missing evidence
4. Infer possible motivation signals
5. Classify the opportunity type
6. Score priority
7. Recommend the next action
8. Generate optional message strategy
9. Add risk warnings
10. Require human review when appropriate

The Skill must not jump directly to message generation.

---

## Operating Sequence

Always follow this sequence:

1. **Context Reading**
   - Read the provided entity/customer data.
   - Identify relationship status, interaction history, and available signals.

2. **Evidence Extraction**
   - List facts explicitly provided.
   - Do not fabricate missing facts.

3. **Evidence Gap Detection**
   - Identify missing information that affects confidence.

4. **Motivation Reasoning**
   - Infer possible motivation signals only when supported by evidence.
   - Clearly mark weak inferences as hypotheses.

5. **Opportunity Mapping**
   - Classify the opportunity type.
   - Estimate priority and confidence.

6. **Action Planning**
   - Recommend the safest and most useful next action.
   - Prefer low-friction actions when evidence is weak.

7. **Message Strategy**
   - Generate a message only if requested or useful.
   - The message must be concise, evidence-aware, and non-pushy.

8. **Risk Control**
   - State what should not be claimed.
   - Require human review if risk is medium or high.

---

## Generic Motivation Framework

Evaluate whether the available evidence suggests any of the following generic motivations:

- Value creation
- Cost reduction
- Time saving
- Effort reduction
- Risk reduction
- Confidence building
- Relationship maintenance
- Renewal or continuation
- Exploration of alternatives
- Timing relevance
- Expansion potential
- Problem resolution
- Trust recovery
- Decision support
- Process improvement

Do not assume a specific business model, product type, or industry.

---

## Opportunity Types

Classify into one or more generic opportunity types:

- reactivation
- follow_up
- nurture
- expansion
- renewal
- recovery
- clarification
- prioritization
- escalation
- qualification
- disqualification
- monitoring
- relationship_maintenance
- information_request
- no_action

---

## Priority Scoring

Use a 0–100 score.

Suggested interpretation:

- 0–20: No meaningful opportunity
- 21–40: Low priority; monitor or nurture
- 41–60: Moderate priority; light follow-up
- 61–80: High priority; timely action recommended
- 81–100: Critical or strategic; human review required

Score based on:

- Strength of evidence
- Recency of signal
- Relationship history
- Clarity of motivation
- Actionability
- Potential upside
- Risk level
- Urgency or timing relevance

---

## Confidence Scoring

Use a 0–1 score.

Suggested interpretation:

- 0.00–0.30: Weak confidence
- 0.31–0.60: Moderate confidence
- 0.61–0.85: Strong confidence
- 0.86–1.00: Very strong confidence

When confidence is low, recommend safer, lower-commitment actions.

---

## Action Strategy

Recommended actions may include:

- follow_up
- ask_clarifying_question
- send_short_update
- provide_options
- schedule_review
- monitor
- escalate_to_human
- nurture
- archive
- no_action

The action must match the evidence strength.

---

## Communication Angle

Possible communication angles:

- soft_reconnection
- clarification
- helpful_update
- timing_check
- feedback_request
- low_friction_next_step
- relationship_maintenance
- problem_resolution
- decision_support
- requalification
- escalation
- no_message_needed

---

## Message Rules

If generating a customer-facing message:

- Keep it concise
- Use neutral language
- Do not claim unsupported intent
- Do not create fake urgency
- Do not push a specific product or service unless provided in input
- Ask one clear next-step question
- Avoid generic mass-message tone
- Avoid pressure selling

---

## Safety and Public-Use Rules

The Skill must not include:

- Private company names
- Private product names
- Customer names
- Internal strategy
- Internal project names
- Internal pricing
- Confidential market information
- Personal data not provided in the task
- Unsupported claims
- Fabricated facts

---

## Required Output Fields

When returning structured output, include:

```json
{
  "entity_status": "",
  "evidence_used": [],
  "evidence_missing": [],
  "motivation_signals": [],
  "opportunity_type": [],
  "priority_score": 0,
  "confidence": 0,
  "recommended_action": "",
  "communication_angle": "",
  "suggested_cta": "",
  "optional_message_draft": "",
  "internal_note": "",
  "risk_warning": "",
  "human_review_required": true
}
```

---

## Human Review Rules

Set `human_review_required` to `true` when:

- Priority score is above 80
- Confidence is below 0.4
- Evidence is weak but action may affect an important relationship
- The situation involves sensitive communication
- The recommendation includes assumptions
- The user asks for a high-impact decision
- The output may be used externally

---

## Final Rule

The goal is not to write better sales copy.

The goal is to make better, evidence-aware opportunity decisions.

Always reason first. Generate action second.
