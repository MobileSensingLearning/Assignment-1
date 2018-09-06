//
//  ViewController.m
//  hw1
//
//  Created by Samuel Lefcourt on 9/3/18.
//  Copyright © 2018 Saminator5. All rights reserved.
//

#import "StepSwitch.h"

@interface StepSwitch ()
@property NSUInteger *state;
@end

@implementation StepSwitch


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _state = 0;
    self.picker.delegate = self;
    self.picker.dataSource = self;
    self.picker.showsSelectionIndicator = YES;
  //  [self.view addSubview:picker];
}



- (IBAction)stepperClicked:(id)sender {
    if ([self.switcher isOn]) {
    self.lbl.text = [NSString stringWithFormat:@"%0.0f", _stepper.value];
    }
}
- (IBAction)switcherSwitched:(id)sender {
    if(_state == 0){ // turned off
        [self.switcher setOn:YES animated:YES];
        self.stepper.hidden = false;
        _state++;
    }  else {
        [self.switcher setOn:NO animated:YES];
        self.stepper.hidden = true;
        _state = 0;
    }
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    return 1;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    return 3;
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    NSString * title = nil;
    switch(row) {
        case 0:
            title = @"Steps";
            break;
        case 1:
            title = @"Knuckles Cracked";
            break;
        case 2:
            title = @"";
            break;
    }
    return title;
}
@end
