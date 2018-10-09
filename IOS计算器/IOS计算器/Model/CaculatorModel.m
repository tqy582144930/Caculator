//
//  CaculatorModel.m
//  IOS计算器
//
//  Created by 涂强尧 on 2018/9/27.
//  Copyright © 2018年 涂强尧. All rights reserved.
//

#import "CaculatorModel.h"

int indexNumber;
int indexChar;

@implementation CaculatorModel

- (instancetype)init {
    self = [super init];
    if (self) {
        _numberMutableArray = [NSMutableArray array];
        _chareMutableArray = [NSMutableArray array];
        indexNumber = 0;
        indexChar = 0;
        _numberMutableArray[0] = @"0";
    }
    return self;
}

- (void)changeStringToNumber:(NSString *)string {
    int i, j = 1;
    double number = 0;
    double dict = 1;
    NSNumber *doubleNumber;
    NSRange dotRange;
    dotRange = [string rangeOfString:@"."];
    for (i = 0; i < string.length; i++) {
        if (i == dotRange.location) {
            j = 0;
            continue;
        }
        if (j) {
            number = number*10 + [string characterAtIndex:i] - '0';
        }else {
            dict = dict * 0.1;
            number = number +dict * ([string characterAtIndex:i] - '0');
        }
    }
    NSLog(@"数字 : %lf",number);
    doubleNumber = [NSNumber numberWithDouble:number];
    _numberMutableArray[indexNumber] = doubleNumber;
    indexNumber++;
}

- (void) changeStringToChar:(NSString *)string {
    int i;
    NSString *str = [string copy];
    if (indexChar == 0) {
        _chareMutableArray[0] = str;
        indexChar++;
    }else {
        if ([str isEqualToString:@"+"] || [str isEqualToString:@"-"]) {
            for (i = indexChar - 1 ; i >= 0; i-- ) {
                if ([_chareMutableArray[i] isEqualToString:@"×"] || [_chareMutableArray[i] isEqualToString:@"÷"]) {
                    indexChar--;
                    [self popCharWithString:_chareMutableArray[indexChar]];
                }else if ([_chareMutableArray[i] isEqualToString:@"+"] || [_chareMutableArray[i] isEqualToString:@"-"]) {
                    indexChar--;
                    [self popCharWithString:_chareMutableArray[indexChar]];
                }else if ([_chareMutableArray[i] isEqualToString:@"("]) {
                    break;
                }
            }
            _chareMutableArray[indexChar] = str;
            indexChar++;
        }else if ([str isEqualToString:@"×"] || [str isEqualToString:@"÷"]){
            for (i = indexChar - 1; i >= 0 ; i--) {
                if ([_chareMutableArray[i] isEqualToString:@"×"] || [_chareMutableArray[i] isEqualToString:@"÷"]) {
                    indexChar--;
                    [self popCharWithString:_chareMutableArray[indexChar] ];
                    _chareMutableArray[indexChar] = str;
                    indexChar++;
                    break;
                }else if ([_chareMutableArray[i] isEqualToString:@"+"] || [_chareMutableArray[i] isEqualToString:@"-"]){
                    _chareMutableArray[indexChar] = str;
                    indexChar++;
                    break;
                }else if ([_chareMutableArray[i] isEqualToString:@"("]){
                    _chareMutableArray[indexChar] = str;
                    indexChar++;
                    break;
                }
            }
        }else if ([str isEqualToString:@"("]){
            _chareMutableArray[indexChar] = str;
            indexChar++;
        }else if ([str isEqualToString:@")"]){
            for (i = indexChar - 1; i>=0; i--) {
                if ( ![_chareMutableArray[i] isEqualToString:@"("] ) {
                    indexChar--;
                    [self popCharWithString:_chareMutableArray[indexChar] ];

                }else{
                    indexChar--;
                    break;
                }
            }
        }
    }
}


-(void)popCharWithString:(NSString *)string{
    if (indexNumber >= 2) {
        double x ,y ;
        y = [_numberMutableArray[indexNumber - 1] doubleValue];
        x = [_numberMutableArray[indexNumber - 2] doubleValue];
        double result;
        NSNumber *doubleNumber;

        indexNumber -= 2;
        if ([string isEqualToString:@"+"]) {
            result = x + y;
        }else if ([string isEqualToString:@"-"]){
            result = x - y;
        }else if ([string isEqualToString:@"×"]){
            result = x * y;
        }else {
            result = x / y;
        }
        doubleNumber = [NSNumber numberWithDouble:result];
        _numberMutableArray[indexNumber] = doubleNumber;
        indexNumber++;
        NSLog(@"result = %lf", result);
        NSLog(@"indexnumber =  %i", indexNumber);
    }
}

-(NSString *)emptyData{
    while (indexChar) {
        indexChar--;
        NSLog(@"charArray = %@", _chareMutableArray);
        [self popCharWithString:_chareMutableArray[indexChar]];
    }
    NSLog(@"最后结果: %@", _numberMutableArray[0]);
    return _numberMutableArray[0];
}


@end
