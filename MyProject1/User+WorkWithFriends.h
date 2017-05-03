//
//  User+WorkWithFriends.h
//  MyProject1
//
//  Created by melanu on 23.04.17.
//  Copyright © 2017 melanu. All rights reserved.
//

#import "User.h"
@class Friend;

@interface User (WorksWithFriends)

-(void)addFollower:(User*)newFriend;
-(void)removeFollower:(User*)deleteFriend;
-(BOOL)isFollowerFriend:(User*)isFriend;
-(void)addFollowing:(User*)newFriend;
-(void)removeFollowing:(User*)deleteFriend;
-(BOOL)isFollowingFriend:(User*)isFriend;

@end
