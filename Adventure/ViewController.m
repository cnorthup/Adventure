//
//  ViewController.m
//  Adventure
//
//  Created by Charles Northup on 3/11/14.
//  Copyright (c) 2014 MobileMakers. All rights reserved.
//

#import "ViewController.h"
#import "OutComeViewController.h"
@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIButton *cleanButton;
@property (weak, nonatomic) IBOutlet UIButton *ateButton;
@property (weak, nonatomic) IBOutlet UIImageView *startScreen;

@property (weak, nonatomic) IBOutlet UILabel *result;


@end

@implementation ViewController


- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    OutComeViewController *vc = segue.destinationViewController;
    NSString *title = @"";
    if (sender == self.ateButton)
    {
        title = _ateButton.titleLabel.text;
        vc.title = title;
//        _result.text = @"";
        
    }
    if (sender == self.cleanButton)
    {
        title = _cleanButton.titleLabel.text;
        vc.title = title;
        
    }
}

- (IBAction)unwindDestinationViewController:(UIStoryboardSegue*)segue
{
    OutComeViewController *finalVC = segue.sourceViewController;
    self.result.text = [(UITextView *)[finalVC.view viewWithTag:123] text];
}

@end
