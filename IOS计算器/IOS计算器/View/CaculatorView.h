//
//  CaculatorView.h
//  IOS计算器
//
//  Created by 涂强尧 on 2018/9/27.
//  Copyright © 2018年 涂强尧. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CaculatorView : UIView

@property (nonatomic, strong) UIButton *zeroButton;
@property (nonatomic, strong) UIButton *firstButton;
@property (nonatomic, strong) UIButton *secondButton;
@property (nonatomic, strong) UIButton *thridButton;
@property (nonatomic, strong) UIButton *fourthButton;
@property (nonatomic, strong) UIButton *fifthButton;
@property (nonatomic, strong) UIButton *sixthButton;
@property (nonatomic, strong) UIButton *seventhButton;
@property (nonatomic, strong) UIButton *eighthButton;
@property (nonatomic, strong) UIButton *ninthButton;
@property (nonatomic, strong) UIButton *addButton;
@property (nonatomic, strong) UIButton *minusButton;
@property (nonatomic, strong) UIButton *multiplyButton;
@property (nonatomic, strong) UIButton *divideButton;
@property (nonatomic, strong) UIButton *equalButton;
@property (nonatomic, strong) UIButton *ACButton;
@property (nonatomic, strong) UIButton *leftButton;
@property (nonatomic, strong) UIButton *rightButton;
@property (nonatomic, strong) UIButton *dotButton;
@property (nonatomic, strong) UITextView *topScreenTextView;

- (void)caculateViewInit;

@end
