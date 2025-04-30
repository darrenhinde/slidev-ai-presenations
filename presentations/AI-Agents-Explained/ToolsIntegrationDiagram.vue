<!-- ToolsIntegrationDiagram.vue -->
<template>
  <div class="tools-integration-diagram">
    <svg viewBox="0 0 800 500" xmlns="http://www.w3.org/2000/svg">
      <!-- Background -->
      <rect x="10" y="10" width="780" height="480" rx="20" fill="#F5F5F5" stroke="#1E3D59" stroke-width="2" />
      
      <!-- Central Agent -->
      <g class="agent-core">
        <circle cx="400" cy="250" r="80" fill="#1E3D59" />
        <text x="400" y="240" font-size="20" fill="#F5F5F5" text-anchor="middle">AI Agent</text>
        <text x="400" y="265" font-size="16" fill="#F5F5F5" text-anchor="middle">Core</text>
      </g>
      
      <!-- APIs -->
      <g class="apis">
        <rect x="80" y="100" width="160" height="80" rx="10" fill="#FF6B6B" />
        <text x="160" y="145" font-size="18" fill="#F5F5F5" text-anchor="middle">APIs</text>
        
        <!-- API connections -->
        <rect x="55" y="200" width="70" height="30" rx="5" fill="#F5F5F5" stroke="#FF6B6B" stroke-width="1" />
        <text x="90" y="220" font-size="12" fill="#333" text-anchor="middle">Weather</text>
        
        <rect x="135" y="200" width="70" height="30" rx="5" fill="#F5F5F5" stroke="#FF6B6B" stroke-width="1" />
        <text x="170" y="220" font-size="12" fill="#333" text-anchor="middle">Calendar</text>
        
        <rect x="215" y="200" width="70" height="30" rx="5" fill="#F5F5F5" stroke="#FF6B6B" stroke-width="1" />
        <text x="250" y="220" font-size="12" fill="#333" text-anchor="middle">Maps</text>
        
        <!-- Connectors to core -->
        <path d="M90,230 C90,300 250,300 320,250" stroke="#FF6B6B" stroke-width="2" fill="none" marker-end="url(#arrowheadRed)" />
        <path d="M170,230 C170,270 250,270 320,250" stroke="#FF6B6B" stroke-width="2" fill="none" marker-end="url(#arrowheadRed)" />
        <path d="M250,230 C250,250 300,250 320,250" stroke="#FF6B6B" stroke-width="2" fill="none" marker-end="url(#arrowheadRed)" />
      </g>
      
      <!-- Vector Databases -->
      <g class="vector-databases">
        <rect x="560" y="100" width="160" height="80" rx="10" fill="#4CAF50" />
        <text x="640" y="145" font-size="18" fill="#F5F5F5" text-anchor="middle">Vector Databases</text>
        
        <!-- Database cylinder 1 -->
        <ellipse cx="600" cy="230" rx="25" ry="10" fill="#4CAF50" stroke="#F5F5F5" stroke-width="1" />
        <rect x="575" y="230" width="50" height="40" fill="#4CAF50" stroke="#F5F5F5" stroke-width="1" />
        <ellipse cx="600" cy="270" rx="25" ry="10" fill="#4CAF50" stroke="#F5F5F5" stroke-width="1" />
        <text x="600" y="250" font-size="12" fill="#F5F5F5" text-anchor="middle">Embeddings</text>
        
        <!-- Database cylinder 2 -->
        <ellipse cx="670" cy="230" rx="25" ry="10" fill="#4CAF50" stroke="#F5F5F5" stroke-width="1" />
        <rect x="645" y="230" width="50" height="40" fill="#4CAF50" stroke="#F5F5F5" stroke-width="1" />
        <ellipse cx="670" cy="270" rx="25" ry="10" fill="#4CAF50" stroke="#F5F5F5" stroke-width="1" />
        <text x="670" y="250" font-size="12" fill="#F5F5F5" text-anchor="middle">Knowledge</text>
        
        <!-- Connectors to core -->
        <path d="M600,270 C600,320 500,320 480,250" stroke="#4CAF50" stroke-width="2" fill="none" marker-end="url(#arrowheadGreen)" />
        <path d="M670,270 C670,340 500,340 480,250" stroke="#4CAF50" stroke-width="2" fill="none" marker-end="url(#arrowheadGreen)" />
      </g>
      
      <!-- Custom Functions -->
      <g class="custom-functions">
        <rect x="80" y="320" width="160" height="80" rx="10" fill="#C8B784" />
        <text x="160" y="365" font-size="18" fill="#333" text-anchor="middle">Custom Functions</text>
        
        <!-- Code blocks -->
        <rect x="60" y="410" width="60" height="30" rx="5" fill="#333" />
        <text x="90" y="430" font-size="12" fill="#F5F5F5" text-anchor="middle">Math</text>
        
        <rect x="130" y="410" width="60" height="30" rx="5" fill="#333" />
        <text x="160" y="430" font-size="12" fill="#F5F5F5" text-anchor="middle">Format</text>
        
        <rect x="200" y="410" width="60" height="30" rx="5" fill="#333" />
        <text x="230" y="430" font-size="12" fill="#F5F5F5" text-anchor="middle">Convert</text>
        
        <!-- Connectors to core -->
        <path d="M90,410 C90,370 270,350 320,280" stroke="#C8B784" stroke-width="2" fill="none" marker-end="url(#arrowheadGold)" />
        <path d="M160,410 C160,380 270,370 320,290" stroke="#C8B784" stroke-width="2" fill="none" marker-end="url(#arrowheadGold)" />
        <path d="M230,410 C230,390 270,390 320,300" stroke="#C8B784" stroke-width="2" fill="none" marker-end="url(#arrowheadGold)" />
      </g>
      
      <!-- RAG System -->
      <g class="rag-system">
        <rect x="560" y="320" width="160" height="80" rx="10" fill="#1E3D59" />
        <text x="640" y="355" font-size="18" fill="#F5F5F5" text-anchor="middle">RAG System</text>
        <text x="640" y="375" font-size="12" fill="#F5F5F5" text-anchor="middle">(Retrieval-Augmented Generation)</text>
        
        <!-- RAG flow -->
        <path d="M570,410 L710,410" stroke="#F5F5F5" stroke-width="2" stroke-dasharray="5,3" />
        <circle cx="590" cy="410" r="10" fill="#FF6B6B" />
        <text x="590" y="430" font-size="10" fill="#F5F5F5" text-anchor="middle">Query</text>
        
        <circle cx="640" cy="410" r="10" fill="#4CAF50" />
        <text x="640" y="430" font-size="10" fill="#F5F5F5" text-anchor="middle">Retrieve</text>
        
        <circle cx="690" cy="410" r="10" fill="#FF6B6B" />
        <text x="690" y="430" font-size="10" fill="#F5F5F5" text-anchor="middle">Generate</text>
        
        <!-- Connector to core -->
        <path d="M640,320 C640,290 500,290 480,280" stroke="#1E3D59" stroke-width="2" fill="none" marker-end="url(#arrowheadBlue)" />
      </g>
      
      <!-- Title -->
      <text x="400" y="50" font-size="22" fill="#1E3D59" font-weight="bold" text-anchor="middle">AI Agent Tools & Integration</text>
      
      <!-- Arrowhead marker definitions -->
      <defs>
        <marker id="arrowheadRed" markerWidth="10" markerHeight="7" refX="9" refY="3.5" orient="auto">
          <polygon points="0 0, 10 3.5, 0 7" fill="#FF6B6B" />
        </marker>
        <marker id="arrowheadGreen" markerWidth="10" markerHeight="7" refX="9" refY="3.5" orient="auto">
          <polygon points="0 0, 10 3.5, 0 7" fill="#4CAF50" />
        </marker>
        <marker id="arrowheadGold" markerWidth="10" markerHeight="7" refX="9" refY="3.5" orient="auto">
          <polygon points="0 0, 10 3.5, 0 7" fill="#C8B784" />
        </marker>
        <marker id="arrowheadBlue" markerWidth="10" markerHeight="7" refX="9" refY="3.5" orient="auto">
          <polygon points="0 0, 10 3.5, 0 7" fill="#1E3D59" />
        </marker>
      </defs>
    </svg>
  </div>
</template>

<style scoped>
.tools-integration-diagram {
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