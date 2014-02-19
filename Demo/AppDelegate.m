//
//  AppDelegate.m
//  Crittercism Demo
//
//  Created by Justin Liu on 10/25/13.
//  Copyright (c) 2013 Crittercism, Inc. All rights reserved.
//

#import "AppDelegate.h"
#import "Constants.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{   

    // Enable Crittercism last
    [Crittercism enableWithAppID:CRITTERCISM_APP_ID];

    return YES;
}

@end
