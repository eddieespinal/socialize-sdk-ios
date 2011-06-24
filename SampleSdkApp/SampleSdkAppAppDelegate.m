//
//  SampleSdkAppAppDelegate.m
//  SampleSdkApp
//
//  Created by Sergey Popenko on 6/3/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SampleSdkAppAppDelegate.h"
#import "DemoEntry.h"
#import "Socialize.h"



@implementation SampleSdkAppAppDelegate


@synthesize window=_window;
@synthesize entryController;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    socialize = [[Socialize alloc] init];
    self.entryController = [[EntityViewController alloc] initWithEntry:[DemoEntry createDemoEntryWithText:@"This is demo entry"] andService: socialize];
    [self.window addSubview:self.entryController.view];
    
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    /*
     Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
     Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
     */
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    /*
     Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
     If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
     */
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    /*
     Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
     */
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    /*
     Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
     */
    if([socialize isAuthenticated])
        return;
    
    [socialize authenticateWithApiKey:@"98e76bb9-c707-45a4-acf2-029cca3bf216" apiSecret:@"b7364905-cdc6-46d3-85ad-06516b128819" udid:@"someid" delegate:self];
    entryController.view.userInteractionEnabled = NO;
}

-(void)didAuthenticate
{
    entryController.view.userInteractionEnabled = YES;
    // TODO:: send create entity request from here
    return;
}

-(void)didNotAuthenticate:(NSError*)error
{
    NSLog(@"%@", error);
    //entryController.view.userInteractionEnabled = YES;
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    /*
     Called when the application is about to terminate.
     Save data if appropriate.
     See also applicationDidEnterBackground:.
     */
}

- (void)dealloc
{
    [entryController  release];
    [_window release];
    [socialize release];
    [super dealloc];
}

@end