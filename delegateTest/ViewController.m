//
//  ViewController.m
//  delegateTest
//
//  Created by NEW on 17/2/27.
//  Copyright © 2017年 XM. All rights reserved.
//

#import "ViewController.h"

/********** 4、包含代理头文件 ***********/
#import "XMViewController.h"

@interface ViewController ()<XMViewControllerDelegate> /******* 需要遵守的代理协议 ********/

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor redColor];
    
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [super touchesBegan:touches withEvent:event];
    
    /********* 5、创建xm对象 **********/
    XMViewController *xm = [[XMViewController alloc] init];
    /***** 设置代理为此类（也就是self）****/
    xm.delegate = self;
    
    // 页面跳转
    [self presentViewController:xm animated:YES completion:nil];
}


/********6、实现代理对象的方法********/
- (void)sendInfo:(NSString *)info
{
    NSLog(@"----------传来的信息是：%@---------", info);
}

@end
