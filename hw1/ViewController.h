//
//  ViewController.h
//  hw1
//
//  Created by Samuel Lefcourt on 9/3/18.
//  Copyright © 2018 Saminator5. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *lbl;
@property (weak, nonatomic) IBOutlet UIStepper *stepper;
@property (weak, nonatomic) IBOutlet UISwitch *switcher;

- (IBAction)stepperClicked:(id)sender;

- (IBAction)switcherSwitched:(id)sender;

@end

