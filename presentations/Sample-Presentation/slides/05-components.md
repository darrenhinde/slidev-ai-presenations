# Components in SST

<div class="text-center text-xl mb-4 text-gray-300">
  Components are the <span class="bg-white bg-opacity-10 px-2 py-1 rounded">building blocks</span> of your application in SST
</div>

<SSTCodeExample title="Service Component Example" description="Deploy a containerized service with load balancer">

```ts {0|1-3|5-11|all}
// Create a VPC and cluster
const vpc = new sst.aws.Vpc("MyVpc");
const cluster = new sst.aws.Cluster("MyCluster", { vpc });

// Deploy a containerized service with load balancer
new sst.aws.Service("MyService", {
  cluster,
  loadBalancer: {
    ports: [{ listen: "80/http" }]
  }
});
```

</SSTCodeExample>

<SSTCodeExample title="Lambda Function Example" description="Create a Lambda function with custom settings">

```ts {0|1-5|6-10|all}
new sst.aws.Function("MyFunction", {
  handler: "src/lambda.handler",
  timeout: "3 minutes",
  memory: "1024 MB",
  transform: {
    role: (args) => ({
      name: `${args.name}-MyRole`
    })
  }
});
```

</SSTCodeExample>

<SharedInfoBox title="Component Benefits" type="success" icon="✅">
  <span class="font-bold">Sensible defaults</span> with <span class="font-bold">full configurability</span> when needed
</SharedInfoBox>

<style>
h1 {
  color: #E06C75;
}
</style>

---
layout: two-cols
heading: Resource Linking
--- 