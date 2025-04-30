---
theme: default
# Custom color scheme based on provided palette
themeConfig:
  primary: "#1E3D59"
  secondary: "#FF6B6B"
  accent: "#4CAF50"
  light: "#F5F5F5"
  dark: "#333333"
  gold: "#C8B784"
background: "#F5F5F5"
title: AI Agents Explained
# Configure fonts based on provided typography
fonts:
  sans: "Poppins"
  serif: "Inter"
  mono: "Fira Code"
---

<!-- Cover slide with minimalist corporate style -->
<div class="w-full h-full flex items-center justify-center"
     style="background-color: #1E3D59; color: #F5F5F5;">
  <div class="text-center px-10">
    <h1 class="text-5xl font-bold tracking-wider mb-4" style="color: #F5F5F5;">AI AGENTS</h1>
    <div class="w-20 h-1 mx-auto my-6" style="background-color: #C8B784;"></div>
    <h2 class="text-2xl font-light mb-8" style="color: #FF6B6B;">BEYOND SIMPLE CHATBOTS</h2>
    <p class="text-xl opacity-80 mt-10">Serverless Edge AI: The Next Generation</p>
  </div>
</div>

---

## layout: two-cols

<div class="flex flex-col justify-center h-full pl-10 pr-5">
  <div class="mb-2" style="background-color: #1E3D59; width: 40px; height: 4px;"></div>
  <h1 class="text-3xl font-semibold mb-8" style="color: #1E3D59;">ABOUT AI AGENTS</h1>
  <p class="text-lg mb-3 leading-relaxed">AI agents go beyond simple chatbots to deliver autonomous problem-solving capabilities.</p>
  <p class="text-lg leading-relaxed">They're complex systems combining multiple components that work together to understand, reason, and act.</p>
  <div class="mt-8 pl-5 border-l-4" style="border-color: #C8B784;">
    <p class="italic text-gray-600">The future of intelligent automation</p>
  </div>
</div>

::right::

<div class="flex items-center justify-center h-full">
  <img src="https://images.unsplash.com/photo-1531746790731-6c087fecd65a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=906&q=80" class="w-full h-auto max-h-96 object-cover rounded-lg shadow-lg" alt="AI Visualization">
</div>

---

## class: bg-white

<div class="grid grid-cols-12 gap-4 h-full">
  <div class="col-span-5 flex flex-col justify-center p-10">
    <div class="mb-2" style="background-color: #FF6B6B; width: 40px; height: 4px;"></div>
    <h1 class="text-3xl font-semibold mb-6" style="color: #1E3D59;">INPUT & PROCESSING</h1>
    
    <ul class="space-y-4">
      <li class="flex items-start">
        <div class="mr-4 mt-1 w-2 h-2 rounded-full" style="background-color: #1E3D59;"></div>
        <p><span class="font-medium">Data Sources:</span> APIs, sensors, direct interactions</p>
      </li>
      <li class="flex items-start">
        <div class="mr-4 mt-1 w-2 h-2 rounded-full" style="background-color: #1E3D59;"></div>
        <p><span class="font-medium">Processing:</span> Large Language Models (LLMs)</p>
      </li>
      <li class="flex items-start">
        <div class="mr-4 mt-1 w-2 h-2 rounded-full" style="background-color: #1E3D59;"></div>
        <p><span class="font-medium">Output:</span> Contextual understanding and insights</p>
      </li>
    </ul>
  </div>
  
  <div class="col-span-7 flex items-center justify-center">
    <!-- Replacing custom component with Mermaid diagram -->
    ```mermaid
    flowchart LR
      subgraph Input
        A[APIs]
        B[Sensors]
        C[Direct Interactions]
      end
      
      subgraph Processing
        D((LLM))
      end
      
      subgraph Output
        E[Contextual Understanding]
        F[Actionable Insights]
        G[Response Generation]
      end
      
      A --> D
      B --> D
      C --> D
      D --> E
      D --> F
      D --> G
      
      style D fill:#FF6B6B,color:#fff
      style A fill:#1E3D59,color:#fff
      style B fill:#1E3D59,color:#fff
      style C fill:#1E3D59,color:#fff
      style E fill:#4CAF50,color:#fff
      style F fill:#4CAF50,color:#fff
      style G fill:#4CAF50,color:#fff
    ```
  </div>
