<template>
    <qrcode-vue :value="value" :size="size" :level="level"></qrcode-vue>
  </template>
  
  <script setup>
  import QrcodeVue from 'qrcode.vue';
  import { ref } from 'vue';
  
  const props = defineProps({
    value: {
      type: String,
      default: 'http://imoocc.com',
    },
    size: {
      type: Number,
      default: 50,
    },
    level: {
      type: String,
      default: 'L', // Error correction level: 'L', 'M', 'Q', 'H'
    },
  });
  </script>
  