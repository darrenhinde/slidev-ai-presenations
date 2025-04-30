<template>
  <div class="shared-info-box" :class="type">
    <div class="icon" v-if="icon">{{ icon }}</div>
    <div class="content">
      <div class="title" v-if="title">{{ title }}</div>
      <div class="body">
        <slot></slot>
      </div>
    </div>
  </div>
</template>

<script setup>
const props = defineProps({
  title: {
    type: String,
    default: ''
  },
  type: {
    type: String,
    default: 'info',
    validator: (value) => ['info', 'warning', 'success', 'error'].includes(value)
  },
  icon: {
    type: String,
    default: ''
  }
})
</script>

<style scoped>
.shared-info-box {
  display: flex;
  padding: 1rem;
  border-radius: 0.5rem;
  margin: 1rem 0;
  gap: 0.75rem;
  border-left: 4px solid currentColor;
  background-color: rgba(0, 0, 0, 0.2);
}

.info {
  background-color: rgba(100, 153, 225, 0.1);
  color: #4299E1;
}

.warning {
  background-color: rgba(245, 101, 101, 0.1);
  color: #F56565;
}

.success {
  background-color: rgba(104, 211, 145, 0.1);
  color: #68D391;
}

.error {
  background-color: rgba(245, 101, 101, 0.1);
  color: #F56565;
}

.icon {
  font-size: 1.5rem;
}

.title {
  font-weight: bold;
  margin-bottom: 0.25rem;
  color: white;
}

.content {
  flex: 1;
}

.body {
  color: rgba(255, 255, 255, 0.7);
}
</style> 