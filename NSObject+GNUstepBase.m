//
//  NSObject+GNUstepBase.m
//  Wallet
//
//  Created by Fernando Rodríguez Romero on 6/23/13.
//  Copyright (c) 2013 Agbo. All rights reserved.
//

#import "NSObject+GNUstepBase.h"
#import <objc/runtime.h>

@implementation NSObject (GNUstepBase)

+ (id) subclassResponsibility: (SEL)aSel{
    char prefix = class_isMetaClass(object_getClass(self)) ? '+': '-';
    
    [NSException raise: NSInvalidArgumentException
                format:@"%@%c%@ should be overriden by its subclass",
     NSStringFromClass([self class]), prefix, NSStringFromSelector(aSel)];
    
    return self;    // not reached
}

- (id) subclassResponsibility: (SEL)aSel{
    return [[self class] subclassResponsibility:aSel];
}

@end
