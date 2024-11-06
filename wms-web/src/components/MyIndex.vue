<template>
  <el-container style="height: 100%; border: 1px solid #eee">
    <el-aside :width="aside_width"
              style="background-color: rgb(238, 241, 246); margin-left: -1px;margin-bottom:-1px;">
      <MyAside :isCollapse="isCollapse"></MyAside>
    </el-aside>

    <el-container style="height: 100%;">
      <el-header
          style="text-align: right; font-size: 12px;height: 100%;border-bottom: rgba(168,168,168,0.3) 1px solid">
        <MyHeader @doCollapse="doCollapse" :icon="icon"></MyHeader>
      </el-header>

      <el-main style="height: 100%;">
      <MyMain></MyMain>
      </el-main>
    </el-container>
  </el-container>
</template>

<style>
.el-header {
  background-color: #B3C0D1;
  color: #333;
  line-height: 60px;
}

.el-aside {
  color: #333;
}
</style>

<script>
import MyAside from "@/components/MyAside.vue";
import MyHeader from "@/components/MyHeader.vue";
import MyMain from "@/components/MyMain.vue";
export default {
  name : 'MyIndex',
  components:{MyAside,MyHeader,MyMain},
  data() {
    return {
      isCollapse: false,
      aside_width: '200px',
      icon: 'el-icon-s-fold',
    };
  },
  methods: {
    doCollapse() {
      this.isCollapse = !this.isCollapse
      if (!this.isCollapse) { //展开
        this.aside_width = '200px';
        this.icon = 'el-icon-s-fold';
      } else { //收起
        this.aside_width = '64px';
        this.icon = 'el-icon-s-unfold';
      }
    }
  }
};
</script>