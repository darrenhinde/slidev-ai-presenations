# Resource Linking

<SharedInfoBox title="The Game Changer" type="warning" icon="⚠️">
  Connect components securely and typesafely
</SharedInfoBox>

<div class="grid grid-cols-2 gap-4 mt-4">
<div>

## Traditional IaC Pain Points
1. <span class="text-red-300">Manual output references</span>
2. <span class="text-red-300">Manual IAM permission setup</span>
3. <span class="text-red-300">Manual environment variable configuration</span>
4. <span class="text-red-300">Error-prone connections between resources</span>

## With SST Resource Linking
- <span class="text-green-300 font-bold">Automatic IAM permissions</span>
- <span class="text-green-300 font-bold">Type-safe resource references</span>
- <span class="text-green-300 font-bold">Works in production and development</span>
- <span class="text-green-300 font-bold">Eliminates "it works on my machine" problems</span>

</div>
<div>

## Resource Linking in Action

<SSTCodeExample title="Linking Resources" description="Automatically connect components and set up permissions">

```ts
// Create a bucket
const bucket = new sst.aws.Bucket("MyBucket");

// Create a cluster
const cluster = new sst.aws.Cluster("MyCluster", { vpc });

// Link the bucket to the service
new sst.aws.Service("MyService", {
  cluster,
  link: [bucket], // This is the magic!
  loadBalancer: {
    ports: [{ listen: "80/http" }]
  }
});
```

</SSTCodeExample>

## In your application code:

```ts
import { Resource } from "sst";

// Access the bucket without hardcoding values
console.log(Resource.MyBucket.name);
```

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