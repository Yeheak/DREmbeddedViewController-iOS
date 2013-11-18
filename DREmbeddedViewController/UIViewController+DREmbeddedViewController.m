//
//  UIViewController+DREmbeddedViewController.m
//  DREmbeddedViewController
//
//  Created by Dariusz Rybicki on 31.07.2013.
//  Copyright (c) 2013 Darrarski. All rights reserved.
//

#import "UIViewController+DREmbeddedViewController.h"

@implementation UIViewController (DREmbeddedViewController)

- (void)DREmbeddedViewController_embedViewController:(UIViewController *)childViewController
											  inView:(UIView *)parentView
										   withFrame:(CGRect)frame
								 andAutoresizingMask:(UIViewAutoresizing)autoresizingMask
{
	childViewController.view.frame = frame;
	childViewController.view.autoresizingMask = autoresizingMask;
	[self addChildViewController:childViewController];
	[parentView addSubview:childViewController.view];
	[childViewController didMoveToParentViewController:self];
}

- (void)DREmbeddedViewController_embedViewController:(UIViewController *)childViewController
											  inView:(UIView *)parentView
										   withFrame:(CGRect)frame
{
	childViewController.view.frame = frame;
	[self addChildViewController:childViewController];
	[parentView addSubview:childViewController.view];
	[childViewController didMoveToParentViewController:self];
}

- (void)DREmbeddedViewController_embedViewController:(UIViewController *)childViewController
											  inView:(UIView *)parentView
											 atPoint:(CGPoint)point
{
	CGRect frame = childViewController.view.frame;
	frame.origin = point;
	childViewController.view.frame = frame;
	[self addChildViewController:childViewController];
	[parentView addSubview:childViewController.view];
	[childViewController didMoveToParentViewController:self];
}

- (void)DREmbeddedViewController_embedViewController:(UIViewController *)childViewController
											  inView:(UIView *)parentView
									   atCenterPoint:(CGPoint)point
{
	childViewController.view.center = point;
	[self addChildViewController:childViewController];
	[parentView addSubview:childViewController.view];
	[childViewController didMoveToParentViewController:self];
}

- (void)DREmbeddedViewController_embedViewController:(UIViewController *)childViewController
								 withPlaceholderView:(UIView *)placeholderView
{
	[self DREmbeddedViewController_embedViewController:childViewController
						  inView:placeholderView.superview
					   withFrame:placeholderView.frame
			 andAutoresizingMask:placeholderView.autoresizingMask];
	[placeholderView removeFromSuperview];
}

@end
