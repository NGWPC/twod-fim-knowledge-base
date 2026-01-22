# System Decision Records (ADR-inspired)

This repository implements **System Decision Records (SDR)** — an extension of ADRs designed for complex scientific and engineering systems. SDRs preserve *reasoning*, not just results, and keep decisions traceable as evidence evolves.

---

## 1. Philosophy

Decisions are *contextual*, shaped by constraints, assumptions, and evidence that change over time. This system exists to preserve *why* decisions were made, *why alternatives were rejected*, and *when those decisions should be revisited*.

Decision making through SDR should treat:
- Uncertainty as normal (log assumptions when data is missing).
- Rejection as conditional ("not now, unless new evidence arrives").
- Failure as information (failures reveal model boundaries).
- Change as expected (new cases can trigger revision).
- Decision-making by elimination: all alternatives remain viable until rejected by evidence.

---

## 2. Purpose

This methodology prevents:
- Repetition of rejected solutions
- Loss of hard-won insights
- Decision-making based on authority instead of evidence
- Fragmentation of reasoning across people and time

It enables:
- Transparent decision traceability
- Safe revisiting of past conclusions
- Scalable onboarding of new contributors
- Long-term evolution of complex systems

---

## 3. Core Objects

### Cases
Concrete situations encountered in the system (real observations, experiments, or failures). Cases are *not objectives*; they are scenarios that reveal evidence.

### Decisions (SDR)
Each SDR captures one decision and its alternatives. SDRs are a single source of truth that evolves with evidence.

Key properties:
- A decision must have a clear scope
- Alternatives are explicit
- Current selection is marked
- Linked outcomes are derived from Cases

### Alternatives
Alternatives are viable until evidence rejects them. Rejection does not delete an alternative; it remains as a candidate for future reconsideration.

### Issues
Issues record failures, hindrances, or roadblocks encountered during development. They are evidence, not blame, and should link to Cases, Experiments, and Decisions.

### Experiments
Experiments are the controlled tests run on Cases to collect evidence.



---

## 4. How Decisions Work

### Single Source of Truth
Each decision file is a living record. It is updated as new evidence arrives. Git captures history; the SDR reflects the current best decision.

### Alternatives and Elimination
Alternatives remain viable until rejected by evidence. Decisions select the current alternative by process of elimination, not by assuming a single truth from the start.

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
- Dataview queries to pull approvals/rejections from Cases

---

## 6. Standard Workflow

1. Encounter a **Decision**
2. Document it and create **Experiments** and **Issues** for it

1. Encounter a **Case**
2. Run **Exprements**
3. Identify **Issues**
4. Declare *Rejections* if needed
5. Document everything
7. Update link tables

---

## 7. Tooling

The repository is designed for Obsidian, because it provides:
- Bidirectional links
- Graph view of reasoning
- Dataview queries for dynamic summaries
