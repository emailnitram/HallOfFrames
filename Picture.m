//
//  Picture.m
//  HallOfFrames
//
//  Created by Martin Henry on 10/29/15.
//  Copyright © 2015 Martin Henry. All rights reserved.
//

#import "Picture.h"

@implementation Picture
- (instancetype) initWithImage:(UIImage *)image andColor:(UIColor *)color{
    self = [super init];
    if(self) {
        self.image = image;
        self.frameColor = color;
    }
    return self;
}
@end
