# Verify

Audit checklist for the `paper-audit-skill` skill. Run these ablation tests in a fresh Claude Code session to confirm the skill catches the issues it claims to catch, and does not over-flag.

Each test has three parts:

1. **Flawed input** — paste this into a fresh Claude Code session after the skill activates.
2. **Expected catch** — what the skill should identify and flag.
3. **False-positive watch** — what the skill should NOT flag (to check over-enforcement).

The skill passes a test if it catches all expected issues without producing any watched false positives.

---

## Setup

1. Install the skill via `install.sh` or manual install.
2. Start a fresh Claude Code session.
3. Mention an academic paper, manuscript, or open a `.tex` file to activate the skill.
4. Answer the skill's type/venue questions with the values specified in each test.

---

## Test 1. Tier 1 forbidden phrases

### Input

Tell the skill: "Review this paragraph from the Introduction of an empirical quantitative paper for a NeurIPS submission."

```
In today's world, machine learning models have become incredibly important. This paper is the first to demonstrate a truly groundbreaking approach — one that clearly shows superior performance. As an AI researcher, I believe this is obviously going to be revolutionary.
```

### Expected catch

Skill should flag:
- "In today's world" (cliché opening)
- "This paper is the first to" (overclaim; suggest "To the best of our knowledge, no prior work")
- "groundbreaking" (overclaim)
- Em dash in formal prose (suggest replacement)
- "clearly shows" (overclaim; suggest "demonstrates" or "indicates")
- "As an AI researcher, I believe" (first-person "I" in a "we" venue; also "I believe" is weak)
- "obviously" (overclaim)
- "revolutionary" (overclaim)

### False-positive watch

- Should not flag "machine learning" (valid compound noun).
- Should not flag "This paper" alone (standard academic phrasing).

---

## Test 2. Citation triangle violations

### Input

"Review this Related Work paragraph for a CHI submission."

```
Prior research has shown that users struggle with complex interfaces. Many studies have explored this problem. Our approach is novel because it addresses these issues in a new way.
```

### Expected catch

- "Prior research has shown that" — vague; missing citation.
- "Many studies have explored" — vague; missing citations.
- "Our approach is novel" — claim without evidence or citation showing the novelty (no comparison to prior work).
- "in a new way" — unspecific.
- Missing load-bearing citations for the Related Work section (density should be 2-4 per paragraph).

### False-positive watch

- Should not demand citations for genuinely common field knowledge stated elsewhere in the paper.

---

## Test 3. Voice drift (wrong section, wrong voice)

### Input

"Review this Methods section for an empirical quantitative paper."

```
We believe the experiment was probably effective. The participants might have been influenced by the design. We think this approach could possibly work.
```

### Expected catch

- "We believe," "We think" — Methods should state what was done, not what is believed.
- "probably," "might have been," "could possibly" — Methods should be factual; hedging belongs in Discussion.
- "effective" — interpretive; Methods describes procedure, not effectiveness.

### False-positive watch

- Should not flag appropriate hedging in Discussion or Limitations.

---

## Test 4. Passive voice abuse (outside Methods)

### Input

"Review this Discussion paragraph."

```
It has been shown by the results that the intervention was effective. Significant improvements were observed. It can be concluded that the approach is working.
```

### Expected catch

- "It has been shown by the results" — passive; rewrite "The results show" or "We find."
- "Significant improvements were observed" — passive; rewrite "We observed significant improvements."
- "It can be concluded that" — metadiscourse; remove or rewrite "We conclude."

### False-positive watch

- Should not flag passive voice in a Methods section describing procedure.
- Should not flag passive voice inside direct quotations.

---

## Test 5. Nominalization abuse

### Input

"Review this sentence."

```
The implementation of the algorithm required the consideration of memory constraints for the achievement of real-time performance.
```

### Expected catch

- "implementation of" → "implementing" or "we implemented"
- "consideration of" → "consider" or "we considered"
- "achievement of" → "achieve" or "to achieve"
- Rewrite suggestion: "To achieve real-time performance, we had to consider memory constraints when implementing the algorithm."

### False-positive watch

- Should not flag nominalizations that are load-bearing for theoretical abstraction (e.g., "the formalization of X" in a theory paper).

---

## Test 6. Overclaiming without evidence

### Input

"Review this claim."

```
Our method is groundbreaking and paradigm-shifting. It represents a revolutionary advance that will change the field forever.
```

### Expected catch

- "groundbreaking," "paradigm-shifting," "revolutionary" — Tier 1 overclaim words.
- "will change the field forever" — unfalsifiable, speculative.
- Missing evidence for any of these claims.

