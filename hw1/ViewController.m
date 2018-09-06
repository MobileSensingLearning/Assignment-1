//
//  ViewController.m
//  hw1
//
//  Created by Samuel Lefcourt on 9/3/18.
//  Copyright © 2018 Saminator5. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property NSUInteger *state;
@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _state = 0;
    UIPickerView * picker = [UIPickerView new];
    picker.delegate = self;
    picker.dataSource = self;
    picker.showsSelectionIndicator = YES;
    [self.view addSubview:picker];
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
            title = @"a";
            break;
        case 1:
            title = @"b";
            break;
        case 2:
            title = @"c";
            break;
    }
    return title;
}
@end
