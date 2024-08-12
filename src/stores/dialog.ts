import { defineStore } from "pinia";

export const useDialogStore = defineStore("dialog", {
  state: () => {
    return {
      dialogVisible: false,
      isDisplayAlarm: false,
      pageNumberValue: 0
    };
  },
  getters: {},
  actions: {},
});
