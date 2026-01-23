# System Decision Records

This repository implements **System Decision Records (SDR)** - an extension of ADR (Architectural Decision Records) designed for complex scientific and engineering systems. At its heart SDRs preserve *decision evolution and reasoning* not just the decision result.

---

## 1. Philosophy

In complex systems, decision making is iterative and easy to loop on when rejections are not grounded in evidence. We often endorse ideas that look promising without stress-testing edge cases, and we often ignore ideas that seem questionable. Over time those ignored ideas can become the best available option as constraints shift or new data appears. SDRs keep these ideas alive, but only enforce or reject them when evidence is recorded. This prevents accidental loops, preserves alternative paths, and makes the reasoning explicit for future contributors.

SDR assumes uncertainty is normal, so ideas can exist before full testing, selections and rejections are conditional rather than absolute, failures of ideas are treated as information about system boundaries, and change is expected as new evidence appears. 

The decision making in SDR is progressed by narrowing options through evidence instead of locking into a single perspective too early.


By keeping decisions grounded in evidence and traceable over time, SDR avoids repeating rejected solutions, losing hard-won insights, or letting authority replace proof. It also supports safe revisiting of past choices, faster onboarding, and long-term system evolution.

---

## 2. Core Objects

### Cases
Concrete situations encountered in the system (real scenarios). Cases are concrete not abstract, they must have a real example.

### Decisions (SDR)
Each SDR captures one decision and its alternatives. SDRs are a single source of truth that evolves with evidence.

Key properties:
- A decision has a clear scope
- Alternatives are explicit
- Current selection is marked
- Outcomes are derived from Cases

### Alternatives
Alternatives remain viable until evidence rejects them. Rejection does not delete an alternative; it remains a candidate for reconsideration.

A new alternative does not need to be tested to be listed. Reasonable ideas are documented first, then rejected if experiments show they are not viable.

### Issues
Issues are failures, hindrances, or roadblocks encountered during development. They are evidence, not blame, and should link to Cases, Experiments, and Decisions.

### Experiments
Experiments are controlled tests run on Cases to collect evidence.

---

## 4. How Decisions Work

### Single Source of Truth
Each decision file is a living record. It is updated as new evidence arrives. Git preserves revision history, so the SDR page should reflect the *current* state only.

### Alternatives and Elimination
Alternatives remain viable until rejected by evidence. Decisions select the current alternative by elimination, not by assuming a single truth from the start.

---

## 5. Linking and Traceability

### In Cases
Cases should link:
- Experiments and Issues encountered
- Decision outcomes (Approves/Rejects/Neutral)
- Evidence (figures, notes, test results)

### In Decisions
Decisions should include:
- Current selection
- Alternatives (headings with anchors)
- Table linking to rejections

---

## 6. Standard Workflow

1. Encounter a **Case**
2. Run **Experiments**
3. Identify **Issues**
4. Propose or update **Decisions**
5. Record Approves/Rejects/Neutral in the Case
6. Update decision tables and links

---

## 7. Tooling

This repository is designed for Obsidian:
- Bidirectional links
- Graph view of reasoning
- Dataview queries for dynamic summaries
