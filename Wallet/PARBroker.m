//
//  PARBroker.m
//  Wallet
//
//  Created by Pablo Parejo Camacho on 21/3/15.
//  Copyright (c) 2015 Pablo Parejo Camacho. All rights reserved.
//

#import "PARBroker.h"

@interface PARBroker()

@property (strong, nonatomic) NSMutableDictionary *rates;

@end


@implementation PARBroker

-(id) init{
    if (self = [super init]) {
        _rates = [NSMutableDictionary dictionary];
    }
    return self;
}

-(void) addRate:(NSUInteger) rate
   fromCurrency:(NSString *)fromCurrency
     toCurrency:(NSString *)toCurrency{
    
    // Directa
    [self.rates setObject:@(rate) forKey:[self keyFromCurrency:fromCurrency
                                                    toCurrency:toCurrency]];
    // Inversa
    [self.rates setObject:@(1.0/rate) forKey:[self keyFromCurrency:toCurrency
                                                    toCurrency:fromCurrency]];
    
    // Self
    [self.rates setObject:@1.0 forKey:[self keyFromCurrency:fromCurrency
                                                 toCurrency:fromCurrency]];

    [self.rates setObject:@1.0 forKey:[self keyFromCurrency:toCurrency
                                                        toCurrency:toCurrency]];
  
}

-(float) rateFromCurrency:(NSString *)fromCurrency
                    toCurrency:(NSString *)toCurrency{
    return [[self.rates objectForKey:[self keyFromCurrency:fromCurrency toCurrency:toCurrency]] floatValue];
}

#pragma mark - Utils
-(NSString *) keyFromCurrency:(NSString *)fromCurrency toCurrency:(NSString *)toCurrency{
    return [fromCurrency stringByAppendingString:toCurrency];
}

@end
