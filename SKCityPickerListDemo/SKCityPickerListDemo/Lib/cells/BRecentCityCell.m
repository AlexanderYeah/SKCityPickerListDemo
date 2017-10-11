//
//  BRecentCityCell.m
//  Bee
//
//  Created by AY on 16/1/12.
//  Copyright © 2016年 Lin. All rights reserved.
//

#import "BRecentCityCell.h"
#import "BAddressHeader.h"

@interface BRecentCityCell ()
@property (nonatomic, strong) NSMutableArray *currentArray;
@end
@implementation BRecentCityCell

- (void)awakeFromNib {
    // Initialization code
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.backgroundColor = BG_CELL;
        [self.contentView addSubview:self.firstButton];
        [self.contentView addSubview:self.secondButton];
        [self.contentView addSubview:self.thirdButton];
        [self.contentView addSubview:self.fourthButton];
        [self.contentView addSubview:self.fifthButton];
        [self.contentView addSubview:self.sixthButton];
        [self.contentView addSubview:self.seventhButton];
        [self.contentView addSubview:self.eighthButton];
        
        NSMutableArray *array = [[NSMutableArray alloc]initWithCapacity:0];
        [array addObject:self.firstButton];
        [array addObject:self.secondButton];
        [array addObject:self.thirdButton];
        [array addObject:self.fourthButton];
        [array addObject:self.fifthButton];
        [array addObject:self.sixthButton];
        [array addObject:self.seventhButton];
        [array addObject:self.eighthButton];
        
        for (int i = 0; i < self.currentArray.count; i ++) {
            
            UIButton *btn = array[i];
            [btn setTitle:self.currentArray[i] forState:UIControlStateNormal];
        }
        
        // 隐藏按钮
        for (NSInteger i = self.currentArray.count; i < array.count; i ++) {
            UIButton *btn = array[i];
            [btn setHidden:YES];
        }
        
        
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    
    // Configure the view for the selected state
}

#pragma mark - Event Response
- (void)buttonWhenClick:(void (^)(UIButton *))block{
    self.buttonClickBlock = block;
}

- (void)buttonClick:(UIButton*)button{
    self.buttonClickBlock(button);
}

