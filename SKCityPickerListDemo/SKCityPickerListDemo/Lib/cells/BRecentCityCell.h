//
//  BRecentCityCell.h
//  Bee
//
//  Created by AY on 16/1/12.
//  Copyright © 2016年 Lin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BRecentCityCell : UITableViewCell

@property (nonatomic, strong) UIButton *firstButton;

@property (nonatomic, strong) UIButton *secondButton;


@property (nonatomic, strong) UIButton *thirdButton;

@property (nonatomic, strong) UIButton *fourthButton;

@property (nonatomic, strong) UIButton *fifthButton;

@property (nonatomic, strong) UIButton *sixthButton;

@property (nonatomic, strong) UIButton *seventhButton;

@property (nonatomic, strong) UIButton *eighthButton;


@property (nonatomic, copy) void (^buttonClickBlock)(UIButton *button);

- (void)buttonWhenClick:(void(^)(UIButton *button))block;

@end

