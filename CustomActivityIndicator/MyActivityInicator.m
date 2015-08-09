//
//  MyActivityInicator.m
//  CandySearch
//
//  Created by admin on 09.08.15.
//  Copyright (c) 2015 sergey. All rights reserved.
//

#import "MyActivityInicator.h"

@implementation MyActivityInicator

#pragma mark Singleton Methods

+ (id)instance {
    static MyActivityInicator *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (void)dealloc {
    // Should never be called, but just here for clarity really.
}

-(void)startActivityIndicatorOnVIew:(UIView *)view
{
    //Create blank UIView
    self.indicatorView = [[UIView alloc] init];
    self.indicatorView.frame = CGRectMake(0,
                                     0,
                                     view.frame.size.width,
                                     view.frame.size.height);
    
    [self.indicatorView setBackgroundColor:[UIColor whiteColor]];
    
    //Create the first status image and the indicator view
    UIImage *statusImage = [UIImage imageNamed:@"loader1"];
    self.activityImageView = [[UIImageView alloc]
                                      initWithImage:statusImage];
    
    //Add animation images
    self.activityImageView.animationImages = [NSArray arrayWithObjects:
                                         [UIImage imageNamed:@"loader1"],
                                         [UIImage imageNamed:@"loader2"],
                                         [UIImage imageNamed:@"loader3"],
                                         [UIImage imageNamed:@"loader4"],
                                         [UIImage imageNamed:@"loader5"],
                                         [UIImage imageNamed:@"loader6"],
                                         [UIImage imageNamed:@"loader7"],
                                         [UIImage imageNamed:@"loader8"],
                                         [UIImage imageNamed:@"loader9"],
                                         [UIImage imageNamed:@"loader10"],
                                         [UIImage imageNamed:@"loader11"],
                                         [UIImage imageNamed:@"loader12"],
                                         [UIImage imageNamed:@"loader13"],
                                         [UIImage imageNamed:@"loader14"],
                                         [UIImage imageNamed:@"loader15"],
                                         [UIImage imageNamed:@"loader16"],
                                         [UIImage imageNamed:@"loader17"],
                                         [UIImage imageNamed:@"loader18"],
                                         [UIImage imageNamed:@"loader19"],
                                         [UIImage imageNamed:@"loader20"],
                                         nil];
    
    
    //Set the duration of the animation
    self.activityImageView.animationDuration = 0.8;
    
    
    //Position the activity image view somewhere in
    //the middle of your current view
    self.activityImageView.frame = CGRectMake(
                                         view.frame.size.width/2
                                         -statusImage.size.width/2,
                                         view.frame.size.height/2
                                         -statusImage.size.height/2,
                                         statusImage.size.width,
                                         statusImage.size.height);
    
    //Start the animation
    [self.activityImageView startAnimating];
    
    
    //Add your custom activity indicator to your current view
    [self.indicatorView addSubview:self.activityImageView];
    [view addSubview:self.indicatorView];
}

-(void)finish
{
    [self.activityImageView stopAnimating];
    [self.activityImageView removeFromSuperview];
    [self.indicatorView removeFromSuperview];
}

@end
