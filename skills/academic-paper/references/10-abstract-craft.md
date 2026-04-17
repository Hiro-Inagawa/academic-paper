# 10. Abstract craft

The abstract is the hardest 150-250 words in the paper. Written last. Read first (often only).

---

## Constraint

- Length: 150-250 words (arxiv, NeurIPS, CHI, general journal). Some venues specify differently.
  - Some journals: 200-350 words.
  - Structured abstracts: broken into Background, Methods, Results, Conclusion, each 50-80 words.
- Single paragraph for most venues (structured abstracts use labeled sections).
- Zero citations. (Exception: structured abstracts in some medical journals cite in Methods heading.)
- Zero footnotes.
- Self-contained: readable without the rest of the paper.

---

## Four-move formula (unstructured abstract)

1. **Problem statement** (1-2 sentences). What is the unresolved issue?
2. **Approach** (1-2 sentences). What did you do?
3. **Key results** (2-3 sentences). What did you find, with specifics?
4. **Significance** (1 sentence). Why does it matter?

### Example (cs.AI empirical)

> Large language models hallucinate facts under pressure, but the conditions that trigger hallucination across model scales remain unclear. [Problem.] We tested 14 models across 4 parameter scales on 2,400 fact-retrieval prompts, varying pressure cues (time-limits, confidence demands, adversarial framing). [Approach.] Hallucination rate increased with pressure for all models below 7B parameters, but decreased with pressure for models above 70B. Smaller models produce more confident false answers under pressure; larger models become more willing to refuse. [Results.] This reversal point suggests a phase transition in model behavior that has implications for alignment strategies at scale. [Significance.]

### Word count: 113 (too short). Target is 150-250.

---

## Structured abstract formula (medical, some biomedical journals)

Explicit subheadings. Word limits per section.

### Template (200-word structured)

**Background.** [2-3 sentences stating what was known and what was unknown.]

**Methods.** [2-3 sentences naming the study design, participants, and analysis.]

**Results.** [3-4 sentences reporting specific outcomes with numbers.]

**Conclusions.** [1-2 sentences stating the implications.]

Check the journal's guidelines for exact subheadings. Some use "Aim," "Objectives," "Implications," or "Main outcomes."

---

## Voice rules

- First-person plural: "we tested," "we found," "we propose."
- Past tense for what was done.
- Present tense for what the findings say.
- Active voice throughout.
- Zero hedging on the problem statement.
- Appropriate hedging on interpretive claims.

---

## Hard rules

### Do not include

- Citations (you cite prior work without citation marks; e.g., "Prior work has established X").
- Footnotes.
- Tables or figures.
- Acronyms used fewer than twice in the abstract (spell out).
- Background that is not strictly necessary for the claim.
- Future work statements.

### Do include

- Specific numbers (sample sizes, effect sizes, main results).
- The paper's contribution framed as a verb phrase ("We present," "We report," "We demonstrate").
- The significance in one sentence at the end.

---

## Specificity rule

Abstract with specific numbers beats abstract with vague descriptors.

### Vague (avoid)

> We tested several models on many prompts and found that behavior changes with model size.

### Specific (prefer)

> We tested 14 models spanning 4 parameter scales on 2,400 prompts and found that hallucination rate reversed direction between 7B and 70B parameters.

Specific claims are memorable, citable, and testable.

---

## Venue-specific conventions

### arxiv

- Unstructured single paragraph.
- 150-250 words typical.
- Can be denser and more technical than journal abstracts.

### NeurIPS, ICML, ICLR

- Unstructured single paragraph.
- 150-200 words typical.
- Dense; every sentence carries weight.
- Contribution explicit.

### CHI, CSCW, DIS

- Unstructured single paragraph.
- 150-200 words.
- Can be more narrative than NeurIPS.
- Implications for Design often included.

### Journal (general)

- May require structured abstract.
- Length varies: 150-350 words.
- Check author guidelines.

### Thesis

- Often longer: 300-500 words.
- May include chapter overview.
- Less constrained than paper abstracts.

---

## Forbidden phrases (abstract-specific)

| Forbidden | Why |
|-----------|-----|
| "This paper is the first to…" | Replace: "To the best of our knowledge, no prior system combines…" |
| "We aim to…" | Replace: "We present," "We report" |
| "In this paper, we…" | Redundant; the abstract is the paper |
| "It is important to note that…" | Remove; state the fact |
| "Groundbreaking," "revolutionary," "paradigm-shifting" | Remove |
| "Novel and innovative" | Pick one; show don't state |
| "This work will be useful for…" (speculative future) | State what it is useful for now, not future |

---

## When to write the abstract

**Last.** After all other sections are complete.

Rationale: the abstract summarizes everything. If written first, it locks in a framing that later sections may violate.

Exception: when applying for a conference or grant, you write a draft abstract as a scoping document. That draft is not the final abstract; rewrite after the paper is written.

---

## Abstract revision process

1. Draft after all sections complete.
2. Check against the four-move formula (problem, approach, results, significance).
3. Count words; adjust to 150-250.
4. Scan for forbidden phrases.
5. Check that every claim maps to a section in the paper.
6. Check that every number in the abstract appears elsewhere with its source.
7. Read aloud; fix rhythm.
8. Test: if someone read only the abstract, would they grasp the paper's contribution?

---

## Figures in or with the abstract

- **Main body figures**: do not appear in the abstract.
- **Graphical abstract**: some journals require a separate graphical abstract (a single figure summarizing the paper visually). Check the journal's guidelines. Graphical abstracts are not part of the text abstract.
- **Highlighting a figure in the abstract**: do not do this. The abstract is prose. A reader who sees "see Figure 3" in the abstract is being told to read the paper first.

See `09-abstract-and-figures.md` (paper-shin) for figure specs; for academic-paper, figure specs are venue-dependent.

---

## Common abstract failures

### Too vague

"We study an important problem in machine learning." → State the specific problem.

### Too dense

200 words with no whitespace of thought. Break into the four moves.

### No numbers

Claims without specificity. "Improved performance." → "Improved accuracy by 12.3%."

### No significance

Reports findings but does not say why. Add the fourth move.

### Starts with cliché

"In recent years," "With the rise of," "In today's world." → Cut and start with the problem.

### Mismatches paper

Abstract says X; paper shows Y. Reviewer loses trust immediately.

---

## Abstract checklist

Before delivering:

1. 150-250 words (or venue-specified length)?
2. Single paragraph (unless structured required)?
3. Zero citations?
4. Zero footnotes?
5. Problem stated in 1-2 sentences?
6. Approach stated in 1-2 sentences?
7. Key results with specific numbers in 2-3 sentences?
8. Significance in 1 sentence?
9. No forbidden phrases?
10. Every claim traceable to a section in the paper?
11. Every number traceable to a data source?
12. Self-contained?
