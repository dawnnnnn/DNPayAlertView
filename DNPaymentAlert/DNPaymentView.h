//
//  DNPaymentView.h
//  DNPayAlertDemo
//
//  Created by dawnnnnn on 15/12/9.
//  Copyright © 2015年 dawnnnnn. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DNPaymentView : UIViewController

@property (nonatomic, copy) NSString *titleStr, *detail;
@property (nonatomic, assign) CGFloat amount;

@property (nonatomic,copy) void (^completeHandle)(NSString *inputPwd);

- (void)show;

@end
