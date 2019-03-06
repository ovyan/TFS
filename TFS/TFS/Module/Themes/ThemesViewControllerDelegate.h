//
//  ThemesViewControllerDelegate.h
//  TFS
//
//  Created by Mike Ovyan on 06/03/2019.
//  Copyright © 2019 Mike Ovyan. All rights reserved.
//

#ifndef ThemesViewControllerDelegate_h
#define ThemesViewControllerDelegate_h

#import <UIKit/UIKit.h>

@class ThemesViewController;

NS_ASSUME_NONNULL_BEGIN

@protocol ​ThemesViewControllerDelegate <NSObject>

- (void)themesViewController:(ThemesViewController *)controller didSelectTheme:(UIColor *)selectedTheme;

@end

NS_ASSUME_NONNULL_END

#endif /* ThemesViewControllerDelegate_h */
