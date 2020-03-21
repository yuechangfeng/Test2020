//
//  YCFViewController.m
//  Test2020Pro
//
//  Created by 1640896090@qq.com on 03/20/2020.
//  Copyright (c) 2020 1640896090@qq.com. All rights reserved.
//

#import "YCFViewController.h"

#import "Person.h"

@interface YCFViewController ()

@end

@implementation YCFViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    Person *one = [[Person alloc] init];
    [one personJn];
//    [one testVersion];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
