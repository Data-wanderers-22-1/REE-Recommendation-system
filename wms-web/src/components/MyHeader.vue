<template>
  <div style="display: flex;line-height: 60px">
    <div style="margin-top: 8px;">
      <i :class="icon" style="font-size: 20px;cursor: pointer;" @click="collapse"></i>
    </div>
    <div style="flex: 1;text-align: center;font-size: 32px;">
      <span>欢迎来到考研院校推荐系统</span>
    </div>
    <el-dropdown>
      <span>张三</span>
      <i class="el-icon-arrow-down" style="margin-left: 5px"></i>
      <el-dropdown-menu slot="dropdown">
        <el-dropdown-item @click.native="toUser">个人中心</el-dropdown-item>
        <el-dropdown-item @click.native="logout">退出登录</el-dropdown-item>
      </el-dropdown-menu>
    </el-dropdown>
  </div>
</template>

<script scoped>
export default {
  name: "MyHeader",
  props: {
    icon: String
  },
  methods: {
    toUser() {
      console.log('to_user');
    },
    logout() {
      console.log('logout');
    },
    collapse(){
      this.$emit('doCollapse');
    }
  }
}
</script>

<style >
/* 如果有自定义样式，可以在这里添加 */
</style>
