//
//  User+PersonBirthday.m
//  MyProject1
//
//  Created by melanu on 23.04.17.
//  Copyright © 2017 melanu. All rights reserved.
//

#import "User+PersonBirthday.h"

@implementation User (UserPersonBirthday)

-(void)setBirthDateFromString:(NSString *)birthDate{
    NSDateFormatter* dateFormatter = [[NSDateFormatter alloc]init];
    [dateFormatter setDateFormat:@"dd-MM-yyyy"];
    self.birthDate = [dateFormatter dateFromString:birthDate];
    dateFormatter = nil;
}
-(BOOL)isTodayBirthDate{
    NSDate* todayDate = [NSDate date];
    if ([self.birthDate isEqualToDate:todayDate]) {
        return YES;
    }
    else{
        return NO;
    }
}

-(void)happyBirthday{
    if ([self isTodayBirthDate]) {
        NSLog(@"%@ %@ congratulations on your birthday!!!", self.firstName,self.lastName);
    }
}

@end
