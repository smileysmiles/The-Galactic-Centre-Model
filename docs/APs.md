| ID     | Principle                                   | One-liner                                                                 |
|--------|---------------------------------------------|---------------------------------------------------------------------------|
| AP-01  | API & Event First                           | Default to APIs for commands/queries, events for facts, projections for recurring reads. |
| AP-02  | Coupling & Cohesion                         | Domains should be highly cohesive internally and loosely coupled externally. |
| AP-03  | API & Payload Versioning                   | APIs/events must remain backward compatible; breaking changes require a new version with a lifecycle plan. |
| AP-04  | No Event Noise                             | Only publish meaningful business events; avoid redundant or low-value noise. |
| AP-05  | Derived Totals & Thresholds                | Persist derived values (balances, counters) as first-class, not recalculated on demand. |
| AP-06  | Decompose Where It Delivers Value          | Split systems into services only where cohesion, agility, or scaling justify it. |
| AP-07  | Franchise & Location as First-Class Concepts | Geography and franchise boundaries must be explicit in data and models. |
| AP-08  | Security & Privacy by Default              | Build in least privilege, encryption, and data minimisation from the start. |
| AP-09  | Observability Everywhere                   | Systems must emit metrics, logs, and traces as first-class outputs, not afterthoughts. |
| AP-10  | Data Ownership & Authority                 | Each domain is the single source of truth for its data; no cross-domain writes. |
| AP-11  | Immutability of Critical Records           | Critical/audit records are append-only and never updated or deleted. |
| AP-12  | Evolve, Don’t Replace                     | Modernise incrementally (strangler, overlays), not via big-bang rewrites. |
| AP-13  | Simplicity Over Ceremony                  | Favour simple, understandable solutions over complex frameworks or processes. |
| AP-14  | Code Smells as Signals                    | Code smells are early warnings of design pressure, not developer failure. |
| AP-15  | Runtime Decisions, Design-Time Guardrails | Invariants are enforced at design-time; variability comes from runtime config/policy. |
| AP-16  | Operational vs Analytical Data            | Keep OLTP and OLAP workloads separate; don’t run analytics on transactional stores. |
| AP-17  | Reports for Insight, Systems for Action   | Reports are for understanding; systems must act automatically on operational data. |
| AP-18  | MSK Cluster Architecture & Guardrails     | Kafka/MSK clusters follow strict domain ownership and security guardrails. |
| AP-19  | Types as Contracts, Not Shortcuts         | Use strong types to define contracts; avoid casting or shortcuts that bypass intent. |
| AP-20  | Idempotency by Design                     | All operations/events must be retry-safe and free of duplicate side effects. |
| AP-21  | Human-Usable Interaction Constraints      | User interfaces must not require manual browsing or selection from high-cardinality datasets. |
