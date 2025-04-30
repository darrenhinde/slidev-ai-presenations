# MCP's Server-Based Architecture

<SharedInfoBox title="Technical Implementation" type="info" icon="🔌">
  Understanding how MCP works under the hood as a client-server protocol
</SharedInfoBox>

<div class="grid grid-cols-2 gap-4 mt-2">
<div>

## Client-Server Model
- <span class="text-purple-300 font-bold">Host</span>: AI application
- <span class="text-purple-300 font-bold">Client</span>: Communication handler
- <span class="text-purple-300 font-bold">Server</span>: Tool implementation
- Exposes resources (files, APIs, etc.)
- Local or cloud deployment
- Maintains context between calls

</div>
<div>

<MCPCodeExample title="MCP Server Implementation">

```ts {1-5|7-12|14-18}
// Define an MCP server
const server = new MCPServer({
  name: "file-system-server",
  description: "Access to local files"
});

// Register capabilities
server.registerCapability({
  name: "readFile",
  parameters: {
    path: { type: "string" }
  }
});

// Implement the capability
server.implementCapability("readFile", async (params) => {
  const contents = await fs.readFile(params.path);
  server.addToContext(`Read: ${params.path}`);
  return contents;
});
```

</MCPCodeExample>

</div>
</div>

<div class="mt-2">

## Key Characteristics

<div class="grid grid-cols-3 gap-2 text-sm">
<div>

### Local Deployment
- Direct resource access
- Privacy-preserving
- No cloud dependency
- Reduced latency

</div>
<div>

### Context Retention
- Maintains interaction logs
- Better context awareness
- Enables stateful behavior
- Persistent memory

</div>
<div>

### Black Box Behavior
- Hidden implementation
- Simplified for non-devs
- Limited transparency
- Security challenges

</div>
</div>
</div>

<style>
h1 {
  color: #E06C75;
}
h2, h3 {
  color: #61AFEF;
}
</style> 