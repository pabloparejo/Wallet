//
//  PARBrokerTest.m
//  Wallet
//
//  Created by Pablo Parejo Camacho on 21/3/15.
//  Copyright (c) 2015 Pablo Parejo Camacho. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "PARBroker.h"

@interface PARBrokerTest : XCTestCase

@property (nonatomic, strong) PARBroker *sut;

@end

@implementation PARBrokerTest

- (void)setUp {
    // This method is called before the invocation of each test method in the class.
    [super setUp];
    
    self.sut = [[PARBroker alloc] init];
    [self.sut addRate:2 fromCurrency:@"USD" toCurrency:@"EUR"];

}


- (void)testDirectRate{
    XCTAssertEqual(2, [self.sut rateFromCurrency:@"USD" toCurrency:@"EUR"]);
}

- (void)testInverseRate{
    XCTAssertEqual(0.5, [self.sut rateFromCurrency:@"EUR" toCurrency:@"USD"]);
}

- (void)tearDown {
    // This method is called after the invocation of each test method in the class.
    [super tearDown];
    self.sut = nil;
}

@end
