//
//  ViewController.m
//  03_父子控件
//
//  Created by 罗啸 on 2023/8/24.
//

#import "ViewController.h"

/*
 常见属性
    父组件
    @property(nonatomic, readonly) UIView *superView;
 
    子组件
    @property(nonatomic, readonly, copy) NSArray *subViews;
 
    组件位置 & 尺寸 (相对于父控件，已父控件的左上角为坐标原点)
    @property(nonatomic) CGRect frame;
 
    组件位置 & 尺寸 (已自身左上角为坐标原点，故 bounds 的 x, y 一般为 0)
    @property(nonatomic) CGRect bounds;
 
    组件位置 (以父控件的左上角为坐标原点)
    @property(nonatomic) CGPoint center;
    
 常见方法
    添加子控件
    [self.view addSubView];
 
    将自身从父组件中移除
    [subView removeFromSuperView];
 
    查找子控件
    [self.view viewWithTag];
*/

@interface ViewController ()
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


@end
