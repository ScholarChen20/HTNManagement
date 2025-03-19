
<template>
<view>
<mescroll-uni @init="mescrollInit" :up="upOption" :down="downOption" @down="downCallback" @up="upCallback">
	<view class="content">
		<view class="container" :style='{"minHeight":"100vh","width":"100%","padding":"24rpx 24rpx 24rpx","position":"relative","background":"#eefcff","height":"auto"}'>
						<swiper :style='{"padding":"24rpx 0","boxShadow":"0 -8rpx 8rpx #76c4d850","borderRadius":"40rpx 40rpx 0 0","textAlign":"center","background":"#fff","width":"100%","height":"248rpx","zIndex":"9"}' class="swiper" :indicator-dots='false' :autoplay='true' :circular='false' indicator-active-color='#000000' indicator-color='rgba(0, 0, 0, .3)' :duration='500' :interval='6000' :vertical='false'>
				<swiper-item :style='{"width":"100%","borderRadius":"100%","background":"none","height":"100%"}' v-for="(swiper,index) in swiperList" :key="index">
					<image :style='{"margin":"0 auto","objectFit":"cover","borderRadius":"100%","background":"none","display":"block","width":"200rpx","height":"200rpx"}' mode="aspectFill" v-if="swiper.substring(0,4)=='http'" :src="swiper"></image>
					<image :style='{"margin":"0 auto","objectFit":"cover","borderRadius":"100%","background":"none","display":"block","width":"200rpx","height":"200rpx"}' mode="aspectFill" v-else :src="baseUrl+swiper"></image>
				</swiper-item>
			</swiper>
												            <view :style='{"padding":"0","margin":"0 0 0","flexWrap":"wrap","background":"none","display":"flex","width":"100%","position":"relative","justifyContent":"space-between","height":"auto"}' class="detail-content">

				<view :style='{"padding":"0 24rpx","margin":"0","borderColor":"#76c4d8","borderRadius":"0","borderWidth":"0 0 0px 0","background":"#fff","display":"flex","width":"100%","borderStyle":"solid","height":"auto"}' class="detail-list-item title">
					<view :style='{"padding":"0 20rpx 0 0","borderColor":"#76c4d8","whiteSpace":"nowrap","color":"#333","borderRadius":"0","textAlign":"right","borderWidth":"0 0 2rpx","width":"auto","lineHeight":"80rpx","fontSize":"28rpx","borderStyle":"solid"}' class="lable">医生姓名：</view>
					<view :style='{"padding":"16rpx 0 0","wordBreak":"break-all","margin":"0px","borderColor":"#76c4d8","color":"#666","borderWidth":"0 0 2rpx","flex":"1","lineHeight":"48rpx","fontSize":"28rpx","borderStyle":"solid"}' class="text">{{detail.yishengxingming}}</view>
				</view>

				<view class="detail-list-item" :style='{"padding":"0 24rpx","margin":"0","borderColor":"#76c4d8","borderRadius":"0","borderWidth":"0 0 0px 0","background":"#fff","display":"flex","width":"100%","borderStyle":"solid","height":"auto"}'>
					<view class="lable" :style='{"padding":"0 20rpx 0 0","borderColor":"#76c4d8","whiteSpace":"nowrap","color":"#333","borderRadius":"0","textAlign":"right","borderWidth":"0 0 2rpx","width":"auto","lineHeight":"80rpx","fontSize":"28rpx","borderStyle":"solid"}'>医生工号：</view>
					<view  class="text" :style='{"padding":"16rpx 0 0","wordBreak":"break-all","margin":"0px","borderColor":"#76c4d8","color":"#666","borderWidth":"0 0 2rpx","flex":"1","lineHeight":"48rpx","fontSize":"28rpx","borderStyle":"solid"}'>{{detail.yishenggonghao}}</view>
				</view>
				<view class="detail-list-item" :style='{"padding":"0 24rpx","margin":"0","borderColor":"#76c4d8","borderRadius":"0","borderWidth":"0 0 0px 0","background":"#fff","display":"flex","width":"100%","borderStyle":"solid","height":"auto"}'>
					<view class="lable" :style='{"padding":"0 20rpx 0 0","borderColor":"#76c4d8","whiteSpace":"nowrap","color":"#333","borderRadius":"0","textAlign":"right","borderWidth":"0 0 2rpx","width":"auto","lineHeight":"80rpx","fontSize":"28rpx","borderStyle":"solid"}'>性别：</view>
					<view  class="text" :style='{"padding":"16rpx 0 0","wordBreak":"break-all","margin":"0px","borderColor":"#76c4d8","color":"#666","borderWidth":"0 0 2rpx","flex":"1","lineHeight":"48rpx","fontSize":"28rpx","borderStyle":"solid"}'>{{detail.xingbie}}</view>
				</view>
				<view class="detail-list-item" :style='{"padding":"0 24rpx","margin":"0","borderColor":"#76c4d8","borderRadius":"0","borderWidth":"0 0 0px 0","background":"#fff","display":"flex","width":"100%","borderStyle":"solid","height":"auto"}'>
					<view class="lable" :style='{"padding":"0 20rpx 0 0","borderColor":"#76c4d8","whiteSpace":"nowrap","color":"#333","borderRadius":"0","textAlign":"right","borderWidth":"0 0 2rpx","width":"auto","lineHeight":"80rpx","fontSize":"28rpx","borderStyle":"solid"}'>医龄：</view>
					<view  class="text" :style='{"padding":"16rpx 0 0","wordBreak":"break-all","margin":"0px","borderColor":"#76c4d8","color":"#666","borderWidth":"0 0 2rpx","flex":"1","lineHeight":"48rpx","fontSize":"28rpx","borderStyle":"solid"}'>{{detail.yiling}}</view>
				</view>
				<view class="detail-list-item" :style='{"padding":"0 24rpx","margin":"0","borderColor":"#76c4d8","borderRadius":"0","borderWidth":"0 0 0px 0","background":"#fff","display":"flex","width":"100%","borderStyle":"solid","height":"auto"}'>
					<view class="lable" :style='{"padding":"0 20rpx 0 0","borderColor":"#76c4d8","whiteSpace":"nowrap","color":"#333","borderRadius":"0","textAlign":"right","borderWidth":"0 0 2rpx","width":"auto","lineHeight":"80rpx","fontSize":"28rpx","borderStyle":"solid"}'>医生电话：</view>
					<view style="text-decoration: underline" @tap="callClick(detail.yishengdianhua)"  class="text" :style='{"padding":"16rpx 0 0","wordBreak":"break-all","margin":"0px","borderColor":"#76c4d8","color":"#666","borderWidth":"0 0 2rpx","flex":"1","lineHeight":"48rpx","fontSize":"28rpx","borderStyle":"solid"}'>{{detail.yishengdianhua}}</view>
				</view>
				<view :style='{"padding":"0 24rpx","margin":"0","borderColor":"#76c4d8","borderRadius":"0","borderWidth":"0 0 0px 0","background":"#fff","display":"flex","width":"100%","borderStyle":"solid","height":"auto"}' class="detail-list-item" @tap="download(detail.yishizigezheng)" >
					<view class="lable" :style='{"padding":"0 20rpx 0 0","borderColor":"#76c4d8","whiteSpace":"nowrap","color":"#333","borderRadius":"0","textAlign":"right","borderWidth":"0 0 2rpx","width":"auto","lineHeight":"80rpx","fontSize":"28rpx","borderStyle":"solid"}'>医师资格证：</view>
					<view class="text" :style='{"padding":"16rpx 0 0","wordBreak":"break-all","margin":"0px","borderColor":"#76c4d8","color":"#666","borderWidth":"0 0 2rpx","flex":"1","lineHeight":"48rpx","fontSize":"28rpx","borderStyle":"solid"}'>下载文件</view>
				</view>




				<view v-if="userid" class="detail-list-item" :style='{"padding":"0 24rpx","margin":"0","borderColor":"#76c4d8","borderRadius":"0","borderWidth":"0 0 0px 0","background":"#fff","display":"flex","width":"100%","borderStyle":"solid","height":"auto"}'>
					<view class="lable" :style='{"padding":"0 20rpx 0 0","borderColor":"#76c4d8","whiteSpace":"nowrap","color":"#333","borderRadius":"0","textAlign":"right","borderWidth":"0 0 2rpx","width":"auto","lineHeight":"80rpx","fontSize":"28rpx","borderStyle":"solid"}'>审核状态：</view>
					<view v-if="detail.sfsh=='是'" class="text" :style='{"padding":"16rpx 0 0","wordBreak":"break-all","margin":"0px","borderColor":"#76c4d8","color":"#666","borderWidth":"0 0 2rpx","flex":"1","lineHeight":"48rpx","fontSize":"28rpx","borderStyle":"solid"}'>通过</view>
					<view v-if="detail.sfsh=='否'" class="text" :style='{"padding":"16rpx 0 0","wordBreak":"break-all","margin":"0px","borderColor":"#76c4d8","color":"#666","borderWidth":"0 0 2rpx","flex":"1","lineHeight":"48rpx","fontSize":"28rpx","borderStyle":"solid"}'>不通过</view>
					<view v-if="detail.sfsh=='待审核'" class="text" :style='{"padding":"16rpx 0 0","wordBreak":"break-all","margin":"0px","borderColor":"#76c4d8","color":"#666","borderWidth":"0 0 2rpx","flex":"1","lineHeight":"48rpx","fontSize":"28rpx","borderStyle":"solid"}'>待审核</view>
				</view>
				<view v-if="userid" class="detail-list-item" :style='{"padding":"0 24rpx","margin":"0","borderColor":"#76c4d8","borderRadius":"0","borderWidth":"0 0 0px 0","background":"#fff","display":"flex","width":"100%","borderStyle":"solid","height":"auto"}'>
					<view class="lable" :style='{"padding":"0 20rpx 0 0","borderColor":"#76c4d8","whiteSpace":"nowrap","color":"#333","borderRadius":"0","textAlign":"right","borderWidth":"0 0 2rpx","width":"auto","lineHeight":"80rpx","fontSize":"28rpx","borderStyle":"solid"}'>审核回复</view>
					<view class="text" :style='{"padding":"16rpx 0 0","wordBreak":"break-all","margin":"0px","borderColor":"#76c4d8","color":"#666","borderWidth":"0 0 2rpx","flex":"1","lineHeight":"48rpx","fontSize":"28rpx","borderStyle":"solid"}'>{{detail.shhf}}</view>
				</view>

				<view class="detail-list-item rich" :style='{"padding":"24rpx","boxShadow":"0 8rpx 8rpx #76c4d820","margin":"0 0 24rpx 0","borderColor":"#d8d8d8","borderRadius":"0 0 40rpx 40rpx","borderWidth":"0 0 0px 0","background":"#fff","display":"flex","width":"100%","borderStyle":"solid","height":"auto"}'>
					<view class="lable" :style='{"padding":"0 20rpx 0 0","whiteSpace":"nowrap","color":"#333","textAlign":"right","width":"auto","lineHeight":"48rpx","fontSize":"28rpx"}'>医生简介：</view>
					<view class="rich-text" :style='{"padding":"0px 24rpx 24rpx 0","wordBreak":"break-all","margin":"0","lineHeight":"48rpx","color":"#666","flex":"1"}'>
						<rich-text :nodes="detail.yishengjianjie"></rich-text>
					</view>
				</view>



				<view class="bottom-content bg-white tabbar border shop" :style='{"padding":"24rpx 0","margin":"0 auto","borderRadius":"0","flexWrap":"wrap","background":"none","display":"flex","width":"100%","height":"auto","order":"2"}'>

					<button :style='{"border":"0","padding":"0 20rpx","margin":"0 3% 20rpx 0","color":"rgb(255, 255, 255)","borderRadius":"60rpx","background":"#76c4d8","width":"auto","fontSize":"28rpx","minWidth":"21%","lineHeight":"80rpx","height":"80rpx"}' v-if="userid&&isAuth('yisheng','排班')" @tap="onAcrossTap('zuozhenyisheng','是','','','')" class="cu-btn bg-brown round shadow-blur" >排班</button>
					<button :style='{"border":"0","padding":"0 20rpx","margin":"0 3% 20rpx 0","color":"rgb(255, 255, 255)","borderRadius":"60rpx","background":"#76c4d8","width":"auto","fontSize":"28rpx","minWidth":"21%","lineHeight":"80rpx","height":"80rpx"}' v-if="!userid&&isAuthFront('yisheng','排班')" @tap="onAcrossTap('zuozhenyisheng','是','','','')" class="cu-btn bg-brown round shadow-blur" >排班</button>
					<button :style='{"border":"0","padding":"0 20rpx","margin":"0 3% 20rpx 0","color":"rgb(255, 255, 255)","borderRadius":"60rpx","background":"#76c4d8","width":"auto","fontSize":"28rpx","minWidth":"20%","lineHeight":"80rpx","height":"80rpx"}' v-if="userid&&isAuth('yisheng','审核')" @tap="onSHTap">审核</button>
					<button :style='{"border":"0","padding":"0 20rpx","margin":"0 3% 20rpx 0","color":"rgb(255, 255, 255)","borderRadius":"60rpx","background":"#76c4d8","width":"auto","fontSize":"28rpx","minWidth":"20%","lineHeight":"80rpx","height":"80rpx"}' v-if="!userid&&isAuthFront('yisheng','审核')" @tap="onSHTap">审核</button>
					
				</view>
			</view>
		</view>
		<!-- 确认完成弹窗 -->
		<uni-popup class="popup-content" ref="popup" type="center">
			<form class="popup-form" style="background: #fff;width: 300px;display: block;border-radius: 10px;padding: 20px;text-align: center;">
				<view class=" margin-top">
					<picker @change="sfshChange" :value="sfshIndex" :range="sfshOptions">
						<view class="uni-input">{{detail.sfsh?detail.sfsh:'选择审核结果'}}</view>
					</picker>
				</view>
				<view class="">
					<!-- <view class="title">审核回复</view> -->
					<textarea style="width: 200px;" v-model="detail.shhf" placeholder="审核回复"></textarea>
					<!-- <input v-model="douyinId" placeholder="审核回复" name="input"></input> -->
				</view>
				<view class="btn-content">
					<button style="margin: 0 10px" @tap="onCloseWinTap" class="cu-btn bg-cyan">取消</button>
					<button style="margin: 0 10px" @tap="onFinishTap" class="cu-btn bg-red">确认</button>
				</view>
			</form>
		</uni-popup>
	</view>
