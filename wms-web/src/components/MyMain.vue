<template>
  <div>
    <div style="margin-bottom: 5px;">
      <el-input v-model="name" placeholder="请输入名字" suffix-icon="el-icon-search" style="width: 200px;"
                @keyup.enter.native="loadPost"></el-input>
      <el-select v-model="sex" filterable placeholder="请选择性别" style="margin-left: 5px;">
        <el-option
            v-for="item in sexs"
            :key="item.value"
            :label="item.label"
            :value="item.value">
        </el-option>
      </el-select>
      <el-button type="primary" style="margin-left: 5px;" @click="loadPost">查询</el-button>
      <el-button type="success" @click="resetParam">重置</el-button>
      <el-button type="primary" style="margin-left: 5px;" @click="add">新增</el-button>
    </div>
    <div>
      <el-table :data="tableData" :header-cell-style="{background:'#f2f5fc',color:'#555555'}" border>
        <el-table-column prop="id" label="ID" width="120">
        </el-table-column>

        <el-table-column prop="no" label="账号" width="180">
        </el-table-column>

        <el-table-column prop="name" label="姓名" width="150">
        </el-table-column>

        <el-table-column prop="sex" label="性别" width="120">
          <template slot-scope="scope">
            <el-tag :type="scope.row.sex === '1' ? 'primary' : 'success'"
                    disable-transitions>{{scope.row.sex === '1' ? '男' : '女'}}</el-tag>
          </template>
        </el-table-column>

        <el-table-column prop="phone" label="电话" width="180">
        </el-table-column>

        <el-table-column prop="roleId" label="角色" width="200">
          <template slot-scope="scope">
            <el-tag :type="scope.row.roleId === 0 ? 'primary' : (scope.row.roleId === 1 ? 'success' : 'danger')"
                    disable-transitions>
              {{scope.row.roleId === 0 ? '超级管理员' : (scope.row.roleId === 1 ? '管理员' : '普通用户')}}
            </el-tag>
          </template>
        </el-table-column>

        <el-table-column prop="operate" label="操作" width="250">
          <template slot-scope="scope">
            <el-button type="success" @click="mod(scope.row)">编辑</el-button>
            <el-popconfirm
                title="确定删除吗？"
                @confirm="del(scope.row.id)"
                style="margin-left: 5px;">
              <el-button slot="reference" type="danger">删除</el-button>
            </el-popconfirm>
          </template>
        </el-table-column>
      </el-table>
    </div>

    <div>
      <el-pagination
          @size-change="handleSizeChange"
          @current-change="handleCurrentChange"
          :current-page="pageNum"
          :page-sizes="[2, 5, 10, 20, 30]"
          :page-size="pageSize"
          layout="total, sizes, prev, pager, next, jumper"
          :total="total">
      </el-pagination>
    </div>
    <el-dialog
        title="提示"
        :visible.sync="centerDialogVisible"
        width="30%"
        center>
      <el-form ref="form" :rules="rules" :model="form" label-width="80px">
        <el-form-item label="账号" prop="no">
          <el-col :span="20">
            <el-input v-model="form.no"></el-input>
          </el-col>
        </el-form-item>
        <el-form-item label="名字" prop="name">
          <el-col :span="20">
            <el-input v-model="form.name"></el-input>
          </el-col>
        </el-form-item>
        <el-form-item label="密码" prop="password">
          <el-col :span="20">
            <el-input v-model="form.password"></el-input>
          </el-col>
        </el-form-item>
        <el-form-item label="性别">
          <el-radio-group v-model="form.sex">
            <el-radio label="1">男</el-radio>
            <el-radio label="0">女</el-radio>
          </el-radio-group>
        </el-form-item>
        <el-form-item label="电话" prop="phone">
          <el-col :span="20">
            <el-input v-model="form.phone"></el-input>
          </el-col>
        </el-form-item>
      </el-form>
      <span slot="footer" class="dialog-footer">
        <el-button @click="centerDialogVisible = false"> 取 消 </el-button>
        <el-button type="primary" @click="save"> 确 定 </el-button>
      </span>
    </el-dialog>
  </div>
</template>

<script>
  export default {
    name: "MyMain",

    data() {
      // 表单验证函数，检测重复
      let checkDuplicate = (rule, value, callback) => {
        if (this.form.id) {
          return callback();
        }
        this.$axios.get(this.$httpUrl + "/user/findByNo?no=" + this.form.no)
            .then(res => res.data).then(res => {
          if (res.code != 200) {
            callback()
          } else {
            callback(new Error('账号已经存在'));
          }
        })
      };
      return {
        tableData:[],
        pageSize:5,
        pageNum:1,
        total:0,
        name: '',
        sex: '',
        sexs: [
          {
            value: '1',
            label: '男'
          }, {
            value: '0',
            label: '女'
          }
        ],
        centerDialogVisible:false,
        form: {
          id: '',
          no: '',
          name: '',
          password: '',
          phone: '',
          sex: '0',
          roleId: '2'
        },
        rules: {
          no: [
            {required: true, message: '请输入账号', trigger: 'blur'},
            {min: 3, max: 8, message: '长度在 3 到 8 个字符', trigger: 'blur'},
            {validator: checkDuplicate, trigger: 'blur'}
          ],
          name: [
            {required: true, message: '请输入名字', trigger: 'blur'}
          ],
          password: [
            {required: true, message: '请输入密码', trigger: 'blur'},
            {min: 3, max: 8, message: '长度在 3 到 8 个字符', trigger: 'blur'}
          ],
          phone: [
            {required: true, message: "手机号不能为空", trigger: "blur"},
            {pattern: /^1[3-9][0-9]{9}$/, message: "请输入正确的手机号码", trigger: "blur"}
          ]
        }
      };
    },
    methods: {
      resetForm(){
        this.$refs.form.resetFields();
      },
      add() {
        this.centerDialogVisible = true
        this.$nextTick(() => {
          this.resetForm();
        })
      },
      save(){
        this.$refs.form.validate((valid) => {
          if (valid) {
            this.$axios.post(this.$httpUrl+'/user/save', this.form)
                .then(res => res.data).then(res => {
              if (res.code == 200) {
                this.$message({
                  message: '操作成功！',
                  type: 'success'
                });
                this.centerDialogVisible=false;
                this.loadPost();
              } else {
                this.$message({
                  message: '操作失败！',
                  type: 'error'
                });
              }
            });
          } else {
            console.log('error submit!');
            return false;
          }
        });
      },
      handleSizeChange(val) {
        console.log(`每页 ${val} 条`);
        this.pageNum = 1;
        this.pageSize = val;
        this.loadPost();
      },
      handleCurrentChange(val) {
        console.log(`当前页: ${val}`);
        this.pageNum = val;
        this.loadPost();
      },
      loadGet() {
        this.$axios.get(this.$httpUrl+'/user/list').then(res=>res.data).then(res => {
          console.log(res);
        })
      },
      resetParam(){
        this.name='';
        this.sex='';
        this.loadPost();
      },
      loadPost() {
        this.$axios.post(this.$httpUrl+'/user/listPage',{
          pageSize:this.pageSize,
          pageNum:this.pageNum,
          param: {
            name: this.name,
            sex: this.sex
          }
        }).then(res => res.data).then(res => {
          if (res.code == 200) {
            this.tableData = res.data;
            this.total = res.total;
          } else {
            this.$message({
              message: '操作失败！',
              type: 'error'
            });
          }
        });
      }
    },
    beforeMount() {
      this.loadPost();
    }
  }
</script>

<style>

</style>