//
//  CustomView.h
//  HallOfFrames
//
//  Created by Martin Henry on 10/29/15.
//  Copyright © 2015 Martin Henry. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol CustomColorDelegate <NSObject>
@optional
- (void)customColorViewCell:(id)customView didTapButton:(UIButton *)button;
@required
@end

@interface CustomView : UIView
@property (nonatomic, assign) id<CustomColorDelegate> delegate;
@end
