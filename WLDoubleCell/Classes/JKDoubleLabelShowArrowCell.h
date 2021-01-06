//
//  JKDoubleLabelShowArrowCell.h
//  HealthGanSu
//
//  Created by ding on 2017/12/5.
//  Copyright © 2017年 gsww.gsrhc. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "JKDoubleLabelModel.h"

UIKIT_EXTERN NSString *const JKDoubleLabelShowArrowCellIdentifer;
@interface JKDoubleLabelShowArrowCell : UITableViewCell
@property (nonatomic, copy) NSString *titleStr;
@property (nonatomic, copy)  NSString *descStr;
@property (nonatomic, strong) UIImage *iconImage;
@property (nonatomic, assign) BOOL needArrow;
@property (nonatomic, assign) BOOL needZanwu;//默认是 NO
@property (nonatomic, assign) BOOL descLeft;//默认详情文字在右边
@property (nonatomic, copy) UIColor *titleColor;
@property (nonatomic, copy) UIColor *detailColor;
@property (nonatomic, strong) UIFont *titleFont;
@property (nonatomic, strong) UIFont *detailFont;
@property (strong, nonatomic) IBOutlet UIView *needLine;
@property (strong, nonatomic) IBOutlet NSLayoutConstraint *lineHeight;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *descLabelRight;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *arrowHeight;
@property (strong, nonatomic) IBOutlet NSLayoutConstraint *lineLeft;
@property (strong, nonatomic) IBOutlet NSLayoutConstraint *lineRight;
@property (strong, nonatomic) IBOutlet NSLayoutConstraint *iconWidthConstraint;
@property (strong, nonatomic) IBOutlet NSLayoutConstraint *iconLeftConstraint;
@property (strong, nonatomic) IBOutlet NSLayoutConstraint *iconRightConstraint;
@property (nonatomic,assign) UIViewContentMode imageContentModel;
@end
