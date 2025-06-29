<template>
    <div>
        <h2>👤 사용자 정보</h2>
        <p><strong>이름:</strong> {{ name }}</p>
        <p><strong>회사:</strong> {{ company }}</p>
        <p><strong>이메일:</strong> {{ email }}</p>
    </div>
</template>

<script setup>
defineProps({
  name: String,
  company: String,
  email: String,
})
</script>

<style scoped>
h2 {
  margin-bottom: 10px;
}
p {
  margin: 4px 0;
  font-size: 18px;
}
</style>