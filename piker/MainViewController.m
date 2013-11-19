//
//  MainViewController.m
//  piker
//
//  Created by Tiago Paluch on 19/11/13.
//  Copyright (c) 2013 Tiago Paluch. All rights reserved.
//

#import "MainViewController.h"
#import "ColorStore.h"
#import "Color.h"

@interface MainViewController ()

@end

@implementation MainViewController

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
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)newRandowColor:(id)sender {
    srand48(time(nil));
    [[ColorStore sharedStore] NewColorWithName:@"RColor" Red:drand48() Green:drand48() Blue:drand48()];
    [[self pickerView] reloadAllComponents];
}

//uiPickerViewDataSource
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    return 4;
}
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    return [[[ColorStore sharedStore] colors] count];
}
//uiPickerViewDelegate
-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component {
    Color *color = [[[ColorStore sharedStore] colors] objectAtIndex:row];
    [[self view] setBackgroundColor:[color color]];
    
}
- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    Color *color = [[[ColorStore sharedStore] colors] objectAtIndex:row];
    return [color name];
    
}
@end
