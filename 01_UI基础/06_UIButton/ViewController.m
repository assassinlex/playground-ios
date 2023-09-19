//
//  ViewController.m
//  06_UIButton
//
//  Created by 罗啸 on 2023/8/30.
//

#import "ViewController.h"
#import "CustomButton.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // 创建 UIButton
    CustomButton *btn = [CustomButton buttonWithType:UIButtonTypeCustom];
    // 设置 frame
    btn.frame = CGRectMake(100, 100, 170, 70);
    // 设置背景颜色
    btn.backgroundColor = [UIColor grayColor];
    // 设置文字
    [btn setTitle:@"按我试试" forState:UIControlStateNormal];
    btn.titleLabel.backgroundColor = [UIColor yellowColor];
    // 设置图片
    [btn setImage:[UIImage imageNamed:@"miniplayer_btn_playlist_normal"] forState:UIControlStateNormal];
    btn.imageView.backgroundColor = [UIColor blueColor];
    // 显示
    [self.view addSubview:btn];
}


@end
