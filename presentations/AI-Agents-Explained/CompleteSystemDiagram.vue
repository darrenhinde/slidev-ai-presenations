<!-- CompleteSystemDiagram.vue -->
<template>
  <div class="complete-system-diagram">
    <svg viewBox="0 0 900 500" xmlns="http://www.w3.org/2000/svg">
      <!-- Background -->
      <rect x="10" y="10" width="880" height="480" rx="20" fill="#F5F5F5" stroke="#1E3D59" stroke-width="2" />
      
      <!-- Title -->
      <text x="450" y="50" font-size="24" fill="#1E3D59" font-weight="bold" text-anchor="middle">Complete AI Agent Architecture</text>
      
      <!-- Agent Core in Center -->
      <g class="agent-core">
        <circle cx="450" cy="250" r="70" fill="#1E3D59" />
        <text x="450" y="240" font-size="20" fill="#F5F5F5" text-anchor="middle">AI Agent</text>
        <text x="450" y="265" font-size="14" fill="#F5F5F5" text-anchor="middle">Core Processing</text>
      </g>
      
      <!-- Step 1: Perceive Environment -->
      <g class="perception-layer">
        <rect x="50" y="100" width="180" height="80" rx="10" fill="#FF6B6B" />
        <text x="140" y="130" font-size="16" fill="#F5F5F5" text-anchor="middle">1. Perceive</text>
        <text x="140" y="155" font-size="14" fill="#F5F5F5" text-anchor="middle">Environment</text>
        
        <!-- Input sources -->
        <rect x="60" y="190" width="50" height="30" rx="5" fill="#F5F5F5" stroke="#FF6B6B" stroke-width="1" />
        <text x="85" y="210" font-size="12" fill="#333" text-anchor="middle">APIs</text>
        
        <rect x="120" y="190" width="50" height="30" rx="5" fill="#F5F5F5" stroke="#FF6B6B" stroke-width="1" />
        <text x="145" y="210" font-size="12" fill="#333" text-anchor="middle">User</text>
        
        <rect x="180" y="190" width="50" height="30" rx="5" fill="#F5F5F5" stroke="#FF6B6B" stroke-width="1" />
        <text x="205" y="210" font-size="12" fill="#333" text-anchor="middle">Sensors</text>
        
        <!-- Connector to core -->
        <path d="M230,140 C300,140 300,200 380,200" stroke="#FF6B6B" stroke-width="2" fill="none" marker-end="url(#arrowhead1)" />
        <text x="300" y="130" font-size="12" fill="#333" text-anchor="middle">Input Data</text>
      </g>
      
      <!-- Step 2: Process Information -->
      <g class="process-layer">
        <rect x="150" y="350" width="180" height="80" rx="10" fill="#C8B784" />
        <text x="240" y="380" font-size="16" fill="#333" text-anchor="middle">2. Process</text>
        <text x="240" y="405" font-size="14" fill="#333" text-anchor="middle">Information</text>
        
        <!-- Process components -->
        <circle cx="190" cy="450" r="15" fill="#1E3D59" />
        <text x="190" y="454" font-size="10" fill="#F5F5F5" text-anchor="middle">NLP</text>
        
        <circle cx="240" cy="450" r="15" fill="#1E3D59" />
        <text x="240" y="454" font-size="10" fill="#F5F5F5" text-anchor="middle">ML</text>
        
        <circle cx="290" cy="450" r="15" fill="#1E3D59" />
        <text x="290" y="454" font-size="10" fill="#F5F5F5" text-anchor="middle">Rules</text>
        
        <!-- Connector to core -->
        <path d="M240,350 C240,310 350,270 380,250" stroke="#C8B784" stroke-width="2" fill="none" marker-end="url(#arrowhead2)" />
        <text x="280" y="310" font-size="12" fill="#333" text-anchor="middle">Understanding</text>
      </g>
      
      <!-- Step 3: Access Memory -->
      <g class="memory-layer">
        <rect x="360" y="80" width="180" height="80" rx="10" fill="#4CAF50" />
        <text x="450" y="110" font-size="16" fill="#F5F5F5" text-anchor="middle">3. Access Memory</text>
        
        <!-- Memory components -->
        <rect x="370" y="130" width="70" height="25" rx="5" fill="#F5F5F5" stroke="#4CAF50" stroke-width="1" />
        <text x="405" y="147" font-size="10" fill="#333" text-anchor="middle">Short-term</text>
        
        <rect x="450" y="130" width="80" height="25" rx="5" fill="#F5F5F5" stroke="#4CAF50" stroke-width="1" />
        <text x="490" y="147" font-size="10" fill="#333" text-anchor="middle">Long-term</text>
        
        <!-- Connector to core -->
        <path d="M450,160 C450,180 450,180 450,180" stroke="#4CAF50" stroke-width="2" fill="none" marker-end="url(#arrowhead3)" />
        <text x="480" y="170" font-size="12" fill="#333" text-anchor="middle">Context</text>
      </g>
      
      <!-- Step 4: Use Tools -->
      <g class="tools-layer">
        <rect x="570" y="150" width="180" height="80" rx="10" fill="#FF6B6B" />
        <text x="660" y="180" font-size="16" fill="#F5F5F5" text-anchor="middle">4. Use Tools</text>
        
        <!-- Tool components -->
        <rect x="580" y="200" width="50" height="25" rx="5" fill="#F5F5F5" stroke="#FF6B6B" stroke-width="1" />
        <text x="605" y="217" font-size="10" fill="#333" text-anchor="middle">APIs</text>
        
        <rect x="640" y="200" width="50" height="25" rx="5" fill="#F5F5F5" stroke="#FF6B6B" stroke-width="1" />
        <text x="665" y="217" font-size="10" fill="#333" text-anchor="middle">Vectors</text>
        
        <rect x="700" y="200" width="50" height="25" rx="5" fill="#F5F5F5" stroke="#FF6B6B" stroke-width="1" />
        <text x="725" y="217" font-size="10" fill="#333" text-anchor="middle">RAG</text>
        
        <!-- Connector to core -->
        <path d="M570,190 C520,190 520,220 520,220" stroke="#FF6B6B" stroke-width="2" fill="none" marker-end="url(#arrowhead4)" />
        <text x="540" y="170" font-size="12" fill="#333" text-anchor="middle">Integration</text>
      </g>
      
      <!-- Step 5: Take Action -->
      <g class="action-layer">
        <rect x="570" y="350" width="180" height="80" rx="10" fill="#1E3D59" />
        <text x="660" y="380" font-size="16" fill="#F5F5F5" text-anchor="middle">5. Take Action</text>
        
        <!-- Action components -->
        <rect x="580" y="400" width="160" height="25" rx="5" fill="#F5F5F5" stroke="#1E3D59" stroke-width="1" />
        <text x="660" y="417" font-size="12" fill="#333" text-anchor="middle">Response Generation</text>
        
        <!-- Connector from core -->
        <path d="M520,280 C520,310 580,350 580,350" stroke="#1E3D59" stroke-width="2" fill="none" marker-end="url(#arrowhead5)" />
        <text x="540" y="330" font-size="12" fill="#333" text-anchor="middle">Decision</text>
        
        <!-- Output paths -->
        <path d="M660,425 L660,460" stroke="#333" stroke-width="2" stroke-dasharray="5,3" />
        <path d="M640,460 L680,460" stroke="#333" stroke-width="2" />
        
        <path d="M640,460 C600,460 600,440 580,440" stroke="#333" stroke-width="1" stroke-dasharray="3,2" />
        <text x="560" y="460" font-size="10" fill="#333" text-anchor="middle">Text</text>
        
        <path d="M660,460 C660,480 660,480 660,480" stroke="#333" stroke-width="1" stroke-dasharray="3,2" />
        <text x="660" y="495" font-size="10" fill="#333" text-anchor="middle">API Call</text>
        
        <path d="M680,460 C720,460 720,440 740,440" stroke="#333" stroke-width="1" stroke-dasharray="3,2" />
        <text x="760" y="460" font-size="10" fill="#333" text-anchor="middle">Action</text>
      </g>
      
      <!-- Circular Process Flow -->
      <g class="process-flow" stroke="#333" stroke-width="1" stroke-dasharray="5,3" fill="none">
        <path d="M750,400 C800,400 850,300 800,150 C780,100 700,50 600,50 C500,50 300,50 200,100 C100,150 80,200 80,250 C80,300 100,350 140,390" />
        <text x="450" y="30" font-size="14" fill="#333" text-anchor="middle">Continuous Learning & Improvement</text>
      </g>
      
      <!-- Arrowhead marker definitions -->
      <defs>
        <marker id="arrowhead1" markerWidth="10" markerHeight="7" refX="9" refY="3.5" orient="auto">
          <polygon points="0 0, 10 3.5, 0 7" fill="#FF6B6B" />
        </marker>
        <marker id="arrowhead2" markerWidth="10" markerHeight="7" refX="9" refY="3.5" orient="auto">
          <polygon points="0 0, 10 3.5, 0 7" fill="#C8B784" />
        </marker>
        <marker id="arrowhead3" markerWidth="10" markerHeight="7" refX="9" refY="3.5" orient="auto">
          <polygon points="0 0, 10 3.5, 0 7" fill="#4CAF50" />
        </marker>
        <marker id="arrowhead4" markerWidth="10" markerHeight="7" refX="9" refY="3.5" orient="auto">
          <polygon points="0 0, 10 3.5, 0 7" fill="#FF6B6B" />
        </marker>
        <marker id="arrowhead5" markerWidth="10" markerHeight="7" refX="9" refY="3.5" orient="auto">
          <polygon points="0 0, 10 3.5, 0 7" fill="#1E3D59" />
        </marker>
      </defs>
    </svg>
  </div>
</template>

<style scoped>
.complete-system-diagram {
  width: 100%;
  height: 100%;
  display: flex;
  justify-content: center;
  align-items: center;
}

svg {
  max-width: 100%;
  max-height: 100%;
}

text {
  font-family: 'Inter', sans-serif;
}
</style> 