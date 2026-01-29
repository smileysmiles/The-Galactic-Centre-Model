# Architectural Principles (APs) and Kaizen

## Purpose

Architectural Principles (APs) and Kaizen work together to control change within the Galaxy Centre / Centre of Gravity model. APs define deliberate constraints, while Kaizen enables continuous improvement within those constraints. This document exists to prevent inward drift, avoid architectural change by stealth, and enable improvement without destabilising core capabilities.

This is not a process document. It is a control model for change.

---

## Architectural Principles (APs)

APs define the fundamental constraints of the system. They are opinionated by design, applied unevenly depending on criticality, and fixed at a point in time. Their purpose is to prevent accidental centralisation, protect core capabilities, and make trade-offs explicit so they do not need to be re-litigated repeatedly.

### What APs Are Not

APs are not:
- Living documents
- Consensus artefacts
- Best-practice lists
- Continuously revised guidance

They represent a deliberate position in time.

---

## Kaizen

Kaizen is the practice of continuous, local improvement. In this model, Kaizen is always bounded, directional, and subordinate to APs. It exists to improve quality, reduce risk, simplify implementations, and expose technical or architectural pressure.

Kaizen does not exist to change system direction, redefine boundaries implicitly, bypass APs “just this once”, or introduce new gravity silently.

---

## The Galaxy Centre Model

The system is viewed as a galaxy of capabilities organised by gravitational pull.

- **Centre (Core Capabilities)**  
  High criticality, high blast radius, high cost of change

- **Inner Orbits**  
  Important but non-foundational capabilities, susceptible to inward drift

- **Outer Orbits**  
  Low-gravity, fast-moving, often short-lived capabilities

---

## Kaizen by Orbit

### Centre / Core Capabilities

Kaizen near the centre is conservative and risk-first. It focuses on stability, correctness, observability, performance, and risk reduction. Structural change or semantic behaviour change requires an explicit architectural decision.

### Inner Orbits

Kaizen in the inner orbits is boundary-focused. It aims to reduce coupling, clarify ownership, improve deployability, and actively resist inward drift. This is where Kaizen often surfaces architectural pressure.

### Outer Orbits

Kaizen in the outer orbits is fast, experimental, and disposable. Constraints are minimal, blast radius is small, and learning is prioritised over permanence.

---

## Drift and Direction

All systems drift inward over time. Kaizen alone does not prevent this. Unchecked Kaizen can accelerate drift by making the centre increasingly attractive and strengthening accidental dependencies.

APs give Kaizen direction. Outward drift is always deliberate and costly, and Kaizen exists to pay that cost incrementally.

---

## Kaizen vs Architecture

A clear boundary exists between improvement and direction:

**Kaizen stops where direction changes begin.**

Kaizen is local, incremental, and reversible. Architectural decisions, expressed through ADRs or new APs, are directional, deliberate, and irreversible.

When Kaizen repeatedly hits an AP boundary, that friction is a signal. The outcome is an ADR or a new or replacement AP, not erosion by exception.

---

## Changing or Adding APs

Architectural Principles are never edited in place. They are changed only through deliberate replacement or versioning. Old principles remain as historical record.

Kaizen may surface the need for change, but it does not authorise it.

---

## Summary

APs define gravitational constraints. Kaizen enables safe movement within them. Gravity is deliberate, not accidental. Drift is inevitable; direction is a choice.

**Architectural Principles decide where we are allowed to be.  
Kaizen keeps us safely in orbit.**
