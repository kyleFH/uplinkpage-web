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
      <p>应急值班员:姚程1392000000---</p>
    </span>

    <Content
      v-if="isNowValue"
      :nowValue="nowValue"
      :HighAltitude="HighAltitude"
      :formattedHour="formattedHour"
    />
    <ContentHistory
      v-else
      :nowValue="nowValue"
      :HighAltitude="HighAltitude"
      :formattedHour="formattedHour"
    />
  </div>
</template>

<script setup lang="ts">
import { ref, onMounted } from "vue";
import { Api } from "@/json/api";
// import axios from 'axios';
import Content from "@/components/uploadhome/Content.vue";
import ContentHistory from "@/components/uploadhome/ContentHistory.vue";
import {
  getJkresultList,
  getQueryCTSsendByDataTypeAndDatatimeAndSenduser,
} from "@/unit/api.ts";

const formattedHour = ref();
const isNowValue = ref(true);
const nowValue = ref();
const HighAltitude = ref();

const timeValue = ref<timeValueType[]>([]);

const formattedDate = ref();
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

const changeTime = async (v) => {
  isNowValue.value = formattedHour.value === v;
  timeValue.value.map((item) => {
    if (item.value === v) {
      item.active = true;
    } else {
      item.active = false;
    }
    return item;
  });
  nowValue.value = await handleGetJkresultIiiiiList("地面资料", v);
  HighAltitude.value = await handleGetJkresultIiiiiList("高空资料", v);

  // console.log("nowValue,HighAltitude", nowValue.value, HighAltitude.value);
};

const getCurrentHour = async () => {
  const now = new Date();
  let hours = now.getHours();
  let hourValue = hours < 10 ? "0" + hours : hours.toString();
  formattedHour.value = hourValue;
  if (hours >= 12) {
    timeValue.value = [...afternoon.value];
  } else {
    timeValue.value = [...morning.value];
  }

  const year = now.getFullYear();
  const month = String(now.getMonth() + 1).padStart(2, "0"); // 确保月份是两位数
  const day = String(now.getDate()).padStart(2, "0"); // 确保日期是两位数

  formattedDate.value = `${year}-${month}-${day}`;

  changeTime(hourValue);

  // let dataTime = formatDateToDataTime(now);
  // const dataApi = await fetchData(formattedDate);
  // console.log("dataApi", dataApi);
};

const handleGetJkresultIiiiiList = async (type, hour) => {
  const data = await getJkresultList(type, "2024-11-21", "00:00:" + hour);
  const results = await fetchDataForAllSF(data);
  const resultsAll = await fetchDataForAllSS(results);

  // console.log("data--", data);
  if (resultsAll) {
    return resultsAll;
  }
};

async function fetchDataSF(dataType) {
  //A.0001.0027.R001  公路交通气象基本要素资料
  //A.0001.0042.R001  省级地面气象观测站/国家级地面气象观测站(无值守)
  // const data = await getQueryCTSsendByDataTypeAndDatatimeAndSenduser(formattedDate.value, dataType);

  const CtsData = [
    {
      DATA_TIME: "2025-81-28 09:00",
      FILE_NAME_N: "Z RADA I 54619 20250128090547 0 WPRD LC_FFT.BIN",
      PROCESS_END_TIME: "2025-01-28 89:05:56.800",
      _id: "S6osr]0BpSV13wc-Wej7",
      DATA_TYPE: "B.8087.80B1.RBB1",
      IIiii: "54619",
      SEND: "BABJ RADR",
    },
    {
      DATA_TIME: "2025-81-28 09:00",
      FILE_NAME_N: "Z RADA I 54619 20250128090547 0 WPRD LC_FFT.BIN",
      PROCESS_END_TIME: "2025-01-28 89:05:56.800",
      _id: "S6osr]0BpSV13wc-Wej7",
      DATA_TYPE: "B.8087.80B1.RBB1",
      IIiii: "54619",
      SEND: "BABJ RADR",
    },
    {
      DATA_TIME: "2025-81-28 09:00",
      FILE_NAME_N: "Z RADA I 54619 20250128090547 0 WPRD LC_FFT.BIN",
      PROCESS_END_TIME: "2025-01-28 89:05:56.800",
      _id: "S6osr]0BpSV13wc-Wej7",
      DATA_TYPE: "B.8087.80B1.RBB1",
      IIiii: "54619",
      SEND: "BABJ RADR",
    },
  ];
  return CtsData;
}

