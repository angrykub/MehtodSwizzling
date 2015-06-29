//
//  ViewController.m
//  MethodSwizzlling
//
//  Created by Dylan.Lee on 15/6/29.
//  Copyright © 2015年 Dylan.Lee. All rights reserved.
//

#import "ViewController.h"
#import "FirstViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.view setBackgroundColor:[UIColor whiteColor]];
    self.title = @"mainVC";
    UIBarButtonItem *rightBtn = [[UIBarButtonItem alloc] initWithTitle:@"NextPage" style:UIBarButtonItemStylePlain target:self action:@selector(nextPageClicked:)];
    self.navigationItem.rightBarButtonItem = rightBtn;
}

- (void)nextPageClicked:(UIBarButtonItem *)sender
{
    FirstViewController *firstVC = [[FirstViewController alloc]init];
    [self.navigationController pushViewController:firstVC animated:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}
@end
