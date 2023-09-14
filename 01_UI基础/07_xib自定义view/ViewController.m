//
//  ViewController.m
//  07_xib自定义view
//
//  Created by 罗啸 on 2023/9/13.
//

#import "ViewController.h"
#import "ShopView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    ShopView *shopView = [ShopView shopView];
    shopView.frame = CGRectMake(100, 100, 80, 100);
    [shopView setIcon:@"danjianbao"];
    [shopView setTitle:@"单肩包"];
    [self.view addSubview:shopView];
}


@end
