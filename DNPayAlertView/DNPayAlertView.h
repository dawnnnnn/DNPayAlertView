//
//  DNPayAlertView.h
//  DNPayAlertDemo
//
//  Created by dawnnnnn on 15/12/9.
//  Copyright © 2015年 dawnnnnn. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface DNPayAlertView : UIViewController

@property (nonatomic, strong) NSString *titleStr;
@property (nonatomic, strong) NSString *detail;
@property (nonatomic, assign) CGFloat amount;

@property (nonatomic, copy) void (^completeHandle)(NSString *inputPwd);

- (void)show;

@end

NS_ASSUME_NONNULL_END
