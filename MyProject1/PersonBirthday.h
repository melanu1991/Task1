//
//  PersonBirthday.h
//  MyProject1
//
//  Created by melanu on 23.04.17.
//  Copyright © 2017 melanu. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol PersonBirthday <NSObject>

-(BOOL)isTodayBirthDate;
-(void)setBirthDateFromString:(NSString*)birthDate;
@optional
-(void)happyBirthday;

@end
