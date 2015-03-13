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

- (void)testThatInitRaisesException{
    XCTAssertThrows([[PARMoney alloc] initWithAmount:5], @"This method is a subclass responsibility");
}


- (void)testThatTimesRaisesException{
    // We could test allocWithZone in order to be a psyco
    XCTAssertThrows([[[PARMoney alloc] init] times:2], @"This method is a subclass responsibility");
}




@end
