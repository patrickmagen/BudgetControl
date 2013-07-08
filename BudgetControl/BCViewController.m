//
//  BCViewController.m
//  BudgetControl
//
//  Created by Patrick Albrecht Magen on 04.07.13.
//  Copyright (c) 2013 Patrick Albrecht Magen. All rights reserved.
//

#import "BCViewController.h"
#import "BCKeyboard.h"

@interface BCViewController () <BCKeyboardDelegate>

#define KEYBOARD_HEIGHT 240

- (void)enterValue:(UILabel *)sender;

@property (nonatomic, copy) NSString *Label;
@property (strong, nonatomic) UIColor *budgetLabelTextColor;
@property (nonatomic, strong) BCKeyboard *decimalKeyboard;
@end

@implementation BCViewController

- (void)viewDidAppear:(BOOL)animated
{
    UILabel *budgetLabel = [[UILabel alloc] init];
    
    CGRect rectForBudgetLabel = CGRectMake(15, 165, 230, 50);
    
    budgetLabel.frame = rectForBudgetLabel;
    
    [self.view addSubview:budgetLabel];
    
    [budgetLabel setText:@"enter your Budget"];

    [budgetLabel setBackgroundColor:[UIColor clearColor]];
    
    self.budgetLabelTextColor = [UIColor grayColor];
    
    budgetLabel.font = [UIFont fontWithName:@"AvenirNext-UltraLight" size:25];
    
    budgetLabel.textColor = [UIColor colorWithWhite:0.3 alpha:1];
    
    BCKeyboard *keyboard = [[BCKeyboard alloc]initWithFrame:CGRectMake(0, self.view.frame.size.height - KEYBOARD_HEIGHT, 320, KEYBOARD_HEIGHT)];
    
    [self.view addSubview:keyboard];
    
    keyboard.delegate = self;
}

- (void)enterValue:(UILabel *)sender
{
    NSLog(@"%s", __PRETTY_FUNCTION__);
    
}

- (void)numberKeyTapped:(NSString*)numberString
{
    NSLog(@"number-key tapped");
}

- (void)deleteKeyTapped
{
    NSLog(@"delete-key tapped");
}

- (void)okKeyTapped
{
    NSLog(@"ok-key tapped");
}
@end
