//
//  AnchorCollectionViewCell.m
//  Beautify
//
//  Created by apple on 2016/12/10.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "AnchorCollectionViewCell.h"
@interface AnchorCollectionViewCell()
@property (nonatomic,strong)UILabel *nameL;
@property (nonatomic,strong)UIImageView *imageV;
@end

@implementation AnchorCollectionViewCell
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame: frame];
    if (self) {
        UIImageView *imageV = [[UIImageView alloc] initWithFrame:CGRectMake(5, 5, 80, 80)];
        [self addSubview:imageV];
        _imageV = imageV;
        _nameL = [[UILabel alloc] initWithFrame:CGRectMake(5, 90, 80, 24)];
        [self addSubview:_nameL];
    }
    return self;
}

- (void)setName:(NSString *)name
{
    _nameL.text = name;
}

- (void)setColor:(UIColor *)color
{
    _imageV.backgroundColor = color;
}
@end
