//
//  CalculaterViewController.m
//  Calculater
//
//  Created by arif kaplan on 18.05.2013.
//  Copyright (c) 2013 arif kaplan. All rights reserved.
//

#import "CalculaterViewController.h"

// () magic for interface !!!
@interface CalculaterViewController()
@property (readonly) CalculaterBrain * brain;
@end


@implementation CalculaterViewController

-(CalculaterBrain *)Brain{

    // brain objesi oluşmadıysa objeyi oluşturuyoruz.
    // malloc kullanımına benziyor
    // dikkat edilmesi gereken iphone da memory az oldugu için gereksiz
    // memory kullanımından kaçınılmalı.
    if (!Brain) {
        Brain = [ [CalculaterBrain alloc] init];
    }
    return Brain;
}

-(IBAction)digitPressed:(UIButton *)sender{
    
    // burada dot notition kullanımı görüyorsunuz.
    // köseli parantentez kullanımından cok daha temiz
    // bir kullanım örnegi.
    
    //NSString *digit = [[sender titleLabel] text ];
    NSString *digit = sender.titleLabel.text;
    
    if (userIsInTheMiddleOfTypingANumber) {
        //[display setText:[[display text] stringByAppendingString:digit]];
        display.text = [display.text stringByAppendingString:digit];
    }else{
        //[display setText:digit];
        display.text = digit;
        userIsInTheMiddleOfTypingANumber = YES;
    }
}
-(IBAction)operationPressed:(UIButton *)sender{
    
    if (userIsInTheMiddleOfTypingANumber) {
        
        //[[self Brain] setOperand:[[display text] doubleValue]];
        self.Brain.operand = [ display.text doubleValue ];
        userIsInTheMiddleOfTypingANumber = NO;
    }

    NSString *operation = [[sender titleLabel] text];
    [self.Brain performOperation:operation];
    [ display setText:[NSString stringWithFormat:@"%g", self.Brain.operand] ];
}

@end
