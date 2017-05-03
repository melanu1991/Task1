//
//  User+WorkWithFriends.m
//  MyProject1
//
//  Created by melanu on 23.04.17.
//  Copyright © 2017 melanu. All rights reserved.
//

#import "User+WorkWithFriends.h"

@implementation User (WorkWithFriends)

-(void)addFollower:(User *)newFriend{
    if (![_privateFollower containsObject:newFriend]) {
        [_privateFollower addObject:newFriend];
    }
}

-(void)removeFollower:(User *)deleteFriend{
    [_privateFollower removeObject:deleteFriend];
}

//Method addFollower
/*-(void)addFollower:(Friend *)newFriend{
    if(![self.followers containsObject:newFriend]){
        NSArray* temp = [self.followers arrayByAddingObject:newFriend];
        self.followers = temp;
    }
}

//Method removeFollower
-(void)removeFollower:(Friend *)deleteFriend{
    NSMutableArray* temp = [self.followers mutableCopy];
    [temp removeObject:deleteFriend];
    self.followers=temp;
}*/

//Method isFollowerFriend
-(BOOL)isFollowerFriend:(User *)isFriend{
    if ([self.followers containsObject:isFriend]) {
        return YES;
    }
    return NO;
}

-(void)addFollowing:(User *)newFriend{
    if(![_privateFollowing containsObject:newFriend]){
        [_privateFollowing addObject:newFriend];
    }
}

//Method removeFollowing
-(void)removeFollowing:(User *)deleteFriend{
    [_privateFollowing removeObject:deleteFriend];
}

//Method addFollowing
/*-(void)addFollowing:(Friend *)newFriend{
    if(![self.following containsObject:newFriend]){
        NSArray* temp = [self.following arrayByAddingObject:newFriend];
        self.following = temp;
    }
}

//Method removeFollowing
-(void)removeFollowing:(Friend *)deleteFriend{
    NSMutableArray* temp = [self.following mutableCopy];
    [temp removeObject:deleteFriend];
    self.following = temp;
}*/

//Method isFollowingFriend
-(BOOL)isFollowingFriend:(User *)isFriend{
    if ([self.following containsObject:isFriend]) {
        return YES;
    }
    return NO;
}

@end
