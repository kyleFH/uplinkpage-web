<template>
  <div class="flex justify-start items-center w-full p-4 flex-col gap-8">
    <div
      class="flex flex-wrap flex-col justify-start w-full gap-2 border-2 border-blue-400 p-2"
    >
      <p>地图气象资料</p>
      <div class="w-full flex flex-wrap flex-row justify-start gap-4 p-4">
        <div
          v-for="item in nowValue"
          class="card-style"
          :class="{
            'bg-green-500': item.isMissingReports === '1',
            ' bg-yellow-500': item.isMissingReports === '2',
            ' bg-red-500': item.isMissingReports === '3',
          }"
        >
          <p class="text-[20px] font-semibold bg-black/50 p-2">
            数据名称：{{ item.name }}
          </p>
          <p>实收/应收:{{ item.receivable }} / {{ item.officialReceipts }}</p>
          <p>实发/应发:{{ item.shouldBeIssued }} / {{ item.actualDelivery }}</p>
          <button @click="drawer = true" class="button-style">告警功能</button>
          <button @click="drawerInfo = true" class="button-style">
            查看详情
          </button>
          <button @click="drawerMiss = true" class="button-style">
            缺报原因填写
          </button>
        </div>
      </div>
    </div>
    <div
      class="flex flex-wrap flex-col justify-start w-full gap-2 border-2 border-blue-400 p-2"
    >
      <p>高空气象资料</p>
      <div class="w-full flex flex-wrap flex-row justify-start gap-4">
        <div
          v-for="item in HighAltitude"
          class="card-style"
          :class="{
            'bg-green-500': item.isMissingReports === '1',
            ' bg-yellow-500': item.isMissingReports === '2',
            ' bg-red-500': item.isMissingReports === '3',
          }"
        >
          <p class="text-[20px] font-semibold bg-black/50 p-2">
            数据名称：{{ item.name }}
          </p>
          <p>实收/应收:{{ item.actualReceiptReceivable }}</p>
          <p>实发/应发:{{ item.actualReceiptReceivable }}</p>
          <button @click="drawer = true" class="button-style">告警功能</button>
          <button @click="drawerInfo = true" class="button-style">
            查看详情
          </button>
          <button @click="drawerMiss = true" class="button-style">
            缺报原因填写
          </button>
        </div>
      </div>
    </div>
  </div>
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
        width="150"
      />
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
        width="150"
      >
        <template #default>
          <el-button
            v-if="item.prop == 'name7'"
            type="primary"
            size="small"
            width="150"
          >
            缺报原因填写
          </el-button>
        </template>
      </el-table-column>
    </el-table>
  </el-drawer>
</template>

<script setup lang="ts">
import { ref, onMounted } from "vue";
import { Api } from "@/json/api";
import { dialogProps } from "element-plus";

const drawer = ref(false);
const drawerInfo = ref(false);
// const drawer = ref(false)
const drawerMiss = ref(false);

const props = defineProps<{
  nowValue: nowValueType[];
  HighAltitude: nowValueType[];
  formattedHour: string;
}>();

const tableHeader = [
  { prop: "name1", label: "站点" },
  { prop: "name2", label: "监控时间" },
  { prop: "name3", label: "接收时间" },
  { prop: "name4", label: "发送时间" },
  { prop: "name5", label: "接收情况" },
  { prop: "name6", label: "发送情况" },
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
</script>

<style>
.button-style {
  @apply flex justify-start items-center underline;
}

.card-style {
  @apply w-[250px] h-[250px] flex flex-col p-2 rounded-lg text-white  shadow-xl;
}
</style>
