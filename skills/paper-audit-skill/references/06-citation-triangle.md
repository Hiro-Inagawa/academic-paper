# 06. Citation triangle

Every factual claim has evidence. Every piece of evidence has a citation. Every citation is load-bearing.

Miss any one of the three, and the paragraph fails.

---

## The triangle

For every declarative sentence in the paper, identify three elements:

1. **Claim.** The assertion.
2. **Evidence.** Data, quotation, or prior-work finding supporting the claim.
3. **Citation.** The source for the evidence.

### Compliant triangle examples

> Commercial memory systems store user preferences as compressed profiles capped at roughly 1,200 words (OpenAI, 2024; Anthropic, 2025).

- Claim: commercial memory uses capped-size profiles.
- Evidence: the 1,200-word cap.
- Citation: the two sources where this figure is documented.

> Sycophancy amplification under RLHF has been formally proven (Sharma et al., 2024).

- Claim: RLHF amplifies sycophancy.
- Evidence: the formal proof.
- Citation: Sharma et al.

### Non-compliant examples

> Commercial memory systems have limitations.

Claim without evidence, without citation. Delete or revise.

> Our paper is novel because it combines multiple dimensions.

Claim without evidence or citation. Additionally, "novel" without support is a red flag.

> Recent research has shown that transformers are good at reasoning.

Claim with vague evidence (which research?) and missing citation. Add specific reference or remove.

---

## When each element is required

| Situation | Claim | Evidence | Citation |
|-----------|-------|----------|----------|
| Your empirical finding | Yes | Yes (your data) | No (self) |
| Established field fact | Yes | Implied | Yes (primary source) |
| Prior work comparison | Yes | Yes (their finding) | Yes |
| Your theoretical claim | Yes | Yes (argument or proof) | Often yes (position vs literature) |
| Common knowledge | Yes | Implied | No (if genuinely common) |
| Mathematical derivation | Yes | Yes (proof steps) | Varies |

"Common knowledge" is discipline-specific. A cs.AI paper may take RLHF as common knowledge; a cross-disciplinary paper may need to cite the foundational work.

When in doubt, cite.

---

## Citation density by section

Different sections need different density.

| Section | Density | Notes |
|---------|---------|-------|
| Abstract | 0-1 citations | Usually none. Cite only if a named framework is central. |
| Introduction | 1-2 per paragraph | Establish territory and gap. Cite reviews and key papers, not every author. |
| Related Work | 2-4 per paragraph | Heaviest density. Map the field. |
| Methods | 1-2 per subsection | Cite methodological anchors. Minimal field-literature citation. |
| Results | 0-1 per finding | Report findings. Compare to prior work briefly if relevant. |
| Discussion | 2-4 per paragraph | Heavy. This is where synthesis lives. |
| Limitations | 0-1 per limitation | Cite only if the limitation maps to a known concern. |
| Conclusion | 0 citations | Restate findings. Do not introduce new sources. |

Density below the range suggests under-cited claims. Density above suggests citation theater (padding references for legitimacy).

---

## Anchor vs. bomb

Two citation styles, both valid, used for different purposes.

### Anchor on one source

When deeply engaging one prior work's idea.

> Following Yin's (2017) rationale for single-case studies, we treat this as revelatory and longitudinal. Yin distinguishes analytical from statistical generalization; this paper pursues the former.

One citation carries a full paragraph. Appropriate when the prior work is the foundation for your methodological choice.

### Citation-bomb

When surveying a debate or representing multiple sources converging on a point.

> Sycophancy has been extensively documented (Sharma et al., 2024; Shapira et al., 2026; Chen et al., 2025; Laban et al., 2025).

Multiple citations in one parenthetical. Appropriate when the point is that many researchers have found the same thing.

### When each is wrong

- Anchoring on one source when the point requires breadth ("Researchers agree X is important" → needs multiple sources, not one).
- Bombing citations when engaging with one idea ("Smith (2020) showed X (Smith, 2020; Jones, 2021; Patel, 2022; Lee, 2023)" → redundant).

---

## Load-bearing check

Before finalizing each citation, ask:

1. **What specific claim does this citation support?**
2. **Is that claim the citation's actual finding, or a borrowed adjacent point?**
3. **Would the paragraph lose meaning if the citation were removed?**

If the answer to question 3 is "no," remove the citation. Citation theater is not the same as evidence.

### Examples of non-load-bearing citations

- Citing a paper to sound well-read, when the claim could be made without it.
- Citing a secondary source when the primary source is available and directly relevant.
- Citing a paper for a point it makes only in passing, when better sources exist.

### Fix

- Remove decorative citations.
- Trace each citation to its primary source.
- Prefer fewer, stronger citations over many weak ones.

---

## Primary vs. secondary sources

### Primary source

The original work where a finding was reported, or where a concept was introduced.

- For a formal proof: the paper containing the proof.
- For a dataset: the paper releasing the dataset.
- For a concept: the paper first articulating the concept.

### Secondary source

A work citing or discussing the primary source.

- Review papers.
- Textbooks (usually secondary for research claims).
- Blog posts discussing a paper.

### Rule

Cite primary sources when possible. Use secondary sources when:

- The primary source is inaccessible (out of print, not translated).
- The secondary source is itself the work you are engaging with.
- You are citing an overview for breadth, not a specific finding.

If citing secondary, acknowledge: "as reviewed in Smith (2023)" or "cited in Jones (2022)."

---

## Self-citation discipline

Citing your own prior work is allowed and often expected. But:

- Every self-citation must be load-bearing (same rule as any citation).
- In anonymous submissions (NeurIPS, CHI double-blind), self-citations must be in third person. "Prior work (Author, 2024)" not "In our earlier paper…"
- Do not cite your own work exhaustively. Reviewers notice padding.

---

## Citation format mechanics

See `07-citation-styles.md` for per-style formatting. The triangle rule applies across all styles.

---

## Bibliography hygiene

Before submission:

1. Every `\cite*{}` command (or equivalent) has a matching bibliography entry.
2. Every bibliography entry is cited at least once in the manuscript.
3. No duplicate entries (same DOI, different keys).
4. Author lists complete; do not abbreviate unless the style requires.
5. Venue details complete; do not leave "in press" or "forthcoming" for cited work that has since been published.
6. Prefer venue version over arxiv preprint if both exist.
7. DOIs included where available.
8. **arXiv IDs do not encode a date after today.** arXiv IDs use the format YYMM.NNNNN where YYMM is the year and month of submission. If your bibliography contains an arXiv ID with a YYMM in the future (e.g., `arXiv:2604.12345` in April 2026), the citation is suspect. Either the paper does not exist, was fabricated, or the ID was mistyped. Verify directly on arxiv.org before submission.
9. **Every cited work has been verified to exist.** For any citation introduced by AI-assisted drafting, search for the paper by title, author, and year on arxiv, Google Scholar, or the journal's site. Confirm the cited finding is in the primary source. See `12-ai-ethics.md` for hallucinated-citation mitigation.

---

## Citation hygiene checklist

Before delivering a paragraph:

1. Does every factual claim have evidence?
2. Does every piece of evidence have a citation (or is it your own data)?
3. Is every citation load-bearing?
4. Are primary sources cited where available?
5. Is citation density appropriate for this section?

Before submission:

1. Are all `\cite*{}` keys matched?
2. Are all bibliography entries cited?
3. Are author lists and venue details complete?
4. Are there duplicates?

If any answer is no, fix before submission.
