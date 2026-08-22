<!--
Sync Impact Report
- Version change: unratified scaffold -> 1.0.0
- Modified principles: all five scaffold principles replaced with Kubera rules
- Added sections: Financial Data and Security; Development Workflow and Quality Gates
- Removed sections: none
- Follow-up TODOs: ratification date requires confirmation
-->

# Kubera Constitution

## Core Principles

### I. Readable, Maintainable, and Modular Code

All production code MUST use clear names, small cohesive modules, and established project
conventions. A change MUST keep responsibilities separated and MUST document non-obvious
decisions. Rationale: financial behavior is difficult to audit, so understandable structure
reduces defects and lowers the cost of future change.

### II. Documented Architecture and Behavior

Every public API, metric, data flow, and user-visible behavior MUST have documentation with
representative input and output examples. Architectural decisions MUST be recorded in Markdown
before implementation when they affect module boundaries or stored data. Rationale: explicit
contracts let contributors and reviewers reason about financial calculations consistently.

### III. Correctness and Testable Delivery

New or changed behavior MUST include unit tests for business logic and module or integration
tests for cross-component behavior. Tests MUST cover normal, boundary, invalid, and failure
cases relevant to the change. A change MUST pass its applicable checks before merge. Rationale:
incorrect balances or recommendations can directly harm users, making regression protection
non-negotiable.

### IV. Security and Financial Data Integrity

The system MUST protect credentials and personal financial data, MUST validate all external
input, and MUST avoid logging secrets or sensitive account details. Monetary values MUST use
an exact, explicitly defined representation and MUST document rounding and currency rules.
Changes to schemas or financial calculations MUST describe compatibility and migration impact.
Rationale: confidentiality and numerical integrity are core product requirements, not optional
operational improvements.

### V. Native Simplicity and Explicit Tradeoffs

The team MUST prefer the standard library and existing project utilities when they satisfy the
requirement. Introducing an external dependency MUST include a documented reason, license and
maintenance consideration, and a testing plan. Implementations MUST avoid speculative features
and unnecessary abstraction. Rationale: fewer dependencies and simpler designs reduce security,
maintenance, and operational risk.

## Financial Data and Security

Financial records MUST be treated as user-owned data. Access control MUST follow least
privilege, sensitive values MUST be encrypted in transit and at rest where supported by the
deployment environment, and destructive operations MUST be deliberate and auditable. The
implementation MUST define behavior for duplicate imports, partial failures, time zones, and
currency conversion before those cases are exposed to users. Rationale: predictable handling
prevents silent corruption and makes recovery possible.

## Development Workflow and Quality Gates

Each feature MUST begin with clarified requirements and an architecture or data-flow decision
when applicable. Pull requests MUST state the behavior changed, documentation updated, tests
run, and any migration or security impact. Reviewers MUST verify constitution compliance before
approval. Releases MUST NOT proceed with known failing required checks or undocumented breaking
changes. Rationale: a repeatable workflow makes quality review visible and keeps implementation
decisions aligned with the product's financial risk.

## Governance

<!-- Example: Constitution supersedes all other practices; Amendments require documentation, approval, migration plan -->

This constitution supersedes conflicting project practices. Amendments MUST include the proposed
text, rationale, affected artifacts, migration plan when behavior or data contracts change, and
an updated Sync Impact Report. The project owner and at least one reviewer MUST approve an
amendment before it is adopted.

The version follows semantic governance versioning: MAJOR denotes removal or incompatible
redefinition of a rule; MINOR denotes a new principle or materially expanded requirement; PATCH
denotes clarifications and non-semantic wording changes. The Last Amended date MUST change for
every adopted amendment. Compliance MUST be reviewed during feature planning, code review, and
release readiness checks. Exceptions MUST be documented with scope, owner, rationale, and expiry
date.

**Version**: 1.0.0 | **Ratified**: 2026-08-22 | **Last Amended**: 2026-08-22
