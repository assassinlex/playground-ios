//
//  CustomButton.m
//  06_UIButton
//
//  Created by 罗啸 on 2023/9/15.
//

#import "CustomButton.h"

@implementation CustomButton

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        // 图片文字居中
        self.titleLabel.textAlignment = NSTextAlignmentCenter;
        self.imageView.contentMode = UIViewContentModeCenter;
    }
    return self;
}

/*
// ios(2.0 ~ 15.0) deprecated, 推荐重写 layoutSubviews 方法来实现布局
// 重写 - 自定义 button 标题
- (CGRect)titleRectForContentRect:(CGRect)contentRect{
    return CGRectMake(0, 0, 100, 70);
}

// 重写 - 自定义 button 图片
- (CGRect)imageRectForContentRect:(CGRect)contentRect{
    return CGRectMake(100, 0, 70, 70);
}
*/


- (void)layoutSubviews{
    [super layoutSubviews];
    self.titleLabel.frame = CGRectMake(0, 0, 100, 70);
    self.imageView.frame = CGRectMake(100, 0, 70, 70);
}
@end
