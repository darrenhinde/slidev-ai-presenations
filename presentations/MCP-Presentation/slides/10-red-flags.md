# Red Flags: When to Avoid MCP

<SharedInfoBox title="Warning Signs" type="error" icon="🚫">
  Scenarios where MCP creates more problems than it solves
</SharedInfoBox>

<div class="grid grid-cols-2 gap-4 mt-2">
<div>

## Low Latency Requirements
<div class="text-sm">
- <span class="text-red-300 font-bold">Real-time applications</span> suffer from MCP overhead
- Trading systems, live customer interactions
- Stateless REST APIs outperform MCP by 43%
- Connection management adds unpredictable delays
- Caching limitations increase response times
</div>

## Mission-Critical Functions
<div class="text-sm">
- <span class="text-red-300 font-bold">Reliability concerns</span> make MCP unsuitable
- Medical diagnostics, financial transactions
- Custom integrations provide better testing coverage
- Error handling more predictable with direct APIs
- Accountability and traceability challenges
</div>

</div>
<div>

## Long-Term Maintenance Concerns

<MCPCodeExample title="Tool Abandonment Rate">

```text
Tool Lifecycle Analysis (2024-2025):

893 Total Registered Tools
545 Abandoned (no updates in 6+ months)
127 Partially Maintained (security only)
221 Actively Maintained

Risk of technical debt increases with
each abandoned tool dependency
```

</MCPCodeExample>

## Alternative Approaches

<MCPChart 
  title="Reliability Comparison" 
  :data="{
    labels: ['Uptime (%)', 'Error Handling (%)', 'Maintenance (1-10)'],
    datasets: [
      {
        label: 'Custom API',
        data: [99.9, 95, 7],
        backgroundColor: '#98C379'
      },
      {
        label: 'MCP',
        data: [97.3, 68, 4],
        backgroundColor: '#E06C75'
      }
    ]
  }"
/>

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