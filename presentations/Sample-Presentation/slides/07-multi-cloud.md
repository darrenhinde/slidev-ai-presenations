# Multi-Cloud Architecture with SST

<div class="text-center mb-6">
  <span class="bg-white bg-opacity-10 px-3 py-1 rounded-full text-blue-300 font-bold">AWS</span> + 
  <span class="bg-white bg-opacity-10 px-3 py-1 rounded-full text-red-300 font-bold">Cloudflare</span> = 
  <span class="bg-white bg-opacity-10 px-3 py-1 rounded-full text-green-300 font-bold">Best of Both Worlds</span>
</div>

```mermaid
flowchart TB
    subgraph "SST Config"
        config["sst.config.ts"]
    end
    
    subgraph "AWS"
        s3["S3 Bucket\nsst.aws.Bucket"]
        lambda["Lambda Functions\nsst.aws.Function"]
        rds["RDS Database\nsst.aws.Postgres"]
        vpc["VPC\nsst.aws.Vpc"]
    end
    
    subgraph "Cloudflare"
        workers["Cloudflare Workers\nsst.cloudflare.Worker"]
        kv["KV Storage\nsst.cloudflare.KVNamespace"]
        r2["R2 Storage\nsst.cloudflare.R2Bucket"]
    end
    
    config --> AWS
    config --> Cloudflare
    
    lambda -- "link" --> s3
    lambda -- "link" --> rds
    workers -- "link" --> kv
    workers -- "link" --> r2
    
    workers -- "API Requests" --> lambda
    style config stroke:#2E3440, stroke-width:2px, stroke-dasharray: 5,5; // Dotted boundary for config
    style AWS stroke:#A0C4FF, stroke-width:2px, stroke-dasharray: 5,5; // Dotted boundary for AWS with soft pastel blue
    style Cloudflare stroke:#FFB0A0, stroke-width:2px, stroke-dasharray: 5,5; // Dotted boundary for Cloudflare with soft pastel orange

    linkStyle 0,1,2,3,4,5 stroke:#7D7D7D, stroke-width:2px; 
```

<div class="mt-4 text-sm text-gray-300">
  <span class="text-white font-bold">Note:</span> With SST, you can define and manage resources across multiple cloud providers in the same configuration file, creating truly multi-cloud applications.
</div>

<style>
h1 {
  color: #E06C75;
}
</style> 