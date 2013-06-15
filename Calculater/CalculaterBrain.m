//
//  CalculaterBrain.m
//  Calculater
//
//  Created by arif kaplan on 18.05.2013.
//  Copyright (c) 2013 arif kaplan. All rights reserved.
//

#import "CalculaterBrain.h"

@implementation CalculaterBrain

// operan için set ve get metotları
// setOperan, operand oluşturur.
@synthesize operand;

- (void)performWaitingOperation{

    if ([@"+" isEqualToString:waitingOperation]) {
        operand = waitingOperand + operand;
    } else if ([@"-" isEqualToString:waitingOperation]){
        operand = waitingOperand - operand;
    } else if ([@"*" isEqualToString:waitingOperation]){
        operand = waitingOperand * operand;
    } else if ([@"/" isEqualToString:waitingOperation]){
        if (operand) {
            operand = waitingOperand / operand;
        }
    }
}

- (double)performOperation:(NSString *)operation{
    if ([operation isEqualToString:@"sqrt"]) {
        operand = sqrt(operand);
    }else{
        [self performWaitingOperation];
        
        waitingOperation = operation;
        waitingOperand = operand;
    }
    return operand;
}


@end
