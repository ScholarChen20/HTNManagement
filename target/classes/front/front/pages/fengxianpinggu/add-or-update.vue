<template>
<view class="content">
	<view :style='{"minHeight":"100vh","width":"100%","padding":"24rpx 24rpx 80rpx","position":"relative","background":"#eefcff","height":"auto"}'>
		<form :style='{"padding":"24rpx 48rpx","boxShadow":"0 4rpx 12rpx #76c4d880","borderRadius":"60rpx","background":"#fff","display":"block","width":"100%","height":"auto"}' class="app-update-pv">
			<view :style='{"padding":"12rpx 0","margin":"0 0 24rpx 0","borderColor":"#76c4d8","alignItems":"center","borderWidth":"0 0 2rpx 0","display":"flex","width":"100%","borderStyle":"solid","height":"auto"}' class="">
				<view :style='{"width":"auto","padding":"0 20rpx 0 0","lineHeight":"80rpx","fontSize":"28rpx","color":"#333","textAlign":"right"}' class="title">患者账号:</view>
				<input :style='{"border":"0","padding":"0px 24rpx","margin":"0px","color":"rgb(0, 0, 0)","borderRadius":"8rpx","flex":"1","background":"rgba(255, 255, 255, 0)","fontSize":"28rpx","height":"80rpx"}' :disabled="ro.huanzhezhanghao" v-model="ruleForm.huanzhezhanghao" placeholder="患者账号"  type="text"></input>
			</view>
			<view :style='{"padding":"12rpx 0","margin":"0 0 24rpx 0","borderColor":"#76c4d8","alignItems":"center","borderWidth":"0 0 2rpx 0","display":"flex","width":"100%","borderStyle":"solid","height":"auto"}' class="">
				<view :style='{"width":"auto","padding":"0 20rpx 0 0","lineHeight":"80rpx","fontSize":"28rpx","color":"#333","textAlign":"right"}' class="title">患者姓名:</view>
				<input :style='{"border":"0","padding":"0px 24rpx","margin":"0px","color":"rgb(0, 0, 0)","borderRadius":"8rpx","flex":"1","background":"rgba(255, 255, 255, 0)","fontSize":"28rpx","height":"80rpx"}' :disabled="ro.huanzhexingming" v-model="ruleForm.huanzhexingming" placeholder="患者姓名"  type="text"></input>
			</view>
			<view :style='{"padding":"12rpx 0","margin":"0 0 24rpx 0","borderColor":"#76c4d8","alignItems":"center","borderWidth":"0 0 2rpx 0","display":"flex","width":"100%","borderStyle":"solid","height":"auto"}' class="">
				<view :style='{"width":"auto","padding":"0 20rpx 0 0","lineHeight":"80rpx","fontSize":"28rpx","color":"#333","textAlign":"right"}' class="title">参考模型:</view>
			    <view @tap="linkOthers()" class="text" :style='{"border":"0","padding":"0px 24rpx","margin":"0px","color":"rgb(0, 0, 0)","borderRadius":"8rpx","flex":"1","background":"rgba(255, 255, 255, 0)","fontSize":"28rpx","height":"80rpx"}'>{{url}}</view>
			</view>
			<view :style='{"padding":"12rpx 0","margin":"0 0 24rpx 0","borderColor":"#76c4d8","alignItems":"center","borderWidth":"0 0 2rpx 0","display":"flex","width":"100%","borderStyle":"solid","height":"auto"}' class="">
				<view :style='{"width":"auto","padding":"0 20rpx 0 0","lineHeight":"80rpx","fontSize":"28rpx","color":"#333","textAlign":"right"}' class="title">身高(m):</view>
				<input :style='{"border":"0","padding":"0px 24rpx","margin":"0px","color":"rgb(0, 0, 0)","borderRadius":"8rpx","flex":"1","background":"rgba(255, 255, 255, 0)","fontSize":"28rpx","height":"80rpx"}' :disabled="ro.shengao" v-model.number="ruleForm.shengao" placeholder="身高(m)" type="digit"></input>
			</view>
			<view :style='{"padding":"12rpx 0","margin":"0 0 24rpx 0","borderColor":"#76c4d8","alignItems":"center","borderWidth":"0 0 2rpx 0","display":"flex","width":"100%","borderStyle":"solid","height":"auto"}' class="">
				<view :style='{"width":"auto","padding":"0 20rpx 0 0","lineHeight":"80rpx","fontSize":"28rpx","color":"#333","textAlign":"right"}' class="title">体重(kg):</view>
				<input :style='{"border":"0","padding":"0px 24rpx","margin":"0px","color":"rgb(0, 0, 0)","borderRadius":"8rpx","flex":"1","background":"rgba(255, 255, 255, 0)","fontSize":"28rpx","height":"80rpx"}' :disabled="ro.tizhong" v-model.number="ruleForm.tizhong" placeholder="体重(kg)" type="digit"></input>
			</view>
			<view :style='{"padding":"12rpx 0","margin":"0 0 24rpx 0","borderColor":"#76c4d8","alignItems":"center","borderWidth":"0 0 2rpx 0","display":"flex","width":"100%","borderStyle":"solid","height":"auto"}' class="">
				<view :style='{"width":"auto","padding":"0 20rpx 0 0","lineHeight":"80rpx","fontSize":"28rpx","color":"#333","textAlign":"right"}' class="title">BMI:</view>
				<input :style='{"border":"0","padding":"0px 24rpx","margin":"0px","color":"rgb(0, 0, 0)","borderRadius":"8rpx","flex":"1","background":"rgba(255, 255, 255, 0)","fontSize":"28rpx","height":"80rpx"}' disabled v-model="bmi" placeholder="bmi"></input>
			</view>
			<view :style='{"padding":"12rpx 0","margin":"0 0 24rpx 0","borderColor":"#76c4d8","alignItems":"center","borderWidth":"0 0 2rpx 0","display":"flex","width":"100%","borderStyle":"solid","height":"auto"}' class="">
				<view :style='{"width":"auto","padding":"0 20rpx 0 0","lineHeight":"80rpx","fontSize":"28rpx","color":"#333","textAlign":"right"}' class="title">风险结果:</view>
				<input :style='{"border":"0","padding":"0px 24rpx","margin":"0px","color":"rgb(0, 0, 0)","borderRadius":"8rpx","flex":"1","background":"rgba(255, 255, 255, 0)","fontSize":"28rpx","height":"80rpx"}' :disabled="ro.result" v-model="ruleForm.result" placeholder="风险层次%"></input>
			</view>
			<view :style='{"padding":"12rpx 0","margin":"0 0 24rpx 0","borderColor":"#76c4d8","alignItems":"center","borderWidth":"0 0 2rpx 0","display":"flex","width":"100%","borderStyle":"solid","height":"auto"}' class=" select">
				<view :style='{"width":"auto","padding":"0 20rpx 0 0","lineHeight":"80rpx","fontSize":"28rpx","color":"#333","textAlign":"right"}' class="title">登记日期:</view>
				<picker  :disabled="ro.dengjiriqi" :style='{"width":"100%","flex":"1","height":"auto"}' mode="date" :value="ruleForm.dengjiriqi" @change="dengjiriqiChange">
					<view :style='{"width":"100%","lineHeight":"80rpx","fontSize":"28rpx","color":"rgb(255, 170, 51)"}' class="uni-input">{{ruleForm.dengjiriqi?ruleForm.dengjiriqi:"请选择登记日期"}}</view>
				</picker>
			</view>
 

			
			<view :style='{"width":"100%","flexWrap":"wrap","justifyContent":"space-between","display":"flex","height":"auto"}' class="btn" >
				<button :style='{"border":"0","padding":"0px","margin":"0 0 40rpx","color":"rgb(255, 255, 255)","borderRadius":"60rpx","background":"#76c4d8","width":"100%","lineHeight":"80rpx","fontSize":"28rpx","height":"80rpx"}' @tap="onSubmitTap" class="bg-red">提交</button>
			</view>
		</form>

	</view>
