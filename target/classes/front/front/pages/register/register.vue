<template>
<view class="content">
	<view class="box" :style='{"minHeight":"100vh","width":"100%","padding":"400rpx 24rpx 24rpx","background":"url(http://codegen.caihongy.cn/20231214/00b1632868ad4df5b6ac9b36b9a9a6c7.png) no-repeat center top / 100% auto,#fff","height":"auto"}'>
		<view :style='{"padding":"44rpx 44rpx 64rpx 24rpx","margin":"0 0 80rpx","borderRadius":"40rpx","textAlign":"center","background":"rgba(255,255,255,.6)","display":"block","width":"100%","position":"relative","height":"auto"}'>
			<image :style='{"width":"160rpx","margin":"0 auto 24rpx auto","borderRadius":"8rpx","display":"none","height":"160rpx"}' src="http://codegen.caihongy.cn/20201114/7856ba26477849ea828f481fa2773a95.jpg" mode="aspectFill"></image>
			<view :style='{"margin":"0 0 0px 0","borderColor":"#349fbb","textAlign":"left","borderWidth":"0 0 2rpx","display":"flex","width":"100%","borderStyle":"solid","height":"auto"}' v-if="tableName=='huanzhe'" class="uni-form-item uni-column">
				<view :style='{"whiteSpace":"nowrap","color":"#666","textAlign":"right","width":"auto","lineHeight":"76rpx","fontSize":"28rpx","fontWeight":"500"}' class="label">患者账号：</view>
				<input :style='{"border":"0px solid rgb(255, 170, 51)","padding":"0px 24rpx","margin":"0px","color":"rgb(0, 0, 0)","borderRadius":"8rpx","flex":"1","background":"rgba(255,255,255,.6)","fontSize":"28rpx","height":"76rpx"}'  v-model="ruleForm.huanzhezhanghao"  type="text"  class="uni-input" name="" placeholder="患者账号" />
			</view>
			<view :style='{"margin":"0 0 0px 0","borderColor":"#349fbb","textAlign":"left","borderWidth":"0 0 2rpx","display":"flex","width":"100%","borderStyle":"solid","height":"auto"}' v-if="tableName=='huanzhe'" class="uni-form-item uni-column">
				<view :style='{"whiteSpace":"nowrap","color":"#666","textAlign":"right","width":"auto","lineHeight":"76rpx","fontSize":"28rpx","fontWeight":"500"}' class="label">密码：</view>
				<input :style='{"border":"0px solid rgb(255, 170, 51)","padding":"0px 24rpx","margin":"0px","color":"rgb(0, 0, 0)","borderRadius":"8rpx","flex":"1","background":"rgba(255,255,255,.6)","fontSize":"28rpx","height":"76rpx"}'  v-model="ruleForm.mima" type="password"  class="uni-input" name="" placeholder="密码" />
			</view>
			<view :style='{"margin":"0 0 0px 0","borderColor":"#349fbb","textAlign":"left","borderWidth":"0 0 2rpx","display":"flex","width":"100%","borderStyle":"solid","height":"auto"}' v-if="tableName=='huanzhe'" class="uni-form-item uni-column">
				<view :style='{"whiteSpace":"nowrap","color":"#666","textAlign":"right","width":"auto","lineHeight":"76rpx","fontSize":"28rpx","fontWeight":"500"}' class="label">确认密码：</view>
				<input :style='{"border":"0px solid rgb(255, 170, 51)","padding":"0px 24rpx","margin":"0px","color":"rgb(0, 0, 0)","borderRadius":"8rpx","flex":"1","background":"rgba(255,255,255,.6)","fontSize":"28rpx","height":"76rpx"}' v-model="ruleForm.mima2" type="password" class="uni-input" name="" placeholder="确认密码" />
			</view>
			<view :style='{"margin":"0 0 0px 0","borderColor":"#349fbb","textAlign":"left","borderWidth":"0 0 2rpx","display":"flex","width":"100%","borderStyle":"solid","height":"auto"}' v-if="tableName=='huanzhe'" class="uni-form-item uni-column">
				<view :style='{"whiteSpace":"nowrap","color":"#666","textAlign":"right","width":"auto","lineHeight":"76rpx","fontSize":"28rpx","fontWeight":"500"}' class="label">患者姓名：</view>
				<input :style='{"border":"0px solid rgb(255, 170, 51)","padding":"0px 24rpx","margin":"0px","color":"rgb(0, 0, 0)","borderRadius":"8rpx","flex":"1","background":"rgba(255,255,255,.6)","fontSize":"28rpx","height":"76rpx"}'  v-model="ruleForm.huanzhexingming"  type="text"  class="uni-input" name="" placeholder="患者姓名" />
			</view>
			<view :style='{"margin":"0 0 0px 0","borderColor":"#349fbb","textAlign":"left","borderWidth":"0 0 2rpx","display":"flex","width":"100%","borderStyle":"solid","height":"auto"}' v-if="tableName=='huanzhe'" class="uni-form-item uni-column">
				<view :style='{"whiteSpace":"nowrap","color":"#666","textAlign":"right","width":"auto","lineHeight":"76rpx","fontSize":"28rpx","fontWeight":"500"}' class="label">身份证：</view>
				<input :style='{"border":"0px solid rgb(255, 170, 51)","padding":"0px 24rpx","margin":"0px","color":"rgb(0, 0, 0)","borderRadius":"8rpx","flex":"1","background":"rgba(255,255,255,.6)","fontSize":"28rpx","height":"76rpx"}'  v-model="ruleForm.shenfenzheng"  type="text"  class="uni-input" name="" placeholder="身份证" />
			</view>
            <view :style='{"margin":"0 0 0px 0","borderColor":"#349fbb","textAlign":"left","borderWidth":"0 0 2rpx","display":"flex","width":"100%","borderStyle":"solid","height":"auto"}' v-if="tableName=='huanzhe'" class="">
				<view :style='{"whiteSpace":"nowrap","color":"#666","textAlign":"right","width":"auto","lineHeight":"76rpx","fontSize":"28rpx","fontWeight":"500"}' class="label">性别：</view>
				<picker :style='{"width":"auto","margin":"0 0 0px 0","lineHeight":"76rpx","textAlign":"left","display":"flex","height":"76rpx"}' v-if="tableName=='huanzhe'"  @change="huanzhexingbieChange" :value="huanzhexingbieIndex" :range="huanzhexingbieOptions">
					<view>
						<view :style='{"lineHeight":"88rpx","fontSize":"28rpx","color":"#888","textAlign":"left"}' class="uni-input">{{ruleForm.xingbie?ruleForm.xingbie:"请选择性别"}}</view>
					</view>
				</picker>
			</view>
			<view :style='{"margin":"0 0 0px 0","borderColor":"#349fbb","textAlign":"left","borderWidth":"0 0 2rpx","display":"flex","width":"100%","borderStyle":"solid","height":"auto"}' v-if="tableName=='huanzhe'" class="uni-form-item uni-column">
				<view :style='{"whiteSpace":"nowrap","color":"#666","textAlign":"right","width":"auto","lineHeight":"76rpx","fontSize":"28rpx","fontWeight":"500"}' class="label">年龄：</view>
				<input :style='{"border":"0px solid rgb(255, 170, 51)","padding":"0px 24rpx","margin":"0px","color":"rgb(0, 0, 0)","borderRadius":"8rpx","flex":"1","background":"rgba(255,255,255,.6)","fontSize":"28rpx","height":"76rpx"}'  v-model="ruleForm.nianling"  type="text"  class="uni-input" name="" placeholder="年龄" />
			</view>
			<view :style='{"margin":"0 0 0px 0","borderColor":"#349fbb","textAlign":"left","borderWidth":"0 0 2rpx","display":"flex","width":"100%","borderStyle":"solid","height":"auto"}' v-if="tableName=='huanzhe'" class="uni-form-item uni-column">
				<view :style='{"whiteSpace":"nowrap","color":"#666","textAlign":"right","width":"auto","lineHeight":"76rpx","fontSize":"28rpx","fontWeight":"500"}' class="label">患者手机：</view>
				<input :style='{"border":"0px solid rgb(255, 170, 51)","padding":"0px 24rpx","margin":"0px","color":"rgb(0, 0, 0)","borderRadius":"8rpx","flex":"1","background":"rgba(255,255,255,.6)","fontSize":"28rpx","height":"76rpx"}'  v-model="ruleForm.huanzheshouji"  type="text"  class="uni-input" name="" placeholder="患者手机" />
			</view>
            <view :style='{"margin":"0 0 0px 0","borderColor":"#349fbb","textAlign":"left","borderWidth":"0 0 2rpx","display":"flex","width":"100%","borderStyle":"solid","height":"auto"}' v-if="tableName=='huanzhe'" @tap="huanzhetouxiangTap" class="">
				<view :style='{"whiteSpace":"nowrap","color":"#666","textAlign":"right","width":"auto","lineHeight":"76rpx","fontSize":"28rpx","fontWeight":"500"}' class="label">头像：</view>
				<image :style='{"width":"160rpx","borderRadius":"8rpx","objectFit":"cover","display":"block","height":"80rpx"}' v-if="ruleForm.touxiang" class="avator" :src="baseUrl+ruleForm.touxiang" mode=""></image>
                <image :style='{"width":"160rpx","borderRadius":"8rpx","objectFit":"cover","display":"block","height":"80rpx"}' v-else class="avator" src="../../static/gen/upload.png" mode=""></image>
            </view>
			<view :style='{"margin":"0 0 0px 0","borderColor":"#349fbb","textAlign":"left","borderWidth":"0 0 2rpx","display":"flex","width":"100%","borderStyle":"solid","height":"auto"}' v-if="tableName=='yisheng'" class="uni-form-item uni-column">
				<view :style='{"whiteSpace":"nowrap","color":"#666","textAlign":"right","width":"auto","lineHeight":"76rpx","fontSize":"28rpx","fontWeight":"500"}' class="label">医生工号：</view>
				<input :style='{"border":"0px solid rgb(255, 170, 51)","padding":"0px 24rpx","margin":"0px","color":"rgb(0, 0, 0)","borderRadius":"8rpx","flex":"1","background":"rgba(255,255,255,.6)","fontSize":"28rpx","height":"76rpx"}'  v-model="ruleForm.yishenggonghao"  type="text"  class="uni-input" name="" placeholder="医生工号" />
			</view>
			<view :style='{"margin":"0 0 0px 0","borderColor":"#349fbb","textAlign":"left","borderWidth":"0 0 2rpx","display":"flex","width":"100%","borderStyle":"solid","height":"auto"}' v-if="tableName=='yisheng'" class="uni-form-item uni-column">
				<view :style='{"whiteSpace":"nowrap","color":"#666","textAlign":"right","width":"auto","lineHeight":"76rpx","fontSize":"28rpx","fontWeight":"500"}' class="label">密码：</view>
				<input :style='{"border":"0px solid rgb(255, 170, 51)","padding":"0px 24rpx","margin":"0px","color":"rgb(0, 0, 0)","borderRadius":"8rpx","flex":"1","background":"rgba(255,255,255,.6)","fontSize":"28rpx","height":"76rpx"}'  v-model="ruleForm.mima" type="password"  class="uni-input" name="" placeholder="密码" />
			</view>
			<view :style='{"margin":"0 0 0px 0","borderColor":"#349fbb","textAlign":"left","borderWidth":"0 0 2rpx","display":"flex","width":"100%","borderStyle":"solid","height":"auto"}' v-if="tableName=='yisheng'" class="uni-form-item uni-column">
				<view :style='{"whiteSpace":"nowrap","color":"#666","textAlign":"right","width":"auto","lineHeight":"76rpx","fontSize":"28rpx","fontWeight":"500"}' class="label">确认密码：</view>
				<input :style='{"border":"0px solid rgb(255, 170, 51)","padding":"0px 24rpx","margin":"0px","color":"rgb(0, 0, 0)","borderRadius":"8rpx","flex":"1","background":"rgba(255,255,255,.6)","fontSize":"28rpx","height":"76rpx"}' v-model="ruleForm.mima2" type="password" class="uni-input" name="" placeholder="确认密码" />
			</view>
			<view :style='{"margin":"0 0 0px 0","borderColor":"#349fbb","textAlign":"left","borderWidth":"0 0 2rpx","display":"flex","width":"100%","borderStyle":"solid","height":"auto"}' v-if="tableName=='yisheng'" class="uni-form-item uni-column">
				<view :style='{"whiteSpace":"nowrap","color":"#666","textAlign":"right","width":"auto","lineHeight":"76rpx","fontSize":"28rpx","fontWeight":"500"}' class="label">医生姓名：</view>
				<input :style='{"border":"0px solid rgb(255, 170, 51)","padding":"0px 24rpx","margin":"0px","color":"rgb(0, 0, 0)","borderRadius":"8rpx","flex":"1","background":"rgba(255,255,255,.6)","fontSize":"28rpx","height":"76rpx"}'  v-model="ruleForm.yishengxingming"  type="text"  class="uni-input" name="" placeholder="医生姓名" />
			</view>
			<view :style='{"margin":"0 0 0px 0","borderColor":"#349fbb","textAlign":"left","borderWidth":"0 0 2rpx","display":"flex","width":"100%","borderStyle":"solid","height":"auto"}' v-if="tableName=='yisheng'" class="uni-form-item uni-column">
				<view :style='{"whiteSpace":"nowrap","color":"#666","textAlign":"right","width":"auto","lineHeight":"76rpx","fontSize":"28rpx","fontWeight":"500"}' class="label">医生电话：</view>
				<input :style='{"border":"0px solid rgb(255, 170, 51)","padding":"0px 24rpx","margin":"0px","color":"rgb(0, 0, 0)","borderRadius":"8rpx","flex":"1","background":"rgba(255,255,255,.6)","fontSize":"28rpx","height":"76rpx"}'  v-model="ruleForm.yishengdianhua"  type="text"  class="uni-input" name="" placeholder="医生电话" />
			</view>
			<button :style='{"border":"0","padding":"0px","margin":"48rpx auto 24rpx","color":"rgb(255, 255, 255)","borderRadius":"60rpx","background":"#76c4d8","width":"60%","lineHeight":"88rpx","fontSize":"36rpx","height":"88rpx"}' class="btn-submit" @tap="register" type="primary">注册</button>
			
			<view class="idea1" :style='{"width":"100%","background":"red","display":"none","height":"80rpx"}'>idea1</view>
			<view class="idea2" :style='{"width":"100%","background":"red","display":"none","height":"80rpx"}'>idea2</view>
			<view class="idea3" :style='{"width":"100%","background":"red","display":"none","height":"80rpx"}'>idea3</view>
		</view>
	</view>
