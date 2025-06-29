<template>
  <div>
    <button @click="addNode" style="margin-bottom: 10px">➕ 노드 추가</button>
    <VueFlow
      v-model:nodes="nodes"
      v-model:edges="edges"
      :node-types="{ formNode: FormNode }"
      fit-view
      style="width: 100%; height: 500px"
      @connect="handleConnect"
    />
  </div>
</template>

<script setup>
import { ref } from 'vue'
import { VueFlow } from '@vue-flow/core'
import FormNode from './FormNode.vue'

const nodes = ref([
  {
    id: 'begin',
    type: 'formNode',
    position: { x: 100, y: 100 },
    data: {
      form: {
        node_name: "begin_node",
        name: '홍길동',
        age: 20
      }
    },
    sourcePosition: 'right'
  },
  {
    id: 'answer',
    type: 'formNode',
    position: { x: 600, y: 100 },
    data: {
      form: {
        node_name: "answer_node",
        name: '이재미',
        age: 20
      }
    },
    targetPosition: "left",
  },
  {
    id: 'retrieval',
    type: 'formNode',
    position: { x: 800, y: 100 },
    data: {
      form: {
        node_name: "retrieval",
        name: '홍길동',
        age: 20
      }
    },
    targetPosition: "left",
  }
])

const edges = ref([])

// 노드 ID 카운터
let nodeCounter = 1

// 노드 추가 함수
function addNode() {
  const newId = `new-${nodeCounter++}`
  nodes.value.push({
    id: newId,
    type: 'formNode',
    position: { x: 200 + nodeCounter * 100, y: 200 }, // 자동 위치 조정
    data: {
      form: {
        node_name: newId,
        name: '새 사용자',
        age: 30
      }
    },
    sourcePosition: 'right',
    targetPosition: 'left'
  })
  console.log(nodes)
  console.log("----000--------")
  console.log(edges)
}

function handleConnect(params) {
  const newEdge = {
    ...params,
    id: `e${edges.value.length + 1}`,
    type: 'default'
  }
  edges.value.push(newEdge)
}
</script>
