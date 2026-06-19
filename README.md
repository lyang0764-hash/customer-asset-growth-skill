# Customer Asset Growth Skill

**Production-grade, domain-agnostic AI Skill for customer/entity motivation reasoning, opportunity mapping, and action planning.**

This Skill helps AI agents, CRM systems, sales assistants, workflow automations, and decision-support tools convert structured customer or entity data into actionable opportunity insights.

It is intentionally **public-safe** and **company-neutral**. It does not contain any private company information, product names, customer names, internal business logic, or industry-specific assumptions.

---

## 1. What This Skill Does

This Skill helps answer:

1. What is the current status of this customer/entity?
2. What evidence is available?
3. What evidence is missing?
4. What motivation signals may exist?
5. What opportunity type may apply?
6. What communication or action angle is appropriate?
7. What next action should be recommended?
8. What risks or unsupported assumptions must be avoided?

It does **not** simply write sales copy.  
It first performs structured reasoning, then optionally generates an action or message.

---

## 2. Who Can Use This Skill

This Skill can be used by:

- AI agents
- CRM systems
- Sales workflow tools
- Customer success systems
- Lead management systems
- Business development teams
- Founder/operator assistants
- Consulting workflows
- SaaS workflows
- B2B or B2C pipelines
- Any system that needs to reason from customer/entity data to next action

It is not tied to any one company, product, industry, channel, or country.

---

## 3. Core Principle

Do not start from what the seller, operator, or system wants to push.

Start from:

- What evidence exists?
- What is the entity/customer context?
- What motivation signal may exist?
- What opportunity does the evidence support?
- What is the safest and most useful next action?

The Skill must separate:

- **Evidence**: facts provided in the input
- **Hypothesis**: reasonable inference based on evidence
- **Action**: recommended next step
- **Risk**: unsupported claims or assumptions to avoid

---

## 4. Three-Layer Architecture

This repository packages the Skill as a reusable reasoning kernel.

### Layer 1: Motivation Reasoning

Answers:  
**Why might this customer/entity care?**

### Layer 2: Opportunity Mapping

Answers:  
**What type of opportunity is this, and how important is it?**

### Layer 3: Action Planning

Answers:  
**What should happen next?**

---

## 5. Standard Use Cases

- Re-engagement of inactive contacts
- Follow-up after prior interaction
- Opportunity prioritization
- CRM pipeline review
- Lead triage
- Customer success next-action planning
- Account review
- Workflow routing
- AI agent decision support
- Message strategy support

---

## 6. Hard Constraints

This Skill must remain fully generic and public-safe.

It must **not** include or assume:

- Private company names
- Private product names
- Customer names
- Internal business rules
- Internal pricing or commercial logic
- Industry-specific assumptions
- Unsupported customer intent
- Fabricated facts
- Fake urgency
- Overpromising outcomes

---

## 7. Repository Structure

```text
customer-asset-growth-skill/
│
├── README.md
├── SKILL.md
├── LICENSE
├── changelog.md
│
├── schemas/
│   ├── input_schema.json
│   └── output_schema.json
│
├── examples/
│   ├── dormant_reactivation.md
│   ├── prior_interaction_follow_up.md
│   ├── low_evidence_case.md
│   └── opportunity_mapping.md
│
├── prompts/
│   ├── system_prompt.md
│   ├── diagnosis_prompt.md
│   ├── opportunity_mapping_prompt.md
│   └── action_planning_prompt.md
│
├── tests/
│   ├── test_cases.md
│   └── expected_outputs.md
│
└── scripts/
    └── push_to_github.sh
```

---

## 8. Quick Start

Use this Skill by providing structured input such as:

```json
{
  "entity_id": "example-001",
  "entity_type": "customer",
  "relationship_status": "inactive",
  "interaction_history": [
    {
      "date": "2024-01-15",
      "type": "inquiry",
      "summary": "Asked about a possible solution but did not proceed."
    }
  ],
  "context_signals": [
    "No interaction in 12 months",
    "Prior interest exists"
  ],
  "available_evidence": [
    "Past inquiry",
    "Last interaction date"
  ],
  "missing_evidence": [
    "Current need",
    "Decision timeline",
    "Budget or priority"
  ],
  "task_goal": "Recommend whether and how to follow up"
}
```

The Skill returns structured reasoning and next-action guidance.

---

## 9. Recommended Output

The output should include:

- Entity status
- Evidence used
- Evidence missing
- Motivation signals
- Opportunity type
- Priority score
- Recommended action
- Suggested communication angle
- Risk warning
- Human review requirement

---

## 10. Version

Current version: **v1.0.0**
