<template>
  <BasicFlow />
  <div class = "contaier">
    <h1>👋 안녕하세요 {{ name }}님!</h1>
    <input v-model="name" placeholder="이름을 입력하세요" />
  </div>
</template>

<script setup>
import BasicFlow from './components/BasicFlow.vue'


import {ref} from 'vue'
const name = ref('홍길동')

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