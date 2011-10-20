//
//  AccessibilityPlugin.h
//
//  Created by Christoph Ebert on 10/20/11.
//  Copyright 2011 Liip AG. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <PhoneGap/PGPlugin.h>

@interface AccessibilityPlugin : PGPlugin
{
    NSString* callbackID; 
}

@property (nonatomic, copy) NSString* callbackID;

- (void) checkVoiceOverIsRunning:(NSMutableArray*)arguments withDict:(NSMutableDictionary*)options;

@end