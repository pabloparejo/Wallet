//
//  PAREuro.m
//  Wallet
//
//  Created by Pablo Parejo Camacho on 13/3/15.
//  Copyright (c) 2015 Pablo Parejo Camacho. All rights reserved.
//

#import "PAREuro.h"

@interface PAREuro()

@property (nonatomic) NSUInteger amount;

@end

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

-(BOOL) isEqual:(id)object{
    return (self.amount == [object amount]);
}
@end
