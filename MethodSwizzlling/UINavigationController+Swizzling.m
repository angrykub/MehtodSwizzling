//
//  UINavigationController+Swizzling.m
//  MethodSwizzlling
//
//  Created by Dylan.Lee on 15/6/29.
//  Copyright © 2015年 Dylan.Lee. All rights reserved.
//

#import "UINavigationController+Swizzling.h"

@implementation UINavigationController (Swizzling)
- (void)cm_pushViewController:(UIViewController *)viewControllerToShow animated:(BOOL)flag
{
    UIViewController *currentVC = nil;
    UIViewController *preVC  = nil;
    if ([[self.viewControllers lastObject] isKindOfClass:[UIViewController class]])
    {
        preVC = (UIViewController *)[self.viewControllers lastObject];
    }
    if ([viewControllerToShow isKindOfClass:[UIViewController class]])
    {
        currentVC = (UIViewController *)viewControllerToShow;
    }
    NSLog(@"currentVC.title = %@,preVC.title = %@",currentVC.title,preVC.title);
    [self cm_pushViewController:viewControllerToShow animated:flag];
}

- (NSArray *)cm_popToRootViewControllerAnimated:(BOOL)flag
{
    //    [self cm_popToRootViewControllerAnimated:flag];
    UIViewController *currentVC = nil;
    UIViewController *preVC  = nil;
    if ([self.viewControllers[0] isKindOfClass:[UIViewController class]])
    {
        currentVC = (UIViewController *)self.viewControllers[0];
    }
    if ([[self.viewControllers lastObject] isKindOfClass:[UIViewController class]])
    {
        preVC = (UIViewController *)[self.viewControllers lastObject];
    }
    if (currentVC != nil &&preVC != nil)
    {
//        currentVC.clikModelDic.previousPage = preVC.clikModelDic.pageName;
    }
     NSLog(@"currentVC.title = %@,preVC.title = %@",currentVC.title,preVC.title);
    return  [self cm_popToRootViewControllerAnimated:flag];
    
    
}

- (NSArray *)cm_popToViewController:(UIViewController *)viewControllerToShow animated:(BOOL)flag
{
    UIViewController *currentVC = nil;
    UIViewController *preVC = nil;
    if ([[self.viewControllers lastObject] isKindOfClass:[UIViewController class]])
    {
        preVC = (UIViewController *)[self.viewControllers lastObject];
    }
    if ([viewControllerToShow isKindOfClass:[UIViewController class]]&&viewControllerToShow != nil)
    {
        currentVC = (UIViewController *)viewControllerToShow;
    }
    NSLog(@"currentVC.title = %@,preVC.title = %@",currentVC.title,preVC.title);
    return [self cm_popToViewController:currentVC animated:flag];
}

- (UIViewController *)cm_popViewControllerAnimated:(BOOL)flag
{
    UIViewController *currentVC = nil;
    UIViewController *preVC = nil;
    
    if ( [self viewControllers].count >=2)
    {
        NSInteger previousViewControllerIndex = [self viewControllers].count - 2;
        if ([[self.viewControllers objectAtIndex:previousViewControllerIndex] isKindOfClass:[UIViewController class]])
        {
            currentVC = [self.viewControllers objectAtIndex:previousViewControllerIndex];
            
        }
        if ([[self.viewControllers lastObject] isKindOfClass:[UIViewController class]])
        {
            preVC = [self.viewControllers lastObject];
        }
        NSLog(@"currentVC.title = %@,preVC.title = %@",currentVC.title,preVC.title);
        
    }
    return  [self cm_popViewControllerAnimated:flag];
    
}
@end
