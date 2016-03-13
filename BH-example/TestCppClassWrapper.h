//
//  TestCppClassWrapper.h
//  BH-example
//
//  Created by Piyush Singh on 13/03/2016.
//  Copyright © 2016 Piyush Singh. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TestCppClassWrapper : NSObject
- (instancetype)initWithTitle:(NSString*)title;
- (NSString*)getTitle;
- (void)setTitle:(NSString*)title;
@end