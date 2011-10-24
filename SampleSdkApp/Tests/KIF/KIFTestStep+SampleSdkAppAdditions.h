//
//  KIFTestStep+SampleAdditions.h
//  SocializeSDK
//
//  Created by Nathaniel Griswold on 9/14/11.
//  Copyright 2011 Socialize, Inc. All rights reserved.
//

#import "KIFTestStep.h"

@interface KIFTestStep (SampleSdkAppAdditions)

+ (NSArray*)stepsToReturnToList;
+ (NSArray*)stepsToNoAuth;
+ (NSString *)getRandomURL;
+ (NSArray*)stepsToAuthenticate;
+ (NSArray*)stepsToShowActionBar;
+ (NSArray*)stepsToLikeOnActionBar;
+ (NSArray*)stepsToTestUserProfile;
+ (NSArray*)stepsToCreateEntityWithURL:(NSString*)url name:(NSString*)name;
+ (NSArray*)stepsToCreateEntityWithRandomURL;
+ (NSArray*)stepsToGetEntityWithURL:(NSString*)url;
+ (NSArray*)stepsToCreateCommentForEntity:(NSString*)entity comment:(NSString*)comment;
+ (NSArray*)stepsToGetCommentsForEntity:(NSString*)entity;
+ (NSArray*)stepsToLikeEntity:(NSString*)entity;
+ (NSArray*)stepsToVerifyLikesForEntity:(NSString*)entity areAtCount:(NSInteger)count;
+ (NSArray*)stepsToUnlikeEntity:(NSString*)entity;
+ (NSArray*)stepsToWaitForActionCompleted;
+ (NSArray*)stepsToViewEntityWithURL:(NSString*)url;
+ (NSArray*)stepsToVerifyViewsForEntity:(NSString*)entity areAtCount:(NSInteger)count;
+ (NSArray*)stepsToCreateCommentWithControllerForEntity:(NSString*)entity comment:(NSString*)comment;
+ (NSArray*)stepsToVerifyCommentExistsForEntity:(NSString*)entity comment:(NSString*)comment;
+ (id)stepToScrollAndTapRowInTableViewWithAccessibilityLabel:(NSString*)tableViewLabel atIndexPath:(NSIndexPath *)indexPath;
+ (id)stepToCheckAccessibilityLabel:(NSString *)label hasValue:(NSString *)hasValue;
@end