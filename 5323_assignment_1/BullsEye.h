//
//  ViewController.h
//  hw1bullseye
//
//  Created by Samuel Lefcourt on 9/4/18.
//  Copyright © 2018 Saminator5. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BullsEye : UIViewController

- (IBAction)buttonClicked:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *scoreLabel;
- (IBAction)sliderChanged:(id)sender;

@property (weak, nonatomic) IBOutlet UILabel *roundLabel;
@property (weak, nonatomic) IBOutlet UIButton *hitMeButton;
@property (weak, nonatomic) IBOutlet UILabel *targetValue;
@property (weak, nonatomic) IBOutlet UISlider *slider;
@end

