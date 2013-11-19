//
//  MainViewController.h
//  piker
//
//  Created by Tiago Paluch on 19/11/13.
//  Copyright (c) 2013 Tiago Paluch. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MainViewController : UIViewController <UIPickerViewDelegate, UIPickerViewDataSource>
@property (weak, nonatomic) IBOutlet UIPickerView *pickerView;
- (IBAction)newRandowColor:(id)sender;

@end
