//
//  User.m
//  MyProject1
//
//  Created by melanu on 19.04.17.
//  Copyright © 2017 melanu. All rights reserved.
//

#import "User.h"

//extend User
@interface User ()
@property (nonatomic,copy, readwrite) NSString* city;
@property (nonatomic, copy, readwrite) NSString* country;
@end

@implementation User
@synthesize userId = _userId,
          firstName = _firstName,
          lastName=_lastName,
          followers = _followers,
          following = _following,
          birthDate = _birthDate,
          address=_address,
          city = _city,
          country=_country,
          contactUser=_contactUser
;
//Переопределение гет
-(NSNumber*)userId{
    @synchronized (self) {
        return [[_userId retain]autorelease];
    }
}
-(void)setUserId:(NSNumber *)userId{
    @synchronized (self) {
        if (_userId!=userId) {
            [_userId release];
            _userId = [userId retain];
        }
    }
}
//Переопределение гет/сет firstName
-(NSMutableString*)firstName{
    return [[_firstName copy]autorelease];
}
-(void)setFirstName:(NSMutableString *)firstName{
    if (_firstName!=firstName) {
        [_firstName release];
        _firstName = [firstName mutableCopy];
    }
}
//Переопределение гет/сет lastName
-(NSMutableString*)lastName{
    return [[_lastName copy]autorelease];
}
-(void)setLastName:(NSMutableString *)lastName{
    if (_lastName!=lastName) {
        [_lastName release];
        _lastName = [lastName mutableCopy];
    }
}

-(NSArray*)followers{
    @synchronized (self) {
        return [[_privateFollower copy]autorelease];
    }
}
-(void)setFollowers:(NSArray *)followers{
    @synchronized (self) {
        if (_privateFollower!=followers) {
            [_privateFollower release];
            _privateFollower = [followers mutableCopy];
        }
    }
}

-(NSArray*)following{
    return [[_privateFollowing copy]autorelease];
}
-(void)setFollowing:(NSArray *)following{
    if (_privateFollowing!=following) {
        [_privateFollowing release];
        _privateFollowing = [following mutableCopy];
    }
}

-(NSString*)country{
    return [self.address valueForKey:@"country"];
}

-(NSString*)city{
    return [self.address valueForKey:@"city"];
}

//Переопределение гет/сет followers
/*-(NSArray*)followers{
    @synchronized (self) {
        return [[_followers retain]autorelease];
    }
}
-(void)setFollowers:(NSArray *)followers{
    @synchronized (self) {
        if (_followers!=followers) {
            [_followers release];
            _followers = [followers copy];
        }
    }
}

//Переопределение гет/сет following
-(NSArray*)following{
    return _following;
}
-(void)setFollowing:(NSArray *)following{
    if (_following!=following) {
        [_following release];
        _following = [following copy];
    }
}*/
//Переопределение гет isContactUser
-(BOOL)isContactUser{
    return _contactUser;
}
//Реализация конструкторов
-(id)initWithFirstName:
                (NSMutableString*)firstName andLastName:
                (NSMutableString*)lastName andUserId:
                (NSNumber*)userId andBirthDate:
                (NSDate*)birthDate andCity:
                (NSString*)city andCountry:
                (NSString*)country{
    self=[super init];
    if (self) {
        _firstName = [firstName copy];
        _lastName = [lastName copy];
        _userId = [userId copy];
        _birthDate = [birthDate copy];
        //_city = [city copy];
        //_country = [country copy];
        _address = @{@"country":country,@"city":city};
    }
    return self;
}
-(id)initWithFirstName:(NSString *)firstName lastName:(NSString *)lastName{
    self = [super init];
    if(self){
        _firstName= [firstName copy];
        _lastName = [lastName copy];
    }
    return self;
}
-(id)initWithUserId:(NSNumber *)userId{
    self = [super init];
    if(self){
        _userId = [userId copy];
    }
    return self;
}

//Переопределение метода description
-(NSString*) description{
    NSString* description;
    description=[[NSString alloc] initWithFormat:@"UserId: %@, firstName: %@, lastName: %@, birthDate: %@, city: %@, country: %@", _userId,_firstName, _lastName, _birthDate, [self.address valueForKey:@"city"], [self.address valueForKey:@"country"] ];
    return ([description autorelease]);
}

//Переопределение dealloc
-(void)dealloc{
    NSLog(@"object is deleted");
    //или лучше так делать? _userId = nil;
    [_userId release];
    [_firstName release];
    [_lastName release];
    [_birthDate release];
    [_followers release];
    [_following release];
    [_address release];
    //[_city release];
    //[_country release];
    [_privateFollower release];
    [_privateFollowing release];
    //[_contactUser release];
    [super dealloc];
}

//Method printFullName
-(void)printFullName{
    NSLog(@"first name = %@, last name = %@", _firstName, _lastName);
}

@end
