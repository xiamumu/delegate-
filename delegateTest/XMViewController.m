//
//  XMViewController.m
//  代理事例
//
//  Created by NEW on 17/2/27.
//  Copyright © 2017年 XM. All rights reserved.
//

#import "XMViewController.h"

@interface XMViewController ()

@end

@implementation XMViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor orangeColor];
    
    [self test];
    
    
    
}

/*************** 3、在需要传送值得地方把值传出去 *****************/
- (void)test
{
    
    if ([self.delegate respondsToSelector:@selector(sendInfo:)]) {
        
        NSString *info = @"有需要就发消息给我哦！";
        [self.delegate sendInfo:info];
    }
}

@end
