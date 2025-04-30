# What is SST?

<div class="text-center text-2xl font-light my-10 text-white">
  Build full-stack apps on your own infrastructure
</div>

<div class="grid grid-cols-2 gap-4">
<div>

## Key Features
- Everything in a <span class="text-purple-300 font-bold">single `sst.config.ts` file</span>
- First-class support for <span class="text-purple-300 font-bold">AWS and Cloudflare</span>
- <span class="text-purple-300 font-bold">150+ providers</span> supported
- Sensible defaults with full configurability
- Local development that mirrors production

</div>
<div>

<SSTCodeExample title="Simple Next.js Deployment">

```ts {all|1|2-4|all}
// Simple Next.js deployment with custom domain
new sst.aws.Nextjs("MyWeb", {
  domain: "my-app.com"
});
```

</SSTCodeExample>

<SSTCodeExample title="Database Configuration">

```ts {0|1-2|4-14|all}
// Postgres database with minimal config
new sst.aws.Postgres("MyDatabase");

// DynamoDB table with custom settings
new sst.aws.Table("UsersTable", {
  fields: {
    userId: "string",
    email: "string",
    createdAt: "number",
  },
  primaryIndex: { partitionKey: "userId" },
  globalIndexes: {
    byEmail: { partitionKey: "email" }
  }
});
```

</SSTCodeExample>

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