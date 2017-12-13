//
//  ViewController.m
//  BezierPath
//
//  Created by sycf_ios on 2017/12/13.
//  Copyright © 2017年 sycf_ios. All rights reserved.
//

#import "ViewController.h"
#import "DrawView.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet DrawView *drawView;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.drawView.backgroundColor = [UIColor whiteColor];
    self.drawView.color = yellow;
    self.drawView.lineWidth = 8;
    [self.view addSubview:self.drawView];
}
- (IBAction)changeColor:(UIButton *)sender {
    sender.selected = !sender.selected;
    if (sender.selected) {
        self.drawView.color = red;
    }else {
        self.drawView.color = orange;
    }
}
- (IBAction)clearColor:(id)sender {
    [self.drawView clearPath];
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    
}
-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
