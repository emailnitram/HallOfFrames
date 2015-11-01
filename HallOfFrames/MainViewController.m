//
//  MainViewController.m
//  HallOfFrames
//
//  Created by Martin Henry on 10/29/15.
//  Copyright © 2015 Martin Henry. All rights reserved.
//

#import "MainViewController.h"
#import "Picture.h"
#import "PictureCollectionViewCell.h"
#import "CustomView.h"

@interface MainViewController () <UICollectionViewDataSource, UICollectionViewDelegate, CustomColorDelegate>
@property NSMutableArray *people;
@property NSIndexPath *currentCellIndex;
@property (weak, nonatomic) IBOutlet UICollectionView *cView;
@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self loadPeopleArrayWithPictures];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (void)loadPeopleArrayWithPictures {
    self.people = [[NSMutableArray alloc] init];
    NSMutableArray *peopleStrings = [@[@"people.jpg",@"people1.jpg",@"people2.jpg",@"people3.jpg"] mutableCopy];
    UIColor *color = [UIColor whiteColor];
    for (int i = 0; i < peopleStrings.count; i++) {
        NSString *person = peopleStrings[i];
        Picture *pic = [[Picture alloc] initWithImage:[UIImage imageNamed:person] andColor:color];
        [self.people addObject:pic];
    }
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    Picture *pic = self.people[indexPath.row];
    PictureCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"PictureCollectionViewCell" forIndexPath:indexPath];
    [cell loadCellWithPicture:pic];
    return cell;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return self.people.count;
}

-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    CustomView *container = [[[NSBundle mainBundle] loadNibNamed:@"CustomizationView" owner:self options:nil] objectAtIndex:0];
    container.delegate = self;
    self.currentCellIndex = indexPath;
    [self.view addSubview:container];
}

-(void)customColorViewCell:(id)customView didTapButton:(UIButton *)button {
    Picture *currentPic = self.people[self.currentCellIndex.row];
    currentPic.frameColor = button.backgroundColor;
    [self.cView reloadData];
    [customView removeFromSuperview];
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
