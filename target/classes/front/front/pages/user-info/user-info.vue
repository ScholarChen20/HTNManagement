<template>
<view class="content">
	<view class="box" :style='{"width":"100%","padding":"24rpx","position":"relative","background":"#eefcff","height":"100%"}'>
		<view :style='{"padding":"24rpx 48rpx 48rpx","boxShadow":"0 4rpx 12rpx #76c4d880","borderRadius":"60rpx","background":"#fff","display":"block","width":"100%","height":"auto"}'>
			<view :style='{"padding":"12rpx 0","margin":"0 0 24rpx 0","borderColor":"#76c4d8","alignItems":"center","borderWidth":"0 0 2rpx 0","display":"flex","width":"100%","borderStyle":"solid","height":"auto"}' v-if="tableName=='huanzhe'" class="">
				<view class="title" :style='{"padding":"0 20rpx 0 0","whiteSpace":"nowrap","color":"#9e9e9e","textAlign":"right","width":"auto","lineHeight":"80rpx","fontSize":"28rpx"}'>患者账号</view>
				<input :style='{"border":"0","padding":"0px 24rpx","margin":"0px","color":"rgb(0, 0, 0)","borderRadius":"8rpx","flex":"1","background":"rgba(255, 255, 255, 0)","fontSize":"28rpx","height":"80rpx"}' disabled="true"  v-model="ruleForm.huanzhezhanghao" placeholder="患者账号"></input>
			</view>
			<view :style='{"padding":"12rpx 0","margin":"0 0 24rpx 0","borderColor":"#76c4d8","alignItems":"center","borderWidth":"0 0 2rpx 0","display":"flex","width":"100%","borderStyle":"solid","height":"auto"}' v-if="tableName=='huanzhe'" class="">
				<view class="title" :style='{"padding":"0 20rpx 0 0","whiteSpace":"nowrap","color":"#9e9e9e","textAlign":"right","width":"auto","lineHeight":"80rpx","fontSize":"28rpx"}'>患者姓名</view>
				<input :style='{"border":"0","padding":"0px 24rpx","margin":"0px","color":"rgb(0, 0, 0)","borderRadius":"8rpx","flex":"1","background":"rgba(255, 255, 255, 0)","fontSize":"28rpx","height":"80rpx"}'   v-model="ruleForm.huanzhexingming" placeholder="患者姓名"></input>
			</view>
			<view :style='{"padding":"12rpx 0","margin":"0 0 24rpx 0","borderColor":"#76c4d8","alignItems":"center","borderWidth":"0 0 2rpx 0","display":"flex","width":"100%","borderStyle":"solid","height":"auto"}' v-if="tableName=='huanzhe'" class="">
				<view class="title" :style='{"padding":"0 20rpx 0 0","whiteSpace":"nowrap","color":"#9e9e9e","textAlign":"right","width":"auto","lineHeight":"80rpx","fontSize":"28rpx"}'>身份证</view>
				<input :style='{"border":"0","padding":"0px 24rpx","margin":"0px","color":"rgb(0, 0, 0)","borderRadius":"8rpx","flex":"1","background":"rgba(255, 255, 255, 0)","fontSize":"28rpx","height":"80rpx"}'   v-model="ruleForm.shenfenzheng" placeholder="身份证"></input>
			</view>
			<view v-if="tableName=='huanzhe'" :style='{"padding":"12rpx 0","margin":"0 0 24rpx 0","borderColor":"#76c4d8","alignItems":"center","borderWidth":"0 0 2rpx 0","display":"flex","width":"100%","borderStyle":"solid","height":"auto"}' class=" select">
				<view :style='{"padding":"0 20rpx 0 0","whiteSpace":"nowrap","color":"#9e9e9e","textAlign":"right","width":"auto","lineHeight":"80rpx","fontSize":"28rpx"}' class="title">性别</view>
				<picker :style='{"width":"100%","flex":"1","height":"auto"}'  @change="huanzhexingbieChange" :value="huanzhexingbieIndex" :range="huanzhexingbieOptions">
					<view :style='{"width":"100%","lineHeight":"80rpx","fontSize":"28rpx","color":"rgb(255, 170, 51)"}' class="uni-input picker-select-input">{{ruleForm.xingbie?ruleForm.xingbie:"请选择性别"}}</view>
				</picker>
			</view>
			<view :style='{"padding":"12rpx 0","margin":"0 0 24rpx 0","borderColor":"#76c4d8","alignItems":"center","borderWidth":"0 0 2rpx 0","display":"flex","width":"100%","borderStyle":"solid","height":"auto"}' v-if="tableName=='huanzhe'" class="">
				<view class="title" :style='{"padding":"0 20rpx 0 0","whiteSpace":"nowrap","color":"#9e9e9e","textAlign":"right","width":"auto","lineHeight":"80rpx","fontSize":"28rpx"}'>年龄</view>
				<input :style='{"border":"0","padding":"0px 24rpx","margin":"0px","color":"rgb(0, 0, 0)","borderRadius":"8rpx","flex":"1","background":"rgba(255, 255, 255, 0)","fontSize":"28rpx","height":"80rpx"}'   v-model="ruleForm.nianling" placeholder="年龄"></input>
			</view>
			<view :style='{"padding":"12rpx 0","margin":"0 0 24rpx 0","borderColor":"#76c4d8","alignItems":"center","borderWidth":"0 0 2rpx 0","display":"flex","width":"100%","borderStyle":"solid","height":"auto"}' v-if="tableName=='huanzhe'" class="">
				<view class="title" :style='{"padding":"0 20rpx 0 0","whiteSpace":"nowrap","color":"#9e9e9e","textAlign":"right","width":"auto","lineHeight":"80rpx","fontSize":"28rpx"}'>患者手机</view>
				<input :style='{"border":"0","padding":"0px 24rpx","margin":"0px","color":"rgb(0, 0, 0)","borderRadius":"8rpx","flex":"1","background":"rgba(255, 255, 255, 0)","fontSize":"28rpx","height":"80rpx"}'   v-model="ruleForm.huanzheshouji" placeholder="患者手机"></input>
			</view>
			<view :style='{"padding":"12rpx 0","margin":"0 0 24rpx 0","borderColor":"#76c4d8","alignItems":"center","borderWidth":"0 0 2rpx 0","display":"flex","width":"100%","borderStyle":"solid","height":"auto"}' v-if="tableName=='huanzhe'" @tap="huanzhetouxiangTap" class="">
				<view class="title" :style='{"padding":"0 20rpx 0 0","whiteSpace":"nowrap","color":"#9e9e9e","textAlign":"right","width":"auto","lineHeight":"80rpx","fontSize":"28rpx"}'>头像</view>
				<image :style='{"width":"80rpx","borderRadius":"100%","objectFit":"cover","display":"block","height":"80rpx"}' v-if="ruleForm.touxiang" style="margin: 0;" class="avator" :src="baseUrl+ruleForm.touxiang" mode=""></image>
				<image :style='{"width":"80rpx","borderRadius":"100%","objectFit":"cover","display":"block","height":"80rpx"}' v-else class="avator" style="margin: 0;" src="../../static/gen/upload.png" mode=""></image>
			</view>
			<view :style='{"padding":"12rpx 0","margin":"0 0 24rpx 0","borderColor":"#76c4d8","alignItems":"center","borderWidth":"0 0 2rpx 0","display":"flex","width":"100%","borderStyle":"solid","height":"auto"}' v-if="tableName=='yisheng'" class="">
				<view class="title" :style='{"padding":"0 20rpx 0 0","whiteSpace":"nowrap","color":"#9e9e9e","textAlign":"right","width":"auto","lineHeight":"80rpx","fontSize":"28rpx"}'>医生工号</view>
				<input :style='{"border":"0","padding":"0px 24rpx","margin":"0px","color":"rgb(0, 0, 0)","borderRadius":"8rpx","flex":"1","background":"rgba(255, 255, 255, 0)","fontSize":"28rpx","height":"80rpx"}' disabled="true"  v-model="ruleForm.yishenggonghao" placeholder="医生工号"></input>
			</view>
			<view :style='{"padding":"12rpx 0","margin":"0 0 24rpx 0","borderColor":"#76c4d8","alignItems":"center","borderWidth":"0 0 2rpx 0","display":"flex","width":"100%","borderStyle":"solid","height":"auto"}' v-if="tableName=='yisheng'" class="">
				<view class="title" :style='{"padding":"0 20rpx 0 0","whiteSpace":"nowrap","color":"#9e9e9e","textAlign":"right","width":"auto","lineHeight":"80rpx","fontSize":"28rpx"}'>医生姓名</view>
				<input :style='{"border":"0","padding":"0px 24rpx","margin":"0px","color":"rgb(0, 0, 0)","borderRadius":"8rpx","flex":"1","background":"rgba(255, 255, 255, 0)","fontSize":"28rpx","height":"80rpx"}'   v-model="ruleForm.yishengxingming" placeholder="医生姓名"></input>
			</view>
			<view v-if="tableName=='yisheng'" :style='{"padding":"12rpx 0","margin":"0 0 24rpx 0","borderColor":"#76c4d8","alignItems":"center","borderWidth":"0 0 2rpx 0","display":"flex","width":"100%","borderStyle":"solid","height":"auto"}' class=" select">
				<view :style='{"padding":"0 20rpx 0 0","whiteSpace":"nowrap","color":"#9e9e9e","textAlign":"right","width":"auto","lineHeight":"80rpx","fontSize":"28rpx"}' class="title">性别</view>
				<picker :style='{"width":"100%","flex":"1","height":"auto"}'  @change="yishengxingbieChange" :value="yishengxingbieIndex" :range="yishengxingbieOptions">
					<view :style='{"width":"100%","lineHeight":"80rpx","fontSize":"28rpx","color":"rgb(255, 170, 51)"}' class="uni-input picker-select-input">{{ruleForm.xingbie?ruleForm.xingbie:"请选择性别"}}</view>
				</picker>
			</view>
			<view :style='{"padding":"12rpx 0","margin":"0 0 24rpx 0","borderColor":"#76c4d8","alignItems":"center","borderWidth":"0 0 2rpx 0","display":"flex","width":"100%","borderStyle":"solid","height":"auto"}' v-if="tableName=='yisheng'" class="">
				<view class="title" :style='{"padding":"0 20rpx 0 0","whiteSpace":"nowrap","color":"#9e9e9e","textAlign":"right","width":"auto","lineHeight":"80rpx","fontSize":"28rpx"}'>医龄</view>
				<input :style='{"border":"0","padding":"0px 24rpx","margin":"0px","color":"rgb(0, 0, 0)","borderRadius":"8rpx","flex":"1","background":"rgba(255, 255, 255, 0)","fontSize":"28rpx","height":"80rpx"}'   v-model="ruleForm.yiling" placeholder="医龄"></input>
			</view>
			<view :style='{"padding":"12rpx 0","margin":"0 0 24rpx 0","borderColor":"#76c4d8","alignItems":"center","borderWidth":"0 0 2rpx 0","display":"flex","width":"100%","borderStyle":"solid","height":"auto"}' v-if="tableName=='yisheng'" class="">
				<view class="title" :style='{"padding":"0 20rpx 0 0","whiteSpace":"nowrap","color":"#9e9e9e","textAlign":"right","width":"auto","lineHeight":"80rpx","fontSize":"28rpx"}'>医生电话</view>
				<input :style='{"border":"0","padding":"0px 24rpx","margin":"0px","color":"rgb(0, 0, 0)","borderRadius":"8rpx","flex":"1","background":"rgba(255, 255, 255, 0)","fontSize":"28rpx","height":"80rpx"}'   v-model="ruleForm.yishengdianhua" placeholder="医生电话"></input>
			</view>
			<view :style='{"padding":"12rpx 0","margin":"0 0 24rpx 0","borderColor":"#76c4d8","alignItems":"center","borderWidth":"0 0 2rpx 0","display":"flex","width":"100%","borderStyle":"solid","height":"auto"}' v-if="tableName=='yisheng'" @tap="yishengtouxiangTap" class="">
				<view class="title" :style='{"padding":"0 20rpx 0 0","whiteSpace":"nowrap","color":"#9e9e9e","textAlign":"right","width":"auto","lineHeight":"80rpx","fontSize":"28rpx"}'>头像</view>
				<image :style='{"width":"80rpx","borderRadius":"100%","objectFit":"cover","display":"block","height":"80rpx"}' v-if="ruleForm.touxiang" style="margin: 0;" class="avator" :src="baseUrl+ruleForm.touxiang" mode=""></image>
				<image :style='{"width":"80rpx","borderRadius":"100%","objectFit":"cover","display":"block","height":"80rpx"}' v-else class="avator" style="margin: 0;" src="../../static/gen/upload.png" mode=""></image>
			</view>
			<view :style='{"padding":"12rpx 0","margin":"0 0 24rpx 0","borderColor":"#76c4d8","alignItems":"center","borderWidth":"0 0 2rpx 0","display":"flex","width":"100%","borderStyle":"solid","height":"auto"}' v-if="tableName=='yisheng'" @tap="yishengyishizigezhengTap" class="">
				<view class="title" :style='{"padding":"0 20rpx 0 0","whiteSpace":"nowrap","color":"#9e9e9e","textAlign":"right","width":"auto","lineHeight":"80rpx","fontSize":"28rpx"}'>医师资格证</view>
				<input :style='{"border":"0","padding":"0px 24rpx","margin":"0px","color":"rgb(0, 0, 0)","borderRadius":"8rpx","flex":"1","background":"rgba(255, 255, 255, 0)","fontSize":"28rpx","height":"80rpx"}' v-if="ruleForm.yishizigezheng" v-model="ruleForm.yishizigezheng" placeholder="医师资格证"></input>
				<image :style='{"width":"80rpx","borderRadius":"100%","objectFit":"cover","display":"block","height":"80rpx"}' v-else class="avator" src="../../static/gen/upload.png" mode=""></image>
			</view>
			<view :style='{"padding":"12rpx 0","margin":"0 0 24rpx 0","borderColor":"#76c4d8","alignItems":"center","borderWidth":"0 0 2rpx 0","display":"flex","width":"100%","borderStyle":"solid","height":"auto"}' v-if="tableName=='yisheng'" class="">
				<view :style='{"padding":"0 20rpx 0 0","whiteSpace":"nowrap","color":"#9e9e9e","textAlign":"right","width":"auto","lineHeight":"80rpx","fontSize":"28rpx"}' class="title">医生简介</view>
                <xia-editor ref="editor" :style='{"border":"2rpx solid #76c4d8","minHeight":"400rpx","width":"100%","padding":"20rpx","height":"auto"}' v-model="ruleForm.yishengjianjie" placeholder="医生简介" @editorChange="yishengjianjieChange"></xia-editor>
			</view>
			<view :style='{"width":"100%","flexWrap":"wrap","justifyContent":"center","display":"flex","height":"auto"}' class="btn">
				<!-- #ifdef MP-WEIXIN -->
				<button open-type="getUserInfo" @getuserinfo="getUserInfo" class="cu-btn lg" :style='{"border":"0","padding":"0px","margin":"0 20rpx 40rpx","color":"rgb(255, 255, 255)","borderRadius":"60rpx","background":"#76c4d8","width":"100%","lineHeight":"80rpx","fontSize":"28rpx","height":"80rpx"}'>{{ruleForm.openid?'解绑':'绑定'}}微信</button>
				<!-- #endif -->
				<button @tap="update()" class="cu-btn lg" :style='{"border":"0","padding":"0px","margin":"0 20rpx 40rpx","color":"rgb(255, 255, 255)","borderRadius":"60rpx","background":"#76c4d8","width":"100%","lineHeight":"80rpx","fontSize":"28rpx","height":"80rpx"}'>保存</button>
				<button @tap="logout()" class="cu-btn lg" :style='{"border":"0px solid rgb(255, 170, 51)","padding":"0px","margin":"0 20rpx","color":"#333","borderRadius":"60rpx","background":"#76c4d830","width":"100%","lineHeight":"80rpx","fontSize":"28rpx","height":"80rpx"}'>退出登录</button>
			</view>
		</view>
	</view>
</view>
</template>

<script>

    import xiaEditor from '@/components/xia-editor/xia-editor';
    import multipleSelect from "@/components/momo-multipleSelect/momo-multipleSelect";
	export default {
		data() {
			return {
				ruleForm: {
				},
				tableName:"",
				huanzhexingbieOptions: [],
				huanzhexingbieIndex: 0,
				yishengxingbieOptions: [],
				yishengxingbieIndex: 0,
				// #ifdef MP-WEIXIN
				code: '',
				// #endif
			}
		},
        components: {
            multipleSelect,
			xiaEditor
        },
		computed: {
			baseUrl() {
				return this.$base.url;
			}
		},
		async onLoad() {
			let table = uni.getStorageSync("nowTable");
			let that = this
			let res = {}
			this.tableName = table;
			this.getSession()
			// 自定义下拉框值
			if(this.tableName=='huanzhe'){
				this.huanzhexingbieOptions = "男,女".split(',');
				this.huanzhexingbieOptions.forEach((item, index) => {
					if(item==this.ruleForm.xingbie) {
						this.huanzhexingbieIndex = index;
					}
				});
			}
			// 自定义下拉框值
			if(this.tableName=='yisheng'){
				this.yishengxingbieOptions = "男,女".split(',');
				this.yishengxingbieOptions.forEach((item, index) => {
					if(item==this.ruleForm.xingbie) {
						this.yishengxingbieIndex = index;
					}
				});
			}
			// #ifdef MP-WEIXIN
			uni.login({
				provider: 'weixin',
				success(res) {
					that.code = res.code
				}
			})
			// #endif
			this.styleChange()
            this.$forceUpdate()
		},
		methods: {
			// #ifdef MP-WEIXIN
			async getUserInfo(e) {
				let that = this
				if (e.detail.errMsg === "getUserInfo:ok") {
					if(that.ruleForm.openid){
						uni.showModal({
							title: '提示',
							content: '是否解绑微信？',
							success:async (rs)=> {
								if(rs.confirm){
									let res = await that.$api.wxunbind(that.tableName)
									if(res.code==0) that.$utils.msg('解绑成功，可以再次绑定其他账号')
									that.getSession()
								}
							}
						})
						return false
					}
					uni.showModal({
						title: '提示',
						content: '是否绑定微信？',
						success:async (rs)=> {
							if(rs.confirm){
								let params = {
									code: that.code,
									encryptedData: e.detail.encryptedData,
									iv: e.detail.iv,
									rawData: e.detail.rawData,
									signature: e.detail.signature
								}
								let res = await that.$api.wxbind(that.tableName, params)
								if(res.code==0) that.$utils.msg('绑定成功，下次登录可使用微信登录')
								that.getSession()
							}
						}
					})
					
				}
			},
			// #endif
			async getSession(){
				let res = await this.$api.session(this.tableName)
				this.ruleForm = res.data;
				uni.setStorageSync('userSession',JSON.stringify(res.data))
			},
            // 下拉变化
            huanzhexingbieChange(e) {
                    this.huanzhexingbieIndex = e.target.value
                    this.ruleForm.xingbie = this.huanzhexingbieOptions[this.huanzhexingbieIndex]
            },
			huanzhetouxiangTap() {
				let _this = this;
				this.$api.upload(function(res) {
					_this.ruleForm.touxiang = 'upload/' + res.file;
					_this.$forceUpdate();
				});
			},
            // 下拉变化
            yishengxingbieChange(e) {
                    this.yishengxingbieIndex = e.target.value
                    this.ruleForm.xingbie = this.yishengxingbieOptions[this.yishengxingbieIndex]
            },
			yishengtouxiangTap() {
				let _this = this;
				this.$api.upload(function(res) {
					_this.ruleForm.touxiang = 'upload/' + res.file;
					_this.$forceUpdate();
				});
			},
            yishengjianjieChange(e) {
                this.ruleForm.yishengjianjie = e
            },
			yishengyishizigezhengTap() {
				let _this = this;
				this.$api.upload(function(res) {
					_this.ruleForm.yishizigezheng = 'upload/' + res.file;
					_this.$forceUpdate();
				});
			},

            toggleTab(str) {
                this.$refs[str].show();
            },

			styleChange() {
				this.$nextTick(()=>{
					// document.querySelectorAll('. .uni-input-input').forEach(el=>{
					//   el.style.backgroundColor = this.userInfoForm.list.input.backgroundColor
					// })
				})
			},
			// 获取uuid
			getUUID () {
				return new Date().getTime();
			},
			logout() {
				uni.clearStorageSync()
				this.$utils.jump('../login/login');
			},
			// 注册
			async update() {

				if((!this.ruleForm.huanzhezhanghao) && `huanzhe` == this.tableName){
					this.$utils.msg(`患者账号不能为空`);
					return
				}

				if((!this.ruleForm.mima) && `huanzhe` == this.tableName){
					this.$utils.msg(`密码不能为空`);
					return
				}


				if(`huanzhe` == this.tableName && this.ruleForm.shenfenzheng&&(!this.$validate.checkIdCard(this.ruleForm.shenfenzheng))){
					this.$utils.msg(`身份证应输入身份证格式`);
					return
				}


				if(`huanzhe` == this.tableName && this.ruleForm.nianling&&(!this.$validate.isIntNumer(this.ruleForm.nianling))){
					this.$utils.msg(`年龄应输入整数`);
					return
				}






				if((!this.ruleForm.yishenggonghao) && `yisheng` == this.tableName){
					this.$utils.msg(`医生工号不能为空`);
					return
				}

				if((!this.ruleForm.mima) && `yisheng` == this.tableName){
					this.$utils.msg(`密码不能为空`);
					return
				}




				if(`yisheng` == this.tableName && this.ruleForm.yishengdianhua&&(!this.$validate.isMobile(this.ruleForm.yishengdianhua))){
					this.$utils.msg(`医生电话应输入手机格式`);
					return
				}



				if((!this.ruleForm.yishizigezheng) && `yisheng` == this.tableName){
					this.$utils.msg(`医师资格证不能为空`);
					return
				}





				let table = uni.getStorageSync("nowTable");
				await this.$api.update(table, this.ruleForm);
				this.$utils.msgBack('修改成功');;
				this.getSession()
			},

		}
	}
</script>

<style lang="scss" scoped>
	.content {
		min-height: calc(100vh - 44px);
		box-sizing: border-box;
	}
</style>
