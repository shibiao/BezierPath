//
//  DrawControlView.m
//  BezierPath
//
//  Created by sycf_ios on 2017/12/13.
//  Copyright © 2017年 sycf_ios. All rights reserved.
//

#import "DrawControlView.h"

@interface DrawControlView()

@property (nonatomic, strong) UIView  *mainView;
@end

@implementation DrawControlView
-(UIView *)mainView{
    if (!_mainView) {
        _mainView = [[UIView alloc]init];
    }
    return _mainView;
}
- (instancetype)initWithFrame:(CGRect)rect onFatherView:(UIView *)fatherView
{
    self = [super init];
    if (self) {
        self.mainView.frame = rect;
        [fatherView addSubview:self.mainView];
    }
    return self;
}


@end
