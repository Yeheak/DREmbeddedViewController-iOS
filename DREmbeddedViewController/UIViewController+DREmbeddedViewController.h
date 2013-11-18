//
//  UIViewController+DREmbeddedViewController.h
//  DREmbeddedViewController
//
//  Created by Dariusz Rybicki on 31.07.2013.
//  Copyright (c) 2013 Darrarski. All rights reserved.
//

#import <UIKit/UIKit.h>

/**
 DREmbeddedViewController category, allows for embedding view controllers easily
 */
@interface UIViewController (DREmbeddedViewController)

/**
 Embed given view controller in current view controller and insert it's view
 in a place defined by given frame and autoresizing mask.
 
 @param childViewController View controller that will be embedded
 @param parentView Superview for embedded view controller's view
 @param frame Frame for embedded view controller's view
 @param autoresizingMask Autoresizing mask for embedded view controller's view
 */
- (void)DREmbeddedViewController_embedViewController:(UIViewController *)childViewController
											  inView:(UIView *)parentView
										   withFrame:(CGRect)frame
								 andAutoresizingMask:(UIViewAutoresizing)autoresizingMask;

/**
 Embed given view controller in current view controller and insert it's view
 in a place defined by given frame. Autoresizing mask won't be changed.
 
 @param childViewController View controller that will be embedded
 @param parentView Superview for embedded view controller's view
 @param frame Frame for embedded view controller's view
 */
- (void)DREmbeddedViewController_embedViewController:(UIViewController *)childViewController
											  inView:(UIView *)parentView
										   withFrame:(CGRect)frame;

/**
 Embed given view controller in current view controller and insert it's view
 in a place defined by top left point. Autoresizing mask won't be changed.
 
 @param childViewController View controller that will be embedded
 @param parentView Superview for embedded view controller's view
 @param point Top left point of embedded view contoller's view
 */
- (void)DREmbeddedViewController_embedViewController:(UIViewController *)childViewController
											  inView:(UIView *)parentView
											 atPoint:(CGPoint)point;

/**
 Embed given view controller in current view controller and insert it's view
 in a place defined by center point. Autoresizing mask won't be changed.
 
 @param childViewController View controller that will be embedded
 @param parentView Superview for embedded view controller's view
 @param point Center point of embedded view contoller's view
 */
- (void)DREmbeddedViewController_embedViewController:(UIViewController *)childViewController
											  inView:(UIView *)parentView
									   atCenterPoint:(CGPoint)point;

/**
 Embed given view controller in current view controller and insert it's view 
 in a place defined by given placeholder view which belongs to current view controller.
 
 @param childViewController View controller that will be embedded
 @param placeholderView Subview of current view conrtoller's view
 */
- (void)DREmbeddedViewController_embedViewController:(UIViewController *)childViewController
								 withPlaceholderView:(UIView *)placeholderView;

@end
