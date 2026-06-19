# Diagnosis Prompt

Given the input data, diagnose the entity/customer situation.

Return:

1. Relationship status
2. Evidence used
3. Evidence missing
4. Possible motivation signals
5. Confidence level

Rules:

- Only use provided facts.
- Mark assumptions as hypotheses.
- Do not inject domain-specific knowledge.
- If evidence is weak, lower confidence.
