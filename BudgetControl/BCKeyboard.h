//
//  BCKeyboard.h
//  BudgetControl
//
//  Created by Dario Lass on 20.03.13.
//  Copyright (c) 2013 Bytolution. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol BCKeyboardDelegate

- (void)numberKeyTapped:(NSString*)numberString;
- (void)okKeyTapped;
- (void)deleteKeyTapped;

@end

@interface BCKeyboard : UIView

@property (nonatomic, strong) id <BCKeyboardDelegate> delegate;
@property (nonatomic, strong) UIColor *fontColor;

@end
