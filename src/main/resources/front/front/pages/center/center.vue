<template>
	<view class="content">
		<view :style='{"minHeight":"100vh","width":"100%","padding":"24rpx","position":"relative","background":"#eefcff","height":"auto"}'>
			<view v-if="user&&user.id" :style='{"padding":"24rpx 24rpx","boxShadow":"0 2rpx 12rpx #76c4d850","margin":"0 0 80rpx 0","borderRadius":"60rpx","background":"#fff","display":"flex","width":"100%","position":"relative","height":"auto"}' @tap="onPageTap('../user-info/user-info')" class="header" v-bind:class="{'status':isH5Plus}">
				<view :style='{"alignContent":"center","padding":"0","margin":"0","alignItems":"center","flexWrap":"wrap","flex":"1","background":"none","display":"flex","width":"100%","height":"100%"}' v-if="tableName=='huanzhe'" class="userinfo">
					<image :style='{"width":"88rpx","padding":"0","margin":"0 20rpx 0 0","borderRadius":"100%","height":"88rpx"}' :src="user.touxiang?baseUrl+user.touxiang:'/static/gen/upload.png'"></image>
					<view :style='{"width":"240rpx","flex":"1","flexDirection":"column","justifyContent":"center","display":"flex"}' class="info">
						<view :style='{"width":"100%","lineHeight":"36rpx","fontSize":"28rpx","color":"#000"}'>{{user.huanzhezhanghao}}<text v-if="user.vip&& user.vip=='是'">(VIP)</text></view>
					</view>
					
					<view :style='{"width":"100%","margin":"20rpx 0 0","flexWrap":"wrap","flexDirection":"row","display":"flex"}' class="info">
					</view>
				</view>
				<view :style='{"alignContent":"center","padding":"0","margin":"0","alignItems":"center","flexWrap":"wrap","flex":"1","background":"none","display":"flex","width":"100%","height":"100%"}' v-if="tableName=='yisheng'" class="userinfo">
					<image :style='{"width":"88rpx","padding":"0","margin":"0 20rpx 0 0","borderRadius":"100%","height":"88rpx"}' :src="user.touxiang?baseUrl+user.touxiang:'/static/gen/upload.png'"></image>
					<view :style='{"width":"240rpx","flex":"1","flexDirection":"column","justifyContent":"center","display":"flex"}' class="info">
						<view :style='{"width":"100%","lineHeight":"36rpx","fontSize":"28rpx","color":"#000"}'>{{user.yishenggonghao}}<text v-if="user.vip&& user.vip=='是'">(VIP)</text></view>
						<view :style='{"overflow":"hidden","whiteSpace":"nowrap","color":"#888","width":"100%","lineHeight":"36rpx","fontSize":"28rpx","textOverflow":"ellipsis"}'>{{user.shhf}}</view>
					</view>
					
					<view :style='{"width":"100%","margin":"20rpx 0 0","flexWrap":"wrap","flexDirection":"row","display":"flex"}' class="info">
						<view :style='{"width":"auto","margin":"0 20rpx 20rpx 0","lineHeight":"36rpx","fontSize":"28rpx","color":"#888"}'>医生电话：{{user.yishengdianhua}}</view>
					</view>
				</view>
				<view :style='{"padding":"8rpx 20rpx","alignItems":"center","top":"24rpx","borderRadius":"16rpx","background":"none","display":"flex","width":"auto","position":"absolute","right":"24rpx","justifyContent":"center","height":"auto"}' class="setting">
					<text class="icon iconfont icon-qita6" :style='{"border":"0","margin":"0 6rpx 0 0","color":"#76c4d8","borderRadius":"0","display":"inline-block","width":"48rpx","lineHeight":"48rpx","fontSize":"48rpx"}'></text>
					<text :style='{"lineHeight":"2","fontSize":"28rpx","color":"#76c4d8","display":"inline-block"}'>设置</text>
				</view>
			</view>
			
			<view v-else :style='{"padding":"24rpx 24rpx","boxShadow":"0 2rpx 12rpx #76c4d850","margin":"0 0 80rpx 0","borderRadius":"60rpx","background":"#fff","display":"flex","width":"100%","position":"relative","height":"auto"}' @tap="loginClick" class="header" v-bind:class="{'status':isH5Plus}">
				<view :style='{"alignItems":"center","color":"#666","display":"flex","width":"100%","fontSize":"36rpx","justifyContent":"center","height":"100%"}'>登录/注册</view>
			</view>
			
			<view :style='{"width":"100%","background":"none","height":"auto"}' class="list">
				
				<view :style='{"width":"100%","padding":"10rpx 6rpx","margin":"40rpx 0 0","borderRadius":"16rpx","background":"none","height":"auto"}'>
					<view :style='{"padding":"0 20rpx","borderColor":"#76c4d8","margin":"0 auto","background":"url() no-repeat center bottom / 100% auto","borderWidth":"0 0 2rpx","display":"flex","width":"calc(100% - 40rpx)","lineHeight":"100rpx","borderStyle":"solid","justifyContent":"center","height":"80rpx"}'>
						<view :style='{"fontSize":"32rpx","lineHeight":"72rpx","color":"#76c4d8","fontWeight":"500"}'>我的服务</view>
					</view>
					<view :style='{"padding":"0 2% 0 0","margin":"40rpx 0 0","flexWrap":"wrap","flexDirection":"row","display":"flex","width":"100%","justifyContent":"flex-start","height":"auto"}'>
					
						<block v-for="item in menuList" v-bind:key="item.roleName">
							<block v-if="role==item.roleName" v-bind:key="menu.menu" v-for="(menu,index) in item.backMenu">
								<block v-bind:key="child.tableName" v-for=" (child,sort) in menu.child">
									<view :style='{"padding":"20rpx 4rpx","boxShadow":"2rpx 4rpx 16rpx #76c4d880","borderColor":"#e2e2e2","margin":"0 0 40rpx 3%","alignItems":"center","display":"flex","justifyContent":"center","borderRadius":"60rpx","flexWrap":"wrap","borderWidth":"0px","background":"#fff","width":"47%","borderStyle":"solid","height":"100%"}' v-if="child.tableName!='orders/已发货' && child.tableName!='orders/已退款' &&child.tableName!='orders/已取消' && child.tableName!='orders/未支付' && child.tableName!='orders/已支付' && child.tableName!='orders/已完成' && child.tableName!='exampaper' && child.tableName!='examquestion' " @tap="onPageTap('../'+child.tableName+'/list?userid='+user.id+'&menuJump='+child.menuJump)" class="li" hover-class="hover">
										<view :style='{"width":"100%","lineHeight":"1","fontSize":"64rpx","color":"#e2887e","textAlign":"center"}' :class="child.appFrontIcon"></view>
										<view :style='{"padding":"0 20rpx","margin":"10rpx 0 0","color":"#333","textAlign":"center","flex":"1","width":"100%","fontSize":"28rpx"}' class="text">{{child.menu}}</view>
										<view :style='{"width":"28rpx","lineHeight":"28rpx","fontSize":"28rpx","color":"#999","display":"none"}' class="icon iconfont icon-jinru"></view>
									</view>
								</block>
							</block>
						</block>
						
						
						<view @tap="onPageTap('../forum-my/forum-my')" :style='{"padding":"20rpx 4rpx","boxShadow":"2rpx 4rpx 16rpx #76c4d880","borderColor":"#e2e2e2","margin":"0 0 40rpx 3%","alignItems":"center","display":"flex","justifyContent":"center","borderRadius":"60rpx","flexWrap":"wrap","borderWidth":"0px","background":"#fff","width":"47%","borderStyle":"solid","height":"100%"}' class="li"
						 hover-class="hover">
							<view :style='{"width":"100%","lineHeight":"1","fontSize":"64rpx","color":"#e2887e","textAlign":"center"}' class="cuIcon-scan"></view>
							<view class="text" :style='{"padding":"0 20rpx","margin":"10rpx 0 0","color":"#333","textAlign":"center","flex":"1","width":"100%","fontSize":"28rpx"}'>我的发贴</view>
							<view :style='{"width":"28rpx","lineHeight":"28rpx","fontSize":"28rpx","color":"#999","display":"none"}' class="icon iconfont icon-jinru"></view>
						</view>
						<view @tap="onPageTap('../messages/list')" :style='{"padding":"20rpx 4rpx","boxShadow":"2rpx 4rpx 16rpx #76c4d880","borderColor":"#e2e2e2","margin":"0 0 40rpx 3%","alignItems":"center","display":"flex","justifyContent":"center","borderRadius":"60rpx","flexWrap":"wrap","borderWidth":"0px","background":"#fff","width":"47%","borderStyle":"solid","height":"100%"}' class="li" hover-class="hover">
							<view :style='{"width":"100%","lineHeight":"1","fontSize":"64rpx","color":"#e2887e","textAlign":"center"}' class="cuIcon-message"></view>
							<view class="text" :style='{"padding":"0 20rpx","margin":"10rpx 0 0","color":"#333","textAlign":"center","flex":"1","width":"100%","fontSize":"28rpx"}'>意见反馈</view>
							<view :style='{"width":"28rpx","lineHeight":"28rpx","fontSize":"28rpx","color":"#999","display":"none"}' class="icon iconfont icon-jinru"></view>
						</view>
						<view v-if="user&&user.id" @tap="passwordShow()" :style='{"padding":"20rpx 4rpx","boxShadow":"2rpx 4rpx 16rpx #76c4d880","borderColor":"#e2e2e2","margin":"0 0 40rpx 3%","alignItems":"center","display":"flex","justifyContent":"center","borderRadius":"60rpx","flexWrap":"wrap","borderWidth":"0px","background":"#fff","width":"47%","borderStyle":"solid","height":"100%"}' class="li" hover-class="hover">
							<view :style='{"width":"100%","lineHeight":"1","fontSize":"64rpx","color":"#e2887e","textAlign":"center"}' class="cuIcon-lock"></view>
							<view class="text" :style='{"padding":"0 20rpx","margin":"10rpx 0 0","color":"#333","textAlign":"center","flex":"1","width":"100%","fontSize":"28rpx"}'>修改密码</view>
							<view :style='{"width":"28rpx","lineHeight":"28rpx","fontSize":"28rpx","color":"#999","display":"none"}' class="icon iconfont icon-jinru"></view>
						</view>
					</view>
				</view>
			</view>
			
			<!-- 推荐 -->
			<view style="width: 100%;height: 80px"></view>
		</view>
		<uni-popup class="popup-content" ref="passwordPopup" type="bottom">
			<view class="passwordForm">
				<view class="passwordInput">
					<input type="password" v-model="passwordForm.mima" placeholder="原密码" />
				</view>
				<view class="passwordInput">
					<input type="password" v-model="passwordForm.newmima" placeholder="新密码" />
				</view>
				<view class="passwordInput">
					<input type="password" v-model="passwordForm.newmima1" placeholder="确认密码" />
				</view>
				<view class="passwordBtnView">
					<button class="passwordBtn" @click="updatePassword">更新</button>
				</view>
			</view>
		</uni-popup>
	</view>
