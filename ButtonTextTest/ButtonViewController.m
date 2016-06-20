//
//  ButtonViewController.m
//  ButtonTextTest
//
//  Created by Hamming, Tom on 5/19/16.
//  Copyright © 2016 Olive Tree Bible Software. All rights reserved.
//

#import "ButtonViewController.h"
#import <WebKit/WebKit.h>

@interface ButtonViewController ()

@end

@implementation ButtonViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.wantsLayer = YES;
    
    NSButton *button = [[NSButton alloc]initWithFrame:NSMakeRect(0, 0, 100, 30)];
    button.wantsLayer = YES;
    button.bordered = NO;
    button.layer.backgroundColor = [NSColor blueColor].CGColor;
    
    NSAttributedString *attr = [[NSAttributedString alloc]initWithString:@"Hello" attributes:@{NSForegroundColorAttributeName: [NSColor whiteColor], NSFontAttributeName: [NSFont systemFontOfSize:14]}];
    button.attributedTitle = attr;
    [self.view addSubview:button];
}

@end
