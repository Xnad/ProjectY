//
//  AppDelegate.h
//  TableView0
//
//  Created by XnaD on 7/21/18.
//  Copyright © 2018 XnaD. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate, NSTableViewDataSource>
{
    NSArray *dataSourceTableView0;
}
@property (weak) IBOutlet NSTableView *tableview0;

@end

