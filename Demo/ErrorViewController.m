//
//  ErrorViewController.m
//  Crittercism Demo
//
//  Created by Justin Liu on 10/29/13.
//  Copyright (c) 2013 Crittercism, Inc. All rights reserved.
//

#import "ErrorViewController.h"

@implementation ErrorViewController

- (IBAction)crashPressed:(id)sender {
    NSLog(@"Demo about to crash");
    [NSException raise:@"crash test" format:@"Crash button pressed"];
}

- (IBAction)leaveBreadcrumbPressed:(id)sender {
    NSLog(@"Demo leaving a breadcrumb");
    [Crittercism leaveBreadcrumb:@"breadcrumb left"];
}

- (IBAction)attachMetadataPressed:(id)sender {
    NSLog(@"Demo attaching metadata");
    [Crittercism setUsername:@"demo user"];
    [Crittercism setValue:@"42" forKey:@"Current Score"];
}

- (IBAction)throwHandledExceptionPressed:(id)sender {
    @try {
        NSLog(@"Demo throwing handled exception");
        [NSException raise:@"handled exception test" format:@"Exception button pressed"];
    }
    @catch (NSException *exception) {
        [Crittercism logHandledException:exception];
    }
    @finally {
        NSLog(@"Demo threw and caught handled exception!  First exception is sent immediately, then a maximum of 3 are sent per minute");
    }
}

@end
