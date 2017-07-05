//
//  ViewController.m
//  HQIconButton
//
//  Created by admin on 2017/7/5.
//  Copyright © 2017年 judian. All rights reserved.
//

#import "ViewController.h"
#import "UIButton+HQCustomIcon.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self customIconButton];
}

- (void)customIconButton {
    CGFloat btn_width = 200;
    CGFloat btn_heigth = 70;
    CGFloat margin = 50;
    
    for (int i = 0; i < 4; i ++) {
        //创建button
        UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
        [button setImage:[UIImage imageNamed:@"icon"] forState:UIControlStateNormal];
        [button setBackgroundColor:[UIColor blueColor]];
        [self.view addSubview:button];
        button.frame = CGRectMake((self.view.bounds.size.width - btn_width) / 2, i * (btn_heigth + margin) + 70, btn_width, btn_heigth);
        if (i == 0) {
            [button setTitle:@"图片在左" forState:UIControlStateNormal];
            [button setIconInLeftWithSpacing:5];
        }else if (i == 1) {
            [button setTitle:@"图片在右" forState:UIControlStateNormal];
            [button setIconInRightWithSpacing:5];
        }else if (i == 2) {
            [button setTitle:@"图片在上" forState:UIControlStateNormal];
            [button setIconInTopWithSpacing:5];
        }else {
            [button setTitle:@"图片在下" forState:UIControlStateNormal];
            [button setIconInBottomWithSpacing:5];
        }
     
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