</template>
<script>
	import menu from '@/utils/menu'
	export default {
		data() {
			return {
				isH5Plus: true,
				user: {},
				tableName:'',
				role: '',
				menuList: [],
				iconArr: [
				  'cuIcon-same',
				  'cuIcon-deliver',
				  'cuIcon-evaluate',
				  'cuIcon-shop',
				  'cuIcon-ticket',
				  'cuIcon-cascades',
				  'cuIcon-discover',
				  'cuIcon-question',
				  'cuIcon-pic',
				  'cuIcon-filter',
				  'cuIcon-footprint',
				  'cuIcon-pulldown',
				  'cuIcon-pullup',
				  'cuIcon-moreandroid',
				  'cuIcon-refund',
				  'cuIcon-qrcode',
				  'cuIcon-remind',
				  'cuIcon-profile',
				  'cuIcon-home',
				  'cuIcon-message',
				  'cuIcon-link',
				  'cuIcon-lock',
				  'cuIcon-unlock',
				  'cuIcon-vip',
				  'cuIcon-weibo',
				  'cuIcon-activity',
				  'cuIcon-friendadd',
				  'cuIcon-friendfamous',
				  'cuIcon-friend',
				  'cuIcon-goods',
				  'cuIcon-selection'
				],
				passwordForm: {
					mima: '',
					newmima: '',
					newmima1: '',
				},
			};
		},
		computed: {
			baseUrl() {
				return this.$base.url;
			},
		},
		async onLoad(){
			let menus = menu.list();
			this.menuList = menus;
			console.log(menus)
		},
		async onShow(){
            uni.removeStorageSync("useridTag");
			this.role = uni.getStorageSync("appRole");
			await this.getSession()
			this.getThumbsup()
			this.getStoreup()
			this.tableName = uni.getStorageSync("nowTable");
			let menus = menu.list();
			this.menuList = menus;
		},
		methods: {
			async getSession(){
				let table = uni.getStorageSync("nowTable");
				let res = await this.$api.session(table);
				this.user = res.data;
				this.$forceUpdate()
			},
			async getThumbsup(){
				if(!this.user||!this.user.id){
					return false
				}
				let res = await this.$api.page('storeup',{userid: this.user.id,type: 21})
				this.user.thumbsnum = Number(res.data.total)
				this.$forceUpdate()
			},
			async getStoreup(){
				if(!this.user||!this.user.id){
					return false
				}
				let res = await this.$api.page('storeup',{userid: this.user.id,type: 1})
				this.user.storenum = Number(res.data.total)
				this.$forceUpdate()
			},
			loginClick(){
				uni.navigateTo({
					url: '../login/login'
				});
			},
			onPageTap(url) {
                uni.setStorageSync("useridTag",1);
				uni.navigateTo({
					url: url,
					fail: function() {
						uni.switchTab({
							url: url
						});
					}
				});
			},
			recommendDetail(id) {
				uni.navigateTo({
					url: `../${this.recommendTable}/detail?id=${id}`,
					fail: function() {
						uni.switchTab({
							url: `../${this.recommendTable}/detail?id=${id}`
						});
					}
				});
			},
			passwordShow() {
				this.passwordForm = {
					mima: '',
					newmima: '',
					newmima1: '',
				}
				this.$forceUpdate()
				this.$refs.passwordPopup.open()
			},
			async updatePassword() {
				if (this.passwordForm.mima == ''){
					this.$utils.msg('原密码不能为空')
					return false
				}
				if (this.passwordForm.newmima == ''){
					this.$utils.msg('新密码不能为空')
					return false
				}
				if (this.passwordForm.newmima1 == ''){
					this.$utils.msg('确认密码不能为空')
					return false
				}
				let password = ''
				if (this.user.mima) {
					password = this.user.mima;
				} else if (this.user.password) {
					password = this.user.password;
				}
				let newpassword = this.passwordForm.mima
				if(password != newpassword){
					this.$utils.msg('原密码不正确')
					return false
				}
				if (this.passwordForm.newmima != this.passwordForm.newmima1){
					this.$utils.msg('两次密码不一致')
					return false
				}
				if (this.passwordForm.mima == this.passwordForm.newmima){
					this.$utils.msg('新密码与原密码相同！')
					return false
				}
				if (this.tableName == 'huanzhe') {
				}
				this.user.password = this.passwordForm.newmima
				this.user.mima = this.passwordForm.newmima
				await this.$api.update(this.tableName,this.user)
				this.$utils.msg('修改密码成功,下次登录系统生效')
				this.$refs.passwordPopup.close()
				this.getSession()
			},
		}
	}
</script>

<style lang="scss" scoped>
	.content {
		height: calc(100vh - 94px);
		box-sizing: border-box;
	}
	.passwordForm {
		width: 100%;
		padding: 10px 20px 60px;
		background: #fff;
	
		.passwordInput {
			background: #eee;
			margin: 0 0 10px;
			padding: 0 10px;
	
			input {
				height: 36px;
				line-height: 36px;
				font-size: 14px;
			}
		}
	
		.passwordBtnView {
			width: 100%;
			display: flex;
			align-items: center;
			justify-content: center;
			padding: 10px 0;
	
			.passwordBtn {
				padding: 0 20px;
				width: auto;
				height: 20px;
				line-height: 20px;
				font-size: 14px;
				color: #fff;
				background: #007aff;
				border: none;
				border-radius: 5px;
	
			}
		}
	}
</style>
