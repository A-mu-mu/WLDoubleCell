//
//  JKDoubleLabelModel.h
//  HealthGanSu
//
//  Created by Inverno on 2019/5/1.
//  Copyright © 2019 gsww.gsrhc. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface JKDoubleLabelModel : NSObject
@property (nonatomic,  copy) NSString *title;
@property (nonatomic,  copy) NSString *content;
@property (nonatomic,  copy) NSString *image;
@property (nonatomic,assign) BOOL needArrow;

+ (instancetype)modelWithTitle:(NSString *)title content:(NSString *)content;
+ (instancetype)modelWithTitle:(NSString *)title content:(NSString *)content image:(NSString *)image;
@end

NS_ASSUME_NONNULL_END
