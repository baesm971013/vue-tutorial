<template>
  <div class='layout'>
    <div class='form'>
      <input v-model="name" placeholder="이름을 입력하세요" />
      <input v-model="company" placeholder="회사명을 입력하세요" />
      <button @click="addUser">➕ 사용자 추가</button>
    </div>
    
    <div class="info">
       <UserCard
        v-for="(user, index) in users"
        :key="index"
        :name="user.name"
        :company="user.company"
      />
    </div>
  </div>


    <div class="container">
      <BasicFlow />
    </div>
</template>

<script setup>
import { ref } from 'vue'
import BasicFlow from './components/BasicFlow.vue'
import UserCard from './components/UserCard.vue'


const name = ref('')
const company = ref('')
const users = ref([])

function addUser(){
  if (name.value.trim() && company.value.trim()) {
    users.value.push({
      name: name.value,
      company: company.value
    })
    name.value = ''
    company.value = ''
  } else {
    alert('이름과 회사를 모두 입력해주세요!')
  }
}


</script>


<style scoped>
.layout {
  display: flex;
  justify-content: space-between;
  padding: 30px;
  gap: 40px;
}

.form {
  flex: 1;
  display: flex;
  flex-direction: column;
  gap: 10px;
}

.info {
  flex: 1;
  padding: 20px;
  border: 1px solid #ddd;
  border-radius: 8px;
  background-color: #f9f9f9;
}
input {
  padding: 8px;
  font-size: 16px;
}
</style>