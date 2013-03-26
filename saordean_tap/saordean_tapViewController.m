//
//  saordean_tapViewController.m
//  saordean_tap
//
//  Created by JerryTaylorKendrick on 3/25/13.
//  Copyright (c) 2013 Gerald Dean Taylor Kendrick. All rights reserved.
//

#import "saordean_tapViewController.h"

@interface saordean_tapViewController ()

@end

@implementation saordean_tapViewController

@synthesize pressCountLabel;


// Variable to track count of button presses
NSInteger pressCount;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    //pressCount = 0;
    pressCountLabel.text =  [NSString stringWithFormat:@"%d", pressCount];
}

-(IBAction) blueButton:(id) sender
{
    saordean_tapViewController* view;
    view = [saordean_tapViewController alloc];
    
    
    // Code to implement an alert
    //    NSString *msg = [[NSString alloc] initWithFormat:@"The button has been pressed %@ times",
    //                    [NSString numberToString pressCount]];
    // NSString *msg = [[NSString alloc  ] numberToString:pressCount];
    //    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Button Alert"
    //                                                    message:msg
    //                                                   delegate:self
    //                                          cancelButtonTitle:@"OK"
    //                                          otherButtonTitles:nil];
    //    [alert show];
    
    // Update the Label: daysToBDLabel with the count of button presses
    if (pressCount <= 8) {
        ++pressCount;
        
    }
    pressCountLabel.text = [NSString stringWithFormat:@"%d",pressCount];
    [self presentViewController:view
                       animated:YES completion:Nil];
}



-(IBAction) redButton:(id) sender
{
    saordean_tapViewController* view;
    view = [saordean_tapViewController alloc];
    
    
    // Code to implement an alert
    //    NSString *msg = [[NSString alloc] initWithFormat:@"The button has been pressed %@ times",
    //                    [NSString numberToString pressCount]];
    // NSString *msg = [[NSString alloc  ] numberToString:pressCount];
    //    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Button Alert"
    //                                                    message:msg
    //                                                   delegate:self
    //                                          cancelButtonTitle:@"OK"
    //                                          otherButtonTitles:nil];
    //    [alert show];
    
    // Update the Label: daysToBDLabel with the count of button presses
    if (pressCount > 0) {
        --pressCount;
        
    }
    pressCountLabel.text = [NSString stringWithFormat:@"%d",pressCount];
    [self presentViewController:view
                       animated:YES completion:Nil];
}




- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
