# DCPaymentAlert
A payment alertview that imitating Wechat with six digital pay passwords.<br/>
一款模仿微信的6位数字支付密码弹框。
<br/>
### [同款Swift版点击此处](https://github.com/dawnnnnn/DCPayAlertView-Swift)
<br/>
# Preview 预览
![screenshots](https://raw.githubusercontent.com/dawnnnnn/DCPayAlertView/master/screenshots/DCPaymentDemo.gif)


# Usage 使用
``` objc
	DCPaymentView *payAlert = [[DCPaymentView alloc]init];
    payAlert.title = @"请输入支付密码";
    payAlert.detail = @"提现";
    payAlert.amount= 10;
    [payAlert show];
    payAlert.completeHandle = ^(NSString *inputPwd) {
        //something 
    };
```
    
    
# License  
MIT