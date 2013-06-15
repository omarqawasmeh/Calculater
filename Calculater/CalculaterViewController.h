//
//  CalculaterViewController.h
//  Calculater
//
//  Created by arif kaplan on 18.05.2013.
//  Copyright (c) 2013 arif kaplan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CalculaterBrain.h"
@interface CalculaterViewController : UIViewController{

    CalculaterBrain * Brain;
    IBOutlet UILabel * display;
    BOOL userIsInTheMiddleOfTypingANumber;
}

-(CalculaterBrain *)Brain;
-(IBAction)digitPressed:(UIButton *)sender;
-(IBAction)operationPressed:(UIButton *)sender;

@end
