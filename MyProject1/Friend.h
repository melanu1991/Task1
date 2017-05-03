//
//  Friend.h
//  MyProject1
//
//  Created by melanu on 22.04.17.
//  Copyright © 2017 melanu. All rights reserved.
//

#import "User.h"

@interface Friend : User

@property (nonatomic, copy) NSNumber* blocked;

-(BOOL)isBlocked;

@end
