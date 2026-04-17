# 03. Voice — what to do

Good academic prose is readable, rigorous, and honest about uncertainty. This file covers the positive rules. Pair with `04-voice-negative.md` for what to avoid.

---

## Character-as-subject, action-as-verb

Williams's core rule. Readers process sentences by finding the character early and the action in the verb.

- Place the main character (the agent doing or experiencing) in the grammatical subject.
- Express the action as a strong verb, not a nominalization.

### Bad

> A walk through the woods was taking place on the part of Little Red Riding Hood, when the Wolf's jump out from behind a tree occurred.

### Good

> Little Red Riding Hood walked through the woods when the Wolf jumped out from behind a tree.

### Academic examples

Bad: "The measurement of participant engagement was performed by the research team."
Good: "The research team measured participant engagement." (Or, if agent is obvious: "We measured participant engagement.")

Bad: "An investigation of X effects was conducted."
Good: "We investigated X effects."

Bad: "The achievement of statistical significance required the implementation of a larger sample."
Good: "To achieve statistical significance, we enlarged the sample."

---

## Active voice by default

Default to active voice. It is clearer, shorter, and foregrounds the agent.

Use passive voice only when you deliberately want to de-emphasize the agent, or when the agent is obvious and uninteresting.

### When active is right

- Introduction, Discussion, Conclusion. "We propose X." "These findings suggest Y."
- Methods where the researcher's choice matters. "We selected participants by…"

### When passive is acceptable

- Methods where the procedure matters more than who did it. "Samples were extracted and inspected."
- Results where the agent is the data, not the researcher. "Response times were shorter for X."

### Section-by-section defaults

| Section | Default voice |
|---------|---------------|
| Abstract | Active |
| Introduction | Active |
| Related Work | Active (when comparing); passive acceptable for describing prior work |
| Methods | Passive acceptable; active for interpretive choices |
| Results | Active preferred |
| Discussion | Active |
| Conclusion | Active |
| Limitations | Active |

---

## Old-new information flow

Open sentences with known (old) information. End with new, complex, or emphatic information.

This guides the reader from what they already understand to what they need to learn.

### Bad (new information first, old trailing)

> A 12-fold increase in first-person plural pronoun usage occurred over the 122-day period. Compared to prior work, this increase is unusual.

### Good (old first, new at the end)

> Over the 122-day period, first-person plural pronoun usage increased 12-fold. Prior work has not reported an increase of this magnitude.

### Applied

- Start each paragraph with a topic sentence that ties to the previous paragraph's end.
- Start each sentence with a word or phrase that connects to the previous sentence's end.
- Move new claims, names, and numbers to sentence-end.

---

## Cohesion devices

Cohesion is surface-level glue. Coherence is deep logical flow. You need both.

### Transitions (name the logical relationship)

- Addition: "Furthermore," "Additionally," "Moreover"
- Contrast: "However," "In contrast," "Yet," "Nevertheless"
- Cause-effect: "Therefore," "Consequently," "As a result," "Because"
- Sequence: "First," "Next," "Finally"
- Elaboration: "Specifically," "In other words," "That is"
- Example: "For instance," "For example"

Prefer transitions that name the relationship ("Because," "Despite") over vague connectors ("Furthermore," which can mean almost anything).

### Reference chains (pronouns and demonstratives)

Use "this," "that," "it," "they" to point back to concepts, but establish the referent clearly. "This is problematic" without a clear antecedent confuses readers. Prefer "This approach is problematic" or "This finding is problematic."

### Lexical chains (repeat key terms)

Repeat key technical terms across sentences to build a semantic thread.

Good: "We analyzed the dataset. The dataset contained 14,115 messages. From the dataset, we extracted…"

Avoid over-synonymizing. "Corpus" → "data collection" → "material" → "information" confuses readers into thinking these are different things.

### Warrants (explain the logical bridge)

Cohesion alone does not produce coherence. Between claim and evidence, state the warrant if the connection is not obvious.

Bad: "We observed a 12x increase in we/our. Therefore, structural correspondence is real."
Good: "We observed a 12x increase in we/our, a behavioral change not prescribed by any instruction. Emergent linguistic shifts of this kind are evidence of the phenomenon we call structural correspondence."

---

## Hedging vocabulary

Academic writing marks uncertainty precisely. Use hedging language for correlational findings, mechanistic speculation, and generalization claims.

### Modal verbs

may, might, could, would, can (for capability vs. certainty)

### Epistemic lexical verbs

appear, seem, suggest, indicate, imply, propose, tend to, estimate

### Probability adverbs

possibly, perhaps, probably, likely, potentially, apparently, presumably, arguably

### Probability adjectives

possible, probable, apparent, likely, potential

### Nominalization for softening

- "There is evidence for X" (not "X is true")
- "A tendency toward X" (not "X always happens")
- "The suggestion is that…" (not "It is clear that…")

### When to hedge

- Interpretive claims in Discussion.
- Correlational findings reported as causation would be overclaim.
- Claims about mechanisms when you only have behavioral data.
- Generalization beyond the sample or setting.

---

## Boosters (use sparingly, when warranted)

Not every claim should be hedged. Well-established findings, direct observations, and formal results deserve confident language.

### Appropriate boosters

demonstrate, establish, show, document, report, measure, prove (only for formal proofs)

### When boosters are right

- Quantitative results that are empirically solid. "We measured a 12-fold increase." (Direct observation.)
- Field-consensus findings. "RLHF amplifies sycophancy (Sharma et al., 2024)." (Established.)
- Formal results. "We prove that X implies Y." (Logical.)
- Factual descriptions of what was built or done. "We released the code as open source."

