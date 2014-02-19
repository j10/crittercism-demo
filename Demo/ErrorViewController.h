//
//  ErrorViewController.h
//  Crittercism Demo
//
//  Created by Justin Liu on 10/29/13.
//  Copyright (c) 2013 Crittercism, Inc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Crittercism.h"

@interface ErrorViewController : UIViewController <CrittercismDelegate>

- (IBAction)crashPressed:(id)sender;
- (IBAction)leaveBreadcrumbPressed:(id)sender;
- (IBAction)attachMetadataPressed:(id)sender;
- (IBAction)throwHandledExceptionPressed:(id)sender;

@end
