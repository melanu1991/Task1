//
//  User+PersonBirthday.h
//  MyProject1
//
//  Created by melanu on 23.04.17.
//  Copyright © 2017 melanu. All rights reserved.
//

#import "User.h"
#import "PersonBirthday.h"

@interface User (UserPersonBirthday) <PersonBirthday>

-(void)setBirthDateFromString:(NSString *)birthDate;
-(BOOL)isTodayBirthDate;
-(void)happyBirthday;

@end
