//
//  saordean_tapViewController.h
//  saordean_tap
//
//  Created by JerryTaylorKendrick on 3/25/13.
//  Copyright (c) 2013 Gerald Dean Taylor Kendrick. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface saordean_tapViewController : UIViewController

@property (strong,nonatomic) IBOutlet UILabel* pressCountLabel;
@property (strong,nonatomic) IBOutlet UILabel* pressDecrementLabel;
-(IBAction) blueButton:(id) sender;
-(IBAction) redButton:(id) sender;

@end


