//
//  ThemesViewController.h
//  TFS
//
//  Created by Mike Ovyan on 06/03/2019.
//  Copyright © 2019 Mike Ovyan. All rights reserved.
//

#import <UIKit/UIKit.h>
#include "ThemesViewControllerDelegate.h"
#include "Themes.h"

NS_ASSUME_NONNULL_BEGIN

@interface ThemesViewController : UIViewController

@property (assign, nonatomic) id <​ThemesViewControllerDelegate> delegate;

@property (retain, nonatomic) Themes* model;

@end

NS_ASSUME_NONNULL_END
