//
//  MasterViewController.m
//  AnimalTableII
//
//  Created by john on 3/20/14.
//  Copyright (c) 2014 John Boyd. All rights reserved.
//



#import "MasterViewController.h"
#import "DetailViewController.h"

@interface MasterViewController () {
}
@end

@implementation MasterViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    self.model = [AnimalModel sharedInstance];
    
}


#pragma mark - Table View

- (void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [self performSegueWithIdentifier:@"DetailSegue" sender: self];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    //return model count;
    return [self.model count ];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    NSString *animalName;
    UIImage *animalImage;
    
    animalName = [self.model animalNameForIndex: indexPath.row];
    animalImage = [self.model imageForIndex: indexPath.row];
    
    cell.textLabel.text = animalName;
    cell.imageView.image = animalImage;
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;

    return cell;
}



- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    DetailViewController *dtv;
    NSIndexPath *selectedRow;
    NSString *dataObjectForSelectedRow;
    UIImage *imageForSelectedRow;
    
    
    if ([[segue identifier] isEqualToString: @"DetailSegue"]) {
        selectedRow = [self.tableView indexPathForSelectedRow];
        dataObjectForSelectedRow = [self.model animalNameForIndex: selectedRow.row];
        imageForSelectedRow = [self.model imageForIndex: selectedRow.row];
        
        dtv = segue.destinationViewController;
        dtv.detailItem = dataObjectForSelectedRow;
        dtv.imageName = imageForSelectedRow;
        
    }
}

@end
