//
//  PARMoney.m
//  Wallet
//
//  Created by Pablo Parejo Camacho on 13/3/15.
//  Copyright (c) 2015 Pablo Parejo Camacho. All rights reserved.
//

#import "PARMoney.h"

@implementation PARMoney

-(id) initWithAmount:(NSUInteger)amount currency:(NSString *)currency{
    if (self = [super init]) {
        _amount = amount;
        _currency = currency;
    }
    return self;
}

-(PARMoney *) times:(NSUInteger)multiplier{
    PARMoney *result = [[PARMoney alloc] initWithAmount:self.amount * multiplier
                                               currency:self.currency];

    return [[PARMoney alloc] initWithAmount:(self.amount * multiplier) currency:self.currency ];
}

-(BOOL) isEqual:(id)object{
    return (self.amount == [object amount]);
}

@end