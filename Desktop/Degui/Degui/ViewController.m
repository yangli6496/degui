//
//  ViewController.m
//  Degui
//
//  Created by corlink on 2019/11/12.
//  Copyright © 2019年 com.degugo.ucsearch. All rights reserved.
//

#import "ViewController.h"
#import "Search/DGUrlBarView.h"

#define TopHeight 124.0

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor colorWithHexString:BKColoris];
    DGUrlBarView *d = [[DGUrlBarView alloc] initWithFrame:CGRectMake(0, STATUSBAR_HEIGHT, kScreenWidth, TopHeight)];
    [self.view addSubview:d];

}


@end
