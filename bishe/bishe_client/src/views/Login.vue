<template>
  <div>
    <el-form :rules="rules" ref="loginForm" :model="loginForm" class="loginContainer">
      <h3 class="loginTitle">测试事务管理平台登录</h3>
      <el-form-item prop="username">
        <el-input type="text" v-model="loginForm.username" placeholder="请输入账号"></el-input>
      </el-form-item>
      <el-form-item prop="password">
        <el-input type="password" v-model="loginForm.password" placeholder="请输入密码"></el-input>
      </el-form-item>
<!--      <el-form-item prop="code">-->
<!--        <el-input type="text" auto-complete="false" v-model="loginForm.code" placeholder="点击图片更换验证码"-->
<!--                  style="width: 225px; margin-right: 5px"></el-input>-->
<!--        <img :src="captchaUrl" @click="updateCaptcha">-->
<!--      </el-form-item>-->
      <el-form-item prop="value">
        <el-select v-model="loginForm.value" placeholder="请选择职位">
          <el-option
              v-for="item in loginForm.character"
              :key="item.value"
              :label="item.label"
              :value="item.value">
          </el-option>
        </el-select>
        <el-checkbox v-model="checked" class="loginRemember">记住我</el-checkbox>
      </el-form-item>
      <el-button type="primary" style="width: 100%" @click="submitLogin">登录</el-button>
    </el-form>
  </div>
</template>

<script>
import {postRequest} from "../../utils/api";

export default {
  name: "Login",
  data() {
    return {
      captchaUrl: '/captcha?time=' + new Date(),//确保验证码正常刷新
      loginForm: {
        username: 'admin',
        password: 'admin',
        code: '',
        character: [{
          value: '选项1',
          label: '管理员'
        }, {
          value: '选项2',
          label: '测试人员'
        }, {
          value: '选项3',
          label: '开发人员'
        }]
      },
      checked: true,
      rules: {
        username: [{
          required: true,
          message: '请输入用户名',
          trigger: 'blur'
        }],
        // password: [{
        //   required: true,
        //   message: '请输入密码',
        //   trigger: 'blur'
        // }],
        value: [{
          required: true,
          message: '请选择职位',
          trigger: 'change'
        }]
      }
    }
  },
  methods: {
    // updateCaptcha() {
    //   this.captchaUrl = '/captcha?time=' + new Date();
    // },
    submitLogin() {
      // alert(11111);
      this.$refs.loginForm.validate((valid) => {
        if (valid) {
          alert('submit!');
          // postRequest('/login',this.loginForm).then(resp=>{
          //   alert(JSON.stringify(resp));
          // })
        } else {
          this.$message.error('请输入所有字段！');
          return false;
        }
      });
    }
  }
}
</script>

<style>
.loginContainer {
  border-radius: 15px;
  background-clip: padding-box;
  margin: 188px auto;
  width: 350px;
  padding: 15px 35px 15px 35px;
  background: #fff;
  border: 1px solid #eaeaea;
  box-shadow: 0 0 25px #cac6c6;
}

.loginTitle {
  margin: 0px auto 40px auto;
  text-align: center;
}

.loginRemember {
  text-align: left;
  margin: 0px 0px 0px 30px;
}

.el-form-item__content {
  display: flex;
  align-items: center;
}
</style>