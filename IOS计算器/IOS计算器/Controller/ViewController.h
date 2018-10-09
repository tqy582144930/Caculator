//
//  ViewController.h
//  IOS计算器
//
//  Created by 涂强尧 on 2018/9/27.
//  Copyright © 2018年 涂强尧. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CaculatorView.h"
#import "CaculatorModel.h"

@interface ViewController : UIViewController

@property (nonatomic, strong) CaculatorView *caculatorView;
@property (nonatomic, strong) CaculatorModel *caculatorModel;

- (void)createTarget;
@end

