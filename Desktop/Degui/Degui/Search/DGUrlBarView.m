//
//  DGUrlBarView.m
//  Degui
//
//  Created by corlink on 2019/11/12.
//  Copyright © 2019年 com.degugo.ucsearch. All rights reserved.
//

#import "DGUrlBarView.h"

@implementation DGUrlBarView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self addSubview:self.title];
        [self addSubview:self.search];
        self.title.sd_layout.leftSpaceToView(self, 20).topSpaceToView(self, 16).widthIs(100).heightIs(35);
        self.search.sd_layout.leftSpaceToView(self, 20).topSpaceToView(self.title, 18).rightSpaceToView(self, 20).heightIs(55);
    }
    return self;
}

- (UIImageView *)title {
    if (!_title) {
        _title = [[UIImageView alloc] initWithFrame:CGRectZero];
        _title.image = [UIImage imageNamed:Search_Title_Img];
        _title.contentMode = UIViewContentModeScaleAspectFit;
    }
    return _title;
}

- (UITextField *)search {
    if (!_search) {
        UITextField *search = [[UITextField alloc] initWithFrame:CGRectZero];
        search.borderStyle= UITextBorderStyleNone;
        // search.backgroundColor = [UIColor colorWithHexString:@"#eeeeee"];
        search.background = [UIImage imageNamed:@"searchbk.png"];;
        search.clearButtonMode = UITextFieldViewModeWhileEditing;
        search.placeholder = @"搜索";
        search.autocorrectionType = UITextAutocorrectionTypeYes;
        search.keyboardType = UIKeyboardTypeTwitter;
        search.autocapitalizationType = UITextAutocapitalizationTypeNone;
        search.returnKeyType =UIReturnKeyGoogle;
        [search setValue:[UIColor colorWithHexString:@"8e8e8e"] forKeyPath:@"_placeholderLabel.textColor"];
        search.textColor = [UIColor colorWithHexString:@"000000"];
        UIImageView *leftPhoneImgView = [[UIImageView alloc] initWithFrame:CGRectMake(0, (search.frame.size.height - 20)*0.5, 40, 20)];
        leftPhoneImgView.image = [UIImage imageNamed:@"search"];
        leftPhoneImgView.contentMode = UIViewContentModeScaleAspectFit;
        search.leftView = leftPhoneImgView;
        search.leftViewMode = UITextFieldViewModeAlways;
        _search = search;
    }
    return _search;
}

- (void)testHD {
    [UIView animateWithDuration:1 animations:^{
        self.title.hidden = YES;
        self.search.sd_layout.leftSpaceToView(self, 20).topSpaceToView(self, 18).rightSpaceToView(self, 20).heightIs(55);
        [self setNeedsLayout];
    }];
}
@end
