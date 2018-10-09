//
//  CaculatorModel.h
//  IOS计算器
//
//  Created by 涂强尧 on 2018/9/27.
//  Copyright © 2018年 涂强尧. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CaculatorModel : NSObject

@property (nonatomic, strong) NSMutableString *allMutableString;
@property (nonatomic, strong) NSMutableString *parteMutableString;
@property (nonatomic, strong) NSMutableArray *numberMutableArray;
@property (nonatomic, strong) NSMutableArray *chareMutableArray;

- (void)changeStringToNumber:(NSString *)string;
- (instancetype)init;
- (void)changeStringToChar:(NSString *)string;
- (void)popCharWithString:(NSString *)string;
-(NSString *)emptyData;
- (NSMutableArray *)chareMutableArray;

@end
