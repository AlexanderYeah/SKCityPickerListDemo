//
//  AddressPickerDemo.h
//  BAddressPickerDemo
//
//  Created by AY on 16/1/13.
//  Copyright © 2016年 MacPro. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef void(^SelectorCityBlock)(NSString *str);
@interface AddressPickerDemo : UIViewController
@property(nonatomic, copy) SelectorCityBlock Cityblock;
@end

