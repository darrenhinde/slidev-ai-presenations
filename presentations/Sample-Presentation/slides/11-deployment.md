# Deployment

```bash
bun sst deploy --stage production
```

<div class="text-center my-10 p-4 bg-white bg-opacity-5 text-green-300 rounded border border-green-300/30">
  <span class="font-bold">Successfully deployed:</span> http://prod-MyServiceLoadBalanc-491430065.us-east-1.elb.amazonaws.com
</div>

## What SST Handles For You
- <span class="text-white font-bold">VPC, security groups, and networking configuration</span>
- <span class="text-white font-bold">ECS cluster and Fargate service setup</span>
- <span class="text-white font-bold">Load balancer and routing configuration</span>
- <span class="text-white font-bold">S3 bucket with proper security settings</span>
- <span class="text-white font-bold">IAM permissions between services and resources</span>
- <span class="text-white font-bold">Resource information injection into your application</span>

<SharedInfoBox title="Time Savings" type="success" icon="⏱️">
  What would be <span class="text-red-300 font-bold">hundreds of lines of code</span> across multiple files in Terraform or raw Pulumi is now just <span class="text-green-300 font-bold">a few dozen lines in SST!</span>
</SharedInfoBox>

<style>
h1 {
  color: #E06C75;
}
h2 {
  color: #61AFEF;
}
</style> 