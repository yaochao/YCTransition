//
//  ViewController.m
//  YCTransition
//
//  Created by yaochao on 15/12/8.
//  Copyright © 2015年 YaoChao. All rights reserved.
//

#import "ViewController.h"
#import "UIView+YCTransition.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
}

- (IBAction)buttonClick {
    UIViewController *secondController = [[UIViewController alloc] init];
    secondController.title = @"secondController";
    secondController.view.backgroundColor = [UIColor greenColor];
    [self.navigationController.view addTransition:YCTransitionTypeCurl direction:YCTransitionDirectionBottom duration:0.5];
    [self.navigationController pushViewController:secondController animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
