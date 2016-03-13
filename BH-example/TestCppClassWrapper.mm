//
//  TestCppClassWrapper.m
//  BH-example
//
//  Created by Piyush Singh on 13/03/2016.
//  Copyright © 2016 Piyush Singh. All rights reserved.
//

#import "TestCppClassWrapper.h"
#include "TestCppClass.hpp"
@interface TestCppClassWrapper()
@property TestCppClass *cppItem;
@end
@implementation TestCppClassWrapper
- (instancetype)initWithTitle:(NSString*)title
{
    if (self = [super init]) {
        self.cppItem = new TestCppClass(std::string([title cStringUsingEncoding:NSUTF8StringEncoding]));
    }
    return self;
}
- (NSString*)getTitle
{
    return [NSString stringWithUTF8String:self.cppItem->getTtile().c_str()];
}
- (void)setTitle:(NSString*)title
{
    self.cppItem->setTitle(std::string([title cStringUsingEncoding:NSUTF8StringEncoding]));
}
@end
