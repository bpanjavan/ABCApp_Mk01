//
//  FirstViewController.m
//  ABCApp_Mk01
//
//  Created by Bryan Panjavan on 5/27/13.
//  Copyright (c) 2013 PJN Advance. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()
@end

@implementation FirstViewController

@synthesize uilabelMain;
@synthesize uitextfieldMain;
@synthesize uiimageviewBackground;

#pragma mark -
#pragma mark View Lifecycle #

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"First", @"First");
        self.tabBarItem.image = [UIImage imageNamed:@"first"];
    }
    return self;
}
							
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    // Get the date and set it to the label
    NSString *strCurrentDate;
    NSLocale* nslocaleCurrent = [NSLocale currentLocale];
    strCurrentDate = [[NSDate date] descriptionWithLocale:nslocaleCurrent];
    NSString *uilabelValue = [NSString stringWithFormat:
                                @"The current date is: %@"
                                , strCurrentDate
                              ];
    
    [uilabelMain setText: uilabelValue];
    
    [uitextfieldMain setDelegate: self];
    // Set the background image
    NSString *filename = @"Background_EmmaWave.png";

    /*
     // to deal with retina display
    CGRect screenRect = [[UIScreen mainScreen] bounds];
    if (screenRect.size.height == 568.0f)
        filename = [filename stringByReplacingOccurrencesOfString:@".png" withString:@"-568h.png"];
     */

    [uiimageviewBackground setImage: [UIImage imageNamed:filename]];
    //imageView.image = [UIImage imageNamed:filename];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark -
#pragma mark IBActions

- (IBAction) buttonAction1_Click:(id)sender
{
    NSString *strTextFieldValue = uitextfieldMain.text;
    [uilabelMain setText: strTextFieldValue];
}

- (IBAction)butonAddSubview_Click:(id)sender
{
    // Add a label
    UILabel *uilabelDynamic = [[UILabel alloc]
                               initWithFrame:CGRectMake(0, 240, 300, 50)];
    
    [uilabelDynamic setText: @"Dynamic Label"];
    [[self view] addSubview: uilabelDynamic];

    //[uilabelDynamic release]; // doesn't work in auto-reference counting mode
}


#pragma mark -
#pragma mark View Events

- (BOOL) textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
}

@end


























