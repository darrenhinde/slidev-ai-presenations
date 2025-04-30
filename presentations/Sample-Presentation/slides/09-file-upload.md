# File Upload Implementation

<SSTCodeExample title="File Upload Handler" description="Using the linked bucket in your application code">

```ts {all|1-3|5-7|9-14|16-21|23|all}
if (url.pathname === "/" && req.method === "POST") {
  const formData = await req.formData();
  const file = formData.get("file") as File;
  
  if (!file) {
    return new Response("No file provided", { status: 400 });
  }
  
  const params = {
    Bucket: Resource.MyBucket.name, // Accessing our linked bucket
    ContentType: file.type,
    Key: file.name,
    Body: file,
  };
  
  const upload = new Upload({
    params,
    client: s3,
  });
  await upload.done();

  return new Response("File uploaded successfully.");
}
```

</SSTCodeExample>

<SharedInfoBox title="Behind the Scenes" type="info" icon="🔍">
  <span class="font-bold">SST is handling</span> VPC setup, security groups, ECS cluster, Fargate service, load balancer, S3 bucket, and IAM permissions <span class="text-white font-bold">automatically!</span>
</SharedInfoBox>

<style>
h1 {
  color: #E06C75;
}
</style> 