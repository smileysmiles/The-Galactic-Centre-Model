# Business Risk Assessment - Login / Authentication Capability

## Capability Classification

**Core / Centre Capability**

Login and authentication sit at the centre of the system due to their direct impact on revenue, regulatory exposure, security posture, customer trust, and overall system stability. Failures or degradation in this capability propagate immediately across the business.

---

## Primary Business Risks

### Availability Risk

If login is unavailable or degraded, customers cannot access services, transact, or self-serve.

**Business impact**
- Immediate revenue loss  
- Increased customer support demand  
- Reputational damage  
- Breach of availability SLAs  

**Risk characteristics**
- Binary impact (works or doesn’t)  
- Low tolerance for partial failure  
- High sensitivity during peak periods  

**Risk posture**
Critical — stability must be prioritised over feature velocity.

---

### Security & Fraud Risk

Login is the primary enforcement point for identity verification and account protection.

**Business impact**
- Account takeover  
- Fraud losses  
- Regulatory penalties  
- Loss of customer trust  

**Risk characteristics**
- Adversarial environment  
- Continuous probing and abuse  
- Risk increases during incidents or degraded states  

**Risk posture**
Critical — defensive correctness outweighs convenience or speed of change.

---

### Regulatory & Compliance Risk

Authentication underpins regulatory obligations such as customer verification, exclusion enforcement, auditability, and access control.

**Business impact**
- Regulatory breaches  
- Fines or licence conditions  
- Mandatory remediation programmes  
- Increased regulatory scrutiny  

**Risk characteristics**
- Retrospective enforcement  
- Requires evidence, not intent  
- Often identified after the fact  

**Risk posture**
High — determinism and auditability are essential.

---

### Customer Experience Risk

Login is a high-frequency, emotionally sensitive interaction.

**Business impact**
- Customer frustration and churn  
- Brand damage  
- Increased abandonment  
- Higher support volumes  

**Risk characteristics**
- Small friction compounds quickly  
- Errors are perceived as systemic failure  
- Poor experience amplifies operational cost  

**Risk posture**
High — reliability and clarity matter more than novelty.

---

### Change Risk

Frequent or poorly controlled changes to login increase the likelihood of regression.

**Business impact**
- Production incidents  
- Emergency rollbacks  
- Loss of confidence in delivery teams  
- Externally imposed change freezes  

**Risk characteristics**
- High coupling amplifies blast radius  
- Failures are highly visible  
- Rollback paths are often limited  

**Risk posture**
High — change must be conservative and intentional.

---

### Scalability & Peak Load Risk

Login traffic is bursty and correlated, often driven by external events or business activity.

**Business impact**
- Partial outages under load  
- Cascading failures into downstream systems  
- Customer lockout during critical periods  

**Risk characteristics**
- Non-linear failure modes  
- Difficult to reproduce in testing  
- Often coincides with business-critical moments  

**Risk posture**
High — systems must be designed for spikes, not averages.

---

## Risk Interactions

These risks compound rather than exist independently -

- Availability failures increase security exposure  
- Security controls increase change complexity  
- Change incidents increase regulatory scrutiny  
- Poor customer experience amplifies reputational damage  

As a result, login acts as a **risk multiplier**, not just a functional capability.

---

## Implications for Decision-Making

From a business perspective, this capability demands -

- Stability over speed  
- Predictability over flexibility  
- Explicit decisions over incremental drift  
- Risk reduction over local optimisation  

This justifies -
- Higher governance  
- Stricter architectural constraints  
- Conservative Kaizen  
- Explicit decision records for directional change  

---

## Summary

Login and authentication represent a single point of concentrated business risk.

The cost of uncontrolled change, implicit decisions, or accidental complexity is significantly higher here than elsewhere in the system. Improvement must be continuous but constrained, directional change must be deliberate, and stability should be treated as a strategic asset rather than a technical preference.
