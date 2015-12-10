//
//  DCPaymentAlert.m
//  DCPayAlertDemo
//
//  Created by dawnnnnn on 15/12/9.
//  Copyright © 2015年 dawnnnnn. All rights reserved.
//

#import "DCPaymentAlert.h"
#import "DCPwdTextField.h"
#import "DCPaymentView.h"

#define TITLE_HEIGHT 46
@interface DCPaymentAlert()<DCPasswordDelegate>

@property (nonatomic, strong) UIButton *closeBtn;
@property (nonatomic, strong) UILabel *titleLabel, *line, *detailLabel, *amountLabel;
@property (nonatomic, strong) DCPwdTextField *inputView;

@end


@implementation DCPaymentAlert

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        self.layer.masksToBounds = YES;
        self.layer.cornerRadius = 5.;
        self.backgroundColor = [UIColor colorWithWhite:1. alpha:.9];
        
        [self drawView];
    }
    return self;
}

- (void)drawView {
    
    _titleLabel = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, self.bounds.size.width, TITLE_HEIGHT)];
    _titleLabel.textAlignment = NSTextAlignmentCenter;
    _titleLabel.textColor = [UIColor darkGrayColor];
    _titleLabel.font = [UIFont systemFontOfSize:17];
    [self addSubview:_titleLabel];
    
    _closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [_closeBtn setFrame:CGRectMake(0, 0, TITLE_HEIGHT, TITLE_HEIGHT)];
    [_closeBtn setTitle:@"╳" forState:UIControlStateNormal];
    [_closeBtn setTitleColor:[UIColor darkGrayColor] forState:UIControlStateNormal];
    [_closeBtn addTarget:self action:@selector(closeView) forControlEvents:UIControlEventTouchUpInside];
    _closeBtn.titleLabel.font = [UIFont systemFontOfSize:15];
    [self addSubview:_closeBtn];
    
    _line = [[UILabel alloc]initWithFrame:CGRectMake(0, TITLE_HEIGHT, self.bounds.size.width, .5f)];
    _line.backgroundColor = [UIColor lightGrayColor];
    [self addSubview:_line];
    
    _detailLabel = [[UILabel alloc]initWithFrame:CGRectMake(15, TITLE_HEIGHT+15, self.bounds.size.width-30, 20)];
    _detailLabel.textAlignment = NSTextAlignmentCenter;
    _detailLabel.textColor = [UIColor darkGrayColor];
    _detailLabel.font = [UIFont systemFontOfSize:16];
    [self addSubview:_detailLabel];
    
    _amountLabel = [[UILabel alloc]initWithFrame:CGRectMake(15, TITLE_HEIGHT*2, self.bounds.size.width-30, 25)];
    _amountLabel.textAlignment = NSTextAlignmentCenter;
    _amountLabel.textColor = [UIColor darkGrayColor];
    _amountLabel.font = [UIFont systemFontOfSize:33];
    [self addSubview:_amountLabel];
    
    _inputView = [[DCPwdTextField alloc]initWithFrame:CGRectMake(15, self.frame.size.height-(self.frame.size.width-30)/6-15, self.frame.size.width-30, (self.frame.size.width-30)/6)];
    _inputView.layer.borderWidth = 1.f;
    _inputView.layer.borderColor = [UIColor colorWithRed:.9 green:.9 blue:.9 alpha:1.].CGColor;
    _inputView.delegate = self;
    [self addSubview:_inputView];
    
}

- (void)closeView {

}

#pragma mark - set
- (void)setTitle:(NSString *)title {
    if (_title != title) {
        _title = title;
        _titleLabel.text = _title;
    }
}

- (void)setDetail:(NSString *)detail {
    if (_detail != detail) {
        _detail = detail;
        _detailLabel.text = _detail;
    }
}

- (void)setAmount:(CGFloat)amount {
    if (_amount != amount) {
        _amount = amount;
        _amountLabel.text = [NSString stringWithFormat:@"￥%.2f  ",amount];
    }
}



@end
