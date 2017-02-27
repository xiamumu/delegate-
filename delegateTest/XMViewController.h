//
//  XMViewController.h
//  代理事例
//
//  Created by NEW on 17/2/27.
//  Copyright © 2017年 XM. All rights reserved.
//

#import <UIKit/UIKit.h>


/********** 1、代理方法头文件 ***********/
@protocol XMViewControllerDelegate <NSObject>

// 必须实现协议的方法
@required
- (void)sendInfo:(NSString *)info;

// 可以选择实现协议的方法
@optional
- (void)requestInfo;

@end


// 此类正式头文件
@interface XMViewController : UIViewController

/************ 2、声明delegate属性 ***********/
@property (nonatomic, weak) id<XMViewControllerDelegate> delegate;


@end
