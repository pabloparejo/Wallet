//
//  PARMoney.m
//  Wallet
//
//  Created by Pablo Parejo Camacho on 13/3/15.
//  Copyright (c) 2015 Pablo Parejo Camacho. All rights reserved.
//

#import "PARMoney.h"
#import "NSObject+GNUstepBase.h"
@implementation PARMoney

-(id) initWithAmount:(NSUInteger)amount{
    return [self subclassResponsibility:_cmd];
}

-(PARMoney *) times:(NSUInteger)multiplier{
    return [self subclassResponsibility:_cmd];
}
@end
