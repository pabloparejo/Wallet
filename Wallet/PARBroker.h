//
//  PARBroker.h
//  Wallet
//
//  Created by Pablo Parejo Camacho on 21/3/15.
//  Copyright (c) 2015 Pablo Parejo Camacho. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PARBroker : NSObject

-(void) addRate:(NSInteger) rate
   fromCurrency:(NSString *)fromCurrency
     toCurrency:(NSString *)toCurrency;

-(float) rateFromCurrency:(NSString *)fromCurrency toCurrency:(NSString *)toCurrency;

@end
