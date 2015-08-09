//
//  MyActivityInicator.h
//  CandySearch
//
//  Created by admin on 09.08.15.
//  Copyright (c) 2015 sergey. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MyActivityInicator : NSObject
@property (strong, nonatomic) UIImageView *activityImageView;
@property (strong, nonatomic) UIView* indicatorView;

-(void) startActivityIndicatorOnVIew:(UIView*)view;
-(void) finish;

+(id) instance;

@end


// code sample
// using example
//- (IBAction)button1Clicked:(id)sender {
//    [[MyActivityInicator instance] startActivityIndicatorOnVIew:self.view];
//    
//    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_BACKGROUND, 0), ^{
//        NSLog(@"Start");
//        //Do EXTREME PROCESSING!!!
//        for (int i = 0; i< 30; i++) {
//            [NSThread sleepForTimeInterval:.05];
//            NSLog(@"%i", i);
//        }
//        
//        dispatch_async(dispatch_get_main_queue(), ^{
//            [self backgroundDone];
//        });
//    });
//    
//}
//
//- (void)backgroundDone {
//    NSLog(@"Done");
//    [[MyActivityInicator instance] finish];
//    
//    [self performSegueWithIdentifier:@"toImagePicker" sender:self];
//}