</div>

---

## layout: full

<div class="w-full pt-10 pb-6 px-14">
  <div class="mb-2" style="background-color: #4CAF50; width: 40px; height: 4px;"></div>
  <h1 class="text-3xl font-semibold mb-8" style="color: #1E3D59;">MEMORY SYSTEMS</h1>
  
  <div class="grid grid-cols-3 gap-8 mb-8">
    <div class="bg-white shadow-md rounded-lg p-6 transition-all duration-200 hover:shadow-lg">
      <h3 class="text-xl mb-3 font-medium" style="color: #1E3D59;">Short-term Memory</h3>
      <p class="text-gray-600">Keeps track of ongoing conversations and immediate context during interactions</p>
    </div>
    
    <div class="bg-white shadow-md rounded-lg p-6 transition-all duration-200 hover:shadow-lg">
      <h3 class="text-xl mb-3 font-medium" style="color: #1E3D59;">Long-term Memory</h3>
      <p class="text-gray-600">Stores important information persistently for future reference and decision making</p>
    </div>
    
    <div class="bg-white shadow-md rounded-lg p-6 transition-all duration-200 hover:shadow-lg">
      <h3 class="text-xl mb-3 font-medium" style="color: #1E3D59;">Semantic Retrieval</h3>
      <p class="text-gray-600">Uses semantic clustering for efficient knowledge retrieval and understanding</p>
    </div>
  </div>
  
  <div class="flex justify-center mt-4">
    <!-- Replacing custom component with Mermaid diagram -->
    ```mermaid
    flowchart LR
      subgraph "Short-term Memory"
        A[Current Conversation]
        B[Immediate Context]
        C[Working Memory]
      end
      
      subgraph "Long-term Memory"
        D[Knowledge Base]
        E[Past Interactions]
        F[User Preferences]
      end
      
      subgraph "Semantic Retrieval"
        G[(Vector Database)]
        H((Semantic Clusters))
      end
      
      A --> D
      B --> D
      C --> D
      D --> G
      E --> G
      F --> G
      G --> H
      H --> Processing
      
      style A fill:#fff,stroke:#1E3D59
      style B fill:#fff,stroke:#1E3D59
      style C fill:#fff,stroke:#1E3D59
      style D fill:#fff,stroke:#1E3D59
      style E fill:#fff,stroke:#1E3D59
      style F fill:#fff,stroke:#1E3D59
      style G fill:#4CAF50,color:#fff
      style H fill:#1E3D59,color:#fff
    ```
  </div>
</div>

---

## class: bg-[#1E3D59] text-white

<!-- Break slide with image background and minimal text -->
<div class="relative w-full h-full flex items-center justify-center">
  <div class="absolute inset-0 opacity-20">
    <img src="https://images.unsplash.com/photo-1620712943543-bcc4688e7485?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1965&q=80" class="w-full h-full object-cover" alt="AI Technology">
  </div>
  
  <div class="z-10 text-center px-20">
    <h1 class="text-5xl font-bold tracking-wide mb-6">TOOLS & INTEGRATION</h1>
    <div class="w-24 h-1 mx-auto my-4" style="background-color: #C8B784;"></div>
    <p class="text-xl opacity-80 max-w-3xl mx-auto">The components that enable AI agents to interact with the digital world</p>
  </div>
</div>

---

## layout: two-cols

