//
//  User+Address.m
//  MyProject1
//
//  Created by melanu on 22.04.17.
//  Copyright © 2017 melanu. All rights reserved.
//

#import "User+Address.h"

@implementation User (Address)

-(NSString*)compositeAddress{
    NSString* str = @"unknow";
    if (self.country!=nil && self.city!=nil) {
        str = [NSString stringWithFormat:@"%@, %@",self.country,self.city];
    }
    else if(self.country!=nil){
        str = [NSString stringWithFormat:@"%@",self.country];
    }
    else if(self.city!=nil){
        str = [NSString stringWithFormat:@"%@",self.city];
    }
    return [str autorelease];
}

@end
