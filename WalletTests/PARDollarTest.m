//
//  PARDollarTest.m
//  Wallet
//
//  Created by Pablo Parejo Camacho on 13/3/15.
//  Copyright (c) 2015 Pablo Parejo Camacho. All rights reserved.
//

@import UIKit;
@import XCTest;

#import "PARDollar.h"


@interface PARDollarTest : XCTestCase

@end

@implementation PARDollarTest

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testMultiplication{
    PARDollar *five = [[PARDollar alloc] initWithAmount:5];
    PARDollar *ten = [[PARDollar alloc] initWithAmount:10];
    XCTAssertEqualObjects([five times:2], ten,@"€5 * 2 should be €10");
}

@end
