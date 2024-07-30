import { defineStore } from 'pinia'

export const useDialogStore = defineStore('dialog', {
  state: () => {
    return {
      dialogVisible: false,
      isDisplayAlarm: false
    }
  },
  getters: {},
  actions: {}
})
