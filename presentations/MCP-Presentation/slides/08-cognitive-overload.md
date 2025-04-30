# Cognitive Overload for Agents

<SharedInfoBox title="The Selection Problem" type="warning" icon="🤯">
  Even with perfect technical implementation, models struggle to choose the right tools
</SharedInfoBox>

<div class="grid grid-cols-2 gap-4 mt-2">
<div>

## Model Capability Limits
<div class="text-sm">
- <span class="text-orange-300 font-bold">52% failure rate</span> when selecting from 10+ tools
- Exponential complexity with tool count increase
- Context window limitations
- Difficulty understanding tool nuances
- Chaining multiple tools creates compounding errors
</div>

## User Experience Impact
<div class="text-sm">
- <span class="text-orange-300 font-bold">Tolerance for errors decreases</span> with reliance
- Frustrating loops of incorrect tool selection
- Unpredictable behavior undermines trust
- Debugging failures requires technical knowledge
- Contradicts the democratization narrative
</div>

</div>
<div>

## Tool Selection Benchmark

<MCPChart 
  title="Tool Selection Accuracy" 
  :data="{
    labels: ['3 Tools', '5 Tools', '10 Tools', '15+ Tools'],
    datasets: [
      {
        label: 'GPT-4',
        data: [92, 87, 51, 38],
        backgroundColor: '#98C379'
      },
      {
        label: 'Claude 3',
        data: [94, 89, 48, 41],
        backgroundColor: '#61AFEF'
      }
    ]
  }"
/>

<MCPQuote author="Nuno Campos" title="LangGraph Lead">
  Improving model accuracy from 48% to 70% sounds great, but users' tolerance for errors decreases exponentially. A travel agent that books the wrong hotel 30% of the time is worse than none at all.
</MCPQuote>

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