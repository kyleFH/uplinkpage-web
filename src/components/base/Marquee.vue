<template>
  <div ref="marqueeContainer" class="marquee-container font-favorit-trial hidden sm:block" :style="{ height: height }">
    <div ref="marquee" class="marquee" :style="marqueeStyle"><slot></slot></div>
  </div>
</template>

<script setup>
import { ref, onMounted } from 'vue'

const props = defineProps({
  height: {
    type: String,
    default: '30px'
  },
  speed: {
    type: Number,
    default: 60 // 默认滚动速度
  }
})

const marqueeContainer = ref(null)
const marquee = ref(null)
const marqueeStyle = ref({})

onMounted(() => {
  const updateAnimation = () => {
    const textWidth = marquee.value?.offsetWidth
    const duration = textWidth / props.speed
    marqueeStyle.value = { animation: `marquee ${duration}s linear infinite` }
  }

  updateAnimation()

  window.addEventListener('resize', updateAnimation)
})
</script>

<style>
.marquee-container {
  overflow: hidden;
  white-space: nowrap;
  width: 100%; /* 容器宽度 */
  position: relative;
}

.marquee {
  display: inline-block;
  white-space: nowrap;
  position: absolute;
}

@keyframes marquee {
  from {
    transform: translateX(0);
  }
  to {
    transform: translateX(-50%);
  }
}

@-webkit-keyframes marquee {
  from {
    transform: translateX(0);
  }
  to {
    transform: translateX(-50%);
  }
}
</style>