<div class="flex flex-col justify-center h-full pl-10 pr-5">
  <div class="mb-2" style="background-color: #C8B784; width: 40px; height: 4px;"></div>
  <h1 class="text-3xl font-semibold mb-8" style="color: #1E3D59;">AGENT CAPABILITIES</h1>
  
  <div class="grid grid-cols-2 gap-4">
    <div class="p-4 bg-white rounded-lg shadow-sm">
      <h3 class="font-medium mb-2" style="color: #1E3D59;">APIs</h3>
      <p class="text-sm text-gray-600">Connect to external services</p>
    </div>
    
    <div class="p-4 bg-white rounded-lg shadow-sm">
      <h3 class="font-medium mb-2" style="color: #1E3D59;">Vector DBs</h3>
      <p class="text-sm text-gray-600">Knowledge embeddings storage</p>
    </div>
    
    <div class="p-4 bg-white rounded-lg shadow-sm">
      <h3 class="font-medium mb-2" style="color: #1E3D59;">Functions</h3>
      <p class="text-sm text-gray-600">Task-specific operations</p>
    </div>
    
    <div class="p-4 bg-white rounded-lg shadow-sm">
      <h3 class="font-medium mb-2" style="color: #1E3D59;">RAG Systems</h3>
      <p class="text-sm text-gray-600">Enhanced context retrieval</p>
    </div>
  </div>
</div>

::right::

<div class="flex items-center justify-center h-full pr-10">
  <!-- Replacing custom component with Mermaid diagram -->
  ```mermaid
  flowchart TD
    Agent((AI Agent Core))
    
    subgraph APIs
      A[Weather]
      B[Calendar]
      C[Maps]
    end
    
    subgraph "Vector Databases"
      D[(Embeddings)]
      E[(Knowledge)]
    end
    
    subgraph "Custom Functions"
      F[Math]
      G[Format]
      H[Convert]
    end
    
    subgraph "RAG System"
      I[Query] --> J[Retrieve] --> K[Generate]
    end
    
    A --> Agent
    B --> Agent
    C --> Agent
    Agent --> D
    Agent --> E
    F --> Agent
    G --> Agent
    H --> Agent
    Agent --> I
    
    style Agent fill:#1E3D59,color:#fff
    style A fill:#fff,stroke:#FF6B6B
    style B fill:#fff,stroke:#FF6B6B
    style C fill:#fff,stroke:#FF6B6B
    style D fill:#4CAF50,color:#fff
    style E fill:#4CAF50,color:#fff
    style F fill:#333,color:#fff
    style G fill:#333,color:#fff
    style H fill:#333,color:#fff
    style I fill:#FF6B6B,color:#fff
    style J fill:#4CAF50,color:#fff
    style K fill:#FF6B6B,color:#fff
  ```
</div>

---

## layout: full

