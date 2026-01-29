# Worked Example: Transactions, Compliance, and the Event Horizon

This example walks through a familiar capability — **transactions** — using the Galactic Centre Model to show:
- inward drift
- outward drift
- core gravity
- and where the event horizon appears in cost terms

The goal is not to propose an implementation, but to demonstrate how the model explains real outcomes.

---

## Starting point: a simple transaction flow

Initial design (early life, low gravity):

- User performs an action
- Service validates input
- Balance is updated in a transactional database
- Compliance checks are synchronous
- Errors are returned immediately

At this stage:
- coupling is low
- change is cheap
- refactoring is viable
- outward drift is affordable

The system sits in a **managed orbit**.

---

## Inward drift begins (inevitable)

Over time, pressure increases:

- transaction volume grows
- regulatory requirements expand
- audits require historical explanation
- reconciliation becomes important
- downstream systems depend on balances

Natural responses:
- more validation logic added inline
- compliance rules embedded in the flow
- flags introduced for exceptions
- additional tables added for reporting

This is **normal inward drift**.

No failure yet.

---

## Core decision: transactions become a first-class capability

At some point, the organisation recognises:

> Transactions are too important to be implicit.

A deliberate decision is made to introduce a **ledger**:
- append-only transaction history
- derived balances
- immutable records
- auditable timelines

This **increases gravitational pull**:
- more systems depend on it
- change cost rises
- correctness requirements harden

But it also:
- collapses ambiguity
- makes truth explicit
- reduces hidden coupling
- lowers long-term chaos

The system moves **closer to the centre**, intentionally.

This is **good architecture**.

---

## The trade-off becomes visible

Now every change involving transactions:
- feels heavier
- requires more care
- needs migration or compensation logic
- has audit implications

This is where many teams panic and attempt to reduce pull by:
- duplicating balances
- creating side stores
- bypassing the ledger “just for performance”
- introducing automation to sync systems

These actions **appear to reduce gravity**, but actually:
- increase hidden coupling
- accelerate inward drift elsewhere
- raise the interest rate on debt

The system drifts outward structurally, while gravity still exists.

This is **deceptive progress**.

---

## Outward drift done properly (debt repayment)

A centre-aware approach instead invests in **outward drift near the core**:

- strict ownership of the ledger
- derived read models for performance
- events emitted as facts
- asynchronous compliance evaluation
- eligibility used to constrain participation rather than block transactions

These actions:
- do not reduce gravity
- but **reduce the cost of change near it**
- preserve reversibility

The system stabilises in a **safe orbit close to the centre**.

---

## Crossing the event horizon (what it looks like)

Contrast with the alternative path.

Over time:
- transaction logic is spread across services
- compliance rules are duplicated
- balances exist in multiple places
- automation reconciles inconsistencies
- refactors require coordinated, risky change

Eventually, teams reach the point where:

> Fixing the transaction model properly would require a full rewrite.

At this moment:
- refactoring is no longer rational
- wrappers and isolation dominate
- “don’t touch it” zones appear

This is the **event horizon**.

> The cost of reversing past decisions now exceeds the cost of rebuilding the capability.

The problem was not moving inward —  
it was **failing to invest in outward drift early enough**.

---

## What this example shows

- Transactions *must* live near the centre
- Making them core increases gravity — deliberately
- Avoiding that gravity creates worse outcomes
- The real risk is losing reversibility, not proximity
- Event horizons are crossed silently, then recognised too late

---

## The takeaway

> **Core capabilities make systems heavier.  
> Architecture exists to make that weight survivable.**

The Galactic Centre Model explains why:
- ledgers beat flags
- eligibility beats synchronous gating
- events beat orchestration
- early structure beats late refactoring

And why, eventually, rebuild becomes the only rational move if outward drift is neglected.
