//
//  PictureCollectionViewCell.m
//  HallOfFrames
//
//  Created by Martin Henry on 10/29/15.
//  Copyright © 2015 Martin Henry. All rights reserved.
//

#import "PictureCollectionViewCell.h"

@implementation PictureCollectionViewCell

-(void)loadCellWithPicture:(Picture *)pic{
    self.cellImageView.image = pic.image;
    self.contentView.backgroundColor = pic.frameColor;
}

-(void)changeFromeColor:(UIColor *)color {
    self.contentView.backgroundColor = color;
}
@end
