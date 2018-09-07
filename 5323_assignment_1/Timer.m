//
//  ViewController.m
//  at_timer
//
//  Created by Brandon McFarland on 9/4/18.
//  Copyright © 2018 MobileSensingLearning. All rights reserved.
//

#import "Timer.h"

@interface Timer ()
@property (weak, nonatomic) IBOutlet UILabel *foodWasteLabel;
@property (nonatomic, assign) NSInteger foodWaste;
@end

@implementation Timer
@synthesize foodWaste = _foodWaste;
NSInteger _foodWaste = 0;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [NSTimer scheduledTimerWithTimeInterval:(5.0) repeats:(YES) block:^(NSTimer * _Nonnull timer) {
        _foodWaste = (_foodWaste + 10056) ;
        NSString* foodWasteString = [NSString stringWithFormat:@"%li",(long)self.foodWaste];
        [self changeLabel:self.foodWasteLabel withString:foodWasteString];
        NSLog(@"Timer called");
    } ];
}

- (void)changeLabel:(UILabel* )label
         withString:(NSString*)string
{
    label.text = string;
}

@end
