//
//  CalculaterBrain.h
//  Calculater
//
//  Created by arif kaplan on 18.05.2013.
//  Copyright (c) 2013 arif kaplan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CalculaterBrain : NSObject{
@private
    double operand;
    double waitingOperand;
    NSString *waitingOperation;

}
@property double operand;

- (double)performOperation:(NSString *)operation;


@end
