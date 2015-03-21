//
//  PARMoneyTest.m
//  Wallet
//
//  Created by Pablo Parejo Camacho on 13/3/15.
//  Copyright (c) 2015 Pablo Parejo Camacho. All rights reserved.
//

@import UIKit;
@import XCTest;
#import "PARMoney.h"
#import "PARBroker.h"

@interface PARMoneyTest : XCTestCase

@end

@implementation PARMoneyTest


-(void) testMultiplation{
    PARMoney *five = [[PARMoney alloc] initWithAmount:5 currency:@"EUR"];
    PARMoney *ten = [five times:2];
    XCTAssertEqualObjects(ten, [five times:2], @"€5 * 2 should be €10");
    
    XCTAssertEqualObjects([ten times:2], [five times:4], @"€10 * 2 should be €5*4");
}

-(void) testEquality{
    PARMoney *five = [[PARMoney alloc] initWithAmount:5 currency:@"EUR"];
    PARMoney *product = [five times:2];
    PARMoney *ten = [[PARMoney alloc] initWithAmount:10 currency:@"EUR"];
    
    XCTAssertEqualObjects(product, ten, @"Objects with amount 10 and 10 should be equal");
    
    PARMoney *tenDollars = [[PARMoney alloc] initWithAmount:10 currency:@"USD"];
    XCTAssertNotEqualObjects(product, tenDollars, @"Objects with different currency, should not be equal");
    
    XCTAssertNotEqualObjects([[PARMoney alloc] initWithAmount:1 currency:@"USD"],
                             [[PARMoney alloc] initWithAmount:1 currency:@"EUR"]);
}

-(void) testSimpleAddition{
    PARMoney *seven = [[PARMoney alloc] initWithAmount:7 currency:@"EUR"];
    PARMoney *eight = [[PARMoney alloc] initWithAmount:8 currency:@"EUR"];
    PARMoney *result = [[PARMoney alloc] initWithAmount:15 currency:@"EUR"];

    XCTAssertEqualObjects([seven plus:eight], result, @"€7 + €8 should be 15");

}

-(void) testReduction{
    // 10€ = 20$, 1:2
    
    //New broker
    PARBroker *broker = [[PARBroker alloc] init];
    [broker addRate:2 fromCurrency:@"EUR" toCurrency:@"USD"];
    
    
    PARMoney *tenEUR = [[PARMoney alloc] initWithAmount:10
                                               currency:@"EUR"];
    
    PARMoney *twentyUSD = [[PARMoney alloc] initWithAmount:20
                                               currency:@"USD"];
    
    XCTAssertEqualObjects([tenEUR reduceToCurrency:@"USD" withBroker:broker], twentyUSD, @"10€ should be 20$");
    
}


@end
