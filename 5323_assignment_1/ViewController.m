//
//  ViewController.m
//  5323_assignment_1
//
//  Created by Brandon McFarland on 8/28/18.
//  Copyright © 2018 MobileSensingLearning. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
{
    NSArray *tasks;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    tasks = [NSArray arrayWithObjects:@"Buttons, Sliders, and Labels", @"Stepper and Switch", @"Picker", @"Segmented Control", @"Timer", @"ScrollView", @"Image View", @"Navigation Controller", @"Collection View Controller", @"Table View Controller with dynamic prototype cells",nil];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [tasks count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"SimpleTableCell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    }
    
    cell.textLabel.text = [tasks objectAtIndex:indexPath.row];
    return cell;
}


//- (void)didReceiveMemoryWarning {
//    [super didReceiveMemoryWarning];
//    // Dispose of any resources that can be recreated.
//}


@end
