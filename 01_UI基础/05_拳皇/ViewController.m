//
//  ViewController.m
//  拳皇
//
//  Created by 罗啸 on 2023/8/29.
//

#import "ViewController.h"

/**
 * 图片资源的两种方式
 * 1.
 * 2.
 */

@interface ViewController ()
// 动画图片显示区
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
// 站立图片
@property (strong, nonatomic) NSArray *standImages;
// 小招图片
@property (strong, nonatomic) NSArray *smallImages;
// 大招图片
@property (strong, nonatomic) NSArray *bigImages;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.standImages = [self loadAllImagesWithImagePrefix:@"stand" count:10];
    self.smallImages = [self loadAllImagesWithImagePrefix:@"xiaozhao3" count:39];
    self.bigImages = [self loadAllImagesWithImagePrefix:@"dazhao" count:87];
    // 默认站立动画
    [self stand];
}


// 加载图片资源
- (NSArray *)loadAllImagesWithImagePrefix:(NSString *)prefix count:(int)count {
    // 初始化返回数据
    NSMutableArray<UIImage *> *images = [NSMutableArray array];
    for (int i = 1; i <= count; i++) {
        // 图片名称
        NSString *imageName = [NSString stringWithFormat:@"%@_%d", prefix, i];
        // 创建 UIImage
        NSString *imagePath = [[NSBundle mainBundle] pathForResource:imageName ofType:@"png"];
        UIImage *image = [UIImage imageWithContentsOfFile:imagePath];
        // 填充数组
        [images addObject:image];
    }
    return images;
}

// 动画
- (void) playWithImages:(NSArray *)images count:(NSInteger)count duration:(NSTimeInterval)duration isStand:(BOOL)isStand {
    // 动画图片集合
    self.imageView.animationImages = images;
    // 重播次数
    self.imageView.animationRepeatCount = count;
    // 一次播放时长
    self.imageView.animationDuration = duration;
    // 开始播放
    [self.imageView startAnimating];
    // 结束后是否播放站立动画
    if (isStand) {
        [self performSelector:@selector(stand) withObject:nil afterDelay:self.imageView.animationDuration];
    }
}

// 站立
- (IBAction)stand {
    [self playWithImages:self.standImages count:0 duration:0.6 isStand:NO];
}

// 小招
- (IBAction)small {
    [self playWithImages:self.smallImages count:1 duration:1.5 isStand:YES];
}

// 大招
- (IBAction)big {
    [self playWithImages:self.bigImages count:1 duration:3.0 isStand:YES];
}

// 结束 -- 释放内存
- (IBAction)end {
    self.standImages = nil;
    self.smallImages = nil;
    self.bigImages = nil;
    self.imageView.animationImages = nil;
}

@end
