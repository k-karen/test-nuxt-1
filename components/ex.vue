<template>
  <div>
    <div>
      <h1 class="text-3xl font-bold text-center">This is component</h1>
      <p class="text-center">This is a ex.vue component {{ random ?? '' }}</p>
    </div>
  </div>
</template>

<script setup>
const random = ref(null)

const childFetchRandomV1 = async () => {
  const { data } = await useFetch('http://localhost:4567/random_v1?test=EX-1')
  random.value = data.value.random_number
}
await childFetchRandomV1()
</script>
