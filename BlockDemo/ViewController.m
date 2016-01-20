//
//  ViewController.m
//  BlockDemo
//
//  Created by junhaoshen on 15/12/30.
//  Copyright © 2015年 junhaoshen. All rights reserved.
//

#import "ViewController.h"

#import "SeViewController.h"
@interface ViewController ()

@end

@implementation ViewController
{
    UILabel * label;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    label = [[UILabel alloc]initWithFrame:CGRectMake(50, 200, 200, 50)];
    label.backgroundColor = [UIColor orangeColor];
    label.textColor = [UIColor blackColor];
    [self.view addSubview:label];
    
    UIButton * button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(10, 64, 80, 30);
    button.alpha = 0.6;
    button.backgroundColor = [UIColor magentaColor];
    [button setTitle:[NSString stringWithFormat:@"..."] forState:UIControlStateNormal];
    [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [button setTitleColor:[UIColor blueColor] forState:UIControlStateHighlighted];
    [button addTarget:self action:@selector(onClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
//
//    UIButton * button1 = [UIButton buttonWithType:UIButtonTypeCustom];
//    button1.frame = CGRectMake(100, 30, 80, 30);
//    button1.alpha = 0.6;
//    button1.backgroundColor = [UIColor magentaColor];
//    [button1 setTitle:[NSString stringWithFormat:@"交通地图"] forState:UIControlStateNormal];
//    [button1 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
//    [button1 setTitleColor:[UIColor blueColor] forState:UIControlStateHighlighted];
//    [button1 addTarget:self action:@selector(onClick1) forControlEvents:UIControlEventTouchUpInside];
//    [self.view addSubview:button1];

    


   
    
}
-(void)onClick{
    
    SeViewController * se = [[SeViewController alloc]init];
    
    
//    SeViewController * secondVC = [[SeViewController alloc]init];
    
    
    se.myBlock = ^(NSString * str){
        
        label.text = str;
        
    };
    
    [self presentViewController:se animated:NO completion:nil];
    
//    [self.navigationController pushViewController:se animated:nil];
}


//-(void)onClick1{
//    
////    
////    SecondViewController * secondVC = [[SecondViewController alloc]init];
////    
////    
////    secondVC.myBlock = ^(NSString * str){
////        
////        label.text = str;
////        
////    };
////
//    
//}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
