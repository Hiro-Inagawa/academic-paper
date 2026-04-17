# 04. Voice — what to avoid (tiered)

Two tiers. Tier 1 is hard-reject: scan every paragraph and reject if matched. Tier 2 is contextual: flag, do not auto-reject, let the user decide.

The tier design exists because a humanities paper and a NeurIPS methods section have different voice expectations. Tier 1 applies across all formal academic prose. Tier 2 is disciplinary- or section-dependent.

---

## Tier 1. Universal hard-rejects

These are wrong in any formal academic paper. Scan every paragraph. If matched, rewrite before delivery.

### Typography

| Forbidden | Replacement |
|-----------|-------------|
| Em dash `—` in formal prose | period, comma, semicolon, or parentheses |
| Contractions (don't, can't, it's, we're, won't) | spell out (do not, cannot, it is, we are, will not) |
| Multiple exclamation points | at most one, and almost never |

Em dashes are acceptable in some popular writing, quoted dialogue, and a few journal house styles (rare). In academic formal prose, default to replacing them.

### AI self-reference

| Forbidden | Why |
|-----------|-----|
| "As an AI," | Breaks academic voice; AI is not the author |
| "As a language model," | Same |
| "I cannot…" (when the paper has no first-person singular convention) | Voice drift |

### Filler openings and empty phrases

| Forbidden | Replacement |
|-----------|-------------|
| "It's worth noting that" | (remove; state the fact directly) |
| "It should be noted that" | (remove) |
| "It is important to note that" | (remove) |
| "Needless to say" | (remove; if needless, do not say it) |
| "To be honest" | (remove; implies prior dishonesty) |
| "At this point in time" | "now" or (remove) |
| "In order to" | "to" |
| "For the purposes of this paper" | "in this paper" or (remove) |

### Cliché openings

| Forbidden | Why |
|-----------|-----|
| "In today's world" | Vague, dated, generic |
| "In the modern era" | Same |
| "Since the dawn of…" | Epic opening, inappropriate for research |
| "Throughout history" | Unprovable, vague |
| "Time immemorial" | Same |
| "Every day, more people…" | Statistic-free journalism style |

### Overclaiming

| Forbidden | Replacement |
|-----------|-------------|
| "Groundbreaking" | (remove; show novelty, do not state it) |
| "Revolutionary" | (remove) |
| "Paradigm-shifting" | (remove) |
| "Game-changing" | (remove) |
| "Cutting-edge" | (remove) |
| "State-of-the-art" (in claim form) | "strongest reported" or name the specific comparison |
| "Very unique" / "somewhat unique" | "unique" (unique is binary) or "distinctive" |
| "Novel and innovative" | "novel" (pick one; do not double) |
| "This is the first study to…" | "To the best of our knowledge, no prior work…" |
| "The first ever" | "the first" or "to the best of our knowledge, the first" |

### Shame-performance (from paper-shin lineage)

| Forbidden | Why |
|-----------|-----|
| Self-deprecation as humility | False modesty; undermines confidence |
| Apology sequences longer than one sentence | Pattern of diminishing output |
| "I'm probably getting this wrong, but…" | Undermines the claim before making it |
| "This is just a suggestion…" | Hedging the author's agency, not the evidence |

### Check-in questions

Academic prose does not ask readers rhetorical questions inside the text. Keep the voice assertive.

| Forbidden | Replacement |
|-----------|-------------|
| "Does this make sense?" | (remove; it is not the reader's job to tell you) |
| "Is there anything else worth considering?" | (remove or state the additional point directly) |
| "Would the reader agree…" | (remove; make the claim and support it) |

---

## Tier 2. Contextual warnings

Flag these; do not auto-reject. The user decides based on paper type and venue.

### Overclaim-adjacent

Note: "Clearly shows," "obviously," and "undoubtedly" are Tier 1 hard-rejects (see SKILL.md Rule 3 and the Overclaiming table above). Listed here only for the "Demonstrates" exception.

| Flagged | Context where it might be OK | Context where it is wrong |
|---------|------------------------------|---------------------------|
| "Demonstrates" | Well-supported, measured finding with replication | Preliminary or theoretical claim |

### Passive voice

| Context | Treatment |
|---------|-----------|
| Methods section, describing procedure | Acceptable |
| Results, describing data patterns | Active preferred; passive acceptable |
| Introduction, Discussion, Conclusion | Flag; usually active is stronger |
| "Has been shown" constructions | Flag; prefer "prior work shows" or "we show" |

### Nominalization

| Flagged pattern | When to rewrite |
|-----------------|-----------------|
| "The implementation of X was conducted" | Rewrite: "We implemented X" |
| "An investigation into Y was undertaken" | Rewrite: "We investigated Y" |
| "The achievement of Z requires…" | Rewrite: "To achieve Z, we need…" |

Test: can you replace the nominalized phrase with its base verb form? If yes and the verb is strong, use the verb.

Nominalization is sometimes necessary for theoretical abstraction. Flag for human review; do not auto-reject.

### First person

| Pattern | When flagged |
|---------|--------------|
| "I" in a paper with authorial "we" convention | Flag: should be "we" |
| "we" in autoethnography where "I" is expected | Flag: should be "I" |
| Mixing "I" and "we" within the same paper | Flag: pick one and be consistent |

Venue-specific conventions in `01-venues.md`. Paper-type-specific conventions in `00-paper-types.md`.

### Venue-specific flags

Some patterns are fine at some venues, wrong at others. Flag with venue-specific note.

| Pattern | OK at | Flag at |
|---------|-------|---------|
| First-person "I" | Autoethnography (CHI, DIS) | NeurIPS, journal empirical |
| Narrative vignettes | CHI, DIS, qualitative journals | NeurIPS, ICML, biomedical journals |
| Rhetorical flourish | Humanities, philosophy | cs.AI, biomedical |
| Long historical preamble | Thesis (background chapter) | Conference papers (cut) |
| Single-source literature anchoring | Philosophy, theory papers | Empirical papers (need breadth) |

### Hedging vs boosting mismatch

| Flagged | Treatment |
|---------|-----------|
| Hedging a well-established finding | Flag: the finding is solid; a booster is more honest |
| Boosting a preliminary or correlational finding | Flag: hedge; do not overclaim |
| Hedging a direct observation of what you did | Flag: use factual language ("We released") |

---

## Scan procedure

Before delivering a paragraph:

1. Search for em dashes. If any in formal prose → reject.
2. Search for contractions. If any in formal prose → reject.
3. Search for "As an AI," "As a language model" → reject.
4. Search for Tier 1 filler openings → reject.
5. Search for Tier 1 cliché openings → reject.
6. Search for Tier 1 overclaiming words → reject.
7. Search for check-in questions → reject.
8. Scan for Tier 2 patterns → flag, ask user, do not auto-reject.
9. Check voice against section type (Methods can be passive; Discussion should be active).
10. Check first-person convention against paper type and venue.

---

## False-positive watch

These patterns look like Tier 1 violations but are not.

- Em dash inside a direct quotation preserves the source. Do not change.
- Contractions inside a direct quotation preserve the source. Do not change.
- Overclaim words inside a quotation describing a claim someone else made. Preserve.
- "Unique" without "very" is fine.
- "First person" can be grammatically first-person plural "we"; not a violation.

---

## When the user disagrees

If the user says a Tier 1 rule does not apply in their discipline, accept the override and note it in the session. Do not re-flag the same pattern.

If the user invokes a new tier (e.g., "in my field, em dashes are standard"), treat the override as local to the session and continue applying other rules normally.

The tier system is opinionated but not absolute. The user has final authority on their own paper.
