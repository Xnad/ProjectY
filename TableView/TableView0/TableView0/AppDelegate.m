//
//  AppDelegate.m
//  TableView0
//
//  Created by XnaD on 7/21/18.
//  Copyright © 2018 XnaD. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@property (weak) IBOutlet NSWindow *window;
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
    self->dataSourceTableView0 = [[NSFileManager defaultManager] contentsOfDirectoryAtPath:@"/Applications" error:nil];
    [self.tableview0 setDataSource:self];
}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

#pragma mark TableView

- (NSInteger)numberOfRowsInTableView:(NSTableView *)tableView
{
    if(self->dataSourceTableView0)
    {
        return self->dataSourceTableView0.count;
    }
    return 0;
}

/* This method is required for the "Cell Based" TableView, and is optional for the "View Based" TableView. If implemented in the latter case, the value will be set to the view at a given row/column if the view responds to -setObjectValue: (such as NSControl and NSTableCellView). Note that NSTableCellView does not actually display the objectValue, and its value is to be used for bindings. See NSTableCellView.h for more information.
 */
- (nullable id)tableView:(NSTableView *)tableView objectValueForTableColumn:(nullable NSTableColumn *)tableColumn row:(NSInteger)row
{
    if([tableColumn.identifier isEqualToString:@"column0"])
    {
        return [self->dataSourceTableView0 objectAtIndex:row];
    }
    return nil;
}


@end
