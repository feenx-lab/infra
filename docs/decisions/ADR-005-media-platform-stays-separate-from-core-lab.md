# ADR-005: Media Platform Stays Separate from Core Lab Modernization

## Status
Accepted

## Context
The media platform is operational today and includes multiple tightly related services. Its final architecture is undecided, while core platform work requires immediate focus.

## Decision
Treat media platform redesign as a dedicated parallel track and keep it separate from core lab foundation milestones.

## Alternatives considered
- Full media redesign before any core platform changes
- Immediate migration of all media services into Kubernetes

## Consequences
- Core platform progress is decoupled from unresolved media architecture decisions.
- Media migration planning is documented as roadmap work with explicit TODOs and options.
