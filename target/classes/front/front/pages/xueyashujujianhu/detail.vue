
<template>
<view>
<mescroll-uni @init="mescrollInit" :up="upOption" :down="downOption" @down="downCallback" @up="upCallback">
	<view class="content">
		<view class="container" :style='{"minHeight":"100vh","width":"100%","padding":"24rpx 24rpx 24rpx","position":"relative","background":"#eefcff","height":"auto"}'>
            <view :style='{"padding":"0","margin":"0 0 0","flexWrap":"wrap","background":"none","display":"flex","width":"100%","position":"relative","justifyContent":"space-between","height":"auto"}' class="detail-content">

				<view :style='{"padding":"0 24rpx","margin":"0","borderColor":"#76c4d8","borderRadius":"0","borderWidth":"0 0 0px 0","background":"#fff","display":"flex","width":"100%","borderStyle":"solid","height":"auto"}' class="detail-list-item title">
					<view :style='{"padding":"0 20rpx 0 0","borderColor":"#76c4d8","whiteSpace":"nowrap","color":"#333","borderRadius":"0","textAlign":"right","borderWidth":"0 0 2rpx","width":"auto","lineHeight":"80rpx","fontSize":"28rpx","borderStyle":"solid"}' class="lable">患者姓名：</view>
					<view :style='{"padding":"16rpx 0 0","wordBreak":"break-all","margin":"0px","borderColor":"#76c4d8","color":"#666","borderWidth":"0 0 2rpx","flex":"1","lineHeight":"48rpx","fontSize":"28rpx","borderStyle":"solid"}' class="text">{{detail.huanzhexingming}}</view>
				</view>
				<view :style='{"padding":"0 24rpx","margin":"0","borderColor":"#76c4d8","borderRadius":"0","borderWidth":"0 0 0px 0","background":"#fff","display":"flex","width":"100%","borderStyle":"solid","height":"auto"}' class="detail-list-item title">
					<view :style='{"padding":"0 20rpx 0 0","borderColor":"#76c4d8","whiteSpace":"nowrap","color":"#333","borderRadius":"0","textAlign":"right","borderWidth":"0 0 2rpx","width":"auto","lineHeight":"80rpx","fontSize":"28rpx","borderStyle":"solid"}' class="lable">血压(mmHg)：</view>
					<view :style='{"padding":"16rpx 0 0","wordBreak":"break-all","margin":"0px","borderColor":"#76c4d8","color":"#666","borderWidth":"0 0 2rpx","flex":"1","lineHeight":"48rpx","fontSize":"28rpx","borderStyle":"solid"}' class="text">{{detail.xueya}}</view>
				</view>
				<view :style='{"padding":"0 24rpx","margin":"0","borderColor":"#76c4d8","borderRadius":"0","borderWidth":"0 0 0px 0","background":"#fff","display":"flex","width":"100%","borderStyle":"solid","height":"auto"}' class="detail-list-item title">
					<view :style='{"padding":"0 20rpx 0 0","borderColor":"#76c4d8","whiteSpace":"nowrap","color":"#333","borderRadius":"0","textAlign":"right","borderWidth":"0 0 2rpx","width":"auto","lineHeight":"80rpx","fontSize":"28rpx","borderStyle":"solid"}' class="lable">登记日期：</view>
					<view :style='{"padding":"16rpx 0 0","wordBreak":"break-all","margin":"0px","borderColor":"#76c4d8","color":"#666","borderWidth":"0 0 2rpx","flex":"1","lineHeight":"48rpx","fontSize":"28rpx","borderStyle":"solid"}' class="text">{{detail.dengjiriqi}}</view>
				</view>

				<view class="detail-list-item" :style='{"padding":"0 24rpx","margin":"0","borderColor":"#76c4d8","borderRadius":"0","borderWidth":"0 0 0px 0","background":"#fff","display":"flex","width":"100%","borderStyle":"solid","height":"auto"}'>
					<view class="lable" :style='{"padding":"0 20rpx 0 0","borderColor":"#76c4d8","whiteSpace":"nowrap","color":"#333","borderRadius":"0","textAlign":"right","borderWidth":"0 0 2rpx","width":"auto","lineHeight":"80rpx","fontSize":"28rpx","borderStyle":"solid"}'>医生工号：</view>
					<view  class="text" :style='{"padding":"16rpx 0 0","wordBreak":"break-all","margin":"0px","borderColor":"#76c4d8","color":"#666","borderWidth":"0 0 2rpx","flex":"1","lineHeight":"48rpx","fontSize":"28rpx","borderStyle":"solid"}'>{{detail.yishenggonghao}}</view>
				</view>
				<view class="detail-list-item" :style='{"padding":"0 24rpx","margin":"0","borderColor":"#76c4d8","borderRadius":"0","borderWidth":"0 0 0px 0","background":"#fff","display":"flex","width":"100%","borderStyle":"solid","height":"auto"}'>
					<view class="lable" :style='{"padding":"0 20rpx 0 0","borderColor":"#76c4d8","whiteSpace":"nowrap","color":"#333","borderRadius":"0","textAlign":"right","borderWidth":"0 0 2rpx","width":"auto","lineHeight":"80rpx","fontSize":"28rpx","borderStyle":"solid"}'>医生姓名：</view>
					<view  class="text" :style='{"padding":"16rpx 0 0","wordBreak":"break-all","margin":"0px","borderColor":"#76c4d8","color":"#666","borderWidth":"0 0 2rpx","flex":"1","lineHeight":"48rpx","fontSize":"28rpx","borderStyle":"solid"}'>{{detail.yishengxingming}}</view>
				</view>
				<view class="detail-list-item" :style='{"padding":"0 24rpx","margin":"0","borderColor":"#76c4d8","borderRadius":"0","borderWidth":"0 0 0px 0","background":"#fff","display":"flex","width":"100%","borderStyle":"solid","height":"auto"}'>
					<view class="lable" :style='{"padding":"0 20rpx 0 0","borderColor":"#76c4d8","whiteSpace":"nowrap","color":"#333","borderRadius":"0","textAlign":"right","borderWidth":"0 0 2rpx","width":"auto","lineHeight":"80rpx","fontSize":"28rpx","borderStyle":"solid"}'>科室：</view>
					<view  class="text" :style='{"padding":"16rpx 0 0","wordBreak":"break-all","margin":"0px","borderColor":"#76c4d8","color":"#666","borderWidth":"0 0 2rpx","flex":"1","lineHeight":"48rpx","fontSize":"28rpx","borderStyle":"solid"}'>{{detail.keshi}}</view>
				</view>
				<view class="detail-list-item" :style='{"padding":"0 24rpx","margin":"0","borderColor":"#76c4d8","borderRadius":"0","borderWidth":"0 0 0px 0","background":"#fff","display":"flex","width":"100%","borderStyle":"solid","height":"auto"}'>
					<view class="lable" :style='{"padding":"0 20rpx 0 0","borderColor":"#76c4d8","whiteSpace":"nowrap","color":"#333","borderRadius":"0","textAlign":"right","borderWidth":"0 0 2rpx","width":"auto","lineHeight":"80rpx","fontSize":"28rpx","borderStyle":"solid"}'>职称：</view>
					<view  class="text" :style='{"padding":"16rpx 0 0","wordBreak":"break-all","margin":"0px","borderColor":"#76c4d8","color":"#666","borderWidth":"0 0 2rpx","flex":"1","lineHeight":"48rpx","fontSize":"28rpx","borderStyle":"solid"}'>{{detail.zhicheng}}</view>
				</view>
				<view class="detail-list-item" :style='{"padding":"0 24rpx","margin":"0","borderColor":"#76c4d8","borderRadius":"0","borderWidth":"0 0 0px 0","background":"#fff","display":"flex","width":"100%","borderStyle":"solid","height":"auto"}'>
					<view class="lable" :style='{"padding":"0 20rpx 0 0","borderColor":"#76c4d8","whiteSpace":"nowrap","color":"#333","borderRadius":"0","textAlign":"right","borderWidth":"0 0 2rpx","width":"auto","lineHeight":"80rpx","fontSize":"28rpx","borderStyle":"solid"}'>患者账号：</view>
					<view  class="text" :style='{"padding":"16rpx 0 0","wordBreak":"break-all","margin":"0px","borderColor":"#76c4d8","color":"#666","borderWidth":"0 0 2rpx","flex":"1","lineHeight":"48rpx","fontSize":"28rpx","borderStyle":"solid"}'>{{detail.huanzhezhanghao}}</view>
				</view>
				<view class="detail-list-item" :style='{"padding":"0 24rpx","margin":"0","borderColor":"#76c4d8","borderRadius":"0","borderWidth":"0 0 0px 0","background":"#fff","display":"flex","width":"100%","borderStyle":"solid","height":"auto"}'>
					<view class="lable" :style='{"padding":"0 20rpx 0 0","borderColor":"#76c4d8","whiteSpace":"nowrap","color":"#333","borderRadius":"0","textAlign":"right","borderWidth":"0 0 2rpx","width":"auto","lineHeight":"80rpx","fontSize":"28rpx","borderStyle":"solid"}'>患者手机：</view>
					<view  class="text" :style='{"padding":"16rpx 0 0","wordBreak":"break-all","margin":"0px","borderColor":"#76c4d8","color":"#666","borderWidth":"0 0 2rpx","flex":"1","lineHeight":"48rpx","fontSize":"28rpx","borderStyle":"solid"}'>{{detail.huanzheshouji}}</view>
				</view>
				<view class="detail-list-item" :style='{"padding":"0 24rpx","margin":"0","borderColor":"#76c4d8","borderRadius":"0","borderWidth":"0 0 0px 0","background":"#fff","display":"flex","width":"100%","borderStyle":"solid","height":"auto"}'>
					<view class="lable" :style='{"padding":"0 20rpx 0 0","borderColor":"#76c4d8","whiteSpace":"nowrap","color":"#333","borderRadius":"0","textAlign":"right","borderWidth":"0 0 2rpx","width":"auto","lineHeight":"80rpx","fontSize":"28rpx","borderStyle":"solid"}'>备注：</view>
					<view  class="text" :style='{"padding":"16rpx 0 0","wordBreak":"break-all","margin":"0px","borderColor":"#76c4d8","color":"#666","borderWidth":"0 0 2rpx","flex":"1","lineHeight":"48rpx","fontSize":"28rpx","borderStyle":"solid"}'>{{detail.beizhu}}</view>
				</view>
				<view class="detail-list-item" :style='{"padding":"0 24rpx","margin":"0","borderColor":"#76c4d8","borderRadius":"0","borderWidth":"0 0 0px 0","background":"#fff","display":"flex","width":"100%","borderStyle":"solid","height":"auto"}'>
					<view class="lable" :style='{"padding":"0 20rpx 0 0","borderColor":"#76c4d8","whiteSpace":"nowrap","color":"#333","borderRadius":"0","textAlign":"right","borderWidth":"0 0 2rpx","width":"auto","lineHeight":"80rpx","fontSize":"28rpx","borderStyle":"solid"}'>收缩压(kpa)：</view>
					<view  class="text" :style='{"padding":"16rpx 0 0","wordBreak":"break-all","margin":"0px","borderColor":"#76c4d8","color":"#666","borderWidth":"0 0 2rpx","flex":"1","lineHeight":"48rpx","fontSize":"28rpx","borderStyle":"solid"}'>{{detail.shousuoya}}</view>
				</view>
				<view class="detail-list-item" :style='{"padding":"0 24rpx","margin":"0","borderColor":"#76c4d8","borderRadius":"0","borderWidth":"0 0 0px 0","background":"#fff","display":"flex","width":"100%","borderStyle":"solid","height":"auto"}'>
					<view class="lable" :style='{"padding":"0 20rpx 0 0","borderColor":"#76c4d8","whiteSpace":"nowrap","color":"#333","borderRadius":"0","textAlign":"right","borderWidth":"0 0 2rpx","width":"auto","lineHeight":"80rpx","fontSize":"28rpx","borderStyle":"solid"}'>舒张压(kpa)：</view>
					<view  class="text" :style='{"padding":"16rpx 0 0","wordBreak":"break-all","margin":"0px","borderColor":"#76c4d8","color":"#666","borderWidth":"0 0 2rpx","flex":"1","lineHeight":"48rpx","fontSize":"28rpx","borderStyle":"solid"}'>{{detail.shuzhangya}}</view>
				</view>
				<view class="detail-list-item" :style='{"padding":"0 24rpx","margin":"0","borderColor":"#76c4d8","borderRadius":"0","borderWidth":"0 0 0px 0","background":"#fff","display":"flex","width":"100%","borderStyle":"solid","height":"auto"}'>
					<view class="lable" :style='{"padding":"0 20rpx 0 0","borderColor":"#76c4d8","whiteSpace":"nowrap","color":"#333","borderRadius":"0","textAlign":"right","borderWidth":"0 0 2rpx","width":"auto","lineHeight":"80rpx","fontSize":"28rpx","borderStyle":"solid"}'>心率(次/分钟)：</view>
					<view  class="text" :style='{"padding":"16rpx 0 0","wordBreak":"break-all","margin":"0px","borderColor":"#76c4d8","color":"#666","borderWidth":"0 0 2rpx","flex":"1","lineHeight":"48rpx","fontSize":"28rpx","borderStyle":"solid"}'>{{detail.xinlv}}</view>
				</view>








				<view class="bottom-content bg-white tabbar border shop" :style='{"padding":"24rpx 0","margin":"0 auto","borderRadius":"0","flexWrap":"wrap","background":"none","display":"flex","width":"100%","height":"auto","order":"2"}'>

					
				</view>
			</view>
		</view>
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
                res = await this.$api.info('xueyashujujianhu', this.id);
                this.detail = res.data;
				this.title = this.detail.huanzhexingming
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
				uni.setStorageSync('paytable','xueyashujujianhu');
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
				uni.setStorageSync('crossTable','xueyashujujianhu');
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
				let res = await this.$api.info('xueyashujujianhu', this.id);
				this.detail = res.data;

				this.title = this.detail.huanzhexingming
				if(type==2){
					this.detail.discussnum++
					await this.$api.update('xueyashujujianhu',this.detail)
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
