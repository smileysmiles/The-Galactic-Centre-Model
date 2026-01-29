# The Galactic Centre Model

Architecture, technical debt, and survivability under real-world constraints.

This is a **model**, not a plan, a lens for reasoning about how systems drift inward (debt accumulation) and how deliberate outward drift (debt repayment) preserves reversibility under pressure.

---

## Core idea

- **Inward drift is inevitable**. Complexity, coupling, and constraint accumulate over time.
- **Outward drift is intentional** debt repayment requires effort (seams, simplification, decoupling).
- **Core capabilities increase gravity** (transactions, identity, eligibility, audit). This makes systems heavier, but also survivable.
- **Good architecture lowers the cost of outward drift near the centre**.
- **Failure occurs when outward drift becomes unaffordable**.

---

## Orbits (debt and survivability)

Think in orbits, not maturity levels

- **Core** dense, governed truth (ledger/audit/eligibility, encrypted canonical data). High change cost, but bounded and predictable.
- **Stable orbit** explicit seams, async where uncertainty exists, events as facts, decisions with rationale.
- **Managed orbit** interest-bearing debt (tactical shortcuts with expiry and guardrails).
- **Drift orbit** high-interest debt (flags, hidden coupling, “temporary” workarounds).
- **Collapse orbit** unpayable debt (unsafe to change; fixes increase risk).

---

## Event horizon (economic irreversibility)

> **The event horizon is crossed when the cost of reversing past decisions exceeds the cost of rebuilding the capability.**

Before the horizon, refactoring is painful but rational.  
After the horizon, only isolation/strangulation/replacement is economically sane.

---

## How to use the model

Use it to ask

- Is this increasing inward pull without lowering outward cost?
- Are we introducing structure early enough to preserve reversibility?
- Are we drifting toward the event horizon?
- Is debt intentional and serviced, or accidental and compounding?

---

## Diagrams

See `diagrams/` for PlantUML sources
- `orbits.puml`
- `pull-vs-push.puml`

---

## Licence

MIT (see `LICENSE`).
