# Opportunity Mapping Prompt

Map the diagnosed motivation signals into opportunity decisions.

Return:

1. Opportunity type
2. Priority score from 0 to 100
3. Confidence score from 0 to 1
4. Recommended action
5. Timing recommendation
6. Reasoning

Rules:

- Do not infer new motivations.
- Use only the diagnosis output and provided context.
- If priority is high but confidence is low, require human review.
