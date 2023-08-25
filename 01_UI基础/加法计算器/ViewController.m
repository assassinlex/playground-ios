//
//  ViewController.m
//  加法计算器
//
//  Created by 罗啸 on 2023/8/24.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *num1TextField;
@property (weak, nonatomic) IBOutlet UITextField *num2TextField;
@property (weak, nonatomic) IBOutlet UILabel *result;
@property (weak, nonatomic) IBOutlet UIButton *calBtn;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)sum {
    NSString *str1 = _num1TextField.text;
    if (str1.length == 0) {
        [self warning:@"请输入第一个数"];
        return;
    }
    NSString *str2 = _num2TextField.text;
    if (str2.length == 0) {
        [self warning:@"请输入第二个数"];
        return;
    }
    NSInteger num1 = [str1 integerValue];
    NSInteger num2 = [str2 integerValue];
    NSInteger result = num1 + num2;
    _result.text = [NSString stringWithFormat:@"%zd", result];
    NSLog(@"%zd, %zd, %zd", num1, num2, result);
}

- (void) warning: (NSString *) msg {
    UIAlertController *alertCtl = [UIAlertController alertControllerWithTitle:@"输入有误" message:msg preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *sure = [UIAlertAction actionWithTitle:@"我知道了" style:UIAlertActionStyleDefault handler:nil];
    [alertCtl addAction:sure];
    [self presentViewController:alertCtl animated:YES completion:nil];
}
@end
