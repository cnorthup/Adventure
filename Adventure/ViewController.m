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
@property (weak, nonatomic) IBOutlet UITextView *characterNameBegin;




@end

@implementation ViewController

- (IBAction)setCharacterName:(UITextField *)sender {
    self.editing = NO;
    NSString *name = sender.text;
    NSString *setup = [NSString stringWithFormat:@"%@ wakes up in the Mobile Maker space surrounded by empty pizza boxes.", name];
    self.characterNameBegin.text = setup;
}




- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    
    OutComeViewController *vc = segue.destinationViewController;
    NSString *title = @"";
    if (sender == self.ateButton)
    {
        title = _ateButton.titleLabel.text;
        vc.title = title;
        
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
    self.result.backgroundColor = [UIColor blackColor];
    self.result.textColor = [UIColor greenColor];
    self.result.text = [(UITextView *)[finalVC.view viewWithTag:123] text];
}


@end
