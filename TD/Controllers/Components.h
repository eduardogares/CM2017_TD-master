//
//  ViewController.h
//  TD
//
//  Created by Walter Gonzalez Domenzain on 29/11/17.
//  Copyright © 2017 UAG. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Components : UIViewController

@property (weak, nonatomic) IBOutlet UITableView *tblMain;

@end

@interface ComponentsObject : NSObject

@property (weak, nonatomic) NSString *name;
@property (weak, nonatomic) NSString *details;
@property (weak, nonatomic) UIImage *image;

@end
