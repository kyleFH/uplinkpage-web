<template>
  <div class="flex justify-start items-center w-full p-4 flex-col gap-8">
    <div
      class="flex flex-wrap flex-col justify-start w-full gap-2  p-2"
    >
      <p class=" flex flex-wrap items-center gap-2"><div class=" bg-blue-500 w-1 h-4 "></div>地图气象资料</p>
      <div class="w-full flex flex-wrap flex-row justify-start gap-4 p-4">
        <div
          v-for="item in nowValue"
          class="card-style"
          :class="{
            'bg-green-500': item.responseDataSS?.length >= item.ysnum,
            ' bg-yellow-500': item.responseDataSS?.length < item.ysnum && item.isMissingReports,
            ' bg-red-500': item.responseDataSS?.length < item.ysnum && !item.isMissingReports,

          }"
        >
          <p class="text-[20px] font-semibold bg-black/40 p-2">
            数据名称：{{ item.d_name }}
          </p>
          <p>实收/应收:{{ item.responseDataSS?.length || 0 }} / {{ item.ysnum }}</p>
          <p>实发/应发:{{ item.responseDataSF?.length || 0 }} / {{ item.yfnum }}</p>
          <button @click="drawer = false" class="button-style">告警功能</button>
          <button @click="changeDataDital(item)" class="button-style">
            查看详情
          </button>
          <button @click="drawerMiss = false" class="button-style">
            缺报原因填写
          </button>
        </div>
      </div>
    </div>
    <div
      class="flex flex-wrap flex-col justify-start w-full gap-2  p-2"
    >
    <p class=" flex flex-wrap items-center gap-2"><div class=" bg-blue-500 w-1 h-4 "></div>高空气象资料</p>
      <div class="w-full flex flex-wrap flex-row justify-start gap-4">
        <div
          v-for="item in HighAltitude"
          class="card-style"
          :class="{
            'bg-green-500': item.responseDataSS?.length >= item.ysnum,
            ' bg-yellow-500': item.responseDataSS?.length < item.ysnum && item.isMissingReports,
            ' bg-red-500': item.responseDataSS?.length < item.ysnum && !item.isMissingReports,

          }"
        >
          <p class="text-[20px] font-semibold bg-black/40 p-2">
            数据名称：{{ item.d_name }}
          </p>
          <p>实收/应收:{{ item.responseDataSS?.length || 0 }} / {{ item.ysnum }}</p>
          <p>实发/应发:{{ item.responseDataSF?.length || 0 }} / {{ item.sfnum }}</p>
          <button @click="drawer = false" class="button-style">告警功能</button>
          <button @click="changeDataDital(item)" class="button-style">
            查看详情
          </button>
          <button @click="drawerMiss = false" class="button-style">
            缺报原因填写
          </button>
        </div>
      </div>
    </div>
  </div>

<!--  -->
  <el-drawer
    v-model="drawer"
    title=" "
    :with-header="false"
    size="80%"
    class="w-full flex justify-center items-center"
  >
    <div
      class="flex justify-center items-center font-bold text-center text-[24px] h-20"
    >
      公路交通气象基本要素资料传输情况
    </div>

    <el-table :data="tableData" style="width: 100%">
      <el-table-column
        v-for="item in tableHeader"
        :prop="item.prop"
        :label="item.label"
        width="200"
        class="text-center"
      />
    </el-table>
  </el-drawer>

  <el-drawer
    v-model="drawerInfo"
    title=" "
    :with-header="false"
    size="80%"
    class="w-full"
  >
    <div
      class="flex justify-center items-center font-bold text-center text-[24px] h-20"
    >
      公路交通气象基本要素资料传输情况
    </div>
    <el-table :data="tableData" style="width: 100%">
      <el-table-column
        v-for="item in tableHeader"
        :prop="item.prop"
        :label="item.label"
        width="200"
      >
        <!-- <template #default="scope">
          <div
            v-if="item.prop == 'name1'"
          >
            {{ scope.row?.responseDataSF[0].IIiii }}
        </div>
        <div
            v-if="item.prop == 'name3'"
          >
            {{ scope.row?.responseDataSS[0].PROCESS_END_TIME }}
        </div>
        <div
            v-if="item.prop == 'name4'"
          >
            {{ scope.row?.responseDataSF[0].PROCESS_END_TIME }}
        </div>
        </template> -->
    </el-table-column>
      
    </el-table>
  </el-drawer>

  <!-- 缺报原因填写 -->
  <el-drawer
    v-model="drawerMiss"
    title=" "
    :with-header="false"
    size="80%"
    class="w-full"
  >
    <div
      class="flex justify-center items-center font-bold text-center text-[24px] h-20"
    >
      公路交通气象基本要素资料传输情况
    </div>
    <el-table :data="tableData" style="width: 100%">
      <el-table-column
        v-for="item in tableHeaderMiss"
        :prop="item.prop"
        :label="item.label"
        width="250"
      >
        <template #default>
          <!-- <el-button
            v-if="item.prop == 'name7'"
            type="primary"
            size="small"
            width="200"
          >
            缺报原因填写
          </el-button> -->
          <el-select
          v-if="item.prop == 'name7'"
      v-model="value"
      placeholder="选择常见的缺报原因"
      size="large"
      style="width: 180px"
    >
      <el-option
        v-for="item in options"
        :key="item.value"
        :label="item.label"
        :value="item.value"
      />
    </el-select>
        </template>
      </el-table-column>
    </el-table>
  </el-drawer>
