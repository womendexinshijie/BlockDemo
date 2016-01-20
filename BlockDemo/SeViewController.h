//
//  SeViewController.h
//  BlockDemo
//
//  Created by junhaoshen on 15/12/30.
//  Copyright © 2015年 junhaoshen. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SeViewController : UIViewController
@property (nonatomic,copy) void(^myBlock)(NSString*);
@end
