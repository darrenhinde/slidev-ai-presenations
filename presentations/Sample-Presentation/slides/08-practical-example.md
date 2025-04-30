# Practical Example: Bun App on AWS

<div class="grid grid-cols-2 gap-4">
<div>

## Project Setup
```bash {all|1|2-4|all}
mkdir aws-bun && cd aws-bun
bun init -y
bunx sst init
bun install
```

## Simple Bun Server
```ts {all|1-4|6-10|12-13|all}
const server = Bun.serve({
  async fetch(req) {
    const url = new URL(req.url);

    if (url.pathname === "/" && req.method === "GET") {
      return new Response("Hello World!");
    }

    return new Response("404!");
  },
});

console.log(`Listening on ${server.url}`);
```

</div>
<div>

<SSTCodeExample title="SST Configuration">

```ts {all|1-4|6-15|8-9|all}
async run() {
  const vpc = new sst.aws.Vpc("MyVpc");
  const bucket = new sst.aws.Bucket("MyBucket");
  
  const cluster = new sst.aws.Cluster("MyCluster", { vpc });
  new sst.aws.Service("MyService", {
    cluster,
    link: [bucket],
    loadBalancer: {
      ports: [{ listen: "80/http", forward: "3000/http" }],
    },
    dev: {
      command: "bun dev",
    },
  });
}
```

</SSTCodeExample>

## Dockerfile
```dockerfile {all|1|2-4|5-7|all}
FROM oven/bun
COPY bun.lockb .
COPY package.json .
RUN bun install --frozen-lockfile
COPY . .
EXPOSE 3000
CMD ["bun", "index.ts"]
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