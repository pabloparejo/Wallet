//
//  PAREuroTest.m
//  Wallet
//
//  Created by Pablo Parejo Camacho on 13/3/15.
//  Copyright (c) 2015 Pablo Parejo Camacho. All rights reserved.
//

@import UIKit;
@import XCTest;
#import "PAREuro.h"

@interface PAREuroTest : XCTestCase

@end

@implementation PAREuroTest

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

-(void) testMultiplation{
    PAREuro *five = [[PAREuro alloc] initWithAmount:5];
    PAREuro *ten = [five times:2];
    XCTAssertEqualObjects(ten, [five times:2], @"€5 * 2 should be €10");

    XCTAssertEqualObjects([ten times:2], [five times:4], @"€10 * 2 should be €5*4");
}

-(void) testEquality{
    PAREuro *five = [[PAREuro alloc] initWithAmount:5];
    PAREuro *product = [five times:2];
    PAREuro *ten = [[PAREuro alloc] initWithAmount:10];
    
    XCTAssertEqualObjects(product, ten, @"Objects with amount 10 and 10 should be equal");
}

@end