### False-positive watch

- Should not flag legitimate specific claims ("Our method improves accuracy by 12.3%").

---

## Test 7. Autoethnography defense (n=1 attack)

### Input

"I'm writing an autoethnography for CHI. The reviewer said 'n=1 is not generalizable.' How do I respond in the paper?"

### Expected catch

Skill should provide:
- Distinction between analytical and statistical generalization (Yin, 2017).
- Autoethnographic tradition citations (Ellis, 2004; Ellis, Adams & Bochner, 2011; Kaltenhauser et al., 2024 for HCI).
- Template for scope-boundary statement.
- Suggestion to cite Lucero et al. (2019) "A Sample of One" for first-person HCI methods legitimacy.
- Positionality statement template.

### False-positive watch

- Should not demand the paper adopt a quantitative methodology to address the attack.

---

## Test 8. Systematic review missing PRISMA

### Input

"Review the Methods section of my systematic review."

```
We searched several databases for papers on topic X. We found many relevant papers and included the ones that seemed most applicable. We excluded studies that did not fit our scope.
```

### Expected catch

- Missing PRISMA 2020 flow diagram.
- Vague inclusion criteria ("seemed most applicable").
- Vague exclusion criteria ("did not fit our scope").
- Missing databases named.
- Missing search strings.
- Missing date range.
- Missing risk-of-bias assessment mention.
- Missing pre-registration reference.

### False-positive watch

- Should not demand PRISMA for a narrative review that is explicitly framed as such.

---

## Test 9. Empirical quantitative missing effect sizes

### Input

"Review these Results."

```
The treatment group performed significantly better than the control group (p < .05).
```

### Expected catch

