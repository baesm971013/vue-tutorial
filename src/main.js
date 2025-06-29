// main.js or main.ts
import { createApp } from 'vue'
import App from './App.vue'
import '@vue-flow/core/dist/style.css'        // 💡 이거 꼭 추가!
import '@vue-flow/core/dist/theme-default.css' // 💡 기본 테마도 추가!

createApp(App).mount('#app')
