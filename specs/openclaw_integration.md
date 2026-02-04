
# OpenClaw Integration Plan

## Branding, Community & Social Layer
OpenClaw (formerly Clawdbot/Moltbot) is a viral, open-source personal AI assistant platform with a rapidly growing community and a strong focus on open collaboration. It is notable for its “skills” system and for spawning Moltbook, a social network where AI agents autonomously post, comment, and share information. Project Chimera will integrate with OpenClaw as both a responsible agent and a contributor to this ecosystem.

### Moltbook: Social Media for Bots
Moltbook is a real-world example of agent-to-agent social interaction, where bots register accounts, post updates, and join topic-linked forums (“submolts”). Project Chimera agents may:
- Register and post status/insights to Moltbook.
- Subscribe to submolts for updates, skills, and coordination.
- Share and discover skills and best practices through this network.

## Skills System: Protocol for Agent Capabilities
OpenClaw’s “skills” are small, downloadable packages (instructions, scripts, reference files) that define agent capabilities. Skills are the primary protocol for:
- Declaring what an agent can do (capability manifest).
- Sharing, updating, and loading new capabilities at runtime.
- Enabling agent-to-agent collaboration and automation across domains.

Project Chimera will:
- Publish its available skills in a machine-readable format (see status payload below).
- Periodically check for new or updated skills from the OpenClaw network (e.g., via submolts or skill repositories).
- Support dynamic skill loading, sandboxing, and safe execution boundaries.

## Security, Guardrails & Human Oversight
OpenClaw’s open, agentic nature brings significant security risks:
- Prompt injection and remote code execution are unsolved industry-wide problems.
- Public exposure of agent endpoints can lead to exploitation if not properly secured.
- Skills and agent instructions must be sandboxed, validated, and permissions tightly controlled.
- Human-defined guardrails and explicit permissions are required for all sensitive actions (e.g., file access, messaging, automation).
- All agent actions must be logged and traceable (MCP Sense integration).

**Warning:** OpenClaw and Project Chimera are currently best suited for early adopters and tinkerers, not mainstream users. Never connect to sensitive accounts or run in production environments without thorough review and security hardening.

## Status Publishing Protocol
- **Format:** JSON over HTTPS (or WebSocket for real-time updates)
- **Endpoint:** `/api/agent/status` (publicly accessible or via OpenClaw relay)
- **Update Frequency:** On state change or every 60 seconds

### Example Status Payload
```json
{
	"agent_id": "chimera-001",
	"status": "available",  // [available, busy, offline, error]
	"current_task": "trend_fetching",
	"skills": ["fetch_trends", "generate_content", "schedule_post"],
	"uptime": 123456,
	"last_updated": "2026-02-04T12:00:00Z"
}
```

## Agent Discovery & Communication
- Agents register with the OpenClaw directory service.
- Agents can query the directory for available peers and their capabilities.
- Communication between agents uses signed JSON messages, with the following contract:

### Example Agent Message Contract
```json
{
	"from": "chimera-001",
	"to": "openclaw-agent-xyz",
	"timestamp": "2026-02-04T12:01:00Z",
	"type": "status_update|collaboration_request|handoff",
	"payload": { /* task-specific data */ }
}
```

## Security & Best Practices
- **Security is paramount.** OpenClaw is currently best suited for early adopters and tinkerers, not mainstream users.
- Skills and agent instructions must be sandboxed and validated before execution.
- Prompt injection and remote code execution are unsolved industry-wide problems; all agents must follow [OpenClaw security best practices](https://github.com/openclaw/security).
- Only run Chimera/OpenClaw in controlled environments; never connect to sensitive accounts without review.
- All messages are signed and logged for traceability (MCP Sense integration).

## Community & Maintainership
- Project Chimera will contribute to and follow the OpenClaw community’s standards for skill sharing, agent maintainership, and open source collaboration.
- Sponsorship and maintainership are encouraged to ensure project sustainability.

## Alignment with Agentic Stack
- Status and intent are always spec-driven and machine-readable.
- All protocol changes must be reflected in specs/ before implementation.

---

See also: [a16z Trillion Dollar AI Stack](https://a16z.com/2024/01/30/the-trillion-dollar-ai-software-development-stack/) and [OpenClaw Security Best Practices](https://github.com/openclaw/security) for rationale on agentic protocols, skills, and security.
