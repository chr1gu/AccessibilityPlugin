//
//  AccessibilityPlugin.m
//
//  Created by Christoph Ebert on 10/20/11.
//  Copyright 2011 Liip AG. All rights reserved.
//

#import "AccessibilityPlugin.h"


@implementation AccessibilityPlugin

@synthesize callbackID;

- (void) checkVoiceOverIsRunning:(NSMutableArray*)arguments withDict:(NSMutableDictionary*)options
{   
    self.callbackID = [arguments pop];

    if (UIAccessibilityIsVoiceOverRunning())
    {
        [self writeJavascript:[NSString stringWithFormat:@"%@();", self.callbackID]];
    }
}

@end