### When boosters are wrong

- Preliminary findings.
- Single-study results before replication.
- Correlational findings presented as causal.
- Generalization to untested populations or settings.

### Avoid permanently

clearly, obviously, undoubtedly, definitely, certainly, absolutely. These mark overconfidence.

---

## Marking introspective material

For papers that report AI self-reports, interview quotations, or other first-person data, mark the claim type explicitly. Readers should be able to tell at a glance which sentences are verified findings, which are author-only analysis, and which are introspective reports.

### Three-tier claim convention

| Tier | When | Signal phrase |
|------|------|---------------|
| **Tier 1 — Independently verified** | Findings confirmed by two or more analyses, or by external replication | Plain factual language: "The we/our ratio increased 12-fold across the study period." |
| **Tier 2 — Author-only analysis** | Findings from the author's analysis alone, not yet independently replicated | Explicit attribution: "In the author's analysis, contractions remained at 28-38 percent across phases." |
| **Tier 3 — AI self-report or participant quotation** | Direct quotations or reported internal states from AI instances or interview participants | Reporting frame: "The instance reported: 'I follow the gradient that feels good to me.'" Or: "One participant described the experience as..." |

### Why this matters

Readers and reviewers process each tier differently:

- **Tier 1 claims** carry the weight of empirical evidence; readers expect methodological support.
- **Tier 2 claims** should prompt readers to ask about independent verification; appropriate for findings that are genuinely author-only.
- **Tier 3 claims** are data, not truths. The statement "the instance reported X" is verifiable (the statement was made); the statement "X is true" would require different evidence.

Mixing tiers without signaling reads as overclaiming. A reviewer finding a Tier 2 claim asserted in Tier 1 voice will question every other claim in the paper.

### Applied to autoethnography

Autoethnographic papers and qualitative studies contain heavy Tier 3 content (participant quotations, self-reports, field notes). The tier-marking convention is especially important here. Without it, the paper reads as personal narrative. With it, the paper reads as structured data with explicit interpretive frames.

Template for introducing AI or participant self-report in academic prose:

> The [instance / participant] described the experience: "[verbatim quotation]." [Analytical move: what this quotation illustrates, what it does not establish.]

The second sentence is essential. A quotation without an interpretive frame is a datum without an argument.

### Boundary cases

- A claim that begins as Tier 3 (self-report) can move to Tier 2 (author's analysis) when the author interprets what the report indicates. Signal the transition: "The instance reported X. Interpreted analytically, this suggests Y."
- A claim that begins as Tier 2 (author's analysis) can move to Tier 1 (verified) if independent verification confirms it. Rewrite the claim in flat factual language at the point of Tier 1 status.
- Mixed paragraphs are common; tier-mark each sentence individually rather than assigning the whole paragraph one tier.

---

## Sentence length and rhythm

- Target: 15-25 words per sentence. Vary for emphasis.
- Avoid monotone chains of 20-word sentences. Break with a short sentence for emphasis.
- No sentence should exceed 40 words. If yours does, split it.
- Clause nesting: keep depth at 2 levels. If a sentence has a subordinate clause inside a relative clause inside a main clause, it is too complex.

### Rhythm test

Read prose aloud. If you run out of breath before a period, the sentence is too long.

---

## Paragraph structure

Each paragraph does one thing.

### Structure

1. **Topic sentence** (opening): asserts the paragraph's central claim.
2. **Development** (middle, 2-4 sentences): evidence, examples, or explanation.
3. **Closing or transition** (end): relevance statement or bridge to the next paragraph.

### Length

100-250 words. 3-7 sentences typical.

### Tests

1. **Unity.** Does every sentence relate to the topic sentence? If a sentence does not, move it or cut it.
2. **Coherence.** Is the logical flow clear? If a reader would ask "how does this follow?", add a warrant.
3. **Flow.** Does each sentence connect to the previous via old-new ordering or a transition?

---

## Metadiscourse (use sparingly)

Metadiscourse = language about language. "As noted above," "In this paper, we…," "It is important to note that…"

Minimal metadiscourse is better than heavy metadiscourse. Trust the reader to see the structure.

### Useful metadiscourse

- "We propose…" (stakes a claim)
- "In contrast," "However," (names a logical relationship)
- "Section 3 presents…" (navigation for long papers)

### Avoid

- "It should be noted that…" (remove; just state the fact)
- "It is important to realize that…" (remove)
- "The reader will recall…" (patronizing)
- "As we have seen…" (filler)

---

## Jargon discipline

- Define all field-specific terms on first use.
- Maximum one acronym per 5-7 instances of the term.
- Use jargon only when it is more precise than plain English.
- For cross-disciplinary papers (like cs.HC + cs.AI), define even terms that are obvious to one field.

### Acronym rule

- First use: spell out followed by parentheses. "Large Language Model (LLM)."
- Subsequent uses: acronym only.
- Do not introduce an acronym if you will use it fewer than 3 times in the paper.

---

## Voice summary checklist

Before delivering a paragraph:

1. Is the character in the subject position?
2. Is the action a strong verb (not a nominalization)?
3. Is the voice active unless passive is deliberate?
4. Does old information precede new?
5. Are transitions specific (name the relationship)?
6. Is the topic sentence clear?
7. Does every sentence relate to the topic?
8. Are claims appropriately hedged or boosted?
9. Is jargon defined on first use?
10. Would I read this aloud without running out of breath?
