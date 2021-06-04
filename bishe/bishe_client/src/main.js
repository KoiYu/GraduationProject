import Vue from 'vue';
// import ElementPlus from 'element-plus';
// import 'element-plus/lib/theme-chalk/index.css';
import ElementUI from 'element-ui';
import 'element-ui/lib/theme-chalk/index.css';
import App from './App.vue';
import router from './router';

// const app = createApp(App)
// app.use(ElementPlus)
// app.mount('#app')
Vue.use(ElementUI);

Vue.config.productionTip = false

new Vue({
    router,
    el: '#app',
    render: h => h(App)
}).$mount('#app')
