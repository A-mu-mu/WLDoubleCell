//
//  JKDoubleLabelShowArrowCell.m
//  HealthGanSu
//
//  Created by ding on 2017/12/5.
//  Copyright © 2017年 gsww.gsrhc. All rights reserved.
//

#import "JKDoubleLabelShowArrowCell.h"

NSString *const JKDoubleLabelShowArrowCellIdentifer = @"JKDoubleLabelShowArrowCell";
@interface JKDoubleLabelShowArrowCell()
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *descLabel;
@property (weak, nonatomic) IBOutlet UIImageView *rightArrow;
@property (strong, nonatomic) IBOutlet UIImageView *iconView;

@end
@implementation JKDoubleLabelShowArrowCell

- (void)awakeFromNib {
    [super awakeFromNib];
    
    self.selectionStyle = UITableViewCellSelectionStyleNone;
    
    self.titleLabel.font = [UIFont systemFontOfSize:15.5] ;
    self.descLabel.font = [UIFont systemFontOfSize:15.5] ;
    self.titleLabel.textColor = [UIColor colorWithRed:51/255.0 green:51/255.0 blue:51/255.0 alpha:1.00];
    self.descLabel.textColor = [UIColor colorWithRed:102/255.0 green:102/255.0 blue:102/255.0 alpha:1.00];
    self.needLine.backgroundColor = [UIColor colorWithRed:245/255.0 green:245/255.0 blue:245/255.0 alpha:1.00];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
}

- (void)setTitleStr:(NSString *)titleStr {
    _titleStr = titleStr;
    if (self.needZanwu== YES) {
        self.titleLabel.text = @"暂无";
    }else{
        self.titleLabel.text = titleStr;
    }
}

- (void)setDescStr:(NSString *)descStr {
    _descStr = descStr;
    self.descLabel.text = descStr;
}

- (void)setIconImage:(UIImage *)iconImage
{
    _iconImage = iconImage;
    
    self.iconView.image = iconImage;
    
    if (iconImage) {
        self.iconView.hidden = NO;
        self.iconWidthConstraint.active = NO;
        self.iconLeftConstraint.constant = 15;
    }else{
        self.iconView.hidden = YES;
        self.iconWidthConstraint.active = YES;
        self.iconLeftConstraint.constant = 0;
    }
}

- (void)setImageContentModel:(UIViewContentMode)imageContentModel
{
    _imageContentModel = imageContentModel;
    
    self.iconView.contentMode = imageContentModel;
}

- (void)setTitleColor:(UIColor *)titleColor{
    _titleColor = titleColor;
    self.titleLabel.textColor = titleColor;
}
- (void)setDetailColor:(UIColor *)detailColor{
    _detailColor = detailColor;
    self.descLabel.textColor = detailColor;
}

- (void)setTitleFont:(UIFont *)titleFont
{
    _titleFont = titleFont;
    self.titleLabel.font = titleFont;
}

- (void)setDetailFont:(UIFont *)detailFont
{
    _detailFont = detailFont;
    self.descLabel.font = detailFont;
}

- (void)setNeedArrow:(BOOL)needArrow {
    _needArrow = needArrow;
    self.rightArrow.hidden = !needArrow;
    if (needArrow) {
        self.descLabelRight.constant = 10;
        self.arrowHeight.constant = 15;
    }else{
        self.descLabelRight.constant = 0;
        self.arrowHeight.constant = 0;
    }
}

- (void)setDescLeft:(BOOL)descLeft{
    _descLeft = descLeft;
    if (descLeft) {
        self.descLabel.textAlignment = NSTextAlignmentLeft;
    }else{
        
    }
}

@end
