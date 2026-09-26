# Capability tagging correction report — v5 -> v7

The previous v5 implementation used a length-based short_no_action rule. v7 removes that rule and replaces it with content-based action detection, while explicitly recognizing short system commands as technician-level evidence.

Train+validation pool: 15,259 records.
v5 -> v7 changed 1,090 records (7.14%).

User-actionable changed from 11,752 to 10,820.
Non-resolution changed from 3,032 to 3,766.
Technician-only changed from 407 to 605.
Special-access remained 68.

v7 should not yet be treated as frozen ground truth solely from these deterministic rules. The corrected pools and transition/audit artifacts remain subject to final manual re-audit.