<div class="w-full h-full flex flex-col items-center justify-center p-10">
  <div class="w-full max-w-5xl">
    <div class="mb-2" style="background-color: #1E3D59; width: 40px; height: 4px;"></div>
    <h1 class="text-3xl font-semibold mb-6" style="color: #1E3D59;">THE COMPLETE SYSTEM</h1>
    
    <div class="flex justify-center my-8">
      <!-- Replacing custom component with Mermaid diagram -->
      ```mermaid
      flowchart TD
        subgraph "1. Perceive Environment"
          A[APIs]
          B[User Input]
          C[Sensors]
        end
        
        subgraph "2. Process Information"
          D[NLP]
          E[ML Models]
          F[Rule Systems]
        end
        
        subgraph "3. Access Memory"
          G[Short-term]
          H[Long-term]
        end
        
        subgraph "4. Use Tools"
          I[APIs]
          J[Vector DBs]
          K[RAG]
        end
        
        subgraph "5. Take Action"
          L[Response Generation]
          M[API Calls]
          N[Actions]
        end
        
        Core((AI Agent Core))
        
        A --> Core
        B --> Core
        C --> Core
        Core --> D
        Core --> E
        Core --> F
        Core <--> G
        Core <--> H
        Core <--> I
        Core <--> J
        Core <--> K
        Core --> L
        Core --> M
        Core --> N
        
        style Core fill:#1E3D59,color:#fff
        style A fill:#FF6B6B,color:#fff
        style B fill:#FF6B6B,color:#fff
        style C fill:#FF6B6B,color:#fff
        style D fill:#1E3D59,color:#fff
        style E fill:#1E3D59,color:#fff
        style F fill:#1E3D59,color:#fff
        style G fill:#4CAF50,color:#fff
        style H fill:#4CAF50,color:#fff
        style I fill:#C8B784,color:#333
        style J fill:#C8B784,color:#333
        style K fill:#C8B784,color:#333
        style L fill:#FF6B6B,color:#fff
        style M fill:#FF6B6B,color:#fff
        style N fill:#FF6B6B,color:#fff
      ```
    </div>
    
    <div class="grid grid-cols-5 gap-4 text-center mt-6">
      <div>
        <div class="w-12 h-12 rounded-full flex items-center justify-center mx-auto mb-2" style="background-color: #FF6B6B; color: white;">1</div>
        <p class="text-sm font-medium">Perceive</p>
      </div>
      <div>
        <div class="w-12 h-12 rounded-full flex items-center justify-center mx-auto mb-2" style="background-color: #1E3D59; color: white;">2</div>
        <p class="text-sm font-medium">Process</p>
      </div>
      <div>
        <div class="w-12 h-12 rounded-full flex items-center justify-center mx-auto mb-2" style="background-color: #4CAF50; color: white;">3</div>
        <p class="text-sm font-medium">Access Memory</p>
      </div>
      <div>
        <div class="w-12 h-12 rounded-full flex items-center justify-center mx-auto mb-2" style="background-color: #C8B784; color: white;">4</div>
        <p class="text-sm font-medium">Use Tools</p>
      </div>
      <div>
        <div class="w-12 h-12 rounded-full flex items-center justify-center mx-auto mb-2" style="background-color: #FF6B6B; color: white;">5</div>
        <p class="text-sm font-medium">Take Action</p>
      </div>
    </div>
  </div>
</div>

---

## layout: two-cols

<div class="flex flex-col justify-center h-full pl-10 pr-5">
  <div class="mb-2" style="background-color: #4CAF50; width: 40px; height: 4px;"></div>
  <h1 class="text-3xl font-semibold mb-4" style="color: #1E3D59;">SERVERLESS EDGE AI</h1>
  <p class="text-lg mb-8">The future of intelligent systems</p>
  
  <div class="space-y-3">
    <div class="flex items-center">
      <div class="w-3 h-3 rounded-full mr-3" style="background-color: #1E3D59;"></div>
      <p>Low latency responses</p>
    </div>
    <div class="flex items-center">
      <div class="w-3 h-3 rounded-full mr-3" style="background-color: #1E3D59;"></div>
      <p>Reduced bandwidth usage</p>
    </div>
    <div class="flex items-center">
      <div class="w-3 h-3 rounded-full mr-3" style="background-color: #1E3D59;"></div>
      <p>Enhanced privacy protection</p>
    </div>
    <div class="flex items-center">
      <div class="w-3 h-3 rounded-full mr-3" style="background-color: #1E3D59;"></div>
      <p>Operational reliability</p>
    </div>
  </div>
</div>

::right::

<div class="flex items-center justify-center h-full">
  <img src="https://images.unsplash.com/photo-1558494949-ef010cbdcc31?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2034&q=80" class="w-full h-auto max-h-96 object-cover rounded-lg shadow-lg" alt="Edge Computing">
</div>

---

