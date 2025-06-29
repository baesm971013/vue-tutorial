<template>
  <div class="form-node">
    <!-- 들어오는 핸들 (왼쪽) -->
    <Handle type="target" position="left" />

    <div><strong>노드:</strong> {{ data.form.node_name }}</div>
    <div><strong>이름:</strong> {{ data.form.name }}</div>
    <div><strong>나이:</strong> {{ data.form.age }}</div>

    <!-- 나가는 핸들 (오른쪽) -->
    <Handle type="source" position="right" />
  </div>
</template>

<script setup>
import { Handle } from '@vue-flow/core' // 반드시 import!
const props = defineProps(['data'])
</script>

<style scoped>
.form-node {
  position: relative; /* Handle 위치 정렬을 위해 필요 */
  padding: 12px;
  background: #f0f4ff;
  border: 2px solid #4f46e5;
  border-radius: 8px;
  font-family: sans-serif;
  min-width: 150px;
}

/* 핸들이 잘 보이도록 스타일 추가 */
:deep(.vue-flow__handle) {
  width: 10px;
  height: 10px;
  background: #4f46e5;
  border: 1px solid #333;
}
</style>
