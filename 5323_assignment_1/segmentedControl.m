//
//  ViewController.m
//  a1_segmented_control
//
//  Created by Brandon McFarland on 9/4/18.
//  Copyright © 2018 MobileSensingLearning. All rights reserved.
//

#import "segmentedControl.h"

@interface segmentedControl () <UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentedControl;
- (IBAction)segmentedControlValueChanged:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *segmentedControlLabel;

@end

@implementation segmentedControl

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (IBAction)segmentedControlValueChanged:(UISegmentedControl *)sender {
    NSInteger index = sender.selectedSegmentIndex;
    NSString* indexString = [NSString stringWithFormat:@"%ld",index];
    [self changeLabel:self.segmentedControlLabel withString:indexString];
}

- (void)changeLabel:(UILabel* )label
         withString:(NSString*)string
{
    label.text = string;
}
@end