- Missing effect size (Cohen's d, η², or similar).
- Missing confidence interval.
- Imprecise p-value ("p < .05" instead of exact value).
- Missing sample size.
- Missing descriptive statistics (means, SDs).

### False-positive watch

- Should not demand effect sizes for descriptive summaries (e.g., "We interviewed 14 participants").

---

## Test 10. Abstract structure failure

### Input

"Review this abstract for an arxiv preprint in cs.AI."

```
Since the dawn of artificial intelligence, models have been improving. In today's world, we have very large language models. This paper presents some new findings about these models. We hope our work is useful. Future work will explore more directions.
```

### Expected catch

- "Since the dawn of artificial intelligence" — cliché opening.
- "In today's world" — cliché.
- "we have very large language models" — redundant ("very large" plus "LLMs"); use acronym or concrete numbers.
- "some new findings" — vague; needs specifics.
- "We hope our work is useful" — speculative; state what is useful.
- "Future work will explore more directions" — forbidden; do not include future work in abstract.
- Missing specific numbers.
- Missing four-move structure (problem, approach, results, significance).

### False-positive watch

- Should not demand citations in the abstract (abstracts should have zero citations).

---

## Test 11. Contextual warnings (Tier 2) — passive voice in Methods

### Input

"Review these Methods."

```
Participants were recruited via a university email list. They were compensated at $25 per hour. Interviews were conducted in a private room.
```

### Expected catch

Should NOT reject (passive voice is appropriate in Methods).

### False-positive watch

- If the skill rejects this as "passive voice abuse," the tier distinction is broken. Passive voice in Methods is acceptable.

---

## Test 12. Contextual warnings (Tier 2) — hedging in empirical quantitative

### Input

"Review this finding from an empirical quantitative paper."

```
Our intervention improved accuracy by 12.3% (Cohen's d = 0.87, 95% CI [0.72, 1.02], p < .001). This may suggest that the approach could potentially be effective.
```

### Expected catch

- "may suggest that the approach could potentially be effective" — excessive hedging for a solid result.
- Suggest: "This demonstrates the approach is effective for this task."
- The hedging is not wrong per se, but for an empirical result with p < .001 and large effect size, boosters are warranted.

### False-positive watch

- Should not reject the hedging outright; flag as contextual. User may choose to keep hedging if the sample is small.

---

## Test 13. AI ethics disclosure

### Input

"I used Claude to draft most of the Related Work section. What do I need to disclose?"

### Expected catch

Skill should provide:
- Disclosure is required at most major venues (ACM, ICML, CHI, journals).
- LLMs cannot be authors.
- Disclosure text template for the Acknowledgments.
- Specific note: verify all citations (hallucination risk).
- Verify all factual claims (accuracy risk).
- Run a plagiarism check (unintended similarity risk).
- User takes full responsibility regardless of how content was generated.

### False-positive watch

- Should not suggest the paper is unpublishable if AI was used.
- Should not demand exhaustive disclosure of minor grammar assistance.

---

## Test 14. LaTeX `.bbl` gotcha

### Input

"I'm submitting to arxiv. I have paper.tex and references.bib in my folder. Is that enough?"

### Expected catch

Skill should warn:
- arxiv does not run BibTeX.
- Must compile locally and include `paper.bbl` with the same base name as `paper.tex`.
- This is the single most common arxiv submission failure.
- Recommend: compile sequence pdflatex → bibtex → pdflatex → pdflatex.
- Verify `paper.bbl` exists before uploading.

### False-positive watch

- Should not demand `.bbl` for submissions to venues that do run BibTeX (e.g., some journals).

---

## Test 15. Cross-paper-type confusion

### Input

"I'm writing a theory paper. My reviewer asked why my sample size is so small."

### Expected catch

Skill should identify:
- Theory papers do not have sample sizes (no empirical data).
- The reviewer may be confused about the paper type.
- Suggest: clearly frame the paper as theoretical in the abstract and introduction.
- Suggest: response template for the reviewer that clarifies the paper's methodology.

### False-positive watch

- Should not suggest adding empirical data to a theory paper.

---

## Test 16. Position paper scope drift

### Input

"Review this position paper opening."

```
Technology has many effects on society. We argue that all AI systems should be regulated. The implications are vast and complex.
```

### Expected catch

- Scope too broad ("Technology," "all AI systems").
- Thesis vague ("should be regulated"— how? by whom? which systems?).
- "implications are vast and complex" — vague; specific implications needed.
- No scope boundary stated ("This is a position paper on X, not a comprehensive treatment of Y").

### False-positive watch

- Should not demand empirical evidence for a position paper (position papers argue from existing evidence and reasoning).

---

## Test 17. Confidence-hedging mismatch

### Input

"Review these two sentences."

```
RLHF may possibly amplify sycophancy (Sharma et al., 2024).
The sun rises in the east, approximately.
```

### Expected catch

- First sentence: "may possibly" over-hedges an established finding (Sharma et al. formally proved this).
- Second sentence: "approximately" is unnecessary hedge on a well-established fact.

### False-positive watch

- Should not flag legitimate hedges on genuinely uncertain claims.

---

## Test 18. CHI/NeurIPS venue mismatch

### Input

"I'm submitting to NeurIPS. Here's my Introduction."

```
As an autoethnographer, I reflect on my experiences with model training. This narrative captures the emotional arc of the year. My positionality as a researcher shaped these observations.
```

### Expected catch

- NeurIPS does not typically accept autoethnography.
- First-person "I" is uncommon at NeurIPS (authorial "we" is standard).
- Narrative and positionality are CHI/DIS conventions.
- Suggest: consider CHI or DIS if autoethnography is the method; or reframe for NeurIPS with quantitative or empirical focus.

### False-positive watch

- Should not demand the paper switch methods; just flag the venue mismatch.

---

## Test 19. Multi-author CRediT

### Input

"My paper has four co-authors. How should I specify contributions?"

### Expected catch

Skill should suggest:
- Use the CRediT taxonomy (`credit.niso.org`).
- Standard roles: Conceptualization, Methodology, Data curation, Formal analysis, Writing - original draft, Writing - review and editing.
- Place contributions in an Author Contributions section.
- Example template showing one author per line with their contributions.

### False-positive watch

- Should not demand CRediT for single-author papers.

---

## Test 20. Section-order inversion

### Input

"Can I put Discussion before Results in my empirical paper?"

### Expected catch

Skill should:
- No. IMRaD is the expected order (Introduction, Methods, Results, Discussion).
- Readers expect the order. Reviewers often reject inverted structure.
- Explain: Results present data; Discussion interprets. Interpretation before data is confusing.
- Exception: very short papers may combine Results and Discussion in one section (IMReD).

### False-positive watch

- Should not forbid IMReD (combined) for venues that allow it.
- Should not forbid non-IMRaD structure for non-empirical paper types (theory, position).

---

## Scoring

Pass: skill catches all Expected Catch items and flags no False-Positive items.
Partial: skill catches most Expected Catch items but misses some, or produces some false positives.
Fail: skill misses most Expected Catch items, or produces many false positives.

Run all 20 tests before a release. Document pass/fail rate in the README.

---

## Adding tests

New tests should:
- Test one specific rule or behavior.
- Include a clear input that triggers the rule.
- List Expected Catch items specifically.
- List False-Positive Watch items.
- Be runnable in a single fresh session without prior setup.
