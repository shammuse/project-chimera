# Project Chimera Skills

This directory contains modular, reusable "Skills" that the Chimera Agent can invoke at runtime.

## What is a Skill?
A Skill is a capability package (function, script, or module) with a clear input/output contract, e.g., `skill_download_youtube`, `skill_transcribe_audio`.

## Critical Skills

### [skill_fetch_trends.py](skill_fetch_trends.py)
- **Input:** `{ "platform": "str", "topic": "str" }`
- **Output:** `{ "trends": [ { "name": "str", "score": "float" } ] }`
- **Description:** Fetch trending topics from a specified platform and topic.

### [skill_generate_content.py](skill_generate_content.py)
- **Input:** `{ "trend": "str", "format": "str" }`
- **Output:** `{ "content": "str", "metadata": { ... } }`
- **Description:** Generate content based on a trend and desired format.

### [skill_schedule_post.py](skill_schedule_post.py)
- **Input:** `{ "content": "str", "platform": "str", "time": "datetime" }`
- **Output:** `{ "status": "str", "post_id": "str" }`
- **Description:** Schedule a post on a platform at a specified time.

---

Each skill is implemented as a standalone Python module with a clear input/output contract and a spec-driven stub. See each file for details and implementation status.
