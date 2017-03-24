//
//  AppDelegate.h
//  NNTextView
//
//  Created by 刘朋坤 on 17/3/23.
//  Copyright © 2017年 刘朋坤. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

