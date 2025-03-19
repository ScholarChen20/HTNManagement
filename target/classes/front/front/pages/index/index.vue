<template>
<view class="content">
	<view :style='{"minHeight":"100vh","padding":"0 24rpx","overflow":"hidden","alignItems":"flex-start","flexWrap":"wrap","background":"#eefcff","flexDirection":"row","display":"flex","width":"100%","height":"auto"}'>
		<view class="list-swiper-4" :style='{"width":"100%","margin":"0 0 40rpx","position":"relative","height":"360rpx"}' @touchstart="touchStart" @touchmove="touchMove" @touchend="touchEnd">
			<view :style='{"overflow":"hidden","top":"0%","borderRadius":"40rpx","left":"0%","background":"#fff","width":"100%","position":"absolute","height":"360rpx"}' class="item animate__animated" :class="prevNumList4 == index  ? 'animate__slideOutRight' : (numList4 == index  ? 'animate__slideInLeft' : '')" v-for="(swiper,index) in swiperList" :key="index" v-if="numList4 == index || prevNumList4 == index">
				<image :style='{"width":"100%","objectFit":"cover","borderRadius":"40rpx","display":"block","height":"360rpx"}' mode="aspectFill" :src="baseUrl+swiper.img" @tap="onSwiperTap(swiper)"></image>
				<view :style='{"padding":"8rpx 20rpx 80rpx","margin":"-20rpx 0 0 0","color":"#fff","textAlign":"center","display":"none","transform":"translate3d(-50%, -50%, 0)","top":"100%","left":"50%","background":"rgba(255, 255, 255, 0.3)","width":"100%","lineHeight":"1.5","fontSize":"28rpx","position":"absolute"}'>{{ swiper.title }}</view>
			</view>
			<view class="animate__navigation" :style='{"alignItems":"center","left":"0%","bottom":"0%","background":"rgba(0,0,0,.0)","display":"flex","width":"100%","position":"absolute","justifyContent":"center","height":"40rpx"}'>
				<block v-for="(swiper,index) in swiperList" :key="index">
					<text class="navigation-item" v-if="numList4 == index" :style='{"width":"16rpx","margin":"0 4rpx","borderRadius":"100%","background":"#76c4d8","height":"16rpx"}'></text>
					<text class="navigation-item" v-if="numList4 != index" :style='{"width":"16rpx","margin":"0 4rpx","borderRadius":"100%","background":"#fff","height":"16rpx"}'></text>
				</block>
			</view>
		</view>
		<!-- menu -->
        <view style="width: 100%" v-if="swiperMenuList.length">
            <swiper :style='{"minHeight":"520rpx","padding":"40rpx 0 0 0","margin":"0 auto","borderRadius":"16rpx","flexWrap":"wrap","background":"none","display":"flex","width":"100%","justifyContent":"space-between"}' class="swiper">
                <swiper-item v-for="(swiper,index) in (new Array(Number(Math.ceil(swiperMenuList.length / (rows * column)))).fill('').map((val, i) => i+1))" :key="index">
                    <view v-for="(row, index1) in (new Array(Number(rows)).fill('').map((val, i) => i+1))" :key="index1" style="display: flex;flex-wrap: wrap;">
                        <view v-for="(col, index2) in (new Array(Number(column)).fill('').map((val, i) => i+1))" :key="index2" v-if="(((row+rows*(swiper-1) -1)*column + col -1)<swiperMenuList.length)" :style='{"padding":"12rpx 0","boxShadow":"2rpx 4rpx 16rpx #76c4d880","margin":"10rpx 2% 20rpx 2%","alignItems":"center","flexDirection":"column","display":"flex","justifyContent":"center","minHeight":"200rpx","borderRadius":"160rpx","flexWrap":"wrap","background":"#fff","width":"21%","height":"auto"}' class="menu-list">
                            <view :class="swiperMenuList[(row+rows*(swiper-1) -1)*column + col -1].child[0].appFrontIcon" @tap="onPageTap2('../'+swiperMenuList[(row+rows*(swiper-1) -1)*column + col -1].child[0].tableName+'/list')" :style='{"padding":"10rpx","boxShadow":"2rpx 4rpx 12rpx #76c4d880","margin":"0px auto","color":"#e2887e","borderRadius":"100%","background":"#e6fbff","display":"block","width":"auto","lineHeight":"auto","fontSize":"64rpx","height":"auto"}'>
                            </view>
                            <view :style='{"padding":"0","margin":"12rpx auto 0","color":"#333","textAlign":"center","width":"100%","lineHeight":"auto","fontSize":"28rpx"}'>{{swiperMenuList[(row+rows*(swiper-1) -1)*column + col -1].child[0].menu.split("列表")[0]}} </view>
                        </view>
                    </view>
                </swiper-item>
            </swiper>
        </view>
		<!-- menu -->
		<!-- 关于我们 -->
		<view :style='{"padding":"0px","margin":"40rpx 0","borderRadius":"0","flexWrap":"wrap","background":"none","display":"flex","width":"100%","height":"auto","order":"2"}'>
			<view :style='{"margin":"0 auto","color":"#76c4d8","textAlign":"center","background":"url(http://codegen.caihongy.cn/20231213/2ba3fe4cf1134a6aa6bc64f2785ede40.png) no-repeat center bottom / 100% auto","width":"100%","lineHeight":"120rpx","fontSize":"48rpx"}'>{{aboutUsDetail.title}}</view>
			<view :style='{"width":"100%","margin":"0 0 20rpx","lineHeight":"2","fontSize":"32rpx","color":"#76c4d8","textAlign":"center"}'>{{aboutUsDetail.subtitle}}</view>
			<view :style='{"padding":"32rpx 10rpx 48rpx","boxShadow":"0 2rpx 12rpx #76c4d880","borderRadius":"0 0 60rpx 60rpx","flexWrap":"wrap","background":"#76c4d8","display":"flex","width":"100%","height":"auto","order":"2"}'>
				<img :style='{"margin":"0 10rpx","objectFit":"cover","borderRadius":"60rpx","flex":1,"display":"block","height":"300rpx"}' v-if="aboutUsDetail.picture1" :src="baseUrl+aboutUsDetail.picture1">
				<img :style='{"margin":"0 10rpx","objectFit":"cover","borderRadius":"16rpx","flex":1,"display":"none","height":"160rpx"}' v-if="aboutUsDetail.picture2" :src="baseUrl+aboutUsDetail.picture2">
				<img :style='{"margin":"0 10rpx","objectFit":"cover","borderRadius":"16rpx","flex":1,"display":"none","height":"160rpx"}' v-if="aboutUsDetail.picture3" :src="baseUrl+aboutUsDetail.picture3">
			</view>
			<view :style='{"padding":"48rpx 24rpx","margin":"0 0 0px 0","color":"#fff","borderRadius":"60rpx 60rpx 0 0","background":"url(http://codegen.caihongy.cn/20231214/1ffff872679a4bd9b730b40374065194.png) no-repeat right top / 100% auto,#76c4d8","width":"100%","lineHeight":"1.5","fontSize":"28rpx"}' v-html="aboutUsDetail.content"></view>
			<view :style='{"border":"0","padding":"0 30rpx","margin":"40rpx auto 20rpx","borderRadius":"8rpx","textAlign":"center","background":"#a5ccc4","display":"none","width":"auto","lineHeight":"56rpx","order":"3"}'>
			  <text :style='{"color":"#f5f5f5","fontSize":"24rpx"}'>更多</text>
			  <text class="icon iconfont icon-gengduo1" :style='{"color":"#f5f5f5","fontSize":"24rpx"}'></text>
			</view>
			<view :style='{"width":"50%","background":"url(http://codegen.caihongy.cn/20201114/7856ba26477849ea828f481fa2773a95.jpg) 0% 0% / cover no-repeat","display":"none","height":"160rpx"}' />
			<view :style='{"width":"50%","background":"url(http://codegen.caihongy.cn/20201114/7856ba26477849ea828f481fa2773a95.jpg) 0% 0% / cover no-repeat","display":"none","height":"160rpx"}' />
		</view>
		<!-- 系统简介 -->
		<view :style='{"padding":"0px","margin":"40rpx 0","borderRadius":"16rpx","flexWrap":"wrap","background":"none","display":"flex","width":"100%","height":"auto","order":"10"}'>
			<view :style='{"margin":"0 auto","color":"#76c4d8","textAlign":"center","background":"url(http://codegen.caihongy.cn/20231213/2ba3fe4cf1134a6aa6bc64f2785ede40.png) no-repeat center bottom / 100% auto","width":"100%","lineHeight":"120rpx","fontSize":"48rpx"}'>{{systemIntroductionDetail.title}}</view>
			<view :style='{"width":"100%","margin":"0 0 20rpx","lineHeight":"2","fontSize":"32rpx","color":"#76c4d8","textAlign":"center"}'>{{systemIntroductionDetail.subtitle}}</view>
			<view :style='{"padding":"32rpx 24rpx 48rpx","boxShadow":"0 2rpx 12rpx #76c4d880","borderRadius":"0 0 60rpx 60rpx","flexWrap":"wrap","background":"#76c4d8","display":"flex","width":"100%","justifyContent":"space-between","height":"auto","order":"2"}'>
				<img :style='{"width":"48%","margin":"0","objectFit":"cover","borderRadius":"60rpx","display":"block","height":"360rpx"}' v-if="systemIntroductionDetail.picture1" :src="baseUrl+systemIntroductionDetail.picture1">
				<img :style='{"width":"48%","margin":"0","objectFit":"cover","borderRadius":"60rpx","display":"block","height":"360rpx"}' v-if="systemIntroductionDetail.picture2" :src="baseUrl+systemIntroductionDetail.picture2">
				<img :style='{"width":"32%","margin":"0 0px","objectFit":"cover","borderRadius":"16rpx","display":"none","height":"160rpx"}' v-if="systemIntroductionDetail.picture3" :src="baseUrl+systemIntroductionDetail.picture3">
			</view>
			<view :style='{"padding":"48rpx 24rpx","margin":"0 0 0px 0","color":"#fff","borderRadius":"60rpx 60rpx 0 0","background":"url(http://codegen.caihongy.cn/20231214/1ffff872679a4bd9b730b40374065194.png) no-repeat right top / 100% auto,#76c4d8","width":"100%","lineHeight":"1.5","fontSize":"28rpx"}' v-html="systemIntroductionDetail.content"></view>
			<view :style='{"border":"0","padding":"0 30rpx","margin":"0 auto","textAlign":"center","background":"#409EFF","display":"none","width":"auto","lineHeight":"56rpx","order":"3"}'>
			  <text :style='{"color":"#f5f5f5","fontSize":"24rpx"}'>更多</text>
			  <text class="icon iconfont icon-gengduo1" :style='{"color":"#f5f5f5","fontSize":"24rpx"}'></text>
			</view>
			<view :style='{"width":"50%","background":"url(http://codegen.caihongy.cn/20201114/7856ba26477849ea828f481fa2773a95.jpg) 0% 0% / cover no-repeat","display":"none","height":"160rpx"}' />
			<view :style='{"width":"50%","background":"url(http://codegen.caihongy.cn/20201114/7856ba26477849ea828f481fa2773a95.jpg) 0% 0% / cover no-repeat","display":"none","height":"160rpx"}' />
		</view>
		<!-- 商品推荐 -->
		<!-- 商品推荐 -->
		
		<!-- 商品列表 -->
		<view class="listBox list" :style='{"width":"100%","margin":"0 auto","background":"none","order":"9"}'>
			<view class="title" :style='{"padding":"0 24rpx","margin":"0","textAlign":"center","background":"url(http://codegen.caihongy.cn/20231213/d1495c4de2a34153b601bf933a392cbe.png) no-repeat center top","display":"block","width":"100%","lineHeight":"116rpx","position":"relative","justifyContent":"space-between","height":"104rpx"}'>
				<view :style='{"color":"#76c4d8","fontSize":"36rpx"}'>坐诊医生</view>
				<view :style='{"position":"absolute","right":"40rpx","top":"0","display":"block"}' @tap="onPageTap('zuozhenyisheng')">
				  <text :style='{"color":"#76c4d8","fontSize":"28rpx"}'>更多</text>
				  <text class="icon iconfont icon-jiantou18" :style='{"color":"#76c4d8","fontSize":"28rpx"}'></text>
				</view>
			</view>
		  <!-- 样式3 -->
		  <view v-if="3 == 3" class="list-box style3" :style='{"width":"100%","padding":"0px","margin":"40rpx 0 0","color":"#76c4d8","height":"auto"}'>
			<view @tap="onDetailTap('zuozhenyisheng',product.id)" v-for="(product,index) in homezuozhenyishenglist" :key="index" class="list-item" :style='{"boxShadow":"0 2rpx 12rpx #76c4d880","padding":"20rpx","margin":"0 0 40rpx","borderRadius":"40rpx","alignItems":"center","flexWrap":"wrap","background":"#fff","display":"flex","width":"100%","height":"auto"}'>
			  <image :style='{"width":"160rpx","margin":"0 20rpx 0 0","objectFit":"cover","borderRadius":"100%","display":"block","height":"160rpx"}' class="list-item-image" mode="aspectFill" v-if="product.touxiang.substring(0,4)=='http'" :src="product.touxiang"></image>
			  <image :style='{"width":"160rpx","margin":"0 20rpx 0 0","objectFit":"cover","borderRadius":"100%","display":"block","height":"160rpx"}' class="list-item-image" mode="aspectFill" v-else :src="product.touxiang?baseUrl+product.touxiang.split(',')[0]:''"></image>
			  <view class="list-item-body" :style='{"width":"calc(100% - 180rpx)","padding":"0","margin":"0","height":"auto"}'>
				<view :style='{"padding":"0 20rpx","margin":"0","overflow":"hidden","whiteSpace":"nowrap","color":"#333","width":"100%","lineHeight":"48rpx","fontSize":"28rpx","textOverflow":"ellipsis"}' class="list-item-title">{{product.yishengxingming}}</view>
				<view :style='{"padding":"0 20rpx","margin":"0","overflow":"hidden","whiteSpace":"nowrap","color":"#333","width":"100%","lineHeight":"48rpx","fontSize":"28rpx","textOverflow":"ellipsis"}' class="list-item-title">{{product.keshi}}</view>
				<view :style='{"padding":"0 20rpx","margin":"0","overflow":"hidden","whiteSpace":"nowrap","color":"#333","width":"100%","lineHeight":"48rpx","fontSize":"28rpx","textOverflow":"ellipsis"}' class="list-item-title">{{product.zhicheng}}</view>
				<view :style='{"padding":"0 20rpx","display":"none"}'>
				  <text class="icon iconfont icon-shijian21" :style='{"margin":"0 4rpx 0 0","lineHeight":"1.5","fontSize":"24rpx","color":"inherit"}'></text>
				  <text :style='{"color":"inherit","lineHeight":"1.5","fontSize":"24rpx"}'>{{product.addtime}}</text>
				</view>
			  </view>
			</view>
		  </view>
		</view>
		<!-- 商品列表 -->
		<!-- 新闻资讯 -->
		<view class="listBox news" :style='{"width":"100%","margin":"40rpx 0 40rpx","background":"none","order":"3"}'>
			<view class="title" :style='{"padding":"0 24rpx","margin":"0","textAlign":"center","background":"url(http://codegen.caihongy.cn/20231213/d1495c4de2a34153b601bf933a392cbe.png) no-repeat center top","display":"block","width":"100%","lineHeight":"116rpx","position":"relative","justifyContent":"space-between","height":"104rpx"}'>
				<view :style='{"color":"#76c4d8","fontSize":"36rpx"}'>系统通知</view>
				<view :style='{"position":"absolute","right":"40rpx","alignItems":"center","top":"0","justifyContent":"center","display":"flex"}' @tap="onPageTap('news')">
				  <text :style='{"color":"#76c4d8","fontSize":"28rpx"}'>更多</text>
				  <text class="icon iconfont icon-jiantou18" :style='{"color":"#76c4d8","fontSize":"28rpx"}'></text>
				</view>
			</view>
			<!-- 样式3 -->
			<view class="list-box style3" :style='{"width":"100%","padding":"0px","margin":"40rpx 0 0","color":"#76c4d8","height":"auto"}'>
				<view @tap="onNewsDetailTap(item.id)" v-for="(item,index) in news" :key="index" class="list-item" :style='{"boxShadow":"0 2rpx 18rpx #76c4d880","padding":"20rpx","margin":"0 0 40rpx","borderRadius":"40rpx","alignItems":"center","flexWrap":"wrap","background":"#fff","display":"flex","width":"100%","height":"auto"}'>
					<image v-if="item.picture" :style='{"width":"240rpx","margin":"0 20rpx 0 0","objectFit":"cover","borderRadius":"40rpx","display":"block","height":"180rpx"}' class="list-item-image" mode="aspectFill" :src="baseUrl+item.picture"></image>
					<view class="list-item-body" :style='{"width":"calc(100% - 260rpx)","padding":"0","margin":"0","height":"auto"}'>
						<view :style='{"padding":"0 0px","margin":"0","overflow":"hidden","whiteSpace":"nowrap","color":"#000","width":"100%","lineHeight":"48rpx","fontSize":"28rpx","textOverflow":"ellipsis"}' class="list-item-title">{{item.title}}</view>
						<view :style='{"padding":"0 0px","overflow":"hidden","color":"#888","maxHeight":"96rpx","width":"100%","lineHeight":"48rpx","fontSize":"28rpx"}' class="text">{{item.introduction}}</view>
						<view :style='{"padding":"0 0px","margin":"0 20rpx 0 0"}'>
						  <text class="icon iconfont icon-shijian21" :style='{"margin":"0 4rpx 0 0","lineHeight":"1.5","fontSize":"24rpx","color":"inherit"}'></text>
						  <text :style='{"color":"inherit","lineHeight":"1.5","fontSize":"24rpx"}'>{{item.addtime}}</text>
						</view>
						<view :style='{"padding":"0 0px","margin":"0 20rpx 0 0","display":"inline-block"}'>
						  <text class="icon iconfont icon-geren16" :style='{"margin":"0 4rpx 0 0","lineHeight":"1.5","fontSize":"24rpx","color":"inherit"}'></text>
						  <text :style='{"color":"inherit","lineHeight":"1.5","fontSize":"24rpx"}'>{{item.name}}</text>
						</view>
						<view :style='{"padding":"0 0px","margin":"0 20rpx 0 0","display":"inline-block"}'>
						  <text class="icon iconfont icon-zan10" :style='{"margin":"0 4rpx 0 0","lineHeight":"1.5","fontSize":"24rpx","color":"inherit"}'></text>
						  <text :style='{"color":"inherit","lineHeight":"1.5","fontSize":"24rpx"}'>{{item.thumbsupnum}}</text>
						</view>
						<view :style='{"padding":"0 0px","margin":"0 20rpx 0 0","display":"inline-block"}'>
						  <text class="icon iconfont icon-shoucang10" :style='{"margin":"0 4rpx 0 0","lineHeight":"1.5","fontSize":"24rpx","color":"inherit"}'></text>
						  <text :style='{"color":"inherit","lineHeight":"1.5","fontSize":"24rpx"}'>{{item.storeupnum}}</text>
						</view>
						<view :style='{"padding":"0 0px","margin":"0 20rpx 0 0","display":"inline-block"}'>
						  <text class="icon iconfont icon-chakan2" :style='{"margin":"0 4rpx 0 0","lineHeight":"1.5","fontSize":"24rpx","color":"inherit"}'></text>
						  <text :style='{"color":"inherit","lineHeight":"1.5","fontSize":"24rpx"}'>{{item.clicknum}}</text>
						</view>
					</view>
				</view>
			</view>
		</view>
		<!-- 新闻资讯 -->
	</view>
</view>
</template>

<script>
    import menu from '@/utils/menu'
	import '@/assets/css/global-restaurant.css'
	import uniIcons from "@/components/uni-ui/lib/uni-icons/uni-icons.vue"
	export default {
		components: {
			uniIcons
		},
		data() {
			return {
				startX: 0,
				prevNumList4: '',
				numList4: 0,
				timerList4: null,
				flagList4: false,
				navigationActive: {"width":"16rpx","margin":"0 4rpx","borderRadius":"100%","background":"#76c4d8","height":"16rpx"},
				navigationDefault: {"width":"16rpx","margin":"0 4rpx","borderRadius":"100%","background":"#fff","height":"16rpx"},
				options2: {
					effect: 'flip',
					loop : true
				},
				options3: {
					effect: 'cube',
					loop : true,
					cubeEffect: {
						shadow: true,
						slideShadows: true,
						shadowOffset: 20,
						shadowScale: 0.94,
					}
				},
				rows: 2,
				column: 4,
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
                role : '',
                aboutUsDetail: {},
                systemIntroductionDetail: {},
                menuList: [],
                swiperMenuList:[],
                user: {},
                tableName:'',

				//轮播
				swiperList: [],
				homezuozhenyishenglist: [],
				news: [],
			}
		},
		watch: {
		},
		mounted() {
		},
		computed: {
			baseUrl() {
				return this.$base.url;
			},
		},
        async onLoad(){
            
        },
		async onShow() {
			this.swiperMenuList = []
			this.role = uni.getStorageSync("appRole");
			let table = uni.getStorageSync("nowTable");
			let res = await this.$api.session(table);
			this.user = res.data;
			this.tableName = table;
			let menus = menu.list();
			this.menuList = menus;
			this.menuList.forEach((item,key) => {
			    if(key==0) {
			        item.frontMenu.forEach((item2,key2) => {
			            if(item2.child[0].buttons.indexOf("查看")>-1) {
			                this.swiperMenuList.push(item2);
			            }
			        })
			    }
			})
            // let res;
			// 轮播图
			let swiperList = []
			res = await this.$api.list('config', {
				page: 1,
				limit: 5
			});
			for (let item of res.data.list) {
				if (item.name.indexOf('picture') >= 0 && item.value && item.value!="" && item.value!=null ) {
					swiperList.push({
						img: item.value,
                        title: item.name,
						url: item.url
					});
				}
			}
			if (swiperList) {
				this.swiperList = swiperList;
			}
			
			this.prevNumList4 = this.swiperList.length - 1
			this.timerList4 = setInterval(this.autoPlayList4, 12000)

            this.getAboutUs();
            this.getSystemIntroduction();
			this.getRecommendList()
			this.getHomeList()
			this.getNewsList()
		},
		methods: {
			uGetRect(selector, all) {
				return new Promise(resolve => {
					uni.createSelectorQuery()
					.in(this)
					[all ? 'selectAll' : 'select'](selector)
					.boundingClientRect(rect => {
						if (all && Array.isArray(rect) && rect.length) {
							resolve(rect);
						}
						if (!all && rect) {
							resolve(rect);
						}
					})
					.exec();
				});
			},
			cloneData(data) {
				return JSON.parse(JSON.stringify(data));
			},
			newsTabClick2(index){
				this.newsIndex2 = index
				this.getNewsList()
			},
			async getNewsList(){
				let res;
				let params = {
					page: 1,
					limit: 6,
					sort: 'id',
					order: 'desc',
				}
				// 系统通知
				res = await this.$api.list('news', params)
				this.news = res.data.list
			},
			homeTabClick2(index,name){
				this['home' + name + 'Index2'] = index
				this.getHomeList()
			},
			async getHomeList(){
				let res;
				let params;
				params = {
					page:1,
					limit: 6,
				}
				res = await this.$api.list('zuozhenyisheng', params);
				this.homezuozhenyishenglist = res.data.list
			},
			recommendTabClick2(index,name){
				this[name + 'Index2'] = index
				this.getRecommendList()
			},
			async getRecommendList(){
				let res;
				let params;
			},
			autoPlayList4() {
				this.prevNumList4 = this.numList4
			
				this.numList4++
				if (this.numList4 == this.swiperList.length) this.numList4 = 0
			},
			touchStart(event) {
				this.startX = event.touches[0].clientX
				
				clearInterval(this.timerList4)
				this.flagList4 = true
			},
			touchMove(event) {
				const currentX = event.touches[0].clientX;
				const deltaX = currentX - this.startX;
				
				if (deltaX > 50) {
					// 向右滑动逻辑
					if (this.flagList4) {
						this.flagList4 = false
						
						this.prevNumList4 = this.numList4
						this.numList4++
						if (this.numList4 == this.swiperList.length) this.numList4 = 0
					}
					
				} else if (deltaX < -50) {
					// 向左滑动逻辑
					if (this.flagList4) {
						this.flagList4 = false
						
						this.prevNumList4 = this.numList4
						this.numList4--
						if (this.numList4 < 0) this.numList4 = this.swiperList.length - 1
					}
				}
			},
			touchEnd() {
				this.startX = 0
				this.timerList4 = setInterval(this.autoPlayList4, 12000)
				this.flagList4 = false
			},
			//轮播图跳转
			onSwiperTap(e) {
				if(e.url) {
					if (e.url.indexOf('https') != -1) {
						window.open(e.url)
					} else {
						this.$utils.jump(e.url)
					}
				}
			},
            async getAboutUs() {
                let res = await this.$api.info('aboutus', 1)
                this.aboutUsDetail = res.data;
            },
            async getSystemIntroduction() {
                let res = await this.$api.info('systemintro', 1)
                this.systemIntroductionDetail = res.data;
            },
			// 新闻详情
			onNewsDetailTap(id) {
				this.$utils.jump(`../news-detail/news-detail?id=${id}`)
			},
			// 推荐列表点击详情
			onDetailTap(tableName, id) {
				this.$utils.jump(`../${tableName}/detail?id=${id}`)
			},
			onPageTap(tableName){

				uni.navigateTo({
					url: `../${tableName}/list`,
					fail: function(){
						uni.switchTab({
							url: `../${tableName}/list`
						});
					}
				});
				// this.$utils.jump(`../${tableName}/list`)
			},
            onPageTap2(url) {
                uni.setStorageSync("useridTag",0);
                uni.navigateTo({
                    url: url,
                    fail: function() {
                        uni.switchTab({
                            url: url
                        });
                    }
                });
            }
		}
	}
</script>

<style lang="scss" scoped>
	.content {
		min-height: calc(100vh - 44px);
		box-sizing: border-box;
	}
	.list-swiper-4 .animate__animated {
		--animate-delay: 600ms;
	}

</style>
