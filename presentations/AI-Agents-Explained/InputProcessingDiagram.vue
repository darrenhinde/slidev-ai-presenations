<!-- InputProcessingDiagram.vue -->
<template>
  <div class="input-processing-diagram">
    <svg viewBox="0 0 800 400" xmlns="http://www.w3.org/2000/svg">
      <!-- Background elements -->
      <rect x="10" y="10" width="780" height="380" rx="20" fill="#F5F5F5" stroke="#1E3D59" stroke-width="2" />
      
      <!-- Input Sources -->
      <g class="input-section">
        <rect x="50" y="70" width="200" height="60" rx="10" fill="#1E3D59" />
        <text x="150" y="105" font-size="18" fill="#F5F5F5" text-anchor="middle">APIs</text>
        
        <rect x="50" y="170" width="200" height="60" rx="10" fill="#1E3D59" />
        <text x="150" y="205" font-size="18" fill="#F5F5F5" text-anchor="middle">Sensors</text>
        
        <rect x="50" y="270" width="200" height="60" rx="10" fill="#1E3D59" />
        <text x="150" y="305" font-size="18" fill="#F5F5F5" text-anchor="middle">Direct Interactions</text>
      </g>
      
      <!-- Processing -->
      <g class="processing-section">
        <circle cx="400" cy="200" r="80" fill="#FF6B6B" />
        <text x="400" y="190" font-size="20" fill="#F5F5F5" text-anchor="middle">Large Language</text>
        <text x="400" y="215" font-size="20" fill="#F5F5F5" text-anchor="middle">Model (LLM)</text>
      </g>
      
      <!-- Output -->
      <g class="output-section">
        <rect x="550" y="110" width="200" height="60" rx="10" fill="#4CAF50" />
        <text x="650" y="145" font-size="18" fill="#F5F5F5" text-anchor="middle">Contextual Understanding</text>
        
        <rect x="550" y="200" width="200" height="60" rx="10" fill="#4CAF50" />
        <text x="650" y="235" font-size="18" fill="#F5F5F5" text-anchor="middle">Actionable Insights</text>
        
        <rect x="550" y="290" width="200" height="60" rx="10" fill="#4CAF50" />
        <text x="650" y="325" font-size="18" fill="#F5F5F5" text-anchor="middle">Response Generation</text>
      </g>
      
      <!-- Connectors -->
      <g class="connectors" stroke="#333333" stroke-width="2" fill="none">
        <!-- Input to Processing -->
        <path d="M250,100 C300,100 300,160 320,180" marker-end="url(#arrowhead)" />
        <path d="M250,200 C280,200 300,200 320,200" marker-end="url(#arrowhead)" />
        <path d="M250,300 C300,300 300,240 320,220" marker-end="url(#arrowhead)" />
        
        <!-- Processing to Output -->
        <path d="M480,170 C510,170 520,140 550,140" marker-end="url(#arrowhead)" />
        <path d="M480,200 C510,200 520,230 550,230" marker-end="url(#arrowhead)" />
        <path d="M480,230 C510,230 520,320 550,320" marker-end="url(#arrowhead)" />
      </g>
      
      <!-- Arrowhead marker definition -->
      <defs>
        <marker id="arrowhead" markerWidth="10" markerHeight="7" refX="9" refY="3.5" orient="auto">
          <polygon points="0 0, 10 3.5, 0 7" fill="#333333" />
        </marker>
      </defs>
      
      <!-- Labels -->
      <g class="labels" font-size="14" fill="#333333">
        <text x="40" y="40" font-size="20" fill="#1E3D59" font-weight="bold">INPUT</text>
        <text x="400" y="40" font-size="20" fill="#1E3D59" font-weight="bold">PROCESSING</text>
        <text x="650" y="40" font-size="20" fill="#1E3D59" font-weight="bold">OUTPUT</text>
      </g>
    </svg>
  </div>
</template>

<style scoped>
.input-processing-diagram {
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