//
//  AppDelegate.h
//  at_timer
//
//  Created by Brandon McFarland on 9/4/18.
//  Copyright © 2018 MobileSensingLearning. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

