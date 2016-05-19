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
    [self.webView setDrawsBackground:NO];
    NSURL *url = [[NSBundle mainBundle] URLForResource:@"test" withExtension:@"html"];
    [self.webView.mainFrame loadRequest:[NSURLRequest requestWithURL:url]];
    
    NSButton *button = [[NSButton alloc]initWithFrame:NSMakeRect(0, 0, 100, 30)];
    button.bordered = NO;
    button.wantsLayer = YES;
    button.layer.backgroundColor = [NSColor colorWithRed:112.0f / 255 green:107.0f / 255 blue:151.0f / 255 alpha:1].CGColor;
    
    NSAttributedString *attr = [[NSAttributedString alloc]initWithString:@"Hello" attributes:@{NSForegroundColorAttributeName: [NSColor clearColor], NSFontAttributeName: [NSFont systemFontOfSize:14]}];
    button.attributedTitle = attr;
    [self.view addSubview:button];
}

@end
