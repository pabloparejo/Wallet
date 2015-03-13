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
}


@end
