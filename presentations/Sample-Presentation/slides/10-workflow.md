# SST Development Workflow

```mermaid
graph LR
    A[Create sst.config.ts] --> B[Run sst dev]
    B --> C[Local Development]
    C --> D[Make Changes]
    D --> C
    C --> E[Deploy to Staging]
    E --> F[Test in Staging]
    F --> G[Deploy to Production]
    
    style A fill:#B0C4DE,stroke:#2E3440,color:#2E3440
    style B fill:#B0C4DE,stroke:#2E3440,color:#2E3440
    style C fill:#D8BFD8,stroke:#2E3440,color:#2E3440
    style D fill:#D8BFD8,stroke:#2E3440,color:#2E3440
    style E fill:#C1CDC1,stroke:#2E3440,color:#2E3440
    style F fill:#C1CDC1,stroke:#2E3440,color:#2E3440
    style G fill:#B0C4DE,stroke:#2E3440,color:#2E3440
     linkStyle 0,1,2,3,4,5,6 stroke:#666666,stroke-width:2px
```

<div class="grid grid-cols-2 gap-4 mt-4">
<div>

## Local Development
- <span class="text-blue-300 font-bold">Run `sst dev`</span> to start development
- <span class="text-blue-300 font-bold">Changes are reflected instantly</span>
- <span class="text-blue-300 font-bold">Functions run locally</span> but access cloud resources
- No need to deploy for testing

</div>
<div>

## Deployment
- <span class="text-green-300 font-bold">Stage-based deployments</span>
- Personal stages for development
- Shared stages for testing
- Production stage for live environment
- <span class="text-green-300 font-bold">One command: `sst deploy --stage production`</span>

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