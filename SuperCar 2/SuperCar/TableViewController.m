//
//  TableViewController.m
//  MovieTable
//
//  Created by student on 22/9/2017.
//  Copyright © 2017 student. All rights reserved.
//

#import "TableViewController.h"


#import "TableViewCell.h"


#import "DetailViewController.h"



@interface TableViewController ()

@end

@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _Titles = @[@"gtr", @"lambor", @"ferrai",];
    _Descriptions = @[@"good", @"best", @"fun",];
    _Images = @[@"gtr.png", @"lambor.png", @"ferrai.png",];

    _Movies = @[@"GTR", @"lambo", @"Ferrari",];
    
    _SoundNames = @[@"GTR", @"Lambo", @"Ferrari",];
    _SoundTypes = @[@"mp3", @"mp3", @"mp3",];
        _Web = @[@"https://en.nissan.com.hk/vehicles/new/gtr.html",@"https://www.lamborghini.com/en-en",@"https://www.ferrari.com/en-HK",];
        }

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _Titles.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"TableViewCell";
    TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    // Configure the cell...
    
    NSInteger row = [indexPath row];
    
    cell.TitleLabel.text = _Titles[row];
    
    cell.DescriptionLabel.text = _Descriptions[row];
    
    cell.ThumbImage.image = [UIImage imageNamed:_Images[row]];
     cell.TitleLabel.textColor = [UIColor yellowColor];
       cell.DescriptionLabel.textColor = [UIColor redColor];
    NSLog(@"Hi %@",_Titles[row]);
    
    
    return cell;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"ShowDetails"]) {
        
        NSLog(@"ShowDetails");
        
        DetailViewController *detailViewController = [segue destinationViewController];
        
        NSIndexPath *myIndexPath = [self.tableView indexPathForSelectedRow];
        
        NSInteger row = [myIndexPath row];
        
        NSLog(@"Segue %@",_Titles[row]);
        
        //        detailViewController.DetailModal = @[_Titles[row], _Descriptions[row], _Images[row]];
        
//        detailViewController.DetailModal = @[_Titles[row], _Descriptions[row], _Images[row]];
        
//        detailViewController.DetailModal = @[_Titles[row], _Descriptions[row], _Images[row], _Movies[row]];
        
                detailViewController.DetailModal = @[_Titles[row], _Descriptions[row], _Images[row], _SoundNames[row], _SoundTypes[row],_Movies[row],_Web[row]];

         
    }
}




@end