async function fetchDataSS(dataType) {
  //A.0001.0027.R001  公路交通气象基本要素资料
  //A.0001.0042.R001  省级地面气象观测站/国家级地面气象观测站(无值守)
  // const data = await getQueryCTSsendByDataTypeAndDatatimeAndSenduser(formattedDate.value, dataType);

  const CtsData = [
    {
      DATA_TIME: "2025-81-28 09:00",
      FILE_NAME_N: "Z RADA I 54619 20250128090547 0 WPRD LC_FFT.BIN",
      PROCESS_END_TIME: "2025-01-28 89:05:56.800",
      _id: "S6osr]0BpSV13wc-Wej7",
      DATA_TYPE: "B.8087.80B1.RBB1",
      IIiii: "54619",
      SEND: "BABJ RADR",
    },
    {
      DATA_TIME: "2025-81-28 09:00",
      FILE_NAME_N: "Z RADA I 54619 20250128090547 0 WPRD LC_FFT.BIN",
      PROCESS_END_TIME: "2025-01-28 89:05:56.800",
      _id: "S6osr]0BpSV13wc-Wej7",
      DATA_TYPE: "B.8087.80B1.RBB1",
      IIiii: "54619",
      SEND: "BABJ RADR",
    },
    {
      DATA_TIME: "2025-81-28 09:00",
      FILE_NAME_N: "Z RADA I 54619 20250128090547 0 WPRD LC_FFT.BIN",
      PROCESS_END_TIME: "2025-01-28 89:05:56.800",
      _id: "S6osr]0BpSV13wc-Wej7",
      DATA_TYPE: "B.8087.80B1.RBB1",
      IIiii: "54619",
      SEND: "BABJ RADR",
    },
    {
      DATA_TIME: "2025-81-28 09:00",
      FILE_NAME_N: "Z RADA I 54619 20250128090547 0 WPRD LC_FFT.BIN",
      PROCESS_END_TIME: "2025-01-28 89:05:56.800",
      _id: "S6osr]0BpSV13wc-Wej7",
      DATA_TYPE: "B.8087.80B1.RBB1",
      IIiii: "54619",
      SEND: "BABJ RADR",
    },
    {
      DATA_TIME: "2025-81-28 09:00",
      FILE_NAME_N: "Z RADA I 54619 20250128090547 0 WPRD LC_FFT.BIN",
      PROCESS_END_TIME: "2025-01-28 89:05:56.800",
      _id: "S6osr]0BpSV13wc-Wej7",
      DATA_TYPE: "B.8087.80B1.RBB1",
      IIiii: "54619",
      SEND: "BABJ RADR",
    },
  ];
  return CtsData;
}

async function fetchDataForAllSF(originalData) {
  const fetchPromises = originalData.map((item) => {
    return fetchDataSF(item.c_type)
      .then((response) => {
        // 合并响应数据到原始数据
        return { ...item, responseDataSF: response };
      })
      .catch((error) => {
        console.error(`Error fetching data for c_type ${item.c_type}:`, error);
        return { ...item, error: error.message };
      });
  });

  try {
    const results = await Promise.all(fetchPromises);
    // 在这里处理合并后的数据
    console.log(results);
    return results;
  } catch (error) {
    console.error("Error processing requests:", error);
  }
}

async function fetchDataForAllSS(originalData) {
  const fetchPromises = originalData.map((item) => {
    return fetchDataSS(item.c_type)
      .then((response) => {
        // 合并响应数据到原始数据
        return { ...item, responseDataSS: response };
      })
      .catch((error) => {
        console.error(`Error fetching data for c_type ${item.c_type}:`, error);
        return { ...item, error: error.message };
      });
  });

  try {
    const results = await Promise.all(fetchPromises);
    // 在这里处理合并后的数据
    console.log(results);
    return results;
  } catch (error) {
    console.error("Error processing requests:", error);
  }
}
</script>
