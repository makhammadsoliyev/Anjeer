# ADR-0005: Object storage: MinIO behind an S3-compatible port

**Status**: Accepted
**Date**: 2026-10-19
**Deciders**: project owner
**Related**: `docs/project-overview.md` decision 5 and menu 5 (5d); ADR-0002; roadmap week 8

## Context

The center records a short video per topic; textbooks and materials are uploaded for search and RAG.
Azure Blob was the original choice. Managed video APIs (Cloudflare Stream, Bunny, Mux) charge per
minute stored and delivered. Children must not see ads or recommendations, which rules out YouTube.

## Decision

Files and videos are stored in MinIO (S3 API) running in the same Hetzner project, behind an
`IObjectStorage` abstraction in the application layer. Videos are served as progressive MP4 through
presigned URLs with HTTP range requests, after one ffmpeg pass that puts the `moov` atom first. HLS
is added only if mobile networks make it necessary. The S3 API is the contract: Hetzner Object
Storage, Garage or SeaweedFS are drop-in fallbacks if running MinIO becomes a burden.

## Alternatives considered

| Option | Why rejected |
|---|---|
| YouTube unlisted embeds | Ads and recommendations for children; no access control; easy to copy |
| Azure Blob + HLS + CDN | Azure removed (ADR-0002); weeks of transcoding and signed-access work |
| Managed video API | Per-minute fees grow with usage; a vendor outside the single Hetzner project |

## Consequences

- Positive: no per-minute vendor fees; portable code; storage in the same legal location as the data.
- Negative: we run storage, replication, backups and bandwidth; MinIO's community edition lost its
  management console in 2025 and is AGPL, so keep the code on the S3 API only.
- Follow-up: MinIO replication to a second location before the pilot (runbook); transcript pipeline
  pilot on five real lessons (weeks 22–26).
