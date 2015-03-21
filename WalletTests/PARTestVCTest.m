//
//  PARTestVCTest.m
//  Wallet
//
//  Created by Pablo Parejo Camacho on 21/3/15.
//  Copyright (c) 2015 Pablo Parejo Camacho. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "PARTestViewController.h"

@interface PARTestVCTest : XCTestCase

@end

@implementation PARTestVCTest

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

-(void) testThatTextIsCopiedToLabel{
    // Environment
    UIButton *fakeButton = [[UIButton alloc] init];
    fakeButton.titleLabel.text = @"Hello!";
    
    UILabel *fakeLabel = [[UILabel alloc] init];
    
    // SUT
    PARTestViewController *sut = [[PARTestViewController alloc] initWithNibName:nil bundle:nil];
    sut.outputLabel = fakeLabel;
    [sut copyText:fakeButton];

    // Assertion
    XCTAssertEqualObjects(fakeButton.titleLabel.text, sut.outputLabel.text);
}

@end
