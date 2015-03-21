//
//  PARMoney.h
//  Wallet
//
//  Created by Pablo Parejo Camacho on 13/3/15.
//  Copyright (c) 2015 Pablo Parejo Camacho. All rights reserved.
//

#import <Foundation/Foundation.h>

@class PARBroker;

@interface PARMoney : NSObject

@property (nonatomic, readonly) NSUInteger amount;
@property (nonatomic, readonly) NSString *currency;


-(id) initWithAmount:(NSUInteger) amount currency:(NSString *) currency;
-(PARMoney *) times:(NSUInteger) multiplier;
-(PARMoney *) plus:(PARMoney *) augend;
-(PARMoney *) reduceToCurrency:(NSString *) toCurrency
                    withBroker:(PARBroker *)broker;

@end
