//
//  HeadReusableView.m
//  Beautify
//
//  Created by apple on 2016/12/10.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "HeadReusableView.h"

@implementation HeadReusableView
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.titleL = [[UILabel alloc] initWithFrame:CGRectMake(15, 0, self.bounds.size.width-30, 34)];
        self.titleL.font = [UIFont systemFontOfSize:14];
        self.titleL.textColor = [UIColor colorWithRed:51/255.0f green:51/255.0f blue:51/255.0f alpha:1.0];
        [self addSubview:self.titleL];
    }
    return self;
}

@end
