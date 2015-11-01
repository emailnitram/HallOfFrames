//
//  Picture.h
//  HallOfFrames
//
//  Created by Martin Henry on 10/29/15.
//  Copyright © 2015 Martin Henry. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Picture : NSObject
@property UIImage *image;
@property UIColor *frameColor;
- (instancetype) initWithImage:(UIImage *)image andColor:(UIColor *)color;
@end
