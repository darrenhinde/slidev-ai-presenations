---
theme: default
# Or use a theme that matches your branding
# theme: seriph
background: '#121212'
title: SST - Infrastructure as Code Simplified
# Configure fonts
fonts:
  sans: 'Montserrat, Roboto'
  serif: 'Roboto Slab'
  mono: 'Roboto Mono'
class: text-white
highlighter: shiki
lineNumbers: true
info: |
  ## SST - Infrastructure as Code Simplified
  
  A presentation on how SST revolutionizes cloud infrastructure management.
drawings:
  persist: false
transition: slide-left
css: unocss
colorSchema: dark
---

# SST - Infrastructure as Code Simplified

<div class="text-gray-300 font-light">Building full-stack apps on your own infrastructure</div>

<div class="pt-12">
  <span @click="$slidev.nav.next" class="px-2 py-1 rounded cursor-pointer bg-white text-black" hover="bg-opacity-90">
    Press Space for next page <carbon:arrow-right class="inline"/>
  </span>
</div>

<div class="abs-br m-6 flex gap-2">
  <button @click="$slidev.nav.openInEditor()" title="Open in Editor" class="text-xl slidev-icon-btn opacity-70 !border-none !hover:text-white">
    <carbon:edit />
  </button>
  <a href="https://github.com/sst/sst" target="_blank" alt="GitHub" title="View on GitHub" class="text-xl slidev-icon-btn opacity-70 !border-none !hover:text-white">
    <carbon-logo-github />
  </a>
</div>

<style>
h1 {
  color: #E06C75;
}
</style>

---

# The Infrastructure Problem

<SharedInfoBox title="Configuration Hell" type="error" icon="🔥">
  Ever felt trapped in configuration hell just to deploy a simple app?
</SharedInfoBox>

<div class="grid grid-cols-2 gap-4 mt-4">
<div>

## Current Challenges
- <span class="text-red-300 font-bold">Complex infrastructure setup</span>
- Disconnected application and infrastructure code
- <span class="text-red-300 font-bold">Overwhelming cloud bills</span>
- Steep learning curves
- Manual permission management

</div>
<div>

## The Promise
- <span class="text-green-300 font-bold">Single TypeScript file</span> for entire infrastructure
- <span class="text-green-300 font-bold">Slash deployment time</span>
- Maintain complete control
- Make infrastructure as <span class="text-green-300 font-bold">elegant as application code</span>

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

---
layout: two-cols
heading: The IaC Landscape
---

# Infrastructure as Code

<div class="text-gray-300">
  Managing and provisioning infrastructure through code instead of manual processes
</div>

<SharedInfoBox title="Traditional IaC Tools" type="info" icon="ℹ️">
  Terraform and Pulumi have been the dominant players in the IaC space
</SharedInfoBox>

<IaCComparison :tools="[
  { id: 'terraform', name: 'Terraform' },
  { id: 'pulumi', name: 'Pulumi' },
  { id: 'sst', name: 'SST' }
]" :features="[
  { 
    name: 'Language', 
    values: { 
      terraform: 'HCL', 
      pulumi: 'TypeScript, Python, Go', 
      sst: 'TypeScript' 
    },
    highlight: ['sst']
  },
  { 
    name: 'Learning Curve', 
    values: { 
      terraform: 'Steep', 
      pulumi: 'Moderate', 
      sst: 'Gentle' 
    },
    highlight: ['sst']
  },
  { 
    name: 'Focus', 
    values: { 
      terraform: 'Infrastructure', 
      pulumi: 'Infrastructure', 
      sst: 'Applications' 
    },
    highlight: ['sst']
  }
]" />

::right::

# Pulumi vs SST

<div class="mt-4"></div>

## Pulumi
- Uses familiar programming languages
- More flexible than Terraform
- Still focused on infrastructure, not applications
- Manual permission management

## SST
- <span class="text-blue-300 font-bold">Built on top of Pulumi</span>
- <span class="text-blue-300 font-bold">Application-focused</span>
- <span class="text-blue-300 font-bold">Single config file</span>
- <span class="text-blue-300 font-bold">Automatic resource linking</span>
- <span class="text-blue-300 font-bold">Supports 150+ providers</span>

<style>
h1 {
  color: #E06C75;
}
h2 {
  color: #61AFEF;
}
</style>

---
src: ./slides/04-what-is-sst.md
---

---
src: ./slides/05-components.md
---

---

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

---
src: ./slides/07-multi-cloud.md
---

---
src: ./slides/08-practical-example.md
---

---
src: ./slides/09-file-upload.md
---

---
src: ./slides/10-workflow.md
---

---
src: ./slides/11-deployment.md
---

---
src: ./slides/12-recap.md
---

---
src: ./slides/13-thank-you.md
--- 