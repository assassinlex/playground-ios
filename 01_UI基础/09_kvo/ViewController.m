//
//  ViewController.m
//  09_kvo
//      Key Value Observing: 键值监听
//
//  Created by 罗啸 on 2023/9/19.
//

#import "ViewController.h"
#import "Person.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    Person *person = [[Person alloc] init];
    person.name = @"zs";
    // 给对象添加监听器
    [person addObserver:self forKeyPath:@"name" options:NSKeyValueObservingOptionNew | NSKeyValueObservingOptionOld context:nil];
    person.name = @"ls"; // 触发回调
    person.name = @"ww"; // 触发回调
    person.name = @"ww"; // 触发回调(只要赋值, 不管值是否与之前的相等, 都会触发)
}

// 监听器回调方法
- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context{
    NSLog(@"%@\t%@\t%@", keyPath, object, change);
}


@end
