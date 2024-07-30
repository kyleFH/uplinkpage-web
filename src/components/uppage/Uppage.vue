<template>
  <div class="flex flex-col p-10">
    <HeaderSection />
    <el-table :data="tableData" style="width: 100%">
    <el-table-column v-for="item in tableHeader" :prop="item.prop" :label="item.label" width="180" />
  </el-table>
  </div>
</template>

<script setup lang="ts">
import HeaderSection from '@/components/header/HeaderSection.vue'
const tableHeader = [
  { prop: "name1", label: "站点编码" },
  { prop: "name2", label: "应入" },
  { prop: "name3", label: "实入" },
  { prop: "name4", label: "缺入" },
  { prop: "name5", label: "时次" },
  { prop: "name6", label: "告警状态" },
];

const tableData = [
  {
    name1: '公交交通自动站',
    name2: '9999',
    name3: '7437',
    name4: '2562',
    name5: "2024-07-23 13:00:00",
    name6: '告警',
  },
  {
    name1: '中国国家站地面',
    name2: '9999',
    name3: '7437',
    name4: '2562',
    name5: "2024-07-23 13:00:00",
    name6: '正常',
  },
  {
    name1: '公交交通自动站',
    name2: '9999',
    name3: '7437',
    name4: '2562',
    name5: "2024-07-23 13:00:00",
    name6: '告警',
  },
  {
    name1: '中国国家站地面',
    name2: '9999',
    name3: '7437',
    name4: '2562',
    name5: "2024-07-23 13:00:00",
    name6: '正常',
  },
]

</script>
