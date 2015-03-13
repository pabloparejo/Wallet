//
//  NSObject+GNUstepBase.h
//  Wallet
//
//  Created by Fernando Rodríguez Romero on 6/23/13.
//  Copyright (c) 2013 Agbo. All rights reserved.
//

@import Foundation;


// Methods "stolen" from GNUstep

@interface NSObject (GNUstepBase)

/**
 * Message sent when an implementation wants to explicitly require a subclass
 * to implement a method (but cannot at compile time since there is no
 * <code>abstract</code> keyword in Objective-C).  Default implementation
 * raises an exception at runtime to alert developer that he/she forgot to
 * override a method.
 */
- (id) subclassResponsibility: (SEL)aSel;
+ (id) subclassResponsibility: (SEL)aSel;

@end
