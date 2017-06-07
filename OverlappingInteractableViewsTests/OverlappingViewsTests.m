//
//  OverlappingViewsTest.m
//  OverlappingInteractableViews
//
//  Created by Sergey Ilyevsky on 07/06/2017.
//  Copyright © 2017 Sergey Ilyevsky. All rights reserved.
//

#import <XCTest/XCTest.h>
@import EarlGrey;

@interface OverlappingViewsTests : XCTestCase

@end

@implementation OverlappingViewsTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testScrollBackrgoundScrollView {
    [[EarlGrey selectElementWithMatcher:grey_accessibilityID(@"backgroundScrollView")] performAction:grey_scrollInDirection(kGREYDirectionDown, 50)];
}

- (void)testTapOnBackrgoundButton {
    [[EarlGrey selectElementWithMatcher:grey_accessibilityID(@"backgroundButton")] performAction:grey_tap()];
    sleep(10);
}

@end
