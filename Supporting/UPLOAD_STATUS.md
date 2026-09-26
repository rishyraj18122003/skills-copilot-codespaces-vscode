# Dissertation GitHub Upload Status

Repository: rishyraj18122003/skills-copilot-codespaces-vscode

## Organization
- Project/ — implementation, B1 retrieval outputs, audits, datasets, experiment data
- Supporting/ — KB specification/build tools, retrieval packages, model packages, supporting artifacts
- .github/ — GitHub Actions only

## Pinned external source
MicrosoftDocs/SupportArticles-docs
Commit: 899bff3bc0ce59244c9258bd55bdddbf2d94a705

## Large-file constraint
The connected GitHub interface available in this session does not provide a general local-binary upload mechanism. Large artifacts such as the 163 MB B1 Top-10 CSV, 270 MB MiniLM archive, and 111 MB corrected retrieval archive therefore cannot be safely uploaded here without truncation or alteration.

The exact local filenames are preserved in the sync script Supporting/sync_all_artifacts.ps1. It uses Git LFS when installed, then stages Project and Supporting for a normal commit and push.

No large artifact has been replaced by a partial file.
