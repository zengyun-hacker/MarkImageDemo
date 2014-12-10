//
//  ViewController.m
//  MarkImageDemo
//
//  Created by dreamer on 14/12/9.
//  Copyright (c) 2014年 SnowWolf. All rights reserved.
//

#import "ViewController.h"
#import "TagView.h"
#import <UIImageView+WebCache.h>

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *pic;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self loadImage];
    [self addTag];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/**
 *  抓包得到的图片的链接
 */
- (NSDictionary *)imageData {
    return @{@"pic":@"http://nice-img04.qiniucdn.com/upload/show/201412/09/6dc2da0dbac53227a97d95c36b44eaea.jpg"};
}

/**
 *  抓包得到的tag的信息
 */
- (NSArray *)tagDatas {
    return @[
             @{@"pic_x":@"33.281250",@"pic_y":@"239.062500",@"bname":@"数码控"},
             @{@"pic_x":@"195.000000",@"pic_y":@"237.656250",@"bname":@"旅行是我的解药"},
             @{@"pic_x":@"214.218750",@"pic_y":@"150.468750",@"bname":@"Vintage"},
             @{@"pic_x":@"23.906250",@"pic_y":@"148.125000",@"bname":@"最好的风景"},
             @{@"pic_x":@"94.687500",@"pic_y":@"264.843750",@"bname":@"一个人的好时光"},
             ];
}

- (void)loadImage {
    [self.pic sd_setImageWithURL:[NSURL URLWithString:[self imageData][@"pic"]]];
}

- (void)addTag {
    [[self tagDatas] enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        NSDictionary *tagData = (NSDictionary *)obj;
        TagView *tagView = [[TagView alloc] initWithTitle:tagData[@"bname"]];
        CGFloat left = [tagData[@"pic_x"] floatValue];
        CGFloat top = [tagData[@"pic_y"] floatValue];
        tagView.frame = CGRectMake(left, top, tagView.frame.size.width, tagView.frame.size.height);
        [self.pic addSubview:tagView];
    }];
}

@end
