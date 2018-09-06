//
//  ViewController.m
//  hw1bullseye
//
//  Created by Samuel Lefcourt on 9/4/18.
//  Copyright © 2018 Saminator5. All rights reserved.
//

#import "BullsEye.h"

@interface BullsEye ()
@property NSInteger currentValue;
@property NSInteger hitValue;
@property NSInteger round;
@property NSInteger score;
@end

@implementation BullsEye

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    int roundedValue = self.slider.value;
    _currentValue = roundedValue;
    _hitValue = arc4random_uniform(99);
    [self startNewRound];
    
}

-(void) startNewRound {
    _round+=1;
    _hitValue =  arc4random_uniform(99);
    _currentValue = 50;
    self.slider.value = _currentValue;
    self.targetValue.text = [NSString stringWithFormat:@"%ld", (long)_hitValue];
    self.scoreLabel.text = [NSString stringWithFormat:@"%ld", (long)_score];
    self.roundLabel.text = [NSString stringWithFormat:@"%ld", (long)_round];
}


- (IBAction)buttonClicked:(id)sender {
    int difference = labs(_hitValue - _currentValue);
    int points = 100 - difference;
    _score += points;
    
    NSString *title = @"";
    if (difference == 0) {
        title = @"Perfect! +100 points!";
        _score += 100;
    }  else if (difference == 1) {
        title = @"1 off, +50 points!";
        _score += 50;
    } else if (difference < 5) {
        title = @"You almost had it!";
    }  else if (difference < 10) {
        title = @"That's still pretty good!";
    }  else {
        title = @"Not even close...";
    }
    
    UIAlertController* alert = [UIAlertController alertControllerWithTitle:title
                                                                   message:[NSString stringWithFormat:@"You pulled it to %ld",_currentValue]
                                                            preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction* defaultAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault
                                                          handler:^(UIAlertAction * action) {
                                                              [self startNewRound];
                                                          }];
    
    [alert addAction:defaultAction];
    [self presentViewController:alert animated:YES completion:nil];
}
- (IBAction)sliderChanged:(id)sender {
    _currentValue = self.slider.value;
    
}
@end
