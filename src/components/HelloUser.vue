<template>

    <h1>{{name}}님 !!</h1>
    <h1> {{company}}</h1>

</template>

<script setup>
defineProps(
    {
        name: String,
        company: String
    }
)

</script>