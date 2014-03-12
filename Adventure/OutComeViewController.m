//
//  OutComeViewController.m
//  Adventure
//
//  Created by Charles Northup on 3/11/14.
//  Copyright (c) 2014 MobileMakers. All rights reserved.
//

#import "OutComeViewController.h"

@interface OutComeViewController ()
@property (weak, nonatomic) IBOutlet UIButton *hangOutButton;
@property (weak, nonatomic) IBOutlet UIButton *goHomeButton;
@property (weak, nonatomic) IBOutlet UIButton *attackButton;
@property (weak, nonatomic) IBOutlet UIButton *truthButton;



@end

@implementation OutComeViewController


- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    UIViewController *vc = segue.destinationViewController;
    NSString *title = @"";
    if (sender == self.goHomeButton)
    {
        title = _goHomeButton.titleLabel.text;
        vc.title = title;
        
        
    }
    if (sender == self.hangOutButton)
    {
        title = _hangOutButton.titleLabel.text;
        vc.title = title;
       
        
    }
    if (sender == self.attackButton)
    {
        title = _attackButton.titleLabel.text;
        vc.title = title;
        
        
    }
    if (sender == self.truthButton)
    {
        title = _truthButton.titleLabel.text;
        vc.title = title;
        
        
    }
}
@end
