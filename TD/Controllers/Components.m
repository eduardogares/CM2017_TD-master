//
//  ViewController.m
//  TD
//
//  Created by Walter Gonzalez Domenzain on 29/11/17.
//  Copyright © 2017 UAG. All rights reserved.
//

#import "Components.h"
#import "cellComponents.h"
#import "ComponentsDetails.h"

@interface Components ()

@property (strong, nonatomic) NSMutableArray<ComponentsObject *> *listComp;

@end

@implementation Components

int idx=0;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    
    [self initController];
}

- (void)initController {
    _listComp = [[NSMutableArray alloc] init];
    
    ComponentsObject *c1=[[ComponentsObject alloc] init];
    
    c1.name=@"Inteligencia Artificial";
    c1.details=@"Here we need to place a description for this item.";
    c1.image=nil;
    //c1.image= [UIImage imageNamed:@"imagen jpg"]; // EDGE example
    //UIImage *img = [UIImage imageNamed:@"anyImageName"];
    [_listComp addObject:c1];
    
    ComponentsObject *c2=[[ComponentsObject alloc] init];
    c2.name=@"Vehiculos Autonomos";
    c2.details=@"#########################################";
    c2.image=nil;
    //c1.image= [UIImage imageNamed:@"imagen jpg"]; // EDGE example
    //UIImage *img = [UIImage imageNamed:@"anyImageName"];
    
    [_listComp addObject:c2];
    
    
    [self.tblMain reloadData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}
//-------------------------------------------------------------------------------
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _listComp.count;
}
//-------------------------------------------------------------------------------
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 64	;
}
//-------------------------------------------------------------------------------
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    //Initialize cells
    cellComponents *cell = (cellComponents *)[tableView dequeueReusableCellWithIdentifier:@"cellComponents"];
    
    if (cell == nil) {
        [tableView registerNib:[UINib nibWithNibName:@"cellComponents" bundle:nil] forCellReuseIdentifier:@"cellComponents"];
        cell = [tableView dequeueReusableCellWithIdentifier:@"cellComponents"];
    }
    //Fill cell with info from arrays
    ComponentsObject *comp = [_listComp objectAtIndex:indexPath.row];
    
    cell.lblName.text = comp.name;
    if(comp.image != nil)
        cell.imageCell.image=comp.image;
    
    return cell;
}
//-------------------------------------------------------------------------------
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    idx=(int)indexPath.row;
    NSLog(@"==>didSelectRowAtIndexPath %li",(long)indexPath.row);
    
    [self performSegueWithIdentifier:@"segueComponents" sender:self];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    NSLog(@"_EDGE_ prepareForSegue... ");
    ComponentsDetails *cd = [segue destinationViewController];
    ComponentsObject *comp = [_listComp objectAtIndex:idx];
    
    cd.componentsObject=comp;
}

@end


@implementation ComponentsObject

@end
