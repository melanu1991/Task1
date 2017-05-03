//
//  Friend.m
//  MyProject1
//
//  Created by melanu on 22.04.17.
//  Copyright © 2017 melanu. All rights reserved.
//

#import "Friend.h"

@implementation Friend

@synthesize blocked = _blocked;

-(BOOL)isBlocked{
    if (self.blocked.boolValue) {
        return YES;
    }
    return NO;
}

-(NSString*) description{
    NSString* description;
    description=[[NSString alloc] initWithFormat:
                 @"UserId: %@, firstName: %@, lastName: %@",
                 self.userId
                 ,self.firstName,
                 self.lastName
                 ];
    return ([description autorelease]);
}

-(void) dealloc{
    [self.blocked release];
    [super dealloc];
}

@end
