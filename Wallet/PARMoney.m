//
//  PARMoney.m
//  Wallet
//
//  Created by Pablo Parejo Camacho on 13/3/15.
//  Copyright (c) 2015 Pablo Parejo Camacho. All rights reserved.
//

#import "PARMoney.h"
#import "PARBroker.h"

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

    return result;
}

-(BOOL) isEqual:(id)object{
    return  (self.amount == [object amount]) &&
            ([self.currency isEqualToString:[object currency]]);
}

-(PARMoney *) plus:(PARMoney *) augend{
    PARMoney *result = [[PARMoney alloc]
                        initWithAmount:(self.amount + [augend amount])
                        currency:self.currency];
    return result;
}

-(PARMoney *) reduceToCurrency:(NSString *) toCurrency withBroker:(PARBroker *)broker{
    
    // Pedir al broker una nueva tasa de conversión a mi destino
    float rate = [broker rateFromCurrency:self.currency toCurrency:toCurrency];
    
    // Calcular el valor
    NSUInteger amount = self.amount * rate;

    // Crear nueva instancia con la divisa destino
    return [[PARMoney alloc] initWithAmount:amount currency:toCurrency];
}

@end