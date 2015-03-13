//
//  PARDollar.m
//  Wallet
//
//  Created by Pablo Parejo Camacho on 13/3/15.
//  Copyright (c) 2015 Pablo Parejo Camacho. All rights reserved.
//

#import "PARDollar.h"

@interface PARDollar()

@property (nonatomic) NSUInteger amount;

@end

@implementation PARDollar

-(id) initWithAmount:(NSUInteger) amount{
    if (self = [super init]) {
        _amount = amount;
    }
    return self;
}
-(PARMoney *) times:(NSUInteger) multiplier{
    return [[PARDollar alloc] initWithAmount:self.amount * multiplier];
}

-(BOOL) isEqual:(id)object{
    return (self.amount == [object amount]);
}
@end
