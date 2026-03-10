# ADR-005: Media Platform Stays Operationally Separate from Core Lab Platform

## Status
Accepted

## Context
The media stack is currently substantial and production-adjacent for household usage. Core platform modernization should not destabilize media reliability.

## Decision
Treat media platform evolution as a dedicated workstream that remains operationally separate from core platform control-plane work.

## Alternatives considered

- Fold media services directly into early core platform migration
- Freeze media platform changes indefinitely

## Consequences

- Reduces blast radius during core platform transition.
- Supports measured media redesign (platform choice still open).
- Requires explicit integration points for storage/network/shared services.
