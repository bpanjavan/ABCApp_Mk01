//
//  FirstViewController.h
//  ABCApp_Mk01
//
//  Created by Bryan Panjavan on 5/27/13.
//  Copyright (c) 2013 PJN Advance. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FirstViewController : UIViewController <UITextFieldDelegate>

@property (nonatomic, retain) IBOutlet UILabel *uilabelMain;
@property (nonatomic, retain) IBOutlet UITextField *uitextfieldMain;
@property (nonatomic, retain) IBOutlet UIImageView *uiimageviewBackground;


- (IBAction) buttonAction1_Click:(id) sender;
- (IBAction)butonAddSubview_Click:(id)sender;

@end





