<template>
  <div class="flex flex-col p-10">
    <HeaderSection />
    <NowInfoPage v-if="pageNumberValue == 0" />
    <!-- <Bottompage v-if="pageNumberValue == 1" />
    <Uppage v-if="pageNumberValue == 2" /> -->
  </div>
</template>

<script setup lang="ts">
import { onMounted } from "vue"
import { storeToRefs } from "pinia";
import { useDialogStore } from "@/stores/dialog";

import { getJkresultIiiii,getJkresult,getQbresonResult} from "@/unit/api.ts"
import NowInfoPage from "@/components/uploadhome/NowInfoPage.vue";
import HeaderSection from "@/components/header/HeaderSection.vue";
import Bottompage from "@/components/bottompage/Bottompage.vue";
import Uppage from "@/components/uppage/Uppage.vue";

// Pinia store for dialog visibility
const dialogStore = useDialogStore();
const {  pageNumberValue } = storeToRefs(dialogStore);

onMounted(()=>{
  // const a = getJkresultIiiii()
  // const b = getJkresult()
  // const c = getQbresonResult()
  // console.log(a,b,c)
})

</script>

<style scoped>
.button-link-style {
  @apply flex flex-row justify-center items-center w-[183px] h-11 border border-zinc-900 gap-1 text-zinc-900 text-lg font-normal font-ppsupplySans-regular leading-snug hover:text-white hover:bg-black px-6 py-3 rounded-[32px];
}
</style>