</template>

<script setup lang="ts">
import { ref } from "vue";

const drawer = ref(false);
const value = ref('')
const drawerInfo = ref(false);
const drawerInfoDetail = ref([]);
// const drawer = ref(false)
const drawerMiss = ref(false);

 defineProps<{
  nowValue: any[];
  HighAltitude: any[];
  formattedHour: string;
}>();

const tableHeader = [
{ prop: "d_name", label: "数据名" },

  { prop: "name1", label: "站号" },
  // { prop: "name2", label: "监控时间" },
  { prop: "name3", label: "接收时间" },
  { prop: "name4", label: "发送时间" },
  // { prop: "name5", label: "接收情况" },
  // { prop: "name6", label: "发送情况" },
  // { prop: "name7", label: "缺报原因填写" },
];

const tableHeaderMiss = [
  { prop: "name1", label: "站点" },
  { prop: "name2", label: "监控时间" },
  { prop: "name3", label: "接收时间" },
  { prop: "name4", label: "发送时间" },
  { prop: "name5", label: "接收情况" },
  { prop: "name6", label: "发送情况" },
  { prop: "name7", label: "缺报原因填写" },
];

const tableData = [
  {
    name1: "54517",
    name2: "2024-07-23 13:00:00",
    name3: "2024-07-23 13:00:00",
    name4: "2024-07-23 13:00:00",
    name5: "及时",
    name6: "缺收",
  },
  {
    name1: "54517",
    name2: "2024-07-23 13:00:00",
    name3: "2024-07-23 13:00:00",
    name4: "2024-07-23 13:00:00",
    name5: "及时",
    name6: "缺收",
  },
  {
    name1: "54517",
    name2: "2024-07-23 13:00:00",
    name3: "2024-07-23 13:00:00",
    name4: "2024-07-23 13:00:00",
    name5: "及时",
    name6: "缺收",
  },
  {
    name1: "54517",
    name2: "2024-07-23 13:00:00",
    name3: "2024-07-23 13:00:00",
    name4: "2024-07-23 13:00:00",
    name5: "及时",
    name6: "缺收",
  },
  {
    name1: "54517",
    name2: "2024-07-23 13:00:00",
    name3: "2024-07-23 13:00:00",
    name4: "2024-07-23 13:00:00",
    name5: "及时",
    name6: "缺收",
  },
  {
    name1: "54517",
    name2: "2024-07-23 13:00:00",
    name3: "2024-07-23 13:00:00",
    name4: "2024-07-23 13:00:00",
    name5: "及时",
    name6: "缺收",
  },
];

const options = [
  {
    value: '该站网络故障',
    label: '该站网络故障',
  },
  {
    value: '该站通讯信号不稳定',
    label: '该站通讯信号不稳定',
  },
  {
    value: '测站通讯故障',
    label: '测站通讯故障',
  },
  {
    value: '国家局ftp堵塞',
    label: '国家局ftp堵塞',
  },
  {
    value: '该站发报软件故障',
    label: '该站发报软件故障',
  },
  {
    value: '169服务器传输软件故障',
    label: '169服务器传输软件故障',
  },
  {
    value: '194服务器传输软件故障',
    label: '194服务器传输软件故障',
  },
  {
    value: '雷达研试中心传输软件故障',
    label: '雷达研试中心传输软件故障',
  },
  {
    value: '市局CTS分发故障',
    label: '市局CTS分发故障',
  },
  {
    value: '该站雷达传输软件故障',
    label: '该站雷达传输软件故障',
  },
]


const changeDataDital = (item) =>{
  console.log(item)
  drawerInfo.value = true;
  drawerInfoDetail.value = item;
}

</script>

<style>
.button-style {
  @apply flex justify-start items-center underline;
}

.card-style {
  @apply w-[250px] h-[250px] flex flex-col p-2 rounded-lg text-white text-[18px]  shadow-xl;
}
</style>
