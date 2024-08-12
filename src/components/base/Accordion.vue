<template>
  <div class="accordion">
    <div
      v-for="(item, index) in items"
      :key="index"
      class="accordion-item border-t border-gray-300"
    >
      <div
        class="accordion-header py-4 cursor-pointer bg-white flex justify-between items-center gap-6"
        @click="toggle(index)"
      >
        <span
          class="text-[#1d1d1e] text-xl font-normal font-ppsupplySans-regular leading-relaxed"
          >{{ item.title }}</span
        >
        <span
          class="scale-150"
          :class="{
            'transform rotate-45': activeIndex === index,
            'transition-transform': true,
          }"
        >
          +
        </span>
      </div>
      <div
        v-if="activeIndex === index"
        class="accordion-content p-4 bg-white text-[#1d1d1e]/60 text-base font-normal *:font-geist-regular leading-tight"
      >
        {{ item.content }}
      </div>
    </div>
  </div>
</template>

<script setup>
import { ref } from "vue";

const props = defineProps({
  items: {
    type: Array,
    required: true,
  },
});

const activeIndex = ref(null);

const toggle = (index) => {
  activeIndex.value = activeIndex.value === index ? null : index;
};
</script>

<style scoped>
.accordion {
  width: 100%;
}
</style>
