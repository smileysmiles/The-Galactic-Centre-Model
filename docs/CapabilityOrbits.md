# Capability Orbits

This document defines how we place business capabilities into orbits within the Galaxy Centre model. Orbits are used to align architectural decisions, principles, and improvement activity to business risk and blast radius.

Orbits are not a maturity model. They describe **risk concentration and gravitational impact**.

---

## Core Concepts

A **business capability** describes *what the business does*, independent of implementation.

An **orbit** describes where that capability sits in the landscape, based on risk and impact.

We intentionally separate three views of orbit:

- **Innate Orbit** — where the capability, by its nature, should land, independent of implementation, derived from business risk, authority, and blast radius.
- **Realised Orbit** — where gravity actually exists today, given the current solution shape (coupling, dependencies, authority leakage, and delivered ilities).
- **Business-Accepted Orbit** — where the business has explicitly decided to operate for now, given cost vs risk.

**Debt** is the gap between the innate orbit and the realised orbit.  
**Risk acceptance** is the gap the business chooses to carry between the innate orbit and the business-accepted orbit.

---

## Orbit Definitions

### Centre / Core Orbit

Capabilities in the centre represent concentrated business risk.

Typical characteristics:
- Immediate revenue impact if degraded or unavailable
- Regulatory or legal exposure
- Security-critical or trust-defining
- Large blast radius across the platform
- Low tolerance for unpredictable change

Implications:
- Stability and correctness are prioritised over speed
- Change must be explicit and deliberate
- Kaizen is conservative and risk-focused

Examples (generic):
- Authentication / identity
- Authoritative transactions / ledger
- Regulatory enforcement and audit facts
- Core customer state

---

### Inner Orbit

Inner orbit capabilities are important but not foundational.

Typical characteristics:
- Business-critical but scoped
- Moderate blast radius
- Often integrate with the centre
- Susceptible to inward drift over time

Implications:
- Kaizen is boundary-focused and aimed at reducing coupling
- Architectural pressure should surface here first
- Extraction and decomposition are valid outcomes when value is clear

Examples (generic):
- Customer profile enrichment
- Payments orchestration
- Risk scoring
- Policy evaluation

---

### Outer Orbit

Outer orbit capabilities prioritise speed, learning, and replaceability.

Typical characteristics:
- Low blast radius
- Replaceable or short-lived
- Minimal authority (consumes more than it defines)
- Failure is tolerable and usually local

Implications:
- Kaizen is fast and experimental
- Governance is lightweight
- Replacement is expected

Examples (generic):
- UI composition layers
- Experiments and pilots
- Reporting views
- Non-authoritative integrations

---

## Orbit Placement Method

Orbit placement is based on interpretation, not scoring.

### Step 1 — State the capability cleanly

Describe the capability as a business outcome, not a system:

Bad:
- “Login Service”
- “Player API”

Good:
- “Authenticate a customer and grant access”
- “Authoritatively record transactions”

If the capability cannot be stated clearly, classification is deferred.

---

### Step 2 — Determine the innate orbit

Assess the capability by its nature:

- **Business risk** — does failure stop revenue, breach obligations, or damage trust?
- **Authority** — is it a source of truth for critical data or decisions?
- **Blast radius** — does failure block many other capabilities?

If multiple are true at high intensity, the innate orbit is pulled inward.

---

### Step 3 — Determine the realised orbit

Assess the current solution shape:

- Coupling and dependency depth
- Authority leakage (solution does more than the capability needs)
- Operational failure modes and rollback safety
- Delivered **ilities** (reliability, security, change safety, auditability, scalability, observability)

The realised orbit reflects where gravity *actually* exists today.

---

### Step 4 — Agree the business-accepted orbit

If the realised orbit does not meet the innate orbit expectations, decide explicitly:

- What misalignment are we accepting?
- Which ilities are below what this orbit implies?
- What is the cost to reduce the gap?
- For how long is the acceptance valid?
- What triggers a re-decision (incident, regulation change, time window)?

This orbit is a business decision and must be time-bound.

---

### Step 5 — Act on the gap

- Use **Kaizen** to improve ilities and reduce accidental gravity.
- Use architectural decisions (e.g. ADRs) to authorise directional shape changes.
- Do not change orbit positions by stealth.

---

## Orbit Transitions

Capabilities do not move between orbits accidentally.

Movement inward or outward must be:
- Explicit
- Deliberate
- Costed
- Recorded

Common triggers:
- Repeated Kaizen saturation (improvement stalls) → candidate for shape change or outward movement
- Increased dependency load → candidate for inward promotion or hardening
- Regulatory or risk change → forced reclassification

---

## Summary

Orbits make risk and gravity visible so that:
- improvement is safe near the centre and fast at the edges
- principles apply proportionally to risk
- debt is discussed as misalignment, not blame
- the business can price cost vs risk explicitly
