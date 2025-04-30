<template>
  <div class="iac-comparison">
    <div class="comparison-header">
      <div class="feature-header">Feature</div>
      <div v-for="tool in tools" :key="tool.name" class="tool-header">
        {{ tool.name }}
      </div>
    </div>
    <div v-for="(feature, index) in features" :key="index" class="comparison-row">
      <div class="feature-name">{{ feature.name }}</div>
      <div v-for="tool in tools" :key="tool.name" class="tool-feature" :class="getFeatureClass(feature, tool)">
        <div v-if="feature.values[tool.id] === true" class="check">✓</div>
        <div v-else-if="feature.values[tool.id] === false" class="cross">✗</div>
        <div v-else>{{ feature.values[tool.id] }}</div>
      </div>
    </div>
  </div>
</template>

<script setup>
import { computed } from 'vue';

const props = defineProps({
  tools: {
    type: Array,
    required: true
  },
  features: {
    type: Array,
    required: true
  }
});

const getFeatureClass = (feature, tool) => {
  if (feature.highlight?.includes(tool.id)) {
    return 'highlighted';
  }
  return '';
};
</script>

<style scoped>
.iac-comparison {
  width: 100%;
  border-radius: 0.5rem;
  overflow: hidden;
  border: 1px solid rgba(255, 255, 255, 0.1);
  margin: 1rem 0;
  background-color: rgba(0, 0, 0, 0.2);
}

.comparison-header {
  display: grid;
  grid-template-columns: 2fr repeat(auto-fit, 1fr);
  background-color: rgba(255, 255, 255, 0.05);
  font-weight: bold;
  color: white;
}

.feature-header, .tool-header {
  padding: 0.75rem 1rem;
  border-bottom: 1px solid rgba(255, 255, 255, 0.1);
  text-align: center;
}

.feature-header {
  text-align: left;
}

.comparison-row {
  display: grid;
  grid-template-columns: 2fr repeat(auto-fit, 1fr);
  border-bottom: 1px solid rgba(255, 255, 255, 0.1);
}

.comparison-row:last-child {
  border-bottom: none;
}

.feature-name {
  padding: 0.75rem 1rem;
  border-right: 1px solid rgba(255, 255, 255, 0.1);
  color: rgba(255, 255, 255, 0.7);
}

.tool-feature {
  padding: 0.75rem 1rem;
  text-align: center;
  border-right: 1px solid rgba(255, 255, 255, 0.1);
  color: rgba(255, 255, 255, 0.7);
}

.tool-feature:last-child {
  border-right: none;
}

.check {
  color: #68D391;
  font-weight: bold;
}

.cross {
  color: #F56565;
}

.highlighted {
  background-color: rgba(255, 255, 255, 0.1);
  color: white;
  font-weight: bold;
}
</style> 