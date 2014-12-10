//
//  TagView.m
//  MarkImageDemo
//
//  Created by dreamer on 14/12/10.
//  Copyright (c) 2014年 SnowWolf. All rights reserved.
//

#import "TagView.h"

@implementation TagView

- (id)initWithTitle:(NSString *)title {
    if (self = [super init]) {
        self.text = title;
        self.backgroundColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:0.7];
        self.font = [UIFont systemFontOfSize:12.];
        self.textColor = [UIColor whiteColor];
        [self sizeToFit];
        self.frame = CGRectMake(0, 0, self.frame.size.width + 6, self.frame.size.height + 4);
        self.textAlignment = NSTextAlignmentCenter;
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
