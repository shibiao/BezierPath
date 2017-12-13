//
//  DrawView.m
//  BezierPath
//
//  Created by sycf_ios on 2017/12/13.
//  Copyright © 2017年 sycf_ios. All rights reserved.
//

#import "DrawView.h"

@implementation DrawView
//设置线宽
-(void)setLineWidth:(CGFloat)lineWidth{
    _lineWidth = lineWidth;
    self.path.lineWidth = lineWidth;
}

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        //默认宽度
        self.path.lineWidth = 4;
    }
    return self;
}
//设置颜色
-(void)setPathColor:(SBColor)color{
    _color = color;
    switch (color) {
        case white:
            [[UIColor whiteColor]setStroke];
            break;
        case black:
            [[UIColor blackColor]setStroke];
            break;
        case red:
            [[UIColor redColor]setStroke];
            break;
        case yellow:
            [[UIColor yellowColor]setStroke];
            break;
        case blue:
            [[UIColor blueColor]setStroke];
            break;
        case gray:
            [[UIColor grayColor]setStroke];
            break;
        case orange:
            [[UIColor orangeColor]setStroke];
            break;
        case green:
            [[UIColor greenColor]setStroke];
            break;
    }
}
//UIBezierPath懒加载
-(UIBezierPath *)path{
    if (!_path) {
        _path = [UIBezierPath bezierPath];
        _path.lineCapStyle = kCGLineCapRound;
        _path.lineJoinStyle = kCGLineJoinRound;
    }
    return _path;
}

- (void)drawRect:(CGRect)rect {
    //线宽
    [self setPathColor:_color];

    [self.path stroke];
    
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    CGPoint point = [event.allTouches.anyObject locationInView:self];
    [self.path moveToPoint:point];
    [self setNeedsDisplay];
}
-(void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    CGPoint point = [event.allTouches.anyObject locationInView:self];
    [self.path addLineToPoint:point];
    [self.path moveToPoint:point];
    [self setNeedsDisplay];
}
-(void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    CGPoint point = [event.allTouches.anyObject locationInView:self];
    [self.path addLineToPoint:point];
    [self.path closePath];
    [self setNeedsDisplay];
   
}
-(void)clearPath{
    [self.path removeAllPoints];
    [self setNeedsDisplay];
}
@end
