<template>
  <div class=" ">
    <!-- headers -->
    <div class="flex flex-wrap justify-start items-center gap-4 p-6 ">
      <router-link to="/home">上行情况</router-link>

        <router-link to="/uppage">入库情况</router-link>
        <router-link to="/bottompage">下行情况</router-link>
    </div>
  </div>
</template>

<script setup>
import { storeToRefs } from 'pinia'
import { useDialogStore } from '@/stores/dialog'


</script>


