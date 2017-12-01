//
//  ComponentsDetailsViewController.h
//  TD
//
//  Created by EDGE on 30/11/17.
//  Copyright © 2017 UAG. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Components.h"

@interface ComponentsDetails : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *lblName;
@property (weak, nonatomic) IBOutlet UIImageView *imageMain;
@property (weak, nonatomic) IBOutlet UITextView *textViewDetails;


@property (weak, nonatomic) ComponentsObject *componentsObject;

@end
