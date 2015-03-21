//
//  PARWallet.m
//  Wallet
//
//  Created by Pablo Parejo Camacho on 21/3/15.
//  Copyright (c) 2015 Pablo Parejo Camacho. All rights reserved.
//

#import "PARWallet.h"

@interface PARWallet()

@property (strong, nonatomic) NSMutableArray *moneys;

@end

@implementation PARWallet

-(id) init{
    if (self = [super init]) {
        _moneys = [NSMutableArray array];
    }
    return self;
}

-(id) initWithAmount:(NSUInteger) amount
            currency:(NSString *) currency{
    if (self = [self init]) {
        PARMoney *money = [[PARMoney alloc] initWithAmount:amount currency:currency];
        [_moneys addObject:money];
    }
    return self;
}

-(PARMoney *) plus:(PARMoney *) augend{
    [self.moneys addObject:augend];

    return self;
}

-(PARMoney *) reduceToCurrency:(NSString *)toCurrency withBroker:(PARBroker *)broker{
    
    __block NSMutableArray *reduced = [NSMutableArray arrayWithCapacity:[self.moneys count]];
    
    for (PARMoney *obj in self.moneys) {
        PARMoney *reducedMoney = [obj reduceToCurrency:toCurrency withBroker:broker];
        [reduced addObject:reducedMoney];
    }
    
    PARMoney *total = [[PARMoney alloc] initWithAmount:0 currency:toCurrency];
    for (PARMoney *obj in reduced) {
        total = [total plus:obj];
    }

    return total;
}

@end
