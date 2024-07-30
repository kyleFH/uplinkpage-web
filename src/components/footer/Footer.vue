<template>
  <!-- footer -->
  <div class="flex bg-black flex-col justify-start items-center">
    <div class="flex flex-col w-full gap-16 px-6 sm:px-20 pt-20">
      <div class="flex justify-between flex-col sm:flex-row gap-y-10">
        <div class="flex gap-2 flex-col">
          <p class="text-white text-2xl font-normal font-ppsupplySans-regular leading-[30px]">ManiSkill Project</p>
          <p class="text-white text-base font-normal font-ppsupplySans-regular leading-tight flex gap-1 items-center">
            Led by <IconLockupFooter class="inline" />
          </p>
        </div>
        <div class="flex flex-row gap-10">
          <div class="">
            <p class="text-white/40 text-base font-normal font-geist-regular leading-tight">For general inquiries</p>
            <p class="text-white text-lg font-normal font-ppsupplySans-regular leading-snug">contact@hillbot.ai</p>
          </div>
          <div class="">
            <p class="text-white/40 text-base font-normal font-geist-regular leading-tight">For careers</p>
            <p class="text-white text-lg font-normal font-ppsupplySans-regular leading-snug">hr@hillbot.ai</p>
          </div>
        </div>
      </div>
      <div class="flex">
        <p class="text-white text-base font-normal font-geist-regular leading-tight">© 2024 Hillbot, Inc.</p>
        <p class="text-white/40 text-base font-normal font-geist-regular leading-tight">Terms Privacy</p>
      </div>
    </div>
    <div class="">
      <img src="/imgs/footer/mask-group.png" />
    </div>
  </div>
</template>

<script setup lang="ts">
import IconLockupFooter from '@/assets/svg/Lockup-footer.svg'
</script>
