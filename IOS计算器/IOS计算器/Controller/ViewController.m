//
//  ViewController.m
//  IOS计算器
//
//  Created by 涂强尧 on 2018/9/27.
//  Copyright © 2018年 涂强尧. All rights reserved.
//

#import "ViewController.h"

int count = 0;//当前有没有小数点，1，当前有
int flag = 0;//(的个数

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _caculatorView = [[CaculatorView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height)];
    [_caculatorView caculateViewInit];
    [self.view addSubview:_caculatorView];
    [self createTarget];
    _caculatorModel = [[CaculatorModel alloc] init];
    _caculatorModel.allMutableString = [[NSMutableString alloc] init];
    _caculatorModel.parteMutableString = [[NSMutableString alloc] init];
}

- (void)createTarget {
    [_caculatorView.zeroButton addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
    [_caculatorView.firstButton addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
    [_caculatorView.secondButton addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
    [_caculatorView.thridButton addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
    [_caculatorView.fourthButton addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
    [_caculatorView.fifthButton addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
    [_caculatorView.sixthButton addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
    [_caculatorView.seventhButton addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
    [_caculatorView.eighthButton addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
    [_caculatorView.ninthButton addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
    [_caculatorView.ACButton addTarget:self action:@selector(SymbolButtonPressed:) forControlEvents:UIControlEventTouchUpInside];
    [_caculatorView.leftButton addTarget:self action:@selector(SymbolButtonPressed:) forControlEvents:UIControlEventTouchUpInside];
    [_caculatorView.rightButton addTarget:self action:@selector(SymbolButtonPressed:) forControlEvents:UIControlEventTouchUpInside];
    [_caculatorView.divideButton addTarget:self action:@selector(operatorButtonPressed:) forControlEvents:UIControlEventTouchUpInside];
    [_caculatorView.multiplyButton addTarget:self action:@selector(operatorButtonPressed:) forControlEvents:UIControlEventTouchUpInside];
    [_caculatorView.minusButton addTarget:self action:@selector(operatorButtonPressed:) forControlEvents:UIControlEventTouchUpInside];
    [_caculatorView.addButton addTarget:self action:@selector(operatorButtonPressed:) forControlEvents:UIControlEventTouchUpInside];
    [_caculatorView.equalButton addTarget:self action:@selector(SymbolButtonPressed:) forControlEvents:UIControlEventTouchUpInside];
    [_caculatorView.dotButton addTarget:self action:@selector(SymbolButtonPressed:) forControlEvents:UIControlEventTouchUpInside];
}

- (void)buttonPressed:(UIButton *)button {
    if (button.tag == 102 || button.tag == 103 || button.tag == 104 || button.tag == 105 || button.tag == 107|| button.tag == 108 || button.tag == 109 || button.tag == 111 || button.tag == 112 || button.tag == 113) {
        if ([_caculatorModel.parteMutableString isEqualToString:@"+"] || [_caculatorModel.parteMutableString isEqualToString:@"-"] || [_caculatorModel.parteMutableString isEqualToString:@"×"] || [_caculatorModel.parteMutableString isEqualToString:@"÷"] ||[_caculatorModel.parteMutableString isEqualToString:@"("]) {
            [_caculatorModel.allMutableString insertString:_caculatorModel.parteMutableString atIndex:[_caculatorModel.allMutableString length]];
            NSLog(@"all1 = %@", _caculatorModel.allMutableString);
            [_caculatorModel changeStringToChar:_caculatorModel.parteMutableString];
            [_caculatorModel.parteMutableString deleteCharactersInRange:NSMakeRange(0, 1)];
        }
    }
    if (button.tag == 102) {//7
        if (![_caculatorModel.parteMutableString isEqualToString:@")"]) {
            [_caculatorModel.parteMutableString insertString:@"7" atIndex:[_caculatorModel.parteMutableString length]];
            _caculatorView.topScreenTextView.text = [NSMutableString stringWithFormat:@"%@%@", _caculatorModel.allMutableString ,_caculatorModel.parteMutableString];
        }
    }
    else if (button.tag == 103) {//4
        if (![_caculatorModel.parteMutableString isEqualToString:@")"]) {
            [_caculatorModel.parteMutableString insertString:@"4" atIndex:[_caculatorModel.parteMutableString length]];
            _caculatorView.topScreenTextView.text = [NSMutableString stringWithFormat:@"%@%@", _caculatorModel.allMutableString ,_caculatorModel.parteMutableString];
        }
    }
    else if (button.tag == 104){//1
        if (![_caculatorModel.parteMutableString isEqualToString:@")"]) {
            [_caculatorModel.parteMutableString insertString:@"1" atIndex:[_caculatorModel.parteMutableString length]];
            _caculatorView.topScreenTextView.text = [NSMutableString stringWithFormat:@"%@%@", _caculatorModel.allMutableString ,_caculatorModel.parteMutableString];
        }
    }
    else if (button.tag == 105) {//0
        if (![_caculatorModel.parteMutableString isEqualToString:@")"]) {
            [_caculatorModel.parteMutableString insertString:@"0" atIndex:[_caculatorModel.parteMutableString length]];
            _caculatorView.topScreenTextView.text = [NSMutableString stringWithFormat:@"%@%@", _caculatorModel.allMutableString ,_caculatorModel.parteMutableString];
        }
    }
    else if (button.tag == 107) {//8
        if (![_caculatorModel.parteMutableString isEqualToString:@")"]) {
            [_caculatorModel.parteMutableString insertString:@"8" atIndex:[_caculatorModel.parteMutableString length]];
            _caculatorView.topScreenTextView.text = [NSMutableString stringWithFormat:@"%@%@", _caculatorModel.allMutableString ,_caculatorModel.parteMutableString];
        }
    }
    else if (button.tag == 108) {//5
        if (![_caculatorModel.parteMutableString isEqualToString:@")"]) {
            [_caculatorModel.parteMutableString insertString:@"5" atIndex:[_caculatorModel.parteMutableString length]];
            _caculatorView.topScreenTextView.text = [NSMutableString stringWithFormat:@"%@%@", _caculatorModel.allMutableString ,_caculatorModel.parteMutableString];
        }
    }
    else if (button.tag == 109) {//2
        if (![_caculatorModel.parteMutableString isEqualToString:@")"]) {
            [_caculatorModel.parteMutableString insertString:@"2" atIndex:[_caculatorModel.parteMutableString length]];
            _caculatorView.topScreenTextView.text = [NSMutableString stringWithFormat:@"%@%@", _caculatorModel.allMutableString ,_caculatorModel.parteMutableString];
        }
    }
    else if (button.tag == 111) {//9
        if (![_caculatorModel.parteMutableString isEqualToString:@")"]) {
            [_caculatorModel.parteMutableString insertString:@"9" atIndex:[_caculatorModel.parteMutableString length]];
            _caculatorView.topScreenTextView.text = [NSMutableString stringWithFormat:@"%@%@", _caculatorModel.allMutableString ,_caculatorModel.parteMutableString];
        }
    }
    else if (button.tag == 112) {//6
        if (![_caculatorModel.parteMutableString isEqualToString:@")"]) {
            [_caculatorModel.parteMutableString insertString:@"6" atIndex:[_caculatorModel.parteMutableString length]];
            _caculatorView.topScreenTextView.text = [NSMutableString stringWithFormat:@"%@%@", _caculatorModel.allMutableString ,_caculatorModel.parteMutableString];
        }
    }
    else if (button.tag == 113) {//3
        if (![_caculatorModel.parteMutableString isEqualToString:@")"]) {
            [_caculatorModel.parteMutableString insertString:@"3" atIndex:[_caculatorModel.parteMutableString length]];
            _caculatorView.topScreenTextView.text = [NSMutableString stringWithFormat:@"%@%@", _caculatorModel.allMutableString ,_caculatorModel.parteMutableString];
        }
    }
    NSLog(@"part = %@", _caculatorModel.parteMutableString);
    NSLog(@"all = %@", _caculatorModel.allMutableString);
}

- (void)SymbolButtonPressed:(UIButton *)button {
    if (button.tag ==114) {//.
        if (count == 0 && _caculatorModel.parteMutableString.length != 0 && !([_caculatorModel.parteMutableString isEqualToString:@"+"] || [_caculatorModel.parteMutableString isEqualToString:@"-"] || [_caculatorModel.parteMutableString isEqualToString:@"×"] || [_caculatorModel.parteMutableString isEqualToString:@"÷"] || [_caculatorModel.parteMutableString isEqualToString:@"("] )) {
            count = 1;
            [_caculatorModel.parteMutableString insertString:@"." atIndex:[_caculatorModel.parteMutableString length]];
            _caculatorView.topScreenTextView.text = [NSMutableString stringWithFormat:@"%@%@", _caculatorModel.allMutableString ,_caculatorModel.parteMutableString];
        }
    }else if (button.tag == 101) {//AC
        count = 0;
        _caculatorModel = [[CaculatorModel alloc] init];
        _caculatorModel.allMutableString = [[NSMutableString alloc] init];
        _caculatorModel.parteMutableString = [[NSMutableString alloc] init];
        _caculatorView.topScreenTextView.text = [NSMutableString stringWithFormat:@"%@%@", _caculatorModel.allMutableString ,_caculatorModel.parteMutableString];
    }else if (button.tag == 106) {//(
        if ([_caculatorModel.parteMutableString isEqualToString:@"+"] || [_caculatorModel.parteMutableString isEqualToString:@"-"] || [_caculatorModel.parteMutableString isEqualToString:@"×"] || [_caculatorModel.parteMutableString isEqualToString:@"÷"]) {
            [_caculatorModel.allMutableString insertString:_caculatorModel.parteMutableString atIndex:[_caculatorModel.allMutableString length]];
            [_caculatorModel changeStringToChar:_caculatorModel.parteMutableString];
            [_caculatorModel.parteMutableString replaceCharactersInRange:NSMakeRange(0, 1) withString:@"("];
            _caculatorView.topScreenTextView.text = [NSMutableString stringWithFormat:@"%@%@", _caculatorModel.allMutableString ,_caculatorModel.parteMutableString];
            flag++;
        } else if (_caculatorModel.parteMutableString.length == 0) {
            [_caculatorModel.parteMutableString insertString:@"(" atIndex:0];
            _caculatorView.topScreenTextView.text = [NSMutableString stringWithFormat:@"%@%@", _caculatorModel.allMutableString ,_caculatorModel.parteMutableString];
            flag++;
        }
    }else if (button.tag == 110) {//)
        if (flag) {
            if ([_caculatorModel.parteMutableString isEqualToString:@"+"] || [_caculatorModel.parteMutableString isEqualToString:@"-"] || [_caculatorModel.parteMutableString isEqualToString:@"×"] || [_caculatorModel.parteMutableString isEqualToString:@"÷"] || [_caculatorModel.parteMutableString isEqualToString:@"."]) {
                //空
            } else {
                [_caculatorModel.allMutableString insertString:_caculatorModel.parteMutableString atIndex:[_caculatorModel.allMutableString length]];
                if ( ![_caculatorModel.parteMutableString isEqualToString:@"("] ) {
                    [_caculatorModel changeStringToNumber:_caculatorModel.parteMutableString];
                }else{
                    [_caculatorModel changeStringToChar:_caculatorModel.parteMutableString];
                }
                [_caculatorModel.parteMutableString replaceCharactersInRange:NSMakeRange(0, _caculatorModel.parteMutableString.length) withString:@")"];
                _caculatorView.topScreenTextView.text = [NSMutableString stringWithFormat:@"%@%@", _caculatorModel.allMutableString ,_caculatorModel.parteMutableString];
                flag--;
            }
        }
    }
    else if (button.tag == 119) {//=
        if (!([_caculatorModel.parteMutableString isEqualToString:@"+"] || [_caculatorModel.parteMutableString isEqualToString:@"-"] || [_caculatorModel.parteMutableString isEqualToString:@"×"] || [_caculatorModel.parteMutableString isEqualToString:@"÷"] || [_caculatorModel.parteMutableString isEqualToString:@"("] || flag)){
            if ( ![_caculatorModel.parteMutableString isEqualToString:@")"] ) {
                [_caculatorModel changeStringToNumber:_caculatorModel.parteMutableString];
            }else{
                [_caculatorModel changeStringToChar:_caculatorModel.parteMutableString];
            }
            NSString *emptyString;
            emptyString = [_caculatorModel emptyData];
            _caculatorView.topScreenTextView.text = [NSMutableString stringWithFormat:@"%@",emptyString];
        }
    }
}

- (void)operatorButtonPressed:(UIButton *)button {
    if (button.tag == 115) {//÷
        if (!([_caculatorModel.parteMutableString isEqualToString:@"("] || [_caculatorModel.parteMutableString isEqualToString:@"."] || _caculatorModel.parteMutableString.length == 0)) {
            count = 0;
            if ([_caculatorModel.parteMutableString isEqualToString:@"+"] ||[_caculatorModel.parteMutableString isEqualToString:@"-"] || [_caculatorModel.parteMutableString isEqualToString:@"×"] || [_caculatorModel.parteMutableString isEqualToString:@"÷"]) {
                
                [_caculatorModel.parteMutableString replaceCharactersInRange:NSMakeRange(0, 1) withString:@"÷"];
            }else {
                [_caculatorModel.allMutableString insertString:_caculatorModel.parteMutableString atIndex:_caculatorModel.allMutableString.length];
                if ( ![_caculatorModel.parteMutableString isEqualToString:@")"] ) {
                    [_caculatorModel changeStringToNumber:_caculatorModel.parteMutableString];
                }else{
                    [_caculatorModel changeStringToChar:_caculatorModel.parteMutableString];
                }
                [_caculatorModel.parteMutableString replaceCharactersInRange:NSMakeRange(0, [_caculatorModel.parteMutableString length]) withString:@"÷"];
            }
            _caculatorView.topScreenTextView.text = [NSMutableString stringWithFormat:@"%@%@", _caculatorModel.allMutableString ,_caculatorModel.parteMutableString];
        }
    }
    else if (button.tag == 116) {//×
        if (!([_caculatorModel.parteMutableString isEqualToString:@"("] || [_caculatorModel.parteMutableString isEqualToString:@"."] || _caculatorModel.parteMutableString.length == 0)) {
            count = 0;
            if ([_caculatorModel.parteMutableString isEqualToString:@"+"] ||[_caculatorModel.parteMutableString isEqualToString:@"-"] || [_caculatorModel.parteMutableString isEqualToString:@"×"] || [_caculatorModel.parteMutableString isEqualToString:@"÷"]) {
                
                [_caculatorModel.parteMutableString replaceCharactersInRange:NSMakeRange(0, 1) withString:@"×"];
            }else {
                [_caculatorModel.allMutableString insertString:_caculatorModel.parteMutableString atIndex:[_caculatorModel.allMutableString length]];
                if ( ![_caculatorModel.parteMutableString isEqualToString:@")"] ) {
                    [_caculatorModel changeStringToNumber:_caculatorModel.parteMutableString];
                }else{
                    [_caculatorModel changeStringToChar:_caculatorModel.parteMutableString];
                }
                [_caculatorModel.parteMutableString replaceCharactersInRange:NSMakeRange(0, [_caculatorModel.parteMutableString length]) withString:@"×"];
            }
            _caculatorView.topScreenTextView.text = [NSMutableString stringWithFormat:@"%@%@", _caculatorModel.allMutableString ,_caculatorModel.parteMutableString];
        }
    }
    else if (button.tag == 117) {//-
        if (!([_caculatorModel.parteMutableString isEqualToString:@"("] || [_caculatorModel.parteMutableString isEqualToString:@"."] || _caculatorModel.parteMutableString.length == 0)) {
            count = 0;
            if ([_caculatorModel.parteMutableString isEqualToString:@"+"] ||[_caculatorModel.parteMutableString isEqualToString:@"-"] || [_caculatorModel.parteMutableString isEqualToString:@"×"] || [_caculatorModel.parteMutableString isEqualToString:@"÷"]) {
                
                [_caculatorModel.parteMutableString replaceCharactersInRange:NSMakeRange(0, 1) withString:@"-"];
            }else {
                [_caculatorModel.allMutableString insertString:_caculatorModel.parteMutableString atIndex:[_caculatorModel.allMutableString length]];
                if ( ![_caculatorModel.parteMutableString isEqualToString:@")"] ) {
                    [_caculatorModel changeStringToNumber:_caculatorModel.parteMutableString];
                }else{
                    [_caculatorModel changeStringToChar:_caculatorModel.parteMutableString];
                }
                [_caculatorModel.parteMutableString replaceCharactersInRange:NSMakeRange(0, [_caculatorModel.parteMutableString length]) withString:@"-"];
            }
            _caculatorView.topScreenTextView.text = [NSMutableString stringWithFormat:@"%@%@", _caculatorModel.allMutableString ,_caculatorModel.parteMutableString];
        }
    }
    else if (button.tag == 118) {//+
        if (!([_caculatorModel.parteMutableString isEqualToString:@"("] || [_caculatorModel.parteMutableString isEqualToString:@"."] || _caculatorModel.parteMutableString.length == 0)) {
            count = 0;
            if ([_caculatorModel.parteMutableString isEqualToString:@"+"] ||[_caculatorModel.parteMutableString isEqualToString:@"-"] || [_caculatorModel.parteMutableString isEqualToString:@"×"] || [_caculatorModel.parteMutableString isEqualToString:@"÷"]) {
                
                [_caculatorModel.parteMutableString replaceCharactersInRange:NSMakeRange(0, 1) withString:@"+"];
            }else {
                [_caculatorModel.allMutableString insertString:_caculatorModel.parteMutableString atIndex:[_caculatorModel.allMutableString length]];
                if ( ![_caculatorModel.parteMutableString isEqualToString:@")"] ) {
                    [_caculatorModel changeStringToNumber:_caculatorModel.parteMutableString];
                }else{
                    [_caculatorModel changeStringToChar:_caculatorModel.parteMutableString];
                }
                [_caculatorModel.parteMutableString replaceCharactersInRange:NSMakeRange(0, [_caculatorModel.parteMutableString length]) withString:@"+"];
            }
            _caculatorView.topScreenTextView.text = [NSMutableString stringWithFormat:@"%@%@", _caculatorModel.allMutableString ,_caculatorModel.parteMutableString];
        }
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
