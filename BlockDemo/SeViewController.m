//
//  SeViewController.m
//  BlockDemo
//
//  Created by junhaoshen on 15/12/30.
//  Copyright © 2015年 junhaoshen. All rights reserved.
//

#import "SeViewController.h"

@interface SeViewController ()<UITextFieldDelegate>
@property(nonatomic,strong)UITextField *textFie;

@end

@implementation SeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton *btn =[ UIButton buttonWithType:UIButtonTypeCustom];
    
    [btn setFrame:CGRectMake(90, 90, 100, 60)];
    [btn setTitle:@"返回" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(sendMessage:) forControlEvents:UIControlEventTouchUpInside];
    
    self.textFie = [[UITextField alloc]initWithFrame:CGRectMake(100, 200, 140, 40)];
    self.textFie.placeholder = @"输入数据";
    self.textFie.textColor = [UIColor purpleColor];
    self.textFie.delegate = self;
    
    [self.view addSubview:self.textFie];
    
    
    [self.view addSubview:btn];
    
}

-(void)sendMessage:(UIButton *)btn{
    //调回第一个界面
    
    self.myBlock(self.textFie.text);
//    [self presentViewController:[[ViewController alloc] init] animated:YES completion:nil];
    
    
    
    [self dismissViewControllerAnimated:NO completion:nil];
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
