//
//  UINavigationController+Swizzling.h
//  MethodSwizzlling
//
//  Created by Dylan.Lee on 15/6/29.
//  Copyright © 2015年 Dylan.Lee. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UINavigationController (Swizzling)
/**The method replaced the method of UINavigationViewController
 *
 - (void)pushViewController:(UIViewController *)viewControllerToShow animated:(BOOL)flag;
 *
 ***/
- (void)cm_pushViewController:(UIViewController *)viewControllerToShow animated:(BOOL)flag;
/**The method replaced the method of UINavigationViewController
 *
 - (NSArray *)popToRootViewControllerAnimated:(BOOL)flag;
 *
 ***/
- (NSArray *)cm_popToRootViewControllerAnimated:(BOOL)flag;
/**The method replaced the method of UINavigationViewController
 *
 - (NSArray *)cm_popToViewController:(UIViewController *)viewControllerToShow animated:(BOOL)flag;
 *
 ***/

- (NSArray *)cm_popToViewController:(UIViewController *)viewControllerToShow animated:(BOOL)flag;
/**The method replaced the method of UINavigationViewController
 *
 - (UIViewController *)cm_popViewControllerAnimated:(BOOL)flag;
 *
 ***/
- (UIViewController *)cm_popViewControllerAnimated:(BOOL)flag;
@end
