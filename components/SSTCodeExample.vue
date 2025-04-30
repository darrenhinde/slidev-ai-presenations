<template>
  <div class="sst-code-example">
    <div class="title" v-if="title">{{ title }}</div>
    <div class="code-container">
      <slot></slot>
    </div>
    <div class="description" v-if="description">
      {{ description }}
    </div>
  </div>
</template>

<script setup>
const props = defineProps({
  title: {
    type: String,
    default: ''
  },
  description: {
    type: String,
    default: ''
  }
})
</script>

<style scoped>
.sst-code-example {
  margin: 1rem 0;
  border-radius: 0.5rem;
  overflow: hidden;
  border: 1px solid rgba(255, 255, 255, 0.1);
  background-color: rgba(0, 0, 0, 0.2);
}

.title {
  font-weight: bold;
  padding: 0.75rem 1rem;
  background-color: rgba(255, 255, 255, 0.05);
  border-bottom: 1px solid rgba(255, 255, 255, 0.1);
  color: white;
}

.code-container {
  padding: 1rem;
}

.description {
  padding: 0.75rem 1rem;
  font-size: 0.9rem;
  color: rgba(255, 255, 255, 0.7);
  border-top: 1px solid rgba(255, 255, 255, 0.1);
  background-color: rgba(255, 255, 255, 0.03);
}

:deep(pre) {
  margin: 0 !important;
  background-color: #1a1a1a !important;
}
</style> 