</view>
</template>

<script>
    import multipleSelect from "@/components/momo-multipleSelect/momo-multipleSelect";
	export default {
		data() {
			return {
                huanzhexingbieOptions: [],
                huanzhexingbieIndex: 0,
                yishengxingbieOptions: [],
                yishengxingbieIndex: 0,
				ruleForm: {
                huanzhezhanghao: '',
                mima: '',
                huanzhexingming: '',
                shenfenzheng: '',
                xingbie: '',
                nianling: '',
                huanzheshouji: '',
                touxiang: '',
                openid: '',
                nickname: '',
                avatarurl: '',
                yishenggonghao: '',
                mima: '',
                yishengxingming: '',
                xingbie: '',
                yiling: '',
                yishengdianhua: '',
                touxiang: '',
                yishengjianjie: '',
                yishizigezheng: '',
                shhf: '',
                openid: '',
                nickname: '',
                avatarurl: '',
				},
				tableName:""
			}
		},
        components: {
            multipleSelect
        },
        computed: {
            baseUrl() {
                return this.$base.url;
            },
        },
		async onLoad() {
			let res = [];
			let table = uni.getStorageSync("loginTable");
            this.tableName = table;

                        // 自定义下拉框值
			if(this.tableName=='huanzhe'){
                this.huanzhexingbieOptions = "男,女".split(',');
				this.ruleForm.xingbie=this.huanzhexingbieOptions[0]
			}
                        // 自定义下拉框值
			if(this.tableName=='yisheng'){
                this.yishengxingbieOptions = "男,女".split(',');
				this.ruleForm.xingbie=this.yishengxingbieOptions[0]
			}
			
			this.styleChange()
		},
		methods: {

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
					// document.querySelectorAll('.uni-input .uni-input-input').forEach(el=>{
					//   el.style.backgroundColor = this.registerFrom.content.input.backgroundColor
					// })
				})
			},
			// 获取uuid
			getUUID () {
				return new Date().getTime();
			},
			// 注册
			async register() {
				
				if((!this.ruleForm.huanzhezhanghao) && `huanzhe` == this.tableName){
					this.$utils.msg(`患者账号不能为空`);
					return
				}
				if((!this.ruleForm.mima) && `huanzhe` == this.tableName){
					this.$utils.msg(`密码不能为空`);
					return
				}
                if(`huanzhe` == this.tableName && (this.ruleForm.mima!=this.ruleForm.mima2)){
                    this.$utils.msg(`两次密码输入不一致`);
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
                if(`yisheng` == this.tableName && (this.ruleForm.mima!=this.ruleForm.mima2)){
                    this.$utils.msg(`两次密码输入不一致`);
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
				await this.$api.register(`${this.tableName}`, this.ruleForm);
				this.$utils.msgBack('注册成功');;
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
