//
//  Themes.h
//  TFS
//
//  Created by Mike Ovyan on 06/03/2019.
//  Copyright © 2019 Mike Ovyan. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface Themes : NSObject

-(instancetype)initWithFirstColor:(UIColor* )firstColor
                   andSecondColor:(UIColor* )secondColor
                    andThirdColor:(UIColor* )thirdColor;

@property(retain, nonatomic) UIColor* theme1;
@property(retain, nonatomic) UIColor* theme2;
@property(retain, nonatomic) UIColor* theme3;

@end

NS_ASSUME_NONNULL_END
