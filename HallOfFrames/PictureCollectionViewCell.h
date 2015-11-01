//
//  PictureCollectionViewCell.h
//  HallOfFrames
//
//  Created by Martin Henry on 10/29/15.
//  Copyright © 2015 Martin Henry. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Picture.h"

@interface PictureCollectionViewCell : UICollectionViewCell
@property (weak, nonatomic) IBOutlet UIImageView *cellImageView;

-(void)loadCellWithPicture:(Picture *)pic;
-(void)changeFromeColor:(UIColor *)color;
@end
