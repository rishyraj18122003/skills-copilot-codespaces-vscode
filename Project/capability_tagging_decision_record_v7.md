# Capability tagging decision record — v7

## Labels
- user_actionable: concrete executable remedy an ordinary end user can perform without privileged organizational access.
- technician_only: invasive/system-internal procedures or technician-level command-line operations.
- special_access: remedy requiring privileged organizational/admin/domain/tenant permissions.
- non_resolution: no concrete executable end-user remedy; includes routing/support referral, status, unsupported functionality, clarification-only responses, and social/closure responses.

## Decision order
1. Detect non-resolution/routing/question-only content when no fix is present.
2. Detect privileged organizational access.
3. Detect technician/system-internal operations.
4. Detect concrete action language.
5. Otherwise assign non_resolution.

Answer length is not a capability criterion.

Capability labels are not frozen; the targeted re-audit remains part of the decision process.
