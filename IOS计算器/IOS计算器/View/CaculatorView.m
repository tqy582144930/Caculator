//
//  CaculatorView.m
//  IOS计算器
//
//  Created by 涂强尧 on 2018/9/27.
//  Copyright © 2018年 涂强尧. All rights reserved.
//

#import "CaculatorView.h"

@implementation CaculatorView

- (void)caculateViewInit {
    self.backgroundColor = [UIColor blackColor];
    _zeroButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [_zeroButton setTitle:@"0" forState:UIControlStateNormal];
    [_zeroButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    _zeroButton.titleLabel.font = [UIFont systemFontOfSize:40];
    _zeroButton.layer.cornerRadius = 45;
    _zeroButton.backgroundColor = [UIColor colorWithRed:0.20f green:0.20f blue:0.20f alpha:1.00f];
    _zeroButton.tag = 105;
    [self addSubview:_zeroButton];
    
    _firstButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [_firstButton setTitle:@"1" forState:UIControlStateNormal];
    [_firstButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    _firstButton.titleLabel.font = [UIFont systemFontOfSize:35];
    _firstButton.layer.cornerRadius = 45;
    _firstButton.backgroundColor = [UIColor colorWithRed:0.20f green:0.20f blue:0.20f alpha:1.00f];
    _firstButton.tag = 104;
    [self addSubview:_firstButton];
    
    _secondButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [_secondButton setTitle:@"2" forState:UIControlStateNormal];
    [_secondButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    _secondButton.titleLabel.font = [UIFont systemFontOfSize:35];
    _secondButton.layer.cornerRadius = 45;
    _secondButton.backgroundColor = [UIColor colorWithRed:0.20f green:0.20f blue:0.20f alpha:1.00f];
    _secondButton.tag = 109;
    [self addSubview:_secondButton];
    
    _thridButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [_thridButton setTitle:@"3" forState:UIControlStateNormal];
    [_thridButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    _thridButton.titleLabel.font = [UIFont systemFontOfSize:35];
    _thridButton.layer.cornerRadius = 45;
    _thridButton.backgroundColor = [UIColor colorWithRed:0.20f green:0.20f blue:0.20f alpha:1.00f];
    _thridButton.tag = 113;
    [self addSubview:_thridButton];
    
    _fourthButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [_fourthButton setTitle:@"4" forState:UIControlStateNormal];
    [_fourthButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    _fourthButton.titleLabel.font = [UIFont systemFontOfSize:35];
    _fourthButton.layer.cornerRadius = 45;
    _fourthButton.backgroundColor = [UIColor colorWithRed:0.20f green:0.20f blue:0.20f alpha:1.00f];
    _fourthButton.tag = 103;
    [self addSubview:_fourthButton];
    
    _fifthButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [_fifthButton setTitle:@"5" forState:UIControlStateNormal];
    [_fifthButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    _fifthButton.titleLabel.font = [UIFont systemFontOfSize:35];
    _fifthButton.layer.cornerRadius = 45;
    _fifthButton.backgroundColor = [UIColor colorWithRed:0.20f green:0.20f blue:0.20f alpha:1.00f];
    _fifthButton.tag = 108;
    [self addSubview:_fifthButton];
    
    _sixthButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [_sixthButton setTitle:@"6" forState:UIControlStateNormal];
    [_sixthButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    _sixthButton.titleLabel.font = [UIFont systemFontOfSize:35];
    _sixthButton.layer.cornerRadius = 45;
    _sixthButton.backgroundColor = [UIColor colorWithRed:0.20f green:0.20f blue:0.20f alpha:1.00f];
    _sixthButton.tag = 112;
    [self addSubview:_sixthButton];
    
    _seventhButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [_seventhButton setTitle:@"7" forState:UIControlStateNormal];
    [_seventhButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    _seventhButton.titleLabel.font = [UIFont systemFontOfSize:35];
    _seventhButton.layer.cornerRadius = 45;
    _seventhButton.backgroundColor = [UIColor colorWithRed:0.20f green:0.20f blue:0.20f alpha:1.00f];
    _seventhButton.tag = 102;
    [self addSubview:_seventhButton];
    
    _eighthButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [_eighthButton setTitle:@"8" forState:UIControlStateNormal];
    [_eighthButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    _eighthButton.titleLabel.font = [UIFont systemFontOfSize:35];
    _eighthButton.layer.cornerRadius = 45;
    _eighthButton.backgroundColor = [UIColor colorWithRed:0.20f green:0.20f blue:0.20f alpha:1.00f];
    _eighthButton.tag = 107;
    [self addSubview:_eighthButton];
    
    _ninthButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [_ninthButton setTitle:@"9" forState:UIControlStateNormal];
    [_ninthButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    _ninthButton.titleLabel.font = [UIFont systemFontOfSize:35];
    _ninthButton.layer.cornerRadius = 45;
    _ninthButton.backgroundColor = [UIColor colorWithRed:0.20f green:0.20f blue:0.20f alpha:1.00f];
    _ninthButton.tag = 111;
    [self addSubview:_ninthButton];
    
    _dotButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [_dotButton setTitle:@"." forState:UIControlStateNormal];
    [_dotButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    _dotButton.titleLabel.font = [UIFont systemFontOfSize:35];
    _dotButton.layer.cornerRadius = 45;
    _dotButton.backgroundColor = [UIColor colorWithRed:0.20f green:0.20f blue:0.20f alpha:1.00f];
    _dotButton.tag = 114;
    [self addSubview:_dotButton];
    
    _addButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [_addButton setTitle:@"+" forState:UIControlStateNormal];
    [_addButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    _addButton.titleLabel.font = [UIFont systemFontOfSize:40];
    _addButton.layer.cornerRadius = 45;
    _addButton.backgroundColor = [UIColor colorWithRed:0.95f green:0.60f blue:0.22f alpha:1.00f];
    _addButton.tag = 118;
    [self addSubview:_addButton];
    
    _minusButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [_minusButton setTitle:@"-" forState:UIControlStateNormal];
    [_minusButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    _minusButton.titleLabel.font = [UIFont systemFontOfSize:40];
    _minusButton.layer.cornerRadius = 45;
    _minusButton.backgroundColor = [UIColor colorWithRed:0.95f green:0.60f blue:0.22f alpha:1.00f];
    _minusButton.tag = 117;
    [self addSubview:_minusButton];
    
    _divideButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [_divideButton setTitle:@"÷" forState:UIControlStateNormal];
    [_divideButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    _divideButton.titleLabel.font = [UIFont systemFontOfSize:40];
    _divideButton.layer.cornerRadius = 45;
    _divideButton.backgroundColor = [UIColor colorWithRed:0.95f green:0.60f blue:0.22f alpha:1.00f];
    _divideButton.tag = 115;
    [self addSubview:_divideButton];
    
    _multiplyButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [_multiplyButton setTitle:@"×" forState:UIControlStateNormal];
    [_multiplyButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    _multiplyButton.titleLabel.font = [UIFont systemFontOfSize:40];
    _multiplyButton.layer.cornerRadius = 45;
    _multiplyButton.backgroundColor = [UIColor colorWithRed:0.95f green:0.60f blue:0.22f alpha:1.00f];
    _multiplyButton.tag = 116;
    [self addSubview:_multiplyButton];
    
    _ACButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [_ACButton setTitle:@"AC" forState:UIControlStateNormal];
    [_ACButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    _ACButton.titleLabel.font = [UIFont systemFontOfSize:35];
    _ACButton.layer.cornerRadius = 45;
    _ACButton.backgroundColor = [UIColor colorWithRed:0.65f green:0.65f blue:0.65f alpha:1.00f];
    _ACButton.tag = 101;
    [self addSubview:_ACButton];
    
    _equalButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [_equalButton setTitle:@"=" forState:UIControlStateNormal];
    [_equalButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    _equalButton.titleLabel.font = [UIFont systemFontOfSize:40];
    _equalButton.layer.cornerRadius = 45;
    _equalButton.backgroundColor = [UIColor colorWithRed:0.95f green:0.60f blue:0.22f alpha:1.00f];
    _equalButton.tag = 119;
    [self addSubview:_equalButton];
    
    _leftButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [_leftButton setTitle:@"(" forState:UIControlStateNormal];
    [_leftButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    _leftButton.titleLabel.font = [UIFont systemFontOfSize:35];
    _leftButton.layer.cornerRadius = 45;
    _leftButton.backgroundColor = [UIColor colorWithRed:0.65f green:0.65f blue:0.65f alpha:1.00f];
    _leftButton.tag = 106;
    [self addSubview:_leftButton];
    
    _rightButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [_rightButton setTitle:@")" forState:UIControlStateNormal];
    [_rightButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    _rightButton.titleLabel.font = [UIFont systemFontOfSize:35];
    _rightButton.layer.cornerRadius = 45;
    _rightButton.backgroundColor = [UIColor colorWithRed:0.65f green:0.65f blue:0.65f alpha:1.00f];
    _rightButton.tag = 110;
    [self addSubview:_rightButton];
    
    _topScreenTextView = [[UITextView alloc] init];
    _topScreenTextView.backgroundColor = [UIColor blackColor];
    _topScreenTextView.textAlignment = NSTextAlignmentRight;
    _topScreenTextView.textColor = [UIColor whiteColor];
    _topScreenTextView.font = [UIFont systemFontOfSize:50];
    [self addSubview:_topScreenTextView];
}

- (void)layoutSubviews {
    [super layoutSubviews];
    _ACButton.frame = CGRectMake(14, 240, 90, 90);
    _seventhButton.frame = CGRectMake(14, 340, 90, 90);
    _fourthButton.frame = CGRectMake(14, 440, 90, 90);
    _firstButton.frame = CGRectMake(14, 540, 90, 90);
    _zeroButton.frame = CGRectMake(14, 640, 192, 90);
    _leftButton.frame = CGRectMake(116, 240, 90, 90);
    _eighthButton.frame = CGRectMake(116, 340, 90, 90);
    _fifthButton.frame = CGRectMake(116, 440, 90, 90);
    _secondButton.frame = CGRectMake(116, 540, 90, 90);
    _rightButton.frame = CGRectMake(220, 240, 90, 90);
    _ninthButton.frame = CGRectMake(220, 340, 90, 90);
    _sixthButton.frame = CGRectMake(220, 440, 90, 90);
    _thridButton.frame = CGRectMake(220, 540, 90, 90);
    _dotButton.frame = CGRectMake(220, 640, 90, 90);
    _divideButton.frame = CGRectMake(322, 240, 90, 90);
    _multiplyButton.frame = CGRectMake(322, 340, 90, 90);
    _minusButton.frame = CGRectMake(322, 440, 90, 90);
    _addButton.frame = CGRectMake(322, 540, 90, 90);
    _equalButton.frame = CGRectMake(322, 640, 90, 90);
    _topScreenTextView.frame = CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 230);
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
