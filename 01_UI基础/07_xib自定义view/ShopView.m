//
//  ShopView.m
//  07_xib自定义view
//
//  Created by 罗啸 on 2023/9/14.
//

#import "ShopView.h"

@interface ShopView ()
@property (weak, nonatomic) IBOutlet UIImageView *iconView;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@end

@implementation ShopView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

+ (instancetype)shopView {
    return [[[NSBundle mainBundle] loadNibNamed:NSStringFromClass(self) owner:nil options:nil] firstObject];
}

- (void)setIcon:(NSString *)icon {
    self.iconView.image = [UIImage imageNamed:icon];
    self.iconView.backgroundColor = [UIColor greenColor];
}

- (void)setTitle:(NSString *)title {
    self.titleLabel.text = title;
    self.titleLabel.backgroundColor = [UIColor orangeColor];
}

@end
