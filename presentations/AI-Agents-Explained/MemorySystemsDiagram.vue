<!-- MemorySystemsDiagram.vue -->
<template>
  <div class="memory-systems-diagram">
    <svg viewBox="0 0 900 400" xmlns="http://www.w3.org/2000/svg">
      <!-- Background -->
      <rect x="10" y="10" width="880" height="380" rx="20" fill="#F5F5F5" stroke="#1E3D59" stroke-width="2" />
      
      <!-- Memory Container -->
      <rect x="50" y="70" width="800" height="300" rx="15" fill="#F5F5F5" stroke="#C8B784" stroke-width="2" stroke-dasharray="5,5" />
      
      <!-- Short-term Memory -->
      <g class="short-term-memory">
        <rect x="80" y="110" width="220" height="220" rx="10" fill="#fff" stroke="#1E3D59" stroke-width="2" />
        <rect x="90" y="130" width="200" height="40" rx="5" fill="#FF6B6B" />
        <text x="190" y="155" font-size="16" fill="#fff" text-anchor="middle">Short-term Memory</text>
        
        <!-- Recent Conversations -->
        <rect x="100" y="180" width="180" height="30" rx="5" fill="#F5F5F5" stroke="#1E3D59" stroke-width="1" />
        <text x="190" y="200" font-size="14" fill="#333" text-anchor="middle">Current Conversation</text>
        
        <!-- Immediate Context -->
        <rect x="100" y="220" width="180" height="30" rx="5" fill="#F5F5F5" stroke="#1E3D59" stroke-width="1" />
        <text x="190" y="240" font-size="14" fill="#333" text-anchor="middle">Immediate Context</text>
        
        <!-- Working Memory -->
        <rect x="100" y="260" width="180" height="30" rx="5" fill="#F5F5F5" stroke="#1E3D59" stroke-width="1" />
        <text x="190" y="280" font-size="14" fill="#333" text-anchor="middle">Working Memory</text>
      </g>
      
      <!-- Long-term Memory -->
      <g class="long-term-memory">
        <rect x="340" y="110" width="220" height="220" rx="10" fill="#fff" stroke="#1E3D59" stroke-width="2" />
        <rect x="350" y="130" width="200" height="40" rx="5" fill="#FF6B6B" />
        <text x="450" y="155" font-size="16" fill="#fff" text-anchor="middle">Long-term Memory</text>
        
        <!-- Knowledge Base -->
        <rect x="360" y="180" width="180" height="30" rx="5" fill="#F5F5F5" stroke="#1E3D59" stroke-width="1" />
        <text x="450" y="200" font-size="14" fill="#333" text-anchor="middle">Knowledge Base</text>
        
        <!-- Past Interactions -->
        <rect x="360" y="220" width="180" height="30" rx="5" fill="#F5F5F5" stroke="#1E3D59" stroke-width="1" />
        <text x="450" y="240" font-size="14" fill="#333" text-anchor="middle">Past Interactions</text>
        
        <!-- User Preferences -->
        <rect x="360" y="260" width="180" height="30" rx="5" fill="#F5F5F5" stroke="#1E3D59" stroke-width="1" />
        <text x="450" y="280" font-size="14" fill="#333" text-anchor="middle">User Preferences</text>
      </g>
      
      <!-- Semantic Retrieval -->
      <g class="semantic-retrieval">
        <rect x="600" y="110" width="220" height="220" rx="10" fill="#fff" stroke="#1E3D59" stroke-width="2" />
        <rect x="610" y="130" width="200" height="40" rx="5" fill="#FF6B6B" />
        <text x="710" y="155" font-size="16" fill="#fff" text-anchor="middle">Semantic Retrieval</text>
        
        <!-- Vector Database -->
        <circle cx="710" cy="210" r="40" fill="#4CAF50" />
        <text x="710" y="215" font-size="14" fill="#fff" text-anchor="middle">Vector DB</text>
        
        <!-- Semantic Clusters -->
        <g transform="translate(710, 260)">
          <circle cx="-30" cy="0" r="15" fill="#1E3D59" />
          <circle cx="0" cy="0" r="15" fill="#1E3D59" />
          <circle cx="30" cy="0" r="15" fill="#1E3D59" />
          <text x="0" y="40" font-size="14" fill="#333" text-anchor="middle">Semantic Clusters</text>
        </g>
      </g>
      
      <!-- Connectors -->
      <g class="connectors" stroke="#333" stroke-width="2" fill="none">
        <!-- Short-term to Long-term -->
        <path d="M300,220 C320,220 320,220 340,220" marker-end="url(#arrowhead)" />
        
        <!-- Long-term to Semantic Retrieval -->
        <path d="M560,220 C580,220 580,220 600,220" marker-end="url(#arrowhead)" />
        
        <!-- Semantic Retrieval to Central Processing -->
        <path d="M710,330 C710,350 450,380 450,330" marker-end="url(#arrowhead)" />
      </g>
      
      <!-- Title -->
      <text x="450" y="50" font-size="22" fill="#1E3D59" font-weight="bold" text-anchor="middle">AI Agent Memory Architecture</text>
      
      <!-- Arrowhead marker definition -->
      <defs>
        <marker id="arrowhead" markerWidth="10" markerHeight="7" refX="9" refY="3.5" orient="auto">
          <polygon points="0 0, 10 3.5, 0 7" fill="#333" />
        </marker>
      </defs>
    </svg>
  </div>
</template>

<style scoped>
.memory-systems-diagram {
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