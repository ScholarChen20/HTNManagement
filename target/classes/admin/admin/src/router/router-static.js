import Vue from 'vue';
//配置路由
import VueRouter from 'vue-router'
Vue.use(VueRouter);
//1.创建组件
import Index from '@/views/index'
import Home from '@/views/home'
import Login from '@/views/login'
import NotFound from '@/views/404'
import UpdatePassword from '@/views/update-password'
import pay from '@/views/pay'
import register from '@/views/register'
import center from '@/views/center'
    import news from '@/views/modules/news/list'
    import aboutus from '@/views/modules/aboutus/list'
    import huanzhe from '@/views/modules/huanzhe/list'
    import pingguliangbiao from '@/views/modules/pingguliangbiao/list'
    import keshi from '@/views/modules/keshi/list'
    import discusskepuwenzhang from '@/views/modules/discusskepuwenzhang/list'
    import kepuwenzhang from '@/views/modules/kepuwenzhang/list'
    import menu from '@/views/modules/menu/list'
    import storeup from '@/views/modules/storeup/list'
    import fengxianjieguo from '@/views/modules/fengxianjieguo/list'
    import forum from '@/views/modules/forum/list'
    import yongyaozhidao from '@/views/modules/yongyaozhidao/list'
    import systemintro from '@/views/modules/systemintro/list'
    import yongyaoqingkuangjianhu from '@/views/modules/yongyaoqingkuangjianhu/list'
    import fengxianpinggu from '@/views/modules/fengxianpinggu/list'
    import jiankangzhidao from '@/views/modules/jiankangzhidao/list'
    import yuyueyisheng from '@/views/modules/yuyueyisheng/list'
    import messages from '@/views/modules/messages/list'
    import jiankangzhidaojianhu from '@/views/modules/jiankangzhidaojianhu/list'
    import yisheng from '@/views/modules/yisheng/list'
    import zuozhenyisheng from '@/views/modules/zuozhenyisheng/list'
    import config from '@/views/modules/config/list'
    import xueyashujujianhu from '@/views/modules/xueyashujujianhu/list'
    import newstype from '@/views/modules/newstype/list'


//2.配置路由   注意：名字
export const routes = [{
    path: '/',
    name: '系统首页',
    component: Index,
    children: [{
      // 这里不设置值，是把main作为默认页面
      path: '/',
      name: '系统首页',
      component: Home,
      meta: {icon:'', title:'center', affix: true}
    }, {
      path: '/updatePassword',
      name: '修改密码',
      component: UpdatePassword,
      meta: {icon:'', title:'updatePassword'}
    }, {
      path: '/pay',
      name: '支付',
      component: pay,
      meta: {icon:'', title:'pay'}
    }, {
      path: '/center',
      name: '个人信息',
      component: center,
      meta: {icon:'', title:'center'}
    }
      ,{
	path: '/news',
        name: '系统通知',
        component: news
      }
      ,{
	path: '/aboutus',
        name: '关于我们',
        component: aboutus
      }
      ,{
	path: '/huanzhe',
        name: '患者',
        component: huanzhe
      }
      ,{
	path: '/pingguliangbiao',
        name: '评估量表',
        component: pingguliangbiao
      }
      ,{
	path: '/keshi',
        name: '科室',
        component: keshi
      }
      ,{
	path: '/discusskepuwenzhang',
        name: '科普文章评论',
        component: discusskepuwenzhang
      }
      ,{
	path: '/kepuwenzhang',
        name: '科普文章',
        component: kepuwenzhang
      }
      ,{
	path: '/menu',
        name: '菜单列表',
        component: menu
      }
      ,{
	path: '/storeup',
        name: '我的收藏',
        component: storeup
      }
      ,{
	path: '/fengxianjieguo',
        name: '风险结果',
        component: fengxianjieguo
      }
      ,{
	path: '/forum',
        name: '患者论坛',
        component: forum
      }
      ,{
	path: '/yongyaozhidao',
        name: '用药指导',
        component: yongyaozhidao
      }
      ,{
	path: '/systemintro',
        name: '系统简介',
        component: systemintro
      }
      ,{
	path: '/yongyaoqingkuangjianhu',
        name: '用药情况监护',
        component: yongyaoqingkuangjianhu
      }
      ,{
	path: '/fengxianpinggu',
        name: '风险评估',
        component: fengxianpinggu
      }
      ,{
	path: '/jiankangzhidao',
        name: '健康指导',
        component: jiankangzhidao
      }
      ,{
	path: '/yuyueyisheng',
        name: '预约医生',
        component: yuyueyisheng
      }
      ,{
	path: '/messages',
        name: '意见反馈',
        component: messages
      }
      ,{
	path: '/jiankangzhidaojianhu',
        name: '健康指导监护',
        component: jiankangzhidaojianhu
      }
      ,{
	path: '/yisheng',
        name: '医生',
        component: yisheng
      }
      ,{
	path: '/zuozhenyisheng',
        name: '坐诊医生',
        component: zuozhenyisheng
      }
      ,{
	path: '/config',
        name: '轮播图管理',
        component: config
      }
      ,{
	path: '/xueyashujujianhu',
        name: '血压数据监护',
        component: xueyashujujianhu
      }
      ,{
	path: '/newstype',
        name: '系统通知分类',
        component: newstype
      }
    ]
  },
  {
    path: '/login',
    name: 'login',
    component: Login,
    meta: {icon:'', title:'login'}
  },
  {
    path: '/register',
    name: 'register',
    component: register,
    meta: {icon:'', title:'register'}
  },
  {
    path: '*',
    component: NotFound
  }
]
//3.实例化VueRouter  注意：名字
const router = new VueRouter({
  mode: 'hash',
  /*hash模式改为history*/
  routes // （缩写）相当于 routes: routes
})
const originalPush = VueRouter.prototype.push
//修改原型对象中的push方法
VueRouter.prototype.push = function push(location) {
   return originalPush.call(this, location).catch(err => err)
}
export default router;