#pragma mark - Getter and Setter
- (UIButton*)firstButton{
    if (_firstButton == nil) {
        _firstButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        _firstButton.frame = CGRectMake(15, 15, BUTTON_WIDTH, BUTTON_HEIGHT);
        [_firstButton setTitle:@"" forState:UIControlStateNormal];
        _firstButton.titleLabel.font = [UIFont systemFontOfSize:16.0];
        _firstButton.tintColor = [UIColor blackColor];
        _firstButton.backgroundColor = [UIColor whiteColor];
        _firstButton.layer.borderColor = [UIColorFromRGBA(237, 237, 237, 1.0) CGColor];
        _firstButton.layer.borderWidth = 1;
        _firstButton.layer.cornerRadius = 3;
        [_firstButton addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _firstButton;
}

- (UIButton*)secondButton{
    if (_secondButton == nil) {
        _secondButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        _secondButton.frame = CGRectMake(self.firstButton.frame.size.width + 30, 15, BUTTON_WIDTH, BUTTON_HEIGHT);
        [_secondButton setTitle:@"" forState:UIControlStateNormal];
        _secondButton.titleLabel.font = [UIFont systemFontOfSize:16.0];
        _secondButton.tintColor = [UIColor blackColor];
        _secondButton.backgroundColor = [UIColor whiteColor];
        _secondButton.alpha = 0.8;
        _secondButton.layer.borderColor = [UIColorFromRGBA(237, 237, 237, 1.0) CGColor];
        _secondButton.layer.borderWidth = 1;
        _secondButton.layer.cornerRadius = 3;
        [_secondButton addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _secondButton;
}

- (UIButton *)thirdButton
{
    if (_thirdButton == nil) {
        _thirdButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        _thirdButton.frame = CGRectMake(self.secondButton.frame.size.width * 2  + 45, 15, BUTTON_WIDTH, BUTTON_HEIGHT);
        [_thirdButton setTitle:@"" forState:UIControlStateNormal];
        _thirdButton.titleLabel.font = [UIFont systemFontOfSize:16.0];
        _thirdButton.tintColor = [UIColor blackColor];
        _thirdButton.backgroundColor = [UIColor whiteColor];
        _thirdButton.alpha = 0.8;
        _thirdButton.layer.borderColor = [UIColorFromRGBA(237, 237, 237, 1.0) CGColor];
        _thirdButton.layer.borderWidth = 1;
        _thirdButton.layer.cornerRadius = 3;
        [_thirdButton addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _thirdButton;
    
}

- (UIButton *)fourthButton
{
    if (_fourthButton == nil) {
        _fourthButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        _fourthButton.frame = CGRectMake(self.thirdButton.frame.size.width * 3 + 60, 15, BUTTON_WIDTH, BUTTON_HEIGHT);
        [_fourthButton setTitle:@"" forState:UIControlStateNormal];
        _fourthButton.titleLabel.font = [UIFont systemFontOfSize:16.0];
        _fourthButton.tintColor = [UIColor blackColor];
        _fourthButton.backgroundColor = [UIColor whiteColor];
        _fourthButton.alpha = 0.8;
        _fourthButton.layer.borderColor = [UIColorFromRGBA(237, 237, 237, 1.0) CGColor];
        _fourthButton.layer.borderWidth = 1;
        _fourthButton.layer.cornerRadius = 3;
        [_fourthButton addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _fourthButton;
    
}

- (UIButton *)fifthButton
{
    if (_fifthButton == nil) {
        _fifthButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        _fifthButton.frame = CGRectMake(15 , 15 + self.firstButton.frame.size.height + 15, BUTTON_WIDTH, BUTTON_HEIGHT);
        [_fifthButton setTitle:@"" forState:UIControlStateNormal];
        _fifthButton.titleLabel.font = [UIFont systemFontOfSize:16.0];
        _fifthButton.tintColor = [UIColor blackColor];
        _fifthButton.backgroundColor = [UIColor whiteColor];
        _fifthButton.alpha = 0.8;
        _fifthButton.layer.borderColor = [UIColorFromRGBA(237, 237, 237, 1.0) CGColor];
        _fifthButton.layer.borderWidth = 1;
        _fifthButton.layer.cornerRadius = 3;
        [_fifthButton addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _fifthButton;
    
}

- (UIButton *)sixthButton
{
    if (_sixthButton == nil) {
        _sixthButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        _sixthButton.frame = CGRectMake(self.firstButton.frame.size.width  + 15 * 2, 15 + self.firstButton.frame.size.height + 15, BUTTON_WIDTH, BUTTON_HEIGHT);
        [_sixthButton setTitle:@"" forState:UIControlStateNormal];
        _sixthButton.titleLabel.font = [UIFont systemFontOfSize:16.0];
        _sixthButton.tintColor = [UIColor blackColor];
        _sixthButton.backgroundColor = [UIColor whiteColor];
        _sixthButton.alpha = 0.8;
        _sixthButton.layer.borderColor = [UIColorFromRGBA(237, 237, 237, 1.0) CGColor];
        _sixthButton.layer.borderWidth = 1;
        _sixthButton.layer.cornerRadius = 3;
        [_sixthButton addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _sixthButton;
    
}

- (UIButton *)seventhButton
{
    if (_seventhButton == nil) {
        _seventhButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        _seventhButton.frame = CGRectMake(self.firstButton.frame.size.width * 2 + 15 * 3, 15 + self.firstButton.frame.size.height + 15, BUTTON_WIDTH, BUTTON_HEIGHT);
        [_seventhButton setTitle:@"" forState:UIControlStateNormal];
        _seventhButton.titleLabel.font = [UIFont systemFontOfSize:16.0];
        _seventhButton.tintColor = [UIColor blackColor];
        _seventhButton.backgroundColor = [UIColor whiteColor];
        _seventhButton.alpha = 0.8;
        _seventhButton.layer.borderColor = [UIColorFromRGBA(237, 237, 237, 1.0) CGColor];
        _seventhButton.layer.borderWidth = 1;
        _seventhButton.layer.cornerRadius = 3;
        [_seventhButton addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _seventhButton;
    
}


- (UIButton *)eighthButton
{
    if (_eighthButton == nil) {
        _eighthButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        _eighthButton.frame = CGRectMake(self.firstButton.frame.size.width * 3 + 15 * 4, 15 + self.firstButton.frame.size.height + 15, BUTTON_WIDTH, BUTTON_HEIGHT);
        [_eighthButton setTitle:@"" forState:UIControlStateNormal];
        _eighthButton.titleLabel.font = [UIFont systemFontOfSize:16.0];
        _eighthButton.tintColor = [UIColor blackColor];
        _eighthButton.backgroundColor = [UIColor whiteColor];
        _eighthButton.alpha = 0.8;
        _eighthButton.layer.borderColor = [UIColorFromRGBA(237, 237, 237, 1.0) CGColor];
        _eighthButton.layer.borderWidth = 1;
        _eighthButton.layer.cornerRadius = 3;
        [_eighthButton addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _eighthButton;
    
}



- (NSMutableArray*)currentArray{
    if (_currentArray == nil) {
        _currentArray = [[NSUserDefaults standardUserDefaults] objectForKey:currentCity];
    }
    return _currentArray;
}

@end
