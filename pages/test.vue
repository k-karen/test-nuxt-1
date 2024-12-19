<template>
  <div>
    <div>
      <h1 class="text-3xl font-bold text-center">Test Page</h1>
      <p class="text-center">This is a test page {{ random ?? '' }}</p>
    </div>
    <Suspense>
      <template #default>
        <AsyncEx />
      </template>
    </Suspense>
  </div>
</template>

<script setup>
import { defineAsyncComponent } from 'vue'

const AsyncEx = defineAsyncComponent(() => import('./components/ex.vue'))

const random = ref(null)
const fetchRandomV2 = async () => {
  const { data } = await useFetch('http://localhost:4567/random_v2?test=2')
  random.value = data.value.random_number
}
fetchRandomV2()

const fetchRandomV3 = async () => {
  const { data } = await useFetch('http://localhost:4567/random_v2?test=3')
  random.value = data.value.random_number
}
fetchRandomV3()

const fetchRandomV4 = async () => {
  const { data } = await useFetch('http://localhost:4567/random_v2?test=4')
  random.value = data.value.random_number
}
fetchRandomV4()

const fetchRandomV5 = async () => {
  const { data } = await useFetch('http://localhost:4567/random_v2?test=5')
  random.value = data.value.random_number
}
fetchRandomV5()
</script>
