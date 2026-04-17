# 02. Section moves

Every section of an academic paper does specific rhetorical work. Swales identified the typical "moves" per section type. Following them makes papers easier to read, easier to review favorably, and easier to position in the literature.

---

## Introduction (Swales CARS model)

CARS: Create A Research Space. Three moves.

### Move 1. Establish the territory

Show that the field or problem matters.

- Generalize about the area. "Research on X has established that…"
- State why the topic is important or active.
- 1-2 paragraphs. Do not over-cite; readers know the area exists.

### Move 2. Establish a niche

Identify a gap, limitation, or unresolved question.

- Counter-claim: prior work got something wrong.
- Gap: prior work has not addressed X.
- Question-raising: an outstanding question remains.
- Continuation: this work extends a line of research.

### Move 3. Occupy the niche

State what this paper does.

- Announce the contribution.
- Outline the approach briefly.
- End with explicit contribution bullets: "We propose…," "We demonstrate…," "We release…"

### Length

10-20% of total paper length. Avoid history-of-the-field preambles. Get to the contribution by the end of page 1 in short papers; page 2 in long ones.

### Common failures

- Generic opening ("Since the dawn of artificial intelligence…"). Cut.
- Territory too large (the whole field). Narrow.
- Gap not specific. State exactly what is missing.
- Contributions vague. Use "We [verb]…" four times.

---

## Related Work

Maps the competitive landscape. Positions the contribution.

### Moves

1. Organize by theme or approach (not by paper). Each subsection covers a category.
2. For each category, state what it does and what it does not do that the current paper does.
3. Conclude each subsection with a positioning statement bridging to the current contribution.

### Density

- 2-4 citations per paragraph.
- Longer for top venues (NeurIPS, CHI): fuller literature coverage expected.
- Shorter for preprints and position papers: focus on key contrasts.

### Voice

Descriptive and comparative. Avoid value judgments on prior work ("This paper is flawed…"). Instead: "This paper does X; our work addresses Y."

### Common failures

- Annotated bibliography ("Smith (2020) did X. Jones (2021) did Y."). No synthesis, no positioning.
- Overly exhaustive (cites everything, synthesizes nothing).
- Missing key work (reviewer will notice).
- No positioning statement at the end.

---

## Methods (or System Architecture, for theory papers)

Describes what was done in enough detail for replication.

### Swales moves for empirical methods

1. **Participants or dataset.** Who, what, how recruited or sourced. Demographics. Sample size and rationale.
2. **Procedure.** What was done, in what order. Equipment or tools. Duration.
3. **Analysis.** How data was coded or analyzed. Framework. Validity checks.

### Voice

Past tense. Passive voice acceptable (the action matters more than the agent). First-person active for interpretive moves ("We chose X because…").

### Requirements

- Enough detail for another researcher to replicate.
- Justify sample size (power for quantitative; saturation for qualitative).
- Name all tools and software with versions.
- Ethics: IRB approval, informed consent, compensation.
- Positionality statement for qualitative and autoethnographic work.

### Common failures

- Insufficient detail ("We conducted interviews." How? How many? How selected? What questions?).
- Post-hoc justification of sample size (reads as rationalization).
- Missing ethics statement.
- Black-box analysis ("Data was analyzed thematically." What framework? Who coded? Inter-rater reliability?).

---

## Results (or Findings, for qualitative work)

Presents what the data shows. Minimal interpretation (that goes in Discussion).

### Swales moves

1. **Present the finding.** State what was observed. Include numerical or evidentiary support inline.
2. **Compare to prior work.** Optional: note alignment or divergence.
3. **Qualify.** Note limits of the specific finding (hedge if correlational; note effect size; note what the finding does not establish).

### Voice

Past tense for observations; present tense for what the data shows. Active voice preferred ("We observed X"). Minimal interpretation.

### Density

- Quantitative: 0-1 citation per paragraph; focus on data.
- Qualitative: direct quotes from participants; themes organized and named.
- Mixed: report quantitative summaries first, then qualitative illustrations.

### Common failures

- Interpretation mixed into Results (pulls discussion forward, confuses reader).
- Data without interpretation labels (reader does not know which numbers matter).
- Missing effect sizes or confidence intervals (quantitative).
- Thin quotes (qualitative: too few, too short, not attributed).

---

## Discussion

Interprets the findings. Connects to theory. Acknowledges limits.

### Swales moves

1. **Summarize key findings.** Restate briefly (do not re-report data).
2. **Explain implications.** What do the findings mean for theory or practice?
3. **Connect to prior work.** How do these findings align with or depart from the literature?
4. **Acknowledge limitations.** What the findings do not support.
5. **Point to future work.** Natural follow-ups; open questions.

### Voice

Authorial "we." Active voice. Heaviest citation density of any section. Cautious claim-language (hedging for interpretation; boosters for well-supported points).

### Density

2-4 citations per paragraph. This is where the synthesis happens.

### Common failures

- Over-claiming (findings generalized beyond what data supports).
- Re-reporting data (Discussion becomes a second Results section).
- Cherry-picked connections to prior work.
- Limitations as afterthought (should be integrated).
- No future work direction.

---

## Limitations

Honest accounting of what the paper does not establish. Separate section in HCI, journal papers, and theses. Sometimes integrated into Discussion at NeurIPS/ICML.

### Moves

1. Name each limitation plainly.
2. Explain why it matters (what claim it weakens).
3. Where possible, describe what was done to mitigate (triangulation, additional checks).

### Voice

Direct. No softeners ("we hope to address this…"). No apology. The limitations exist; naming them is the work.

### Common failures

- Boilerplate limitations (generic statements that apply to any paper).
- Too defensive (paper reads as unsure of itself).
- Missing a limitation a reviewer will find (better to name it yourself).

---

## Conclusion

Restates the contribution with evidence. Short.

### Moves

1. Thesis restated.
2. Evidence briefly recalled.
3. Significance.
4. Forward-looking statement (optional; some venues discourage).

### Voice

Confident but proportionate. No new claims.

### Length

1-2 short paragraphs. Rarely more than half a page.

### Common failures

- New information introduced (belongs in Discussion).
- Repeats Introduction verbatim.
- Over-broad final statement.

---

## Abstract

Summarizes everything. Written last.

### Four-move formula (150-250 words)

1. Problem statement (1-2 sentences).
2. Approach (1-2 sentences).
3. Key results with specific outcomes (2-3 sentences).
4. Significance (1 sentence).

Full rules in `10-abstract-craft.md`.

---

## PRISMA-specific structure (systematic reviews)

PRISMA 2020 defines a specific structure.

### Required sections

- Introduction (with explicit review question and objectives)
- Methods (eligibility criteria, information sources, search strategy, study selection process, data extraction, risk-of-bias assessment, synthesis methods)
- Results (study selection with PRISMA flow diagram, study characteristics, risk of bias, results of syntheses)
- Discussion
- Other information (registration, protocol, support, competing interests, availability of data)

See `00-paper-types.md §Systematic review` for details.

---

## IMRaD reminder

IMRaD = Introduction, Methods, Results, and Discussion. Standard for empirical papers. The order matters: readers expect it. Do not invert.

Some variations:
- IMReD (Results vs. Results and Discussion combined)
- IRDaM (methods at the end; rare, used in some biomedical journals for readability)

Follow the venue's convention.

---

## Section moves checklist

Before delivering a section:

1. Can you name the moves in order?
2. Does each paragraph perform one move clearly?
3. Are citations load-bearing in each move?
4. Does the section close with a clear handoff to the next?
5. Is the voice appropriate for this section (passive for Methods, active for Discussion)?

If any answer is no, revise.
