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