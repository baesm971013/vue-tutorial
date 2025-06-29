<template>
  <div class="container">
    <HelloUser :name="name" />
    <input v-model="name" placeholder="이름을 입력하세요" />
  </div>

    <div class="container">
    <HelloUser :company="company" />
    <input v-model="company" placeholder="화서 입력하세요" />
  </div>

    <div class="container">
    <BasicFlow />
  </div>
</template>

<script setup>
import BasicFlow from './components/BasicFlow.vue'
import HelloUser from './components/HelloUser.vue'
import { ref } from 'vue'

const name = ref('홍길동')
const company = ref('아시아나')

</script>

<style scoped>
.container {
  padding: 30px;
  font-family: sans-serif;
}

input {
  padding: 8px;
  font-size: 16px;
}
</style>