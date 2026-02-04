# Project Chimera Skills

This directory contains modular, reusable "Skills" that the Chimera Agent can invoke at runtime.

## What is a Skill?
A Skill is a capability package (function, script, or module) with a clear input/output contract, e.g., `skill_download_youtube`, `skill_transcribe_audio`.

## Critical Skills (Draft)

### 1. skill_fetch_trends
- **Input:** `{ "platform": "str", "topic": "str" }`
- **Output:** `{ "trends": [ { "name": "str", "score": "float" } ] }`

### 2. skill_generate_content
- **Input:** `{ "trend": "str", "format": "str" }`
- **Output:** `{ "content": "str", "metadata": { ... } }`

### 3. skill_schedule_post
- **Input:** `{ "content": "str", "platform": "str", "time": "datetime" }`
- **Output:** `{ "status": "str", "post_id": "str" }`

---

Each skill should be implemented as a standalone module with a README describing its contract.
