# 09. Defense playbooks

Reviewers attack papers in predictable ways. Each paper type has its own set of common attacks. This file lists the attacks and provides preemption templates.

Preemption is stronger than defense after the fact. Write the preemption into the paper so reviewers do not have a vector to attack.

---

## Empirical quantitative

### Attack 1. Underpowered

"Sample size is insufficient to detect the reported effect."

**Preemption:**
- Report a power analysis in Methods.
- If under-powered for a small effect, state it: "Our sample size is powered to detect Cohen's d ≥ 0.5 at α = 0.05, β = 0.8."
- If a null result, explicitly discuss power as a limitation.

### Attack 2. P-hacking indicators

"Many tests reported; few significant; suggests selective reporting."

**Preemption:**
- Report all tests, not only the significant ones.
- Apply multiple-comparison correction (Bonferroni, FDR) and report both corrected and uncorrected values.
- Pre-register hypotheses and separate confirmatory from exploratory analyses.

### Attack 3. Missing effect sizes

"Only p-values reported; practical significance unclear."

**Preemption:**
- Report effect sizes (Cohen's d, η², r, odds ratios) for every statistical test.
- Include 95% confidence intervals.
- Interpret effect sizes against established thresholds in the field.

### Attack 4. HARKing

"Hypothesis appears formulated after data analysis."

**Preemption:**
- Pre-register on OSF, AsPredicted, or equivalent before data collection.
- Reference the registration explicitly in Methods.
- Distinguish confirmatory (pre-registered) from exploratory (post-hoc) findings throughout.

### Attack 5. Confounds

"The observed effect may be explained by X instead of the hypothesized mechanism."

**Preemption:**
- Identify candidate confounds in Introduction or Methods.
- Describe what was done to control them (random assignment, matched sampling, regression controls).
- Acknowledge residual confounds in Limitations.

---

## Empirical qualitative

### Attack 1. Saturation undefended

"Why stop at N interviews? No rationale given."

**Preemption:**
- State the saturation criterion: "We reached saturation when three consecutive interviews produced no new themes."
- Report the specific point at which saturation was reached (e.g., "by interview 13").
- Cite saturation literature if challenged (Guest et al., 2006; Hennink et al., 2017).

### Attack 2. Thin quotes

"Findings are abstract; too few participant voices."

**Preemption:**
- Pull 2-4 exemplar quotes per theme.
- Quote length: one or two sentences, not single words.
- Attribute each quote (participant ID or pseudonym, role, context).

### Attack 3. Coding unclear

"How themes were derived from data is opaque."

**Preemption:**
- Name the coding framework (inductive, deductive, hybrid, grounded theory, thematic analysis).
- Describe the coding process step by step.
- If multiple coders: report inter-rater reliability (Cohen's κ for agreement).
- Include a coding tree or theme map as a figure or appendix.

### Attack 4. Positionality boilerplate

"Positionality statement reads generic; not specific to this study."

**Preemption:**
- Name the researcher's background, not just "the first author."
- Connect positionality to specific interpretive biases in this study.
- Describe mitigation: triangulation, member-checking, peer debriefing.

### Attack 5. Themes not traceable

"Claims in Findings do not map clearly to data."

**Preemption:**
- Each finding is introduced, then supported with direct quotes.
- Theme names match what participants said, where possible.
- Appendix or table showing theme-to-quote mapping.

---

## Autoethnography

### Attack 1. This is just memoir

"Personal narrative, not research."

**Preemption:**
- Cite the autoethnographic tradition: Ellis (2004), Ellis, Adams & Bochner (2011), Kaltenhauser et al. (2024) for HCI.
- Frame as longitudinal autoethnography following an established methodological tradition.
- Name specific venues that publish autoethnography (DIS, CHI alt, certain qualitative journals).

### Attack 2. Not generalizable

"n=1; findings apply only to the author."

**Preemption:**
- Distinguish analytical generalization from statistical generalization (Yin, 2017).
- State the scope: "We do not claim statistical generalization. Following Yin, we pursue analytical generalization: these findings illuminate a mechanism."
- Frame as case study with three rationales: revelatory, longitudinal, or extreme/unique.

### Attack 3. Author bias compromises validity

"The researcher is the subject; findings reflect researcher's interpretation."

**Preemption:**
- Positionality statement in Methods.
- Methodological triangulation: independent verification, data release, reflexive memos.
- Report negative cases that contradict the emerging narrative.

### Attack 4. No independent verification

"Everything rests on the author's word."

**Preemption:**
- Release data (anonymized transcripts, field notes, logs) on OSF or Zenodo.
- Describe verification protocols (peer debriefing, member-checking where possible).
- If cross-instance or cross-analyst verification exists, describe it explicitly.

### Attack 5. Insufficient analytical distance

"Too personal; not academic."

**Preemption:**
- Pair every narrative scene with an analytical move: "This moment illustrates X because…"
- Cite theoretical frameworks throughout, not just in the literature review.
- Avoid long passages of pure narrative without interpretive framing.

---

## Theory paper

### Attack 1. Vague definitions

"Key terms are not defined rigorously."

**Preemption:**
- Set off definitions typographically.
- Use defined terms consistently throughout.
- Distinguish your definition from alternatives in the literature.

### Attack 2. Circular reasoning

"The argument assumes what it sets out to prove."

**Preemption:**
- Identify premises explicitly at the start of the argument.
- Derive conclusions step by step, naming the inference type (deduction, induction, abduction).
- Have a colleague trace the argument before submission.

### Attack 3. Not positioned against prior theory

"Unclear how this framework differs from existing ones."

**Preemption:**
- In Related Work, compare your framework to each major alternative.
- State what your framework does that the alternatives do not.
- Acknowledge overlaps; do not overclaim novelty.

### Attack 4. No testable or actionable consequences

"The framework is abstract; cannot be tested."

**Preemption:**
- Include an Implications or Applications section.
- Derive specific predictions or design choices from the framework.
- If empirically testable, suggest how.

### Attack 5. Insufficient novelty

"This framework restates known concepts."

**Preemption:**
- Identify the specific novel contribution in the Introduction.
- In Related Work, show that prior frameworks lack element X.
- Devote a section to what your framework adds.

---

## Systematic review / meta-analysis

### Attack 1. Vague inclusion criteria

"Which studies qualify? Criteria not stated precisely."

**Preemption:**
- Use PICO or equivalent structured criteria.
- State inclusion criteria as a table.
- Name exclusions and reasons in the flow diagram.

### Attack 2. Search strategy not reproducible

"Cannot replicate the literature search."

**Preemption:**
- Report the databases searched, dates, search strings verbatim.
- Include search strategy in appendix.
- Pre-register the protocol on PROSPERO (health) or OSF.

### Attack 3. Missing bias assessment

"No evaluation of included studies' quality."

**Preemption:**
- Apply a recognized risk-of-bias tool (Cochrane ROB 2, ROBINS-I, Newcastle-Ottawa).
- Report bias assessment per study in a table.
- Discuss how bias affects interpretation.

### Attack 4. Cherry-picked studies

"Included studies appear selected to support a conclusion."

**Preemption:**
- Follow the pre-registered protocol.
- Report all identified studies in the flow diagram.
- Include studies that contradict the main finding; discuss them explicitly.

### Attack 5. No PRISMA diagram

"Missing the standard flow diagram."

**Preemption:**
- Include PRISMA 2020 flow diagram as Figure 1.
- Show numbers at each stage: identified → screened → eligible → included.
- Name exclusion reasons at each stage.

---

## Position paper

### Attack 1. Scope too broad

"The position is stated at too high a level; cannot be engaged."

**Preemption:**
- Open with a specific thesis sentence.
- Name the scope boundary explicitly.
- Prefer narrow, defensible claims over broad, vague ones.

### Attack 2. Opinion without argument

"The position is asserted, not argued."

**Preemption:**
- Structure the argument using the Booth framework (claim, reason, evidence, warrant, acknowledgment).
- Cite existing evidence where relevant.
- Reason from premises to conclusion.

### Attack 3. Counterarguments ignored

"Obvious objections not addressed."

**Preemption:**
- Devote a section to the strongest counterarguments.
- Engage counterarguments in their best form, not a strawman.
- Acknowledge where counterarguments have force.

### Attack 4. Insufficient evidence-based reasoning

"Argument rests on assertion."

**Preemption:**
- Where empirical evidence exists, cite it.
- Where no direct evidence exists, reason from analogous cases.
- Distinguish empirical claims from normative claims.

### Attack 5. No concrete implications

"Paper ends without saying what should change."

**Preemption:**
- End with specific implications: for research, practice, policy, or design.
- Make implications testable or actionable where possible.
- Name the audience that should act on the position.

---

## Positionality statement template (qualitative, autoethnographic)

> The first author [is/has] [relevant background]. [He/she/they] [relationship to the subject of study]. [Stakes in the outcome: professional, intellectual, personal]. This position shapes the interpretation in the following ways: [list of specific interpretive biases]. To mitigate, [list of specific mitigation steps]: [methodological triangulation, data release, independent verification].

Fill in with specifics. Do not leave as boilerplate.

---

## Pre-registration disclosure template (quantitative)

> This study was pre-registered on [platform: OSF, AsPredicted, ClinicalTrials.gov] on [date] at [URL]. The pre-registration specifies [hypotheses, analysis plan, sample size, stopping rule]. Any deviations from the pre-registered plan are noted in Methods §[section] and distinguished from the pre-registered analyses.

If no pre-registration: explicitly state "This study was not pre-registered" and label all analyses as exploratory.

---

## Counterargument acknowledgment template (theory, position)

> One might object that [strongest counterargument in its strongest form]. This objection has force because [concession]. However, [response]. The objection does not undermine the main claim because [specific reasoning].

Engage the counterargument in good faith. Do not dismiss.

---

## Defense checklist

Before delivering a paper for review:

1. Which paper type is this? Which attacks apply?
2. Have I preempted each attack with specific content?
3. Is my preemption in the paper, or only in my head?
4. Have I named the strongest counterargument?
5. Have I acknowledged what the paper does not establish?

If any answer is no, add the preemption before submission.
