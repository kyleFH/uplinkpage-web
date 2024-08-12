<template>
  <div class="flex flex-col w-full justify-start">
    <div class="flex flex-wrap flex-col w-full p-4">
      <p>地图气象资料</p>
      <div class="w-full flex flex-wrap flex-row justify-start gap-4">
        <div>
          <el-table :data="nowValue" style="width: 100%">
            <el-table-column
              v-for="item in tableHeader1"
              :prop="item.prop"
              :label="item.label"
              width="180"
              ><template #default>
                <el-button
                  v-if="item.prop == 'ReasonsMissingReports'"
                  link
                  type="primary"
                  size="small"
                  @click="handleClick"
                >
                  Detail
                </el-button>
                <el-button
                  v-else-if="item.prop == 'AlarmFunction'"
                  link
                  type="primary"
                  size="small"
                  @click="handleClick"
                >
                  Detail
                </el-button>
                <el-button
                  v-else-if="item.prop == 'AlarmCondition'"
                  link
                  type="primary"
                  size="small"
                  @click="handleClick"
                >
                  Detail
                </el-button>
              </template>
            </el-table-column>
          </el-table>
        </div>
      </div>
    </div>

    <div class="flex flex-wrap flex-col w-full p-4">
      <p>高空气象资料</p>
      <div class="w-full flex flex-wrap flex-row justify-start gap-4">
        <div>
          <el-table :data="HighAltitude" style="width: 100%">
            <el-table-column
              v-for="item in tableHeader1"
              :prop="item.prop"
              :label="item.label"
              width="180"
              ><template #default>
                <el-button
                  v-if="item.prop == 'ReasonsMissingReports'"
                  link
                  type="primary"
                  size="small"
                  @click="handleClick"
                >
                  Detail
                </el-button>
                <el-button
                  v-else-if="item.prop == 'AlarmFunction'"
                  link
                  type="primary"
                  size="small"
                  @click="handleClick"
                >
                  Detail
                </el-button>
                <el-button
                  v-else-if="item.prop == 'AlarmCondition'"
                  link
                  type="primary"
                  size="small"
                  @click="handleClick"
                >
                  Detail
                </el-button>
              </template>
            </el-table-column>
          </el-table>
        </div>
      </div>
    </div>
  </div>
  <el-drawer
    v-model="drawer"
    title=" "
    :with-header="false"
    size="80%"
    class="w-full"
  >
    <el-table :data="tableData" style="width: 100%">
      <el-table-column
        v-for="item in tableHeader"
        :prop="item.prop"
        :label="item.label"
        width="150"
      />
    </el-table>
  </el-drawer>
</template>

<script setup lang="ts">
import { ref, onMounted } from "vue";

const drawer = ref(false);

const props = defineProps<{
  nowValue: nowValueType[];
  HighAltitude: nowValueType[];
}>();
const tableHeader1 = [
  { prop: "name", label: "资料子类型" },
  { prop: "time", label: "时次" },
  { prop: "actualReceiptReceivable", label: "实收/应收" },
  { prop: "ActualShouldIssued", label: "实发/应发" },
  { prop: "ReasonsMissingReports", label: "缺报原因" },
  { prop: "AlarmFunction", label: "告警功能" },
  { prop: "AlarmCondition", label: "告警情况" },
];

const tableHeader = [
  { prop: "name1", label: "站点" },
  { prop: "name2", label: "监控时间" },
  { prop: "name3", label: "接收时间" },
  { prop: "name4", label: "发送时间" },
  { prop: "name5", label: "接收情况" },
  { prop: "name6", label: "发送情况" },
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

const handleClick = () => {
  drawer.value = true;
};
</script>
