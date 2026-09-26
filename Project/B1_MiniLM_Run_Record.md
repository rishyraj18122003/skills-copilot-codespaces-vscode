# B1 — Tickets-Only MiniLM Retrieval Run Record

## Status
COMPLETED — retrieval stage

## Frozen configuration
- Retriever: sentence-transformers/all-MiniLM-L6-v2
- Maximum sequence length: 256 tokens
- Mean pooling
- L2-normalized embeddings
- Cosine similarity
- Historical-resolution pool: 15,259 candidates
- Test dialogs: 3,852
- Top-K: 10
- KB: excluded
- Policies: excluded
- Operational technician knowledge: excluded

## Retrieval output
- 38,520 query/rank rows
- 895 non-blank target-answer queries used for exact-match diagnostic analysis
- Exact target in Top-1/3/5: 0
- Exact target in Top-10: 1/895 (0.112%)

Exact string matching is diagnostic only; relevance judging remains the primary evaluation.
