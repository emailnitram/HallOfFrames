//
//  CustomView.m
//  HallOfFrames
//
//  Created by Martin Henry on 10/29/15.
//  Copyright © 2015 Martin Henry. All rights reserved.
//

#import "CustomView.h"

@implementation CustomView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
- (IBAction)colorButtonTapped:(UIButton *)sender {
    [self.delegate customColorViewCell:self didTapButton:sender];
}

@end
