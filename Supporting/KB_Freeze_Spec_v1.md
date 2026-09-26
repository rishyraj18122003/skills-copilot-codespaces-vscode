# KB Freeze Specification v1

## Purpose
Prepare the Knowledge Base (KB) for the B2–B5 dissertation experiments without changing the frozen retrieval method used in B1.

## Authoritative source
Repository: https://github.com/MicrosoftDocs/SupportArticles-docs

Pinned source snapshot: 899bff3bc0ce59244c9258bd55bdddbf2d94a705

## Intended scope
Primary source families:
1. support/windows-client/
2. Outlook/
3. Teams/
4. Microsoft365/

Selection intent: troubleshooting / problem-resolution material, end-user or user-facing content, practical diagnosis, symptoms, causes, workarounds and resolution content relevant to helpdesk incidents.

Exclude landing/index/navigation files, TOCs, redirects, templates, authoring/publishing documentation, purely developer content, duplicates, retired articles when replaced, and pages with no substantive troubleshooting resolution.

The final count is determined after cleaning; it is not assumed to be exactly 200.

## Frozen retrieval
sentence-transformers/all-MiniLM-L6-v2
- maximum sequence length: 256
- mean pooling
- L2-normalized embeddings
- cosine similarity

B1: historical resolutions only.
B2: historical resolutions + frozen KB.
B3: B2 + policy documents.
B4: B2 + keyword policy matching + authoritative governance.
B5: B2 + semantic policy matching + authoritative governance.

## Freeze completion
Required: frozen article/unit manifest, SHA-256 hashes, source commit, counts, duplicate/redirect QA, preserved content, cached MiniLM embeddings and embedding manifest.
