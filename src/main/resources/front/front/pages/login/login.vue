<template>
	<view class="content">
		<view class="box" :style='{"minHeight":"100vh","width":"100%","padding":"400rpx 24rpx 24rpx","background":"url(http://codegen.caihongy.cn/20231214/00b1632868ad4df5b6ac9b36b9a9a6c7.png) no-repeat center top / 100% auto,#fff","height":"auto"}'>
			<view :style='{"padding":"44rpx 44rpx 64rpx 24rpx","margin":"0 0 80rpx","borderRadius":"40rpx","alignItems":"flex-start","flexWrap":"wrap","background":"rgba(255,255,255,.6)","display":"flex","width":"100%","position":"relative","height":"auto"}'>
				<image :style='{"width":"160rpx","margin":"0 auto 24rpx auto","borderRadius":"8rpx","display":"none","height":"160rpx"}' src="http://codegen.caihongy.cn/20201114/7856ba26477849ea828f481fa2773a95.jpg" mode="aspectFill"></image>
				<view v-if="loginType==1" :style='{"padding":"0","margin":"0 0 24rpx 0","borderColor":"#349fbb","textAlign":"left","borderWidth":"0 0 2rpx","display":"flex","width":"100%","borderStyle":"solid","height":"76rpx"}' class="uni-form-item uni-column">
					<view :style='{"width":"160rpx","lineHeight":"76rpx","fontSize":"28rpx","color":"#666","textAlign":"right","fontWeight":"500"}' class="label">账号：</view>
					<input v-model="username" :style='{"border":"0","padding":"0px 24rpx","margin":"0px","color":"rgb(0, 0, 0)","borderRadius":"0px","flex":"1","background":"rgba(255,255,255,.6)","fontSize":"28rpx","height":"76rpx"}' type="text" class="uni-input" name="" placeholder="请输入账号" />
				</view>
				<view v-if="loginType==1" :style='{"padding":"0","margin":"0 0 24rpx 0","borderColor":"#349fbb","textAlign":"left","borderWidth":"0 0 2rpx","display":"flex","width":"100%","borderStyle":"solid","height":"76rpx"}' class="uni-form-item uni-column">
					<view :style='{"width":"160rpx","lineHeight":"76rpx","fontSize":"28rpx","color":"#666","textAlign":"right","fontWeight":"500"}' class="label">密码：</view>
					<input v-model="password" :style='{"border":"0","padding":"0px 24rpx","margin":"0px","color":"rgb(0, 0, 0)","borderRadius":"0px","flex":"1","background":"rgba(255,255,255,.6)","fontSize":"28rpx","height":"76rpx"}' type="password" class="uni-input" name="" placeholder="请输入密码" />
				</view>
				<view v-if="roleNum>1" :style='{"margin":"0 0 24rpx 0","borderColor":"#349fbb","textAlign":"left","borderWidth":"0 0 2rpx","display":"flex","width":"100%","borderStyle":"solid","height":"76rpx"}'>
					<view :style='{"width":"160rpx","lineHeight":"76rpx","fontSize":"28rpx","color":"#666","textAlign":"right","fontWeight":"500"}' class="label">用户类型：</view>
					<picker @change="optionsChange" :value="index" :range="options" :style='{"padding":"0 20rpx","color":"#888","borderRadius":"8rpx","background":"rgba(255,255,255,.6)","display":"inline-block","width":"calc(100% - 160rpx)","lineHeight":"76rpx","fontSize":"28rpx"}'>
						<view class="uni-picker-type">{{options[index]}}</view>
					</picker>
				</view>
				

				
				<button v-if="loginType==1" class="btn-submit" @tap="onLoginTap" type="primary" :style='{"border":"0","padding":"0px","margin":"48rpx auto 24rpx","color":"rgb(255, 255, 255)","borderRadius":"60rpx","background":"#76c4d8","width":"60%","lineHeight":"88rpx","fontSize":"32rpx","fontWeight":"600","height":"88rpx"}'>登录</button>
				<!-- #ifdef MP-WEIXIN -->
				<button v-if="loginType==1" class="btn-submit" open-type="getUserInfo" @getuserinfo="getUserInfo" type="primary" :style='{"border":"0","padding":"0px","margin":"0 auto 24rpx","color":"rgb(255, 255, 255)","borderRadius":"40rpx","background":"#27c654","width":"60%","lineHeight":"88rpx","fontSize":"32rpx","fontWeight":"600","height":"88rpx"}'>微信登录</button>
				<!-- #endif -->
				<button v-if="loginType==2" class="btn-submit" @tap="onFaceLoginTap" type="primary" :style='{"border":"0","padding":"0px","margin":"48rpx auto 24rpx","color":"rgb(255, 255, 255)","borderRadius":"60rpx","background":"#76c4d8","width":"60%","lineHeight":"88rpx","fontSize":"32rpx","fontWeight":"600","height":"88rpx"}'>人脸识别登录</button>
				<view class="links" :style='{"width":"100%","padding":"0","margin":"0 0 24rpx 0","flexWrap":"wrap","display":"flex","height":"auto"}'>
					<view class="link-highlight" @tap="onRegisterTap('huanzhe')" :style='{"padding":"0 0px","margin":"0 20rpx 20rpx 0","fontSize":"28rpx","color":"#349fbb"}'>注册</view>
				</view>
				
				<view class="idea1" :style='{"width":"100%","background":"red","display":"none","height":"80rpx"}'>idea1</view>
				<view class="idea2" :style='{"width":"100%","background":"red","display":"none","height":"80rpx"}'>idea2</view>
				<view class="idea3" :style='{"width":"100%","background":"red","display":"none","height":"80rpx"}'>idea3</view>
			</view>
		</view>
	</view>
