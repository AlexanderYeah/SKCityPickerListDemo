//
//  AddressPickerDemo.m
//  BAddressPickerDemo
//
//  Created by AY on 16/1/13.
//  Copyright © 2016年 MacPro. All rights reserved.
//

#import "AddressPickerDemo.h"
#import "BAddressPickerController.h"

@interface AddressPickerDemo ()<BAddressPickerDelegate,BAddressPickerDataSource>
@property(nonatomic,strong)NSString* cityStr;
@end

@implementation AddressPickerDemo

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //适配ios7
    if( ([[[UIDevice currentDevice] systemVersion] doubleValue]>=7.0))
    {
        self.navigationController.navigationBar.translucent = NO;
    }
    self.title =@"选择城市";
    [self AnNiuFanHui];
    BAddressPickerController *addressPickerController = [[BAddressPickerController alloc] initWithFrame:self.view.frame];
    addressPickerController.dataSource = self;
    addressPickerController.delegate = self;
    
    [self addChildViewController:addressPickerController];
    [self.view addSubview:addressPickerController.view];
}
//返回按钮
-(void)AnNiuFanHui{
    UIImageView* image =[[UIImageView alloc]initWithFrame:CGRectMake(20, 5, 30, 30)];
    image.image =[UIImage imageNamed:@"back2.png"];
    UIBarButtonItem* leftbtn =[[UIBarButtonItem alloc]initWithCustomView:image];
    self.navigationItem.leftBarButtonItem =leftbtn;
    UITapGestureRecognizer* tapm =[[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(fanhui)];
    [image addGestureRecognizer:tapm];
    
}
-(void)fanhui{
   // self.CityStr =[NSString stringWithFormat:@"%@%@",self.City.text,self.Adress.text];
    // block 是基于C语言的函数，直接传参调用<具体的实现在消息的接收方A>
    NSString* str =[NSString stringWithFormat:@"%@市",self.cityStr];
    if (self.Cityblock) {
        self.Cityblock(str);
    }
    [self dismissViewControllerAnimated:YES completion:^{
        
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - BAddressController Delegate
- (NSArray*)arrayOfHotCitiesInAddressPicker:(BAddressPickerController *)addressPicker{
    return @[@"北京",@"上海",@"深圳",@"杭州",@"广州",@"武汉",@"天津",@"重庆",@"成都",@"苏州"];
}

#pragma mark - 用户选择的结果回调
- (void)addressPicker:(BAddressPickerController *)addressPicker didSelectedCity:(NSString *)city{
    NSLog(@"%@",city);
    self.cityStr =city;
    NSString* str =[NSString stringWithFormat:@"%@市",self.cityStr];
    if (self.Cityblock) {
        self.Cityblock(str);
    }
	
	[[NSNotificationCenter defaultCenter]postNotificationName:@"citySelectResult" object:city userInfo:nil];
	
	[self.navigationController popViewControllerAnimated:YES];
	
	
}

- (void)beginSearch:(UISearchBar *)searchBar{
    [self.navigationController setNavigationBarHidden:YES animated:YES];
}

- (void)endSearch:(UISearchBar *)searchBar{
    [self.navigationController setNavigationBarHidden:NO animated:YES];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