layout: full
class: bg-[#1E3D59]

---

<!-- Applications Grid Layout -->
<div class="w-full h-full p-14 text-white">
  <div class="mb-2 bg-white" style="width: 40px; height: 4px;"></div>
  <h1 class="text-3xl font-semibold mb-10">APPLICATIONS</h1>
  
  <div class="grid grid-cols-2 gap-12 mt-6">
    <div class="flex">
      <div class="mr-4 flex-shrink-0">
        <div class="w-14 h-14 rounded-full flex items-center justify-center" style="background-color: #FF6B6B; color: white;">
          <span class="text-2xl">01</span>
        </div>
      </div>
      <div>
        <h3 class="text-xl mb-2 font-medium" style="color: #C8B784;">IoT Intelligence</h3>
        <p class="text-gray-300">Smart devices with autonomous decision-making capabilities</p>
      </div>
    </div>
    
    <div class="flex">
      <div class="mr-4 flex-shrink-0">
        <div class="w-14 h-14 rounded-full flex items-center justify-center" style="background-color: #FF6B6B; color: white;">
          <span class="text-2xl">02</span>
        </div>
      </div>
      <div>
        <h3 class="text-xl mb-2 font-medium" style="color: #C8B784;">Real-time Analytics</h3>
        <p class="text-gray-300">Processing and acting on data streams instantly at the edge</p>
      </div>
    </div>
    
    <div class="flex">
      <div class="mr-4 flex-shrink-0">
        <div class="w-14 h-14 rounded-full flex items-center justify-center" style="background-color: #FF6B6B; color: white;">
          <span class="text-2xl">03</span>
        </div>
      </div>
      <div>
        <h3 class="text-xl mb-2 font-medium" style="color: #C8B784;">Personalized Experiences</h3>
        <p class="text-gray-300">Tailored interactions based on user context and preferences</p>
      </div>
    </div>
    
    <div class="flex">
      <div class="mr-4 flex-shrink-0">
        <div class="w-14 h-14 rounded-full flex items-center justify-center" style="background-color: #FF6B6B; color: white;">
          <span class="text-2xl">04</span>
        </div>
      </div>
      <div>
        <h3 class="text-xl mb-2 font-medium" style="color: #C8B784;">Autonomous Systems</h3>
        <p class="text-gray-300">Self-operating platforms that adapt to changing conditions</p>
      </div>
    </div>
  </div>
</div>

---

layout: center
class: bg-white text-center

---

<div>
  <div class="flex justify-center mb-8">
    <div class="w-24 h-24 rounded-full flex items-center justify-center" style="background-color: #1E3D59;">
      <span class="text-white text-3xl">?</span>
    </div>
  </div>
  
  <h1 class="text-4xl font-bold mb-4" style="color: #1E3D59;">QUESTIONS?</h1>
  <p class="text-xl mb-8" style="color: #4CAF50;">Let's discuss AI agents and serverless edge computing</p>
  
  <div class="grid grid-cols-3 gap-8 max-w-3xl mx-auto">
    <div class="text-center">
      <div class="w-12 h-12 rounded-full mx-auto mb-3 flex items-center justify-center" style="background-color: #F5F5F5;">
        <span class="text-2xl" style="color: #1E3D59;">✉️</span>
      </div>
      <p class="text-sm">contact@example.com</p>
    </div>
    
    <div class="text-center">
      <div class="w-12 h-12 rounded-full mx-auto mb-3 flex items-center justify-center" style="background-color: #F5F5F5;">
        <span class="text-2xl" style="color: #1E3D59;">🌐</span>
      </div>
      <p class="text-sm">www.example.com</p>
    </div>
    
    <div class="text-center">
      <div class="w-12 h-12 rounded-full mx-auto mb-3 flex items-center justify-center" style="background-color: #F5F5F5;">
        <span class="text-2xl" style="color: #1E3D59;">📱</span>
      </div>
      <p class="text-sm">+1 234 567 890</p>
    </div>
  </div>
</div>

---

## class: bg-[#1E3D59] text-white text-center

<div class="flex flex-col items-center justify-center h-full">
  <h1 class="text-5xl font-bold tracking-wider mb-6">THANK YOU</h1>
  <div class="w-24 h-1 mx-auto my-6" style="background-color: #C8B784;"></div>
  <p class="text-2xl opacity-80 mb-12">Building the future of serverless edge AI</p>
  <p class="text-lg opacity-60">One agent at a time</p>
</div>

<!-- Add custom styles at the end of the file -->
<style>
h1, h2, h3, h4 {
  font-family: 'Poppins', sans-serif;
  font-weight: 600;
}

p, li {
  font-family: 'Inter', sans-serif;
}

.slidev-layout {
  background-color: #F5F5F5;
  color: #333333;
}

.slidev-layout.center {
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
}
</style>
