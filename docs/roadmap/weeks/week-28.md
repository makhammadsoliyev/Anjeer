# Week 28 — MCP (Model Context Protocol)

> Phase 6 — Agents, MCP, and production (weeks 27–30) · [phase overview](../phases/phase-6.md)
>
> [← Week 27](week-27.md) · [Index](../README.md) · [Week 29 →](week-29.md)

## Day 1 — Learn: what MCP is

**Topics to cover:**

1. **MCP's purpose** — a standard way to connect AI applications to external systems; "USB-C for AI"
1. **Architecture** — host, client, server; who does what
1. **Transport** — stdio (local) and HTTP (remote)
1. **Primitives** — tools (actions), resources (data), prompts (templates)
1. **MCP vs. function calling** — function calling is within one app; MCP is between apps
1. **C# SDK** — the `ModelContextProtocol` package
1. **Security** — an MCP server needs authentication and authorization too
1. **Why this is valuable** — very few .NET developers have written an MCP server

## Day 2 — Build: the MCP server

**Topics to cover:**

1. **Creating a server** — `AddMcpServer()`, `WithToolsFromAssembly()`
1. **Declaring tools** — via attributes; `[Description]` matters here too
1. **Resources** — exposing the topic tree as a resource
1. **Authentication** — branch isolation must hold through MCP as well
1. **Connecting Claude Code** — via `.mcp.json`; testing your own server with a real client

**Connecting to Claude Code:**

```jsonc
// .mcp.json — in the project root
{
  "mcpServers": {
    "anjeer": {
      "type": "stdio",
      "command": "dotnet",
      "args": ["run", "--project", "src/Anjeer.Mcp"]
    }
  }
}
```

> **The most interesting part of the week**
>
> Once your MCP server is connected to Claude Code, you can ask directly: *"Through Anjeer, show me group 5-A's weak topics"* — and watch your own server get called.
> A strong portfolio demo: very few candidates have written an MCP server and tested it with a real AI client.

**Free resources:**

- **[Docs]** [Model Context Protocol](https://modelcontextprotocol.io) (modelcontextprotocol.io)
- **[GitHub]** [MCP C# SDK](https://github.com/modelcontextprotocol/csharp-sdk) (github.com)
- **[Docs]** [Claude Code — MCP](https://code.claude.com/docs/en/mcp) (code.claude.com)

## Day 3 — PROJECT: Anjeer.Mcp — MCP server

**What it is:** A server that exposes Anjeer's data to external AI clients via the MCP protocol.

**Why it matters:** Practical value — the CEO or a curriculum lead can query the system through Claude Code or another MCP client, no separate UI needed. Portfolio value — this is the current cutting edge of AI integration standards.

**Tools:**

```csharp
[McpServerTool]
[Description("Returns a group's weakest topics")]
GetGroupWeakTopics(long groupId, int topN)

[McpServerTool]
[Description("A student's topic-level mastery")]
GetStudentMastery(long studentId)

[McpServerTool]
[Description("Semantic search over materials")]
SearchMaterials(string query, string? topicCode)

[McpServerTool]
[Description("Overall statistics for a branch")]
GetBranchSummary(long branchId, string period)
```

**Functional requirements:**

1. 4+ tools, via stdio transport
1. The topic tree is exposed as a resource
1. **Authentication**: the server never runs without a user context
1. Branch isolation holds through MCP too
1. The PII rule holds — no name is returned
1. Tested with Claude Code
1. README includes a connection guide

**Acceptance Criteria:**

- [ ] The server shows up in Claude Code and tools are called
- [ ] Branch isolation is never broken (tested)
- [ ] An unauthenticated request is refused
- [ ] **A demo is recorded** (for the portfolio)

**Claude Code + Superpowers:**

| Superpowers does this | You decide and verify |
|---|---|
| The MCP server skeleton, tool declarations, transport setup, `.mcp.json`, README. | **Which tools get exposed and which don't** — an MCP server faces the outside world, so its surface must stay minimal. No write tool is ever exposed here. |

**Git commit:** `feat: MCP server exposing Anjeer data to AI clients`

---

[← Week 27](week-27.md) · [Index](../README.md) · [Week 29 →](week-29.md)
