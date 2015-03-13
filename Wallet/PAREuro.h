//
//  PAREuro.h
//  Wallet
//
//  Created by Pablo Parejo Camacho on 13/3/15.
//  Copyright (c) 2015 Pablo Parejo Camacho. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PAREuro : NSObject

@property (nonatomic) NSUInteger amount;

-(id) initWithAmount:(NSUInteger) amount;
-(PAREuro *) times:(NSUInteger) multiplier;

@end