</template>

<script>
	import menu from '@/utils/menu'
	export default {
		data() {
			return {
				username: '',
				password: '',
                loginType:1,
				codes: [{
				  num: 1,
				  color: '#000',
				  rotate: '10deg',
				  size: '16px'
				}, {
				  num: 2,
				  color: '#000',
				  rotate: '10deg',
				  size: '16px'
				}, {
				  num: 3,
				  color: '#000',
				  rotate: '10deg',
				  size: '16px'
				}, {
				  num: 4,
				  color: '#000',
				  rotate: '10deg',
				  size: '16px'
				}],
				options: [
					'请选择登录用户类型',
				],
                optionsValues: [
					'',
                    'huanzhe',
				],
				index: 0,
				roleNum:0,

				// #ifdef MP-WEIXIN
				code: '',
				// #endif
			}
		},
		onLoad() {
			let options = ['请选择登录用户类型'];
			let menus = menu.list();
			this.menuList = menus;
			for(let i=0;i<this.menuList.length;i++){
				if(this.menuList[i].hasFrontLogin=='是'){
					options.push(this.menuList[i].roleName);
					this.roleNum++;
				}
			}
			if(this.roleNum==1) {
				this.index = 1;
			}	
			this.options = options;
			this.styleChange()
		},
		onShow() {
			// #ifdef MP-WEIXIN
			let that = this
			uni.login({
				provider: 'weixin',
				success(res) {
					that.code = res.code
				}
			})
			// #endif
		},
		mounted() {
		},
		methods: {
			// #ifdef MP-WEIXIN
			async getUserInfo(e) {
				let that = this
				if (!this.optionsValues[this.index]) {
					this.$utils.msg('请选择登录用户类型')
					return
				}
				if (e.detail.errMsg === "getUserInfo:ok") {
					uni.showModal({
						content:'是否使用微信授权登录？',
						success:async (rs)=> {
							if(rs.confirm){
								let params = {
									code: that.code,
									encryptedData: e.detail.encryptedData,
									iv: e.detail.iv,
									rawData: e.detail.rawData,
									signature: e.detail.signature
								}
								let res = await that.$api.wxlogin(that.optionsValues[that.index], params)
								uni.removeStorageSync("useridTag");
								uni.setStorageSync("appToken", res.token);
								uni.setStorageSync("nickname", that.username);
								uni.setStorageSync("nowTable", `${that.optionsValues[that.index]}`);
								res = await that.$api.session(`${that.optionsValues[that.index]}`);
								if (res.data.touxiang) {
									uni.setStorageSync('headportrait', res.data.touxiang);
								} else if (res.data.headportrait) {
									uni.setStorageSync('headportrait', res.data.headportrait);
								}
								uni.setStorageSync('userSession',JSON.stringify(res.data))
								// 保存用户id
								uni.setStorageSync("appUserid", res.data.id);
								if (res.data.vip) {
									uni.setStorageSync("vip", res.data.vip);
								}
								uni.setStorageSync("appRole", `${that.options[that.index]}`);
								that.$utils.tab('../index/index');
							}
						}
					})
					
				}
			},
			// #endif
			styleChange() {
				this.$nextTick(()=>{
					// document.querySelectorAll('.uni-input .uni-input-input').forEach(el=>{
					//   el.style.backgroundColor = this.loginFrom.content.input.backgroundColor
					// })
				})
			},
			onRegisterTap(tableName) {
                uni.setStorageSync("loginTable", tableName);
				this.$utils.jump('../register/register')
			},
			async onLoginTap() {
                if (!this.username) {
					this.$utils.msg('请输入用户名')
					return
				}
                if (!this.password) {
					this.$utils.msg('请输入用户密码')
					return
				}
                if (!this.optionsValues[this.index]) {
					this.$utils.msg('请选择登录用户类型')
					return
				}

				this.loginPost()

			},
			async loginPost() {
				
				let res = await this.$api.login(`${this.optionsValues[this.index]}`, {
					username: this.username,
					password: this.password
				});
				uni.removeStorageSync("useridTag");
				uni.setStorageSync("appToken", res.token);
				uni.setStorageSync("nickname",this.username);
				uni.setStorageSync("nowTable", `${this.optionsValues[this.index]}`);
				res = await this.$api.session(`${this.optionsValues[this.index]}`);
				if(res.data.touxiang) {
				    uni.setStorageSync('headportrait', res.data.touxiang);
				} else if(res.data.headportrait) {
				    uni.setStorageSync('headportrait', res.data.headportrait);
				}
				uni.setStorageSync('userSession',JSON.stringify(res.data))
				// 保存用户id
				uni.setStorageSync("appUserid", res.data.id);
				if(res.data.vip) {
					uni.setStorageSync("vip", res.data.vip);
				}
				uni.setStorageSync("appRole", `${this.options[this.index]}`);
				this.$utils.tab('../index/index');
			},
			optionsChange(e) {
				this.index = e.target.value
			}
		}
	}
</script>

<style lang="scss" scoped>
	page {
		height: 100%;
	}
	
	.content {
		height: 100%;
		box-sizing: border-box;
	}
	
</style>