</view>
</template>

<script>
	import wPicker from "@/components/w-picker/w-picker.vue";
    import xiaEditor from '@/components/xia-editor/xia-editor';
    import multipleSelect from "@/components/momo-multipleSelect/momo-multipleSelect";
	export default {
		data() {
			return {
				url:"https://m.medsci.cn/scale/show.do?id=6349233927",
				cross:'',
				ruleForm: {
				huanzhezhanghao: '',
				huanzhexingming: '',
				xingbie: '',
				nianling: '',
				shousuoya: '',
				shengao: '',
				tizhong: '',
				bmi: '',
				result:'',
				xueqingdanguchun: '',
			        shifouxiyan: '否' ,
			        shifouhejiu: '否' ,
				dengjiriqi: '',
				},
				xingbieOptions: [],
				xingbieIndex: 0,
				shifouxiyanOptions: [],
				shifouxiyanIndex: 0,
				shifouhejiuOptions: [],
				shifouhejiuIndex: 0,
				// 登录用户信息
				user: {},
                ro:{
                   huanzhezhanghao : false,
                   huanzhexingming : false,
                   xingbie : false,
                   nianling : false,
                   shousuoya : false,
                   shengao : false,
                   tizhong : false,
                   bmi : false,
				   result : false,
                   xueqingdanguchun : false,
                   shifouxiyan : false,
                   shifouhejiu : false,
                   dengjiriqi : false,
                },
			}
		},
		components: {
			wPicker,
            xiaEditor,
            multipleSelect,
		},
		computed: {
			bmi : {
				get: function () {
					let c = this.ruleForm
					let a = c.tizhong/(c.shengao*c.shengao)
					this.ruleForm.bmi = a?Number(a).toFixed(2):0
					return a?Number(a).toFixed(2):0
				}
				
			},
			baseUrl() {
				return this.$base.url;
			},



		},
		async onLoad(options) {
            this.ruleForm.dengjiriqi = this.$utils.getCurDate();
			let table = uni.getStorageSync("nowTable");
			// 获取用户信息
			let res = await this.$api.session(table);
			this.user = res.data;
			
			// ss读取
			this.ruleForm.huanzhezhanghao = this.user.huanzhezhanghao
			this.ro.huanzhezhanghao = true;
			this.ruleForm.huanzhexingming = this.user.huanzhexingming
			this.ro.huanzhexingming = true;


			// 自定义下拉框值
			this.xingbieOptions = "男,女".split(',')
			// 自定义下拉框值
			this.shifouxiyanOptions = "是,否".split(',')
			// 自定义下拉框值
			this.shifouhejiuOptions = "是,否".split(',')

			// 如果有登录，获取登录后保存的userid
			this.ruleForm.userid = uni.getStorageSync("appUserid")
			if (options.refid) {
				// 如果上一级页面传递了refid，获取改refid数据信息
				this.ruleForm.refid = Number(options.refid);
				this.ruleForm.nickname = uni.getStorageSync("nickname");
			}
			// 如果是更新操作
			if (options.id) {
				this.ruleForm.id = options.id;
				// 获取信息
				res = await this.$api.info(`fengxianpinggu`, this.ruleForm.id);
				this.ruleForm = res.data;
				console.log(res.data);
			}
			
			// 跨表
			// this.cross = options.cross;
			// if(options.cross){
			// 	var obj = uni.getStorageSync('crossObj');
			// 	for (var o in obj){
			// 		if(o=='huanzhezhanghao'){
			// 		this.ruleForm.huanzhezhanghao = obj[o];
			// 		this.ro.huanzhezhanghao = true;
			// 		continue;
			// 		}
			// 		if(o=='huanzhexingming'){
			// 		this.ruleForm.huanzhexingming = obj[o];
			// 		this.ro.huanzhexingming = true;
			// 		continue;
			// 		}
			// 		if(o=='xingbie'){
			// 		this.ruleForm.xingbie = obj[o];
			// 		this.ro.xingbie = true;
			// 		continue;
			// 		}
			// 		if(o=='nianling'){
			// 		this.ruleForm.nianling = obj[o];
			// 		this.ro.nianling = true;
			// 		continue;
			// 		}
			// 		if(o=='shousuoya'){
			// 		this.ruleForm.shousuoya = obj[o];
			// 		this.ro.shousuoya = true;
			// 		continue;
			// 		}
			// 		if(o=='shengao'){
			// 		this.ruleForm.shengao = obj[o];
			// 		this.ro.shengao = true;
			// 		continue;
			// 		}
			// 		if(o=='tizhong'){
			// 		this.ruleForm.tizhong = obj[o];
			// 		this.ro.tizhong = true;
			// 		continue;
			// 		}
			// 		if(o=='bmi'){
			// 		this.ruleForm.bmi = obj[o];
			// 		this.ro.bmi = true;
			// 		continue;
			// 		}
			// 		if(o=='xueqingdanguchun'){
			// 		this.ruleForm.xueqingdanguchun = obj[o];
			// 		this.ro.xueqingdanguchun = true;
			// 		continue;
			// 		}
			// 		if(o=='shifouxiyan'){
			// 		this.ruleForm.shifouxiyan = obj[o];
			// 		this.ro.shifouxiyan = true;
			// 		continue;
			// 		}
			// 		if(o=='shifouhejiu'){
			// 		this.ruleForm.shifouhejiu = obj[o];
			// 		this.ro.shifouhejiu = true;
			// 		continue;
			// 		}
			// 		if(o=='dengjiriqi'){
			// 		this.ruleForm.dengjiriqi = obj[o];
			// 		this.ro.dengjiriqi = true;
			// 		continue;
			// 		}
			// 	}
			// }
			// this.styleChange()
   //          this.$forceUpdate()
			
			// if (uni.getStorageSync('raffleType') && uni.getStorageSync('raffleType') != null) {
			// 	uni.removeStorageSync('raffleType')
			// 	setTimeout(() => {
			// 		this.onSubmitTap()
			// 	}, 300)
			// }
		},
		methods: {
			styleChange() {
				this.$nextTick(()=>{
					// document.querySelectorAll('.app-update-pv . .uni-input-input').forEach(el=>{
					//   el.style.backgroundColor = this.addUpdateForm.input.content.backgroundColor
					// })
				})
			},
			linkOthers() {
			    //#ifdef H5
			    window.location.href = 'https://m.medsci.cn/scale/show.do?id=6349233927';
			    //#endif
			    //#ifdef MP-WEIXIN
			    uni.navigateTo({
			        // 此处的链接为小程序上面新建的webview页面路径，参数url为要跳转外链的地址
			        url:"/common/linkOthers/linkOthers?url=" + encodeURIComponent('https://m.medsci.cn/scale/show.do?id=6349233927')
			    });
			    //#endif
			    //#ifdef APP-PLUS
			    plus.runtime.openURL(url)
			    //#endif
			},
			linkClick(){
			    window.location.href = "https://m.medsci.cn/scale/show.do?id=6349233927";
			  },
			// 多级联动参数

			dengjiriqiChange(e) {
				this.ruleForm.dengjiriqi = e.target.value;
				this.$forceUpdate();
			},


			// 下拉变化
			xingbieChange(e) {
				this.xingbieIndex = e.target.value
				this.ruleForm.xingbie = this.xingbieOptions[this.xingbieIndex]
			},
			// 下拉变化
			shifouxiyanChange(e) {
				this.shifouxiyanIndex = e.target.value
				this.ruleForm.shifouxiyan = this.shifouxiyanOptions[this.shifouxiyanIndex]
			},
			// 下拉变化
			shifouhejiuChange(e) {
				this.shifouhejiuIndex = e.target.value
				this.ruleForm.shifouhejiu = this.shifouhejiuOptions[this.shifouhejiuIndex]
			},


			getUUID () {
				return new Date().getTime();
			},
			async onSubmitTap() {
				if(this.ruleForm.bmi==0){
					this.$utils.msg('bmi不能为空')
					return false
				}
//跨表计算判断
				var obj;
				if(this.ruleForm.nianling&&(!this.$validate.isIntNumer(this.ruleForm.nianling))){
					this.$utils.msg(`年龄应输入整数`);
					return
				}
				if(this.ruleForm.shousuoya&&(!this.$validate.isNumber(this.ruleForm.shousuoya))){
					this.$utils.msg(`收缩压应输入数字`);
					return
				}
				if(this.ruleForm.shengao&&(!this.$validate.isNumber(this.ruleForm.shengao))){
					this.$utils.msg(`身高(m)应输入数字`);
					return
				}
				if(this.ruleForm.tizhong&&(!this.$validate.isNumber(this.ruleForm.tizhong))){
					this.$utils.msg(`体重(kg)应输入数字`);
					return
				}
				if(this.ruleForm.bmi&&(!this.$validate.isNumber(this.ruleForm.bmi))){
					this.$utils.msg(`bmi应输入数字`);
					return
				}
				if(this.ruleForm.xueqingdanguchun&&(!this.$validate.isNumber(this.ruleForm.xueqingdanguchun))){
					this.$utils.msg(`血清胆固醇应输入数字`);
					return
				}
				if((!this.ruleForm.shifouxiyan)){
					this.$utils.msg(`是否吸烟不能为空`);
					return
				}
				if((!this.ruleForm.shifouhejiu)){
					this.$utils.msg(`是否喝酒不能为空`);
					return
				}
				if(this.ruleForm.id){
					await this.$api.update(`fengxianpinggu`, this.ruleForm);
				  }else{
					await this.$api.add(`fengxianpinggu`, this.ruleForm);
				   }
				 this.$utils.msgBack('提交成功');
				},
			// 	//更新跨表属性
			// 	var crossuserid;
			// 	var crossrefid;
			// 	var crossoptnum;
			// 	if(this.cross){
   //                  uni.setStorageSync('crossCleanType',true);
			// 		var statusColumnName = uni.getStorageSync('statusColumnName');
			// 		var statusColumnValue = uni.getStorageSync('statusColumnValue');
			// 		if(statusColumnName!='') {
   //                      if(!obj) {
			// 			    obj = uni.getStorageSync('crossObj');
   //                      }
			// 			if(!statusColumnName.startsWith("[")) {
			// 				for (var o in obj){
			// 					if(o==statusColumnName){
			// 						obj[o] = statusColumnValue;
			// 					}

			// 				}
			// 				var table = uni.getStorageSync('crossTable');
			// 				await this.$api.update(`${table}`, obj);
			// 			} else {
			// 			       crossuserid=Number(uni.getStorageSync('appUserid'));
			// 			       crossrefid=obj['id'];
			// 			       crossoptnum=uni.getStorageSync('statusColumnName');
			// 			       crossoptnum=crossoptnum.replace(/\[/,"").replace(/\]/,"");
			// 			}
			// 		}
			// 	}
			// 	if(crossrefid && crossuserid) {
			// 		this.ruleForm.crossuserid=crossuserid;
			// 		this.ruleForm.crossrefid=crossrefid;
			// 		let params = {
			// 			page: 1,
			// 			limit:10,
			// 			crossuserid:crossuserid,
			// 			crossrefid:crossrefid,
			// 		}
			// 		let res = await this.$api.list(`fengxianpinggu`, params);
			// 		if (res.data.total >= crossoptnum) {
			// 			this.$utils.msg(uni.getStorageSync('tips'));
   //                      uni.removeStorageSync('crossCleanType');
			// 			return false;
			// 		} else {
   //              //跨表计算
			// 			if(this.ruleForm.id){
			// 				await this.$api.update(`fengxianpinggu`, this.ruleForm);
			// 			}else{
			// 				await this.$api.add(`fengxianpinggu`, this.ruleForm);
			// 			}
			// 			this.$utils.msgBack('提交成功');
			// 		}
			// 	} else {
   //              //跨表计算
			// 		if(this.ruleForm.id){
			// 			await this.$api.update(`fengxianpinggu`, this.ruleForm);
			// 		}else{
			// 			await this.$api.add(`fengxianpinggu`, this.ruleForm);
			// 		}
			// 		this.$utils.msgBack('提交成功');
			// 	}
			optionsChange(e) {
				this.index = e.target.value
			},
			bindDateChange(e) {
				this.date = e.target.value
			},
			getDate(type) {
				const date = new Date();
				let year = date.getFullYear();
				let month = date.getMonth() + 1;
				let day = date.getDate();
				if (type === 'start') {
					year = year - 60;
				} else if (type === 'end') {
					year = year + 2;
				}
				month = month > 9 ? month : '0' + month;;
				day = day > 9 ? day : '0' + day;
				return `${year}-${month}-${day}`;
			},
			toggleTab(str) {
				if(this.ro[str]){
					return false
				}
				this.$refs[str].show();
			}
		}
	}
</script>

<style lang="scss" scoped>
	.content {
		min-height: calc(100vh - 44px);
		box-sizing: border-box;
	}
</style>
