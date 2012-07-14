//
//  IRPVSViewController.m
//  IRPaginatedView-Sample
//
//  Created by Evadne Wu on 7/14/12.
//  Copyright (c) 2012 Iridia Productions. All rights reserved.
//

#import "IRPVSViewController.h"
#import "IRPaginatedView.h"

@interface IRPVSViewController () <IRPaginatedViewDelegate>

- (UIView *) newPageView;

@property (nonatomic, readwrite, strong) IRPaginatedView *view;

@end


@implementation IRPVSViewController
@dynamic view;

- (void) viewDidLoad {
	
	[super viewDidLoad];
	
	[self.view reloadViews];
	
}

- (NSUInteger) numberOfViewsInPaginatedView:(IRPaginatedView *)paginatedView {

	return 3;

}

- (UIView *) viewForPaginatedView:(IRPaginatedView *)paginatedView atIndex:(NSUInteger)index {

	return [self newPageView];

}

- (UIViewController *) viewControllerForSubviewAtIndex:(NSUInteger)index inPaginatedView:(IRPaginatedView *)paginatedView {

	return nil;

}

- (BOOL) shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
	
	return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
	
}

- (UIView *) newPageView {

	UIView *view = [[UIView alloc] initWithFrame:CGRectZero];
	UILabel *label = [[UILabel alloc] initWithFrame:CGRectZero];
	
	label.autoresizingMask = UIViewAutoresizingFlexibleTopMargin|UIViewAutoresizingFlexibleLeftMargin|UIViewAutoresizingFlexibleBottomMargin|UIViewAutoresizingFlexibleRightMargin;
	
	label.text = [NSDateFormatter localizedStringFromDate:[NSDate date] dateStyle:NSDateFormatterLongStyle timeStyle:NSDateFormatterLongStyle];
	
	[label sizeToFit];
	[label setCenter:CGPointZero];
	
	[view addSubview:label];
	
	return view;

}

@end
