<template>
  <div id="app" style="margin:0;padding:0;border:0;">
    <MyIndex></MyIndex>
  </div>
</template>

<script>

import MyIndex from "@/components/MyIndex.vue";

export default {
  name: 'App',
  components: {
    MyIndex
  }
}
</script>

<style>
#app {
  height: 100%;
}
</style>