</mescroll-uni>
</view>
</template>

<script>
	export default {
		data() {
			return {
				btnColor: ['#409eff','#67c23a','#909399','#e6a23c','#f56c6c','#356c6c','#351c6c','#f093a9','#a7c23a','#104eff','#10441f','#a21233','#503319'],
				id: '',
                userid: '',
				detail: {},
				swiperList: [],
				commentList: [],
				mescroll: null, //mescroll实例对象
				downOption: {
					auto: false //是否在初始化后,自动执行下拉回调callback; 默认true
				},
				upOption: {
					noMoreSize: 3, //如果列表已无数据,可设置列表的总数量要大于半页才显示无更多数据;避免列表数据过少(比如只有一条数据),显示无更多数据会不好看; 默认5
					textNoMore: '~ 没有更多了 ~',
				},
				hasNext: true,
				user: {},
				sfshIndex: -1,
				sfshOptions: ['通过','不通过', '待审核'],
				count: 0,
				timer: null,
				title:'',
			}
		},
		components: {
		},
		computed: {
			baseUrl() {
				return this.$base.url;
			},
		},
		async onLoad(options) {
			// #ifdef APP-PLUS
			let page = getCurrentPages()
			this.href = this.baseUrl + 'front/h5/#/' + page[page.length - 1].route
			// #endif
			let table = uni.getStorageSync("nowTable");
			// 获取用户信息
			let res = await this.$api.session(table);
			this.user = res.data;
			this.id = options.id;
            if(options.userid) {
                this.userid = options.userid;
            }
			// 渲染数据
			this.init();
		},
		// #ifdef MP-WEIXIN
		onShareAppMessage(){
			var obj = {
				title: this.title,
				imageUrl: this.swiperList[0]?this.baseUrl + this.swiperList[0]: ''
			}
			return obj
		},
		// #endif
        onUnload() {
            if(this.timer) {
                clearInterval(this.timer);
            }
        },
		async onShow(options) {
			let table = uni.getStorageSync("nowTable");
			// 获取用户信息
			let res = await this.$api.session(table);
			this.user = res.data;
			this.btnColor = this.btnColor.sort(()=> {
				return (0.5-Math.random());
			});
			let crossCleanType = uni.getStorageSync('crossCleanType')
            if(crossCleanType) {
				uni.removeStorageSync('crossCleanType')
                res = await this.$api.info('yisheng', this.id);
                this.detail = res.data;
				this.title = this.detail.yishengxingming
            }
		},
		destroyed: function() {
			//window.clearInterval(this.inter);
		},
		methods: {
			// 拨打电话
			callClick(row){
				uni.makePhoneCall({
					phoneNumber: row
				})
			},
			// 支付
			onPayTap(){
				let that = this
				if(!this.user){
					this.$utils.msg("请先登录")
					setTimeout(()=>{
						that.$utils.jump('../login/login')
					},1500)
					return false
				}
                if(this.detail.sfsh!='是') {
                	this.$utils.msg("请审核通过后再操作");
                	return
                }
				uni.setStorageSync('paytable','yisheng');
				uni.setStorageSync('payObject',this.detail);
				this.$utils.jump('../pay-confirm/pay-confirm?type=1')
			},
            onDetailTap(item) {
                uni.setStorageSync("useridTag",this.userid);
                this.$utils.jump(`./detail?id=${item.id}&userid=`+this.userid)
            },
			// 跨表
			async onAcrossTap(tableName,crossOptAudit,crossOptPay,statusColumnName,tips,statusColumnValue,type=1){
				let that = this
				if(!this.user){
					this.$utils.msg("请先登录")
					setTimeout(()=>{
						that.$utils.jump('../login/login')
					},1500)
					return false
				}
				if(crossOptAudit=='是'&&this.detail.sfsh!='是') {
					this.$utils.msg("请审核通过后再操作");
					return
				}
				uni.setStorageSync('crossTable','yisheng');
				uni.setStorageSync(`crossObj`, this.detail);
				uni.setStorageSync(`statusColumnName`, statusColumnName);
				uni.setStorageSync(`statusColumnValue`, statusColumnValue);
				uni.setStorageSync(`tips`, tips);
				if(statusColumnName!=''&&!statusColumnName.startsWith("[")) {
					var obj = uni.getStorageSync('crossObj');
					for (var o in obj){
						if(o==statusColumnName && obj[o]==statusColumnValue){
							this.$utils.msg(tips);
							return
						}
					}
				}
				this.$utils.jump(`../${tableName}/add-or-update?cross=true`);
			},
			// 获取详情
			async init(type=1){
                if(this.timer) {
                    clearInterval(this.timer);
                }
				let res = await this.$api.info('yisheng', this.id);
				this.detail = res.data;

				this.title = this.detail.yishengxingming
				// 轮播图片
				this.swiperList = this.detail.touxiang ? this.detail.touxiang.split(",") : [];
				

				//修改富文本的图片样式
				this.detail.yishengjianjie = this.detail.yishengjianjie.replace(/img src/gi,"img style=\"width:100%;\" src");
				if(type==2){
					this.detail.discussnum++
					await this.$api.update('yisheng',this.detail)
				}
			},
			// mescroll组件初始化的回调,可获取到mescroll对象
			mescrollInit(mescroll) {
				this.mescroll = mescroll;
			},

			/*下拉刷新的回调 */
			downCallback(mescroll) {
				this.hasNext = true
				mescroll.resetUpScroll()
			},

			/*上拉加载的回调: mescroll携带page的参数, 其中num:当前页 从1开始, size:每页数据条数,默认10 */
			async upCallback(mescroll) {
				mescroll.endSuccess(mescroll.size, this.hasNext);

            },



			onChatTap() {
				this.$utils.jump('../chat/chat')
			},
			// 下载
			download(url){
				let _this = this;
				url=_this.$base.url +  url;
				uni.downloadFile({
					url: url,
					success: (res) => {
						if (res.statusCode === 200) {
							_this.$utils.msg('下载成功');
							 window.open(url);
						}
					}
				});
			},
			//
			onCartTabTap() {
				this.$utils.tab('../shop-cart/shop-cart')
			},
			onSHTap() {
				if(this.detail.sfsh=='是'||this.detail.sfsh=='否') {
				    this.$utils.msg('已审核完成');
				    return;
				}
				this.$refs.popup.open()
			},
			// 完成审核
			async onFinishTap() {
				if(!this.detail.sfsh){
					this.$utils.msg('请选择审核状态');
					return
				}
				if(!this.detail.shhf){
					this.$utils.msg('请填写审核回复');
					return
				}
				if(this.detail.sfsh=="通过"){
					this.detail.sfsh = '是'
				}
				if(this.detail.sfsh=="不通过"){
					this.detail.sfsh = '否'
				}
				if(this.detail.sfsh=="待审核"){
					this.detail.sfsh = '待审核'
				}
				await this.$api.update('yisheng', this.detail);
				this.$utils.msg('审核成功');
				this.$refs.popup.close();
			},
			// 关闭窗口
			onCloseWinTap() {
				this.$refs.popup.close()
			},
			sfshChange(e){
				this.sfshIndex = e.target.value
				this.detail.sfsh = this.sfshOptions[this.sfshIndex]
			},
		}
	}
</script>

<style lang="scss">
	page {
	  --animate-duration: 1s;
	  --animate-delay: 1s;
	  --animate-repeat: 1;
	}
	
	.content {
		min-height: calc(100vh - 44px);
		box-sizing: border-box;
	}
	
	.seat-list {
		display: flex;
		align-items: center;
		flex-wrap: wrap;
		background: #FFFFFF;
		margin: 20upx;
		border-radius: 20upx;
		padding: 20upx;
		font-size: 30upx;
		.seat-item {
			width: 33.33%;
			display: flex;
			align-items: center;
			flex-direction: column;
			margin-bottom: 20upx;
	
			.seat-icon {
				width: 50upx;
				height: 50upx;
				margin-bottom: 10upx;
			}
		}
	}
	
	audio {
		display: flex;
		flex-direction: column;
	}
	
	.audio /deep/ .uni-audio-default {
		width: inherit;
	}
	

</style>
