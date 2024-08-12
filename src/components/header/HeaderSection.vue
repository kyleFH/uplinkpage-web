<template>
  <div class=" ">
    <!-- headers -->
    <div class="flex flex-wrap justify-start items-center p-6">
      <button
        v-for="(item, index) in routerValue"
        @click="changeActive(item)"
        class="h-full inline"
        :class="item.active ? '  text-black font-bold' : ' text-black/50'"
      >
        <!-- <router-link :to="item.path">{{ item.title }}</router-link> -->
         {{ item.title }}
        <div v-if="index != routerValue.length - 1" class="inline px-4">/</div>
      </button>
    </div>
  </div>
</template>

<script setup>
import { ref, onMounted } from "vue";

import { storeToRefs } from "pinia";
import { useDialogStore } from "@/stores/dialog";

const dialogStore = useDialogStore();
const { dialogVisible } = storeToRefs(dialogStore);
const emit = defineEmits(['changePageNumber'])

const routerValue = ref([
  {
    title: "上行情况",
    path: "/home",
    active: true,
    id:0
  },
  {
    title: "入库情况",
    path: "/uppage",
    active: false,
    id:1
  },
  {
    title: "下行情况",
    path: "/bottompage",
    active: false,
    id:2
  },
]);

const changeActive = (i) => {
  // emit('changePageNumber',i.id)
  dialogStore.pageNumberValue = i.id
  routerValue.value.map((item, index) => {
    if (item.path == i.path) {
      item.active = true;
    } else {
      item.active = false;
    }
  });
};
</script>
