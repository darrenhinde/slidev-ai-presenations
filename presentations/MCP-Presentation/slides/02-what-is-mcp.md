# What is MCP?

<div class="text-center text-2xl font-light my-10 text-white">
  A communication protocol for AI agents to interact with external tools
</div>

<div class="grid grid-cols-2 gap-4">
<div>

## Core Functionality
- <span class="text-purple-300 font-bold">External tool integration</span> without controlling agent logic
- <span class="text-purple-300 font-bold">Bidirectional communication</span> between AI and tools
- Enables context-aware tool usage
- Designed for <span class="text-purple-300 font-bold">non-technical users</span>
- Supports complex multi-step workflows

</div>
<div>

<MCPCodeExample title="Simple MCP Tool Integration">

```ts {all|1-3|5-10|all}
// Define a tool that analyzes social media data
const socialAnalyzer = new MCPTool({
  name: "social-analyzer"
});

// AI agent can now use the tool with proper context
agent.invoke("Analyze our Twitter engagement", {
  tools: [socialAnalyzer],
  context: customerData
});
```

</MCPCodeExample>

<MCPCodeExample title="Bidirectional Communication">

```ts {0|1-5|7-13|all}
// Tool can provide real-time feedback
socialAnalyzer.on("progress", (data) => {
  agent.updateContext("Processing data: " + 
    data.percentComplete + "% complete");
});

// Agent can refine requests based on partial results
agent.on("toolResponse", (response) => {
  if (response.needsRefinement) {
    agent.invoke("Focus on engagement from users in Europe", {
      continueFrom: response.id
    });
  }
});
```

</MCPCodeExample>

</div>
</div>

<style>
h1 {
  color: #E06C75;
}
h2 {
  color: #61AFEF;
}
</style> 