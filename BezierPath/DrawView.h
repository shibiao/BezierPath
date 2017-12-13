//
//  DrawView.h
//  BezierPath
//
//  Created by sycf_ios on 2017/12/13.
//  Copyright © 2017年 sycf_ios. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef NS_ENUM(NSUInteger,SBColor){
    white,
    black,
    red,
    yellow,
    blue,
    gray,
    orange,
    green,
};
@interface DrawView : UIView
//UIBezierPath
@property (nonatomic, strong) UIBezierPath *path;
//设置颜色
@property (nonatomic, assign) SBColor  color;
//线宽
@property (nonatomic, assign,readwrite) CGFloat  lineWidth;
//清除所绘制的线条
-(void)clearPath;
@end
