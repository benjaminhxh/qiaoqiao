
//
//  FlowViewController.m
//  Beautify
//
//  Created by apple on 2016/12/10.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "FlowViewController.h"
#import "HeadReusableView.h"
#import "AnchorCollectionViewCell.h"

@interface FlowViewController ()<UICollectionViewDelegate,UICollectionViewDataSource>

@end

@implementation FlowViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    self.edgesForExtendedLayout =  UIRectEdgeNone;

//    self.automaticallyAdjustsScrollViewInsets = NO;
    [self createCollection];
}

- (void)createCollection
{
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
    layout.itemSize = CGSizeMake(90, 120);
    layout.sectionInset = UIEdgeInsetsMake(0, 0, 0, 0);
//    layout.minimumLineSpacing = 5;
//    layout.minimumInteritemSpacing = 5;
    layout.scrollDirection = UICollectionViewScrollDirectionHorizontal;

    UICollectionView *collecttionV = [[UICollectionView alloc] initWithFrame:CGRectMake(0, 144, self.view.bounds.size.width, 120) collectionViewLayout:layout];
    collecttionV.backgroundColor = [UIColor darkGrayColor];
    collecttionV.delegate = self;
    collecttionV.dataSource = self;
    collecttionV.showsHorizontalScrollIndicator = YES;
    [collecttionV registerClass:[AnchorCollectionViewCell class] forCellWithReuseIdentifier:@"cell"];
//    [collecttionV registerClass:[HeadReusableView class] forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"collectionHead"];
    [self.view addSubview:collecttionV];
}

//- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout referenceSizeForHeaderInSection:(NSInteger)section
//{
//    if (section) {
//         return CGSizeMake(34, 34);
//
//    }else
//    {
//        return CGSizeMake(44, 44);
//
//    }
//}
//
//- (UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath
//{
//    HeadReusableView *view = [collectionView dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"collectionHead" forIndexPath:indexPath];
//    view.backgroundColor = [UIColor whiteColor];
//    if (indexPath.section) {
//        view.titleL.text = @"测试";
//    }else
//    {
//        view.titleL.text = @"我是标题";
//    }
//    return view;
//}
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 20;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    AnchorCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:indexPath];
//    if (indexPath.row%2) {
        cell.backgroundColor = [UIColor yellowColor];
//
//    }else
//    {
//        cell.backgroundColor = [UIColor blueColor];
//
//    }
    NSLog(@"%f-y:%f",cell.frame.origin.x,cell.frame.origin.y);
    cell.color = [UIColor colorWithRed:indexPath.row*4/255.0 green:indexPath.row/255.0*3 blue:indexPath.row/255.0*5 alpha:1.0];
    cell.name = [NSString stringWithFormat:@"%ld",indexPath.row];
    return cell;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
