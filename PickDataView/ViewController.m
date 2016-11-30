//
//  ViewController.m
//  PickDataView
//
//  Created by Shengjun Hao on 2016/11/29.
//  Copyright © 2016年 spuxpu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UIPickerViewDataSource,UIPickerViewDelegate>

@property (weak, nonatomic) IBOutlet UIPickerView *picker;


@property (weak, nonatomic) IBOutlet UILabel *lable;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    self.picker.dataSource = self;
    self.picker.delegate = self;
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


//设置列的数目
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    
    return  3;
}

//设置每列的条目

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    return 4;
}

//设置view
- (nullable NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component __TVOS_PROHIBITED{
    
    return @"test";
}

//返回点击的条目索引号
- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component __TVOS_PROHIBITED{
    
    NSLog(@"positionH %ld positionV %ld",row,component);
    
}


@end
