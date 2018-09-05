//
//  TableViewControllerOne.m
//  5323_assignment_1
//
//  Created by Enyinnaya Asonye on 9/4/18.
//  Copyright © 2018 MobileSensingLearning. All rights reserved.
//

#import "TableViewControllerOne.h"

@interface TableViewControllerOne ()

@end

@implementation TableViewControllerOne

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}


#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 6;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // This can be allocated dynamically depending on however many cells you want, need to implement array if you want more than one cell
    if(section==0)
        return 1;
    if(section==1)
        return 1;
    if(section==2)
        return 1;
    if(section==3)
        return 1;
    if(section==4)
        return 1;
    if(section==5)
        return 1;
    else
        return 1;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = nil;
    
    if(indexPath.section == 0){
        cell = [tableView dequeueReusableCellWithIdentifier:@"EnyiCell1" forIndexPath:indexPath];
        // Configure the cell...
        cell.textLabel.text = @"Section1";
    }
    if(indexPath.section == 1) {
        cell = [tableView dequeueReusableCellWithIdentifier:@"EnyiCell2" forIndexPath:indexPath];
        // Configure the cell...
        cell.textLabel.text = @"Section2";
    }
    if(indexPath.section == 2) {
        cell = [tableView dequeueReusableCellWithIdentifier:@"EnyiCell3" forIndexPath:indexPath];
        // Configure the cell...
        cell.textLabel.text = @"Section3";
    }
    if(indexPath.section == 3) {
        cell = [tableView dequeueReusableCellWithIdentifier:@"EnyiCell4" forIndexPath:indexPath];
        // Configure the cell...
        cell.textLabel.text = @"Section4";
    }
    if(indexPath.section == 4) {
        cell = [tableView dequeueReusableCellWithIdentifier:@"EnyiCell5" forIndexPath:indexPath];
        // Configure the cell...
        cell.textLabel.text = @"Section5";
    }
    if(indexPath.section == 5) {
        cell = [tableView dequeueReusableCellWithIdentifier:@"EnyiCell6" forIndexPath:indexPath];
        // Configure the cell...
        cell.textLabel.text = @"Section6";
    }
    
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
