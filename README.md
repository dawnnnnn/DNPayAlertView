# DNPaymentAlert
A payment alertview that imitating Wechat with six digital pay passwords.

一款模仿微信的6位数字支付密码弹框。

### [同款Swift版点击此处](https://github.com/dawnnnnn/DNPayAlertView-Swift)

## Preview 预览

![screenshots](https://raw.githubusercontent.com/dawnnnnn/DNPayAlertView/master/screenshots/DCPaymentDemo.gif)


## Usage 使用
``` objc
    DNPaymentView *payAlert = [[DNPaymentView alloc]init];
    payAlert.title = @"请输入支付密码";
    payAlert.detail = @"提现";
    payAlert.amount= 10;
    [payAlert show];
    payAlert.completeHandle = ^(NSString *inputPwd) {
        //something 
    };
```
    
## Update 更新
2017/01/24 : 重构getter，更名为DNPaymentView

2016/03/18 : 将控件类型继承于UIViewController来解决iOS7上与UIAlertView显示时的Window冲突。
    
## License  
MIT


