//  Created by John Boyd on 3/6/14.
//  Copyright (c) 2014 John Boyd. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.model = [AnimalModel sharedInstance];
    
    NSString *title;
    NSArray *animals;
    n=0;
    
    self.sectionTitles = [NSMutableArray array];
    self.tableData = [NSMutableDictionary dictionary];
    
    // Birds
    title = @"Birds";
    animals = [NSArray arrayWithObjects: @"Crow", @"Eagle", nil];
    [self.sectionTitles addObject: title];
    [self.tableData setValue: animals forKey: title];
    
    // Cats
    title = @"Cats";
    animals = [NSArray arrayWithObjects: @"Tiger", @"Lion", @"Panther", nil];
    [self.sectionTitles addObject: title];
    [self.tableData setValue: animals forKey: title];
    
    // Sea Mammals
    title = @"Sea Mammals";
    animals = [NSArray arrayWithObjects: @"Dolfin", @"Whale", @"Seal Lion", nil];
    [self.sectionTitles addObject: title];
    [self.tableData setValue: animals forKey: title];
    
    // Apes
    title = @"Apes";
    animals = [NSArray arrayWithObjects: @"Chimp", @"Gorilla", @"Orangutan", @"Gibbon", nil];
    [self.sectionTitles addObject: title];
    [self.tableData setValue: animals forKey: title];
    
}

#pragma mark - Table View Data Source

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell;
    
    NSString *animalName;
    //NSArray *animals;
    //NSString *title;
    //NSInteger n=0;
    
    UIImage *animalImage;
    
    // Get the animal section title
    //title = [self.sectionTitles objectAtIndex: indexPath.section];
    
    // Get the array of animals for this section
    //animals = [self.tableData objectForKey: title];
    
    // Get the animal name for this row, in this section
    //animalName = [animals objectAtIndex: indexPath.row];
    animalName = [self.model animalNameForIndex: n];
    animalImage = [self.model thumbnailImageForIndex: n++];
    
    cell = [tableView dequeueReusableCellWithIdentifier: @"Cell-Itentifier"];

    cell.textLabel.text = animalName;
    cell.imageView.image = animalImage;
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    //NSString *title = [self.sectionTitles objectAtIndex: section];
    //NSArray *array = [self.tableData valueForKey: title];
    //return array.count;
    return [self.model count];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    //return self.sectionTitles.count;
    return 1;
}

- (NSString*) tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    //return [self.sectionTitles objectAtIndex: section];
    return @" ";
}

#pragma mark - Table View Delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
}

- (void)tableView:(UITableView *)tableView didEndEditingRowAtIndexPath:(NSIndexPath *)indexPat {
    
}



@end
