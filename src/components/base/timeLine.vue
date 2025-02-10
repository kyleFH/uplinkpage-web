
<template>
    <div class="w-full flex flex-col justify-start items-center">
      <div class="flex flex-row w-full justify-start items-center gap-4 p-4">
        <div
          v-for="item in timeValue"
          class="flex flex-row justify-center items-center w-[90px] h-10 border"
          :class="item.active ? 'bg-blue-200' : ''"
        >
          <button
            @click="changeTime(item.value)"
            class="w-full h-full flex flex-row justify-center items-center gap-1 font-semibold"
            :class="
              [2, 12, 16].includes(Number(item.name)) ||
              item.name === formattedHour
                ? ' text-red-500'
                : ''
            "
          >
            {{ item.name === formattedHour ? "当前时次" : item.name + "时" }}
          </button>
        </div>
      </div>
      <span class="w-full flex gap-4 p-4">
        <p>网络值班员:陈凯华13920000000</p>
        <p>会商值班员:吴迪13920000000</p>
        <p>应急值班员:姚程1392000000</p>
      </span>
    </div>
  </template>
  
  <script setup lang="ts">
  import { ref, onMounted } from "vue";
  import { Api } from "@/json/api";
  
  
  const formattedHour = ref();
  const isNowValue = ref(true);
  const nowValue = ref<nowValueType[]>([]);
  const HighAltitude = ref<nowValueType[]>([]);
  
  const timeValue = ref<timeValueType[]>([]);
  const morning = ref([
    {
      name: "00",
      value: "00",
      active: true,
    },
    { name: "01", value: "01", active: false },
    { name: "02", value: "02", active: false },
    { name: "03", value: "03", active: false },
    { name: "04", value: "04", active: false },
    { name: "05", value: "05", active: false },
    { name: "06", value: "06", active: false },
    { name: "07", value: "07", active: false },
    { name: "08", value: "08", active: false },
    { name: "09", value: "09", active: false },
    { name: "10", value: "10", active: false },
    { name: "11", value: "11", active: false },
  ]);
  
  const afternoon = ref([
    { name: "12", value: "12", active: true },
    { name: "13", value: "13", active: false },
    { name: "14", value: "14", active: false },
    { name: "15", value: "15", active: false },
    { name: "16", value: "16", active: false },
    { name: "17", value: "17", active: false },
    { name: "18", value: "18", active: false },
    { name: "19", value: "19", active: false },
    { name: "20", value: "20", active: false },
    { name: "21", value: "21", active: false },
    { name: "22", value: "22", active: false },
    { name: "23", value: "23", active: false },
  ]);
  
  onMounted(() => {
    getCurrentHour();
  });
  
  const changeTime = (v) => {
    isNowValue.value = formattedHour.value === v;
    timeValue.value.map((item) => {
      if (item.value === v) {
        item.active = true;
      } else {
        item.active = false;
      }
      return item;
    });
    nowValue.value = Api.getGroundValue(v);
    HighAltitude.value = Api.getHighAltitudeValue(v);
  };
  
  const getCurrentHour = () => {
    const now = new Date();
    let hours = now.getHours();
    let hourValue = hours < 10 ? "0" + hours : hours.toString();
    formattedHour.value = hourValue;
    if (hours >= 12) {
      timeValue.value = [...afternoon.value];
    } else {
      timeValue.value = [...morning.value];
    }
    nowValue.value = Api.getGroundValue(hourValue);
    HighAltitude.value = Api.getHighAltitudeValue(hourValue);
  
    changeTime(hourValue);
  };
  </script>
  