//
//  JKDoubleLabelModel.m
//  HealthGanSu
//
//  Created by Inverno on 2019/5/1.
//  Copyright © 2019 gsww.gsrhc. All rights reserved.
//

#import "JKDoubleLabelModel.h"

@implementation JKDoubleLabelModel

+ (instancetype)modelWithTitle:(NSString *)title content:(NSString *)content
{
    JKDoubleLabelModel *model = [[JKDoubleLabelModel alloc] init];
    model.title = title;
    model.content = content;
    return model;
}

+ (instancetype)modelWithTitle:(NSString *)title content:(NSString *)content image:(NSString *)image
{
    JKDoubleLabelModel *model = [[JKDoubleLabelModel alloc] init];
    model.title = title;
    model.content = content;
    model.image = image;
    return model;
}
@end
