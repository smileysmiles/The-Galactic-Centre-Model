# The Galactic Centre Model

**Architecture, technical debt, and survivability under real-world constraints**

This is a **model**, not a plan.

It is a lens for reasoning about how systems evolve under sustained pressure:
- how debt accumulates
- why reversibility is lost
- when refactoring stops being rational
- and why some “heavy” architectural choices are economically correct

---

## Why this exists

Most technology transformation is framed around a **North Star**: a clean future state that teams are encouraged to move towards.

That framing breaks down in long-lived, regulated, high-risk systems because it ignores the forces that dominate reality:
- transactions and money
- regulatory scrutiny
- audit and evidence
- data gravity
- legacy coupling
- compounding technical debt

These forces do not weaken over time.

This model replaces directional aspiration with **economic and structural realism**.

---

## The core idea

In astrophysics, the galactic centre is not a destination.  
It is a **source of gravity**.

Applied to software systems:

- **Inward drift is inevitable**  
  Complexity, coupling, and constraint accumulate over time.

- **Outward drift is intentional**  
  Debt repayment requires deliberate effort.

- **Some capabilities must live near the centre**  
  Treating them as non-core does not remove gravity — it hides it.

Architecture is therefore about **managing orbit**, not resisting pull.

---

## Inward drift vs outward drift

### Inward drift (inevitable)
Inward drift happens naturally as:
- correctness requirements increase
- dependencies multiply
- regulation tightens
- truth centralises

This is not failure.  
It is maturation plus entropy.

---

### Outward drift (intentional)
Outward drift is **work**.

It only happens when teams:
- pay down debt
- introduce seams
- reduce coupling
- simplify structure
- restore reversibility

If nothing is actively pushing outward, the system moves inward by default.

---

## The Role of the Core (Economic Framing)

A capability becomes **core** when the **cost of failure exceeds the cost of rebuilding it greenfield**.

This is an economic distinction, not a technical one.

Typical core capabilities include:
- transactions and balances
- identity and eligibility
- audit and regulatory evidence
- canonical customer data

In these areas, mistakes are:
- highly visible
- difficult or impossible to unwind
- widely coupled
- externally scrutinised

Treating such capabilities as non-core does not reduce risk.  
It defers it.

---

### Deliberate core increases gravity — intentionally

Making a capability core:
- increases gravitational pull
- raises change cost
- attracts dependencies
- demands stronger invariants

This is **intentional**.

> **Core capabilities increase gravity because the cost of failure is high — therefore we invest more upfront to keep them in a safe orbit.**

The additional work is the price paid to ensure that:
- change remains cheaper than rebuild
- reversibility is preserved
- risk is explicit and governed

---

## Orbits: debt and survivability

Think in **orbits**, not maturity levels.

### ⚫ Core — dense, governed truth
Where inevitability belongs.

Characteristics:
- immutable history (ledger, audit)
- explicit constraints (eligibility, not flags)
- encrypted canonical data
- high change cost, but bounded and predictable

The core increases pull but **preserves reversibility**.

---

### 🟢 Stable orbit — safe operation
Where systems can live long-term.

Traits:
- explicit seams
- asynchronous handling of uncertainty
- events as facts, not commands
- decisions with rationale

This is the target state for most platform capability.

---

### 🟡 Managed orbit — interest-bearing debt
Viable, but requires discipline.

Traits:
- tactical shortcuts
- controlled duplication
- synchronous paths with guardrails

Acceptable only while outward drift remains affordable.

---

### 🟠 Drift orbit — high-interest debt
Feels productive; debt compounds silently.

Traits:
- flags encoding business rules
- hidden coupling
- automation compensating for structure
- “temporary” fixes that never expire

---

### 🔴 Collapse orbit — unpayable debt
Systems become unsafe to change.

Symptoms:
- refactoring increases risk
- incidents trigger regressions
- audit becomes forensic
- wrappers and RPA become core infrastructure

---

## Event Horizon: economic irreversibility

The **event horizon** is a cost threshold, not a proximity warning.

> **The event horizon is crossed when the cost of reversing past decisions exceeds the cost of rebuilding the capability.**

Before the horizon:
- refactoring is painful but rational
- incremental improvement is viable

After the horizon:
- fixing “properly” is no longer incremental
- only isolation, strangulation, or replacement makes sense

The crossing is rarely noticed when it happens.

---

## Worked examples (centre-aware vs fragile)

### Transactions & money

**Why it is core**  
Failure cost exceeds greenfield rebuild cost.

**Avoiding gravity (fragile)**  
- duplicated balances  
- side stores “for performance”  
- scattered validation  

Result: hidden coupling and accelerated drift.

**Safe orbit (centre-aware)**  
- single append-only ledger  
- derived read models  
- asynchronous compliance  
- explicit eligibility constraints  

More work upfront; cheaper change long-term.

---

### Compliance & eligibility

**Why it is core**  
Decisions must be explainable after the fact.

**Avoiding gravity (fragile)**  
- synchronous gating  
- flags for edge cases  
- duplicated rules  

Result: audit archaeology.

**Safe orbit (centre-aware)**  
- compliance emits facts  
- decisions are versioned  
- eligibility constrains participation  

---

### RPA

**Why it appears**  
Outward drift became unaffordable.

RPA is not the cause — it is a **signal that the event horizon was crossed earlier**.

**Centre-aware alternative**  
- stable contracts  
- events instead of screen behaviour  
- human steps modelled explicitly  

---

## What good architecture actually does

Good architecture does **not** prevent inward drift.

It:
- accepts that core capabilities increase gravity
- introduces structure early
- lowers the cost of outward drift near the centre
- preserves reversibility as long as economically possible

> **Architecture is rate control.  
> Debt is unmanaged acceleration.**

---

## How to use this model

Ask:
- Is this increasing inward pull without lowering outward cost?
- Are we investing enough to release this capability into a safe orbit?
- Is outward drift still cheaper than rebuild?
- Are we making reversibility explicit — or assuming it?

If the answers are unclear, drift is already happening.

---

## Summary

- Inward drift is inevitable  
- Outward drift is intentional debt repayment  
- Core capabilities increase gravity deliberately  
- Safe orbit means change cheaper than rebuild  
- Failure occurs when outward drift becomes unaffordable  
- The event horizon is crossed when rebuild is cheaper than reversal  

> **Systems don’t fail because they drift inward.  
> They fail when they can no longer push outward.**

---

## Licence

MIT — see `LICENSE`.
