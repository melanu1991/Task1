//
//  main.m
//  MyProject1
//
//  Created by melanu on 19.04.17.
//  Copyright © 2017 melanu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "User+Address.h"
#import "User+PersonBirthday.h"
#import "User+WorkWithFriends.h"
#import "Friend.h"
#import "User.h"

int main(int argc, const char * argv[]) {
    /*
     @autoreleasepool {
        User* user1 = [[User alloc]initWithFirstName:@"Misha" lastName:@"Grishenko"];
        User* user2 = [[User alloc]init];
        NSLog(@"%@",[user2 description]);
        user2.userId = @2;
        user2.firstName = [[NSMutableString alloc]initWithString:@"user2"];
        user2.lastName = [[NSMutableString alloc]initWithString:@"user2 lastName"];
        NSLog(@"%@",[user2 description]);
        NSLog(@"%@",[user1 description]);
        user1.userId = @1;
        NSLog(@"%@",[user1 description]);
        NSLog(@"%lu", [user1 retainCount]);
        NSLog(@"%lu", [user2 retainCount]);
        [user1 release];
        [user2 release];
    }
    NSLog(@"%@",@"End");
     */
    
    NSDateFormatter* dateFormatter = [[NSDateFormatter alloc]init];
    [dateFormatter setDateFormat:@"dd-MM-yyyy"];
    User* user1 = [[User alloc]initWithFirstName:@"user1" andLastName:@"lastUser1" andUserId:@1 andBirthDate:[dateFormatter dateFromString:@"15-07-1988"] andCity:@"Gomel" andCountry:@"Belarus"];
    User* user2 = [[User alloc]initWithFirstName:@"user2" andLastName:@"lastUser2" andUserId:@2 andBirthDate:[dateFormatter dateFromString:@"03-11-2001"] andCity:@"Minsk" andCountry:@"Belarus"];
    User* user3 = [[User alloc]initWithFirstName:@"user3" andLastName:@"lastUser3" andUserId:@3 andBirthDate:[dateFormatter dateFromString:@"09-07-1990"] andCity:@"Polotsk" andCountry:@"Belarus"];
    User* user4 = [[User alloc]initWithFirstName:@"user4" andLastName:@"lastUser4" andUserId:@4 andBirthDate:[dateFormatter dateFromString:@"22-08-1996"] andCity:@"Rogachev" andCountry:@"Belarus"];
    User* user5 = [[User alloc]initWithFirstName:@"user5" andLastName:@"lastUser5" andUserId:@5 andBirthDate:[dateFormatter dateFromString:@"05-01-1956"] andCity:@"Vitebsk" andCountry:@"Belarus"];
    User* user6 = [[User alloc]initWithFirstName:@"user6" andLastName:@"lastUser6" andUserId:@6 andBirthDate:[dateFormatter dateFromString:@"19-03-1968"] andCity:@"Mogilev" andCountry:@"Belarus"];
    User* user7 = [[User alloc]initWithFirstName:@"user7" andLastName:@"lastUser7" andUserId:@7 andBirthDate:[dateFormatter dateFromString:@"26-06-2001"] andCity:@"Brest" andCountry:@"Belarus"];
    User* user8 = [[User alloc]initWithFirstName:@"user8" andLastName:@"lastUser8" andUserId:@8 andBirthDate:[dateFormatter dateFromString:@"30-12-1977"] andCity:@"Baranovichi" andCountry:@"Belarus"];
    User* user9 = [[User alloc]initWithFirstName:@"user9" andLastName:@"lastUser9" andUserId:@9 andBirthDate:[dateFormatter dateFromString:@"13-01-2005"] andCity:@"Pinsk" andCountry:@"Belarus"];
    User* user10 = [[User alloc]initWithFirstName:@"user10" andLastName:@"lastUser10" andUserId:@10 andBirthDate:[dateFormatter dateFromString:@"21-09-1991"] andCity:@"Bobruysk" andCountry:@"Belarus"];
    NSArray* persons = [NSArray arrayWithObjects:user1, user2, user3, user4, user5, user6, user7, user8, user9, user10, nil];
    for (User* item in persons) {
        NSLog(@"%@",item);
    }
    
    /*
    [user1 setBirthDateFromString:@"11-11-2001"];
    [user2 setBirthDateFromString:@"12-12-2002"];
    NSLog(@"%@",[user1 description]);
    NSLog(@"%@",[user2 description]);
     */
    /*
    NSLog(@"%@",[user1 compositeAddress]);
    */
    
    Friend* fr1 = [[Friend alloc]initWithFirstName:@"friend1" lastName:@"lastnameFriend1"];
    Friend* fr2 = [[Friend alloc]initWithFirstName:@"friend2" lastName:@"lastnameFriend2"];
    Friend* fr3 = [[Friend alloc]initWithFirstName:@"friend3" lastName:@"lastnameFriend3"];
    Friend* fr4 = [[Friend alloc]initWithFirstName:@"friend4" lastName:@"lastnameFriend4"];
    Friend* fr5 = [[Friend alloc]initWithFirstName:@"friend5" lastName:@"lastnameFriend5"];
    Friend* fr6 = [[Friend alloc]initWithFirstName:@"friend6" lastName:@"lastnameFriend6"];
    Friend* fr7 = [[Friend alloc]initWithFirstName:@"friend7" lastName:@"lastnameFriend7"];
    
    NSArray* fr1Array = [NSArray arrayWithObjects:fr1,fr2,fr3, nil];
    NSArray* fr2Array = [NSArray arrayWithObjects:fr4,fr5,fr1,fr3, nil];

    for (Friend* item in fr1Array) {
        NSLog(@"%@",[item description]);
    }
    NSLog(@"=================================");
    for (Friend* item in fr2Array) {
        NSLog(@"%@",[item description]);
    }
    
    user1.followers = fr1Array;
    user1.following = fr2Array;
    
    if ([user1 isFollowerFriend:fr1]) {
        NSLog(@"user1 has follower fr1");
    }
    if ([user1 isFollowerFriend:fr4]) {
        NSLog(@"user1 has follower fr4");
    }
    if ([user1 isFollowingFriend:fr1]) {
        NSLog(@"user1 has following fr1");
    }
    if ([user1 isFollowingFriend:fr4]) {
        NSLog(@"user1 has following fr4");
    }
    
    [user1 addFollower:fr6];
    [user1 addFollowing:fr7];
    
    if ([user1 isFollowerFriend:fr6]) {
        NSLog(@"user1 has follower fr6");
    }
    if ([user1 isFollowingFriend:fr7]) {
        NSLog(@"user1 has following fr7");
    }
    
    [user1 removeFollower:fr6];
    [user1 removeFollowing:fr7];
    
    if ([user1 isFollowerFriend:fr6]) {
        NSLog(@"user1 has follower fr6");
    }
    if ([user1 isFollowingFriend:fr7]) {
        NSLog(@"user1 has following fr7");
    }
    
    NSLog(@"%@",user1.address);
    
    return 0;
}
