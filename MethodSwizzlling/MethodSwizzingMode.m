//
//  MethodSwizzingMode.m
//  MethodSwizzlling
//
//  Created by Dylan.Lee on 15/6/29.
//  Copyright © 2015年 Dylan.Lee. All rights reserved.
//

#import "MethodSwizzingMode.h"
#import <objc/runtime.h>
@implementation MethodSwizzingMode
+(void)setUpMethodSwizzing
{
    //UINavigationViewController
    Method pushMethod = class_getInstanceMethod([UINavigationController class], @selector(pushViewController:animated:));
    Method myPushMethod = class_getInstanceMethod([UINavigationController class], @selector(cm_pushViewController:animated:));
    method_exchangeImplementations(pushMethod, myPushMethod);
    Method popPreMethod = class_getInstanceMethod([UINavigationController class], @selector(popViewControllerAnimated:));
    Method myPopPreMethod = class_getInstanceMethod([UINavigationController class], @selector(cm_popViewControllerAnimated:));
    method_exchangeImplementations(popPreMethod, myPopPreMethod);
    Method popToRootMethod = class_getInstanceMethod([UINavigationController class], @selector(popToRootViewControllerAnimated:));
    Method myPopToRootMethod = class_getInstanceMethod([UINavigationController class], @selector(cm_popToRootViewControllerAnimated:));
    method_exchangeImplementations(popToRootMethod, myPopToRootMethod);
    Method popMethod = class_getInstanceMethod([UINavigationController class], @selector(popToViewController:animated:));
    Method mypopMethod = class_getInstanceMethod([UINavigationController class], @selector(cm_popToViewController:animated:));
    method_exchangeImplementations(popMethod, mypopMethod);
}
@end
