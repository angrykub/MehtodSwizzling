# MehtodSwizzling
The demo of method swizzling used in UINavigationController
This demo introduces how to hook the method of UINavigationController,such as:
```
- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated; // Uses a horizontal slide transition. Has no effect if the view controller is already in the stack.
- (nullable UIViewController *)popViewControllerAnimated:(BOOL)animated; // Returns the popped controller.
- (nullable NSArray<__kindof UIViewController *> *)popToViewController:(UIViewController *)viewController animated:(BOOL)animated; // Pops view controllers until the one specified is on top. Returns the popped controllers.
- (nullable NSArray<__kindof UIViewController *> *)popToRootViewControllerAnimated:(BOOL)animated; // Pops until there's only a single view controller left on the stack. Returns the popped controllers.
