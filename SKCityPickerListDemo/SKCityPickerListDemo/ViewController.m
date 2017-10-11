//
//  ViewController.m
//  SKCityPickerListDemo
//
//  Created by AY on 2017/10/11.
//  Copyright © 2017年 AlexanderYeah. All rights reserved.
//

#import "ViewController.h"
#import "AddressPickerDemo.h"
@interface ViewController ()

@property (nonatomic,strong)UILabel *resultShowLbl;

@end

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	
	
	self.title = @"AY 城市选择Demo";
	//
	UIButton *selectBtn = [UIButton buttonWithType:UIButtonTypeCustom];
	selectBtn.frame = CGRectMake(100, 100, 200, 40);
	[selectBtn setTitle:@"Select City" forState:UIControlStateNormal];
	[selectBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
	[selectBtn addTarget:self action:@selector(selectBtnClick) forControlEvents:UIControlEventTouchUpInside];
	selectBtn.layer.borderWidth = 1;
	selectBtn.layer.borderColor = [UIColor blackColor].CGColor;
	[self.view addSubview:selectBtn];
	
	UILabel *markLbl = [[UILabel alloc]init];
	markLbl.textColor = [UIColor blackColor];
	markLbl.text = @"select result as below";
	markLbl.textAlignment = NSTextAlignmentCenter;
	markLbl.frame = CGRectMake(100, 200, 200, 40);
	[self.view addSubview:markLbl];
	
	
	// 选择城市的结果
	UILabel *resultLbl = [[UILabel alloc]init];
	_resultShowLbl = resultLbl;
	resultLbl.textColor = [UIColor redColor];
	resultLbl.font = [UIFont boldSystemFontOfSize:22.0f];
	resultLbl.textAlignment = NSTextAlignmentCenter;
	resultLbl.frame = CGRectMake(100, 300, 200, 40);
	[self.view addSubview:resultLbl];
	
	// 添加监听
	[[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(receiveResult:) name:@"citySelectResult" object:nil];
	
}

#pragma mark - 选择城市按钮的点击事件
- (void)selectBtnClick
{
	
	AddressPickerDemo *demoVC = [[AddressPickerDemo alloc]init];
	
    [self.navigationController pushViewController:demoVC animated:YES];
}


- (void)receiveResult:(NSNotification *)noti
{
	_resultShowLbl.text = noti.object;

}

- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}


@end
