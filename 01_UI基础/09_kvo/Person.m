//
//  Person.m
//  09_kvo
//
//  Created by 罗啸 on 2023/9/19.
//

#import "Person.h"

@implementation Person
- (NSString *)description{
    return [NSString stringWithFormat:@"name:%@", _name];
}
@end
