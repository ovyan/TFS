//
//  ThemesViewController.m
//  TFS
//
//  Created by Mike Ovyan on 06/03/2019.
//  Copyright © 2019 Mike Ovyan. All rights reserved.
//

#import "ThemesViewController.h"

@interface ThemesViewController ()

#pragma MARK: - Outlets

@property (retain, nonatomic) IBOutletCollection(UIButton) NSArray *themeButtons;

@end

@implementation ThemesViewController

@synthesize model = _model;
@synthesize delegate = _delegate;

#pragma MARK: - Life Cycle

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
}

- (void)dealloc {
    [_themeButtons release];
    [_model release];
    [super dealloc];
}

#pragma MARK: - Properties

- (Themes *)model {
    return _model;
}

- (void)setModel:(Themes *)model {
    if (_model != model) {
        Themes* oldValue = _model;
        _model = [model retain];

        [oldValue release];
    }
}

- (id<​ThemesViewControllerDelegate>)delegate {
    return _delegate;
}

- (void)setDelegate:(id<​ThemesViewControllerDelegate>)delegate {
    _delegate = delegate;
}

#pragma MARK: - Actions

- (IBAction)dismiss {
    [self dismissViewControllerAnimated:true completion:nil];
}

- (IBAction)changeTheme:(UIButton *)sender {
    NSUInteger index = [_themeButtons indexOfObject:sender];
    UIColor* backgroundColor;

    switch (index) {
        case 0:
            backgroundColor = [_model theme1];
            break;

        case 1:
            backgroundColor = [_model theme2];
            break;

        case 2:
            backgroundColor = [_model theme3];
            break;

        default:
            [NSException raise:@"wrong button idx" format:@""];
            break;
    }

    [[self view] setBackgroundColor:backgroundColor];
    if (_delegate) {
        [_delegate themesViewController:self didSelectTheme:backgroundColor];
    }
}


@end
