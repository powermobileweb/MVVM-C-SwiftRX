//
//  _RXDelegateProxy.h
//  RxCocoa
//
//  Created by PowerMobile Team on 7/4/15.
//  Copyright © 2015 PowerMobile Team. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface _RXDelegateProxy : NSObject

@property (nonatomic, weak, readonly) id _forwardToDelegate;

-(void)_setForwardToDelegate:(id __nullable)forwardToDelegate retainDelegate:(BOOL)retainDelegate;

-(BOOL)hasWiredImplementationForSelector:(SEL)selector;
-(BOOL)voidDelegateMethodsContain:(SEL)selector;

-(void)_sentMessage:(SEL)selector withArguments:(NSArray*)arguments;
-(void)_methodInvoked:(SEL)selector withArguments:(NSArray*)arguments;

@end

NS_ASSUME_NONNULL_END
