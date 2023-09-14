//
//  ShopView.h
//  07_xib自定义view
//
//  Created by 罗啸 on 2023/9/14.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ShopView : UIView

+ (instancetype) shopView;

- (void)setIcon:(NSString *)icon;
- (void)setTitle:(NSString *)title;

@end

NS_ASSUME_NONNULL_END
