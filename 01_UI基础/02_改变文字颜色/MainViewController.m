//
//  MainViewController.m
//  02. 改变文字颜色
//
//  Created by 罗啸 on 2023/8/24.
//

#import "MainViewController.h"

@interface MainViewController ()

// 文本对象
@property(nonatomic, weak) IBOutlet UILabel *label;
@end

@implementation MainViewController

#pragma mark - 红色
- (IBAction) clickRedBtn {
    NSLog(@"%s", __func__);
    self.label.textColor = [UIColor redColor];
    self.label.text = @"我是红色";
    self.label.backgroundColor = [UIColor grayColor];
    self.label.textAlignment = NSTextAlignmentCenter;
}

#pragma mark - 绿色
- (IBAction) clickGreenBtn {
    NSLog(@"%s", __func__);
    self.label.textColor = [UIColor greenColor];
    self.label.backgroundColor = [UIColor yellowColor];
    self.label.text = @"我是绿色";
    self.label.textAlignment = NSTextAlignmentCenter;
}

#pragma mark - 蓝色
- (IBAction) clickBlueBtn {
    NSLog(@"%s", __func__);
    self.label.textColor = [UIColor blueColor];
    self.label.text = @"我是蓝色";
    self.label.backgroundColor = [UIColor purpleColor];
    self.label.textAlignment = NSTextAlignmentCenter;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
