//
//  User.h
//  MyProject1
//
//  Created by melanu on 19.04.17.
//  Copyright © 2017 melanu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface User : NSObject
{
    NSMutableArray* _privateFollowing;
    NSMutableArray* _privateFollower;
}

@property (atomic, retain) NSNumber* userId;
@property (nonatomic, retain) NSMutableString* firstName;
@property (nonatomic, copy) NSMutableString* lastName;
@property (nonatomic, retain) NSDate* birthDate;
@property (atomic, copy) NSArray* followers;
@property (nonatomic, copy) NSArray* following;
@property (nonatomic, retain) NSDictionary* address;
@property (nonatomic, copy, readonly) NSString* city;
@property (nonatomic, copy, readonly) NSString* country;
@property (nonatomic, assign, getter=isContactUser, readonly) BOOL contactUser;

-(id)initWithUserId:(NSNumber*)userId;
-(id)initWithFirstName:(NSString*)firstName lastName:(NSString*)lastName;
-(id)initWithFirstName:(NSString*)firstName andLastName:
                       (NSString*)lastName andUserId:
                       (NSNumber*)userId andBirthDate:
                       (NSDate*)birthDate andCity:
                       (NSString*)city andCountry:
                       (NSString*)country;

-(void)printFullName;

@end
