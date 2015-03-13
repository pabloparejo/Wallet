//
//  PAREuro.m
//  Wallet
//
//  Created by Pablo Parejo Camacho on 13/3/15.
//  Copyright (c) 2015 Pablo Parejo Camacho. All rights reserved.
//

#import "PAREuro.h"

@implementation PAREuro

-(id) initWithAmount:(NSUInteger) amount{
    if (self = [super init]) {
        _amount = amount;
    }
    return self;
}
-(PAREuro *) times:(NSUInteger) multiplier{
    return [[PAREuro alloc] initWithAmount:self.amount * multiplier];
}

@end
