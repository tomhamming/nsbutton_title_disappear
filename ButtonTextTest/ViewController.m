//
//  ViewController.m
//  ButtonTextTest
//
//  Created by Hamming, Tom on 5/19/16.
//  Copyright © 2016 Olive Tree Bible Software. All rights reserved.
//

#import "ViewController.h"
#import "ButtonViewController.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.wantsLayer = YES;
    
    NSButton *button = [[NSButton alloc]initWithFrame:NSMakeRect(10, 10, 100, 30)];
    button.bordered = NO;
    button.wantsLayer = YES;
    button.title = @"Press Me";
    button.action = @selector(onButtonPress:);
    [self.view addSubview:button];
}

-(void)onButtonPress:(NSButton *)sender
{
    ButtonViewController *vc = [[ButtonViewController alloc]init];
    NSPopover *pop = [[NSPopover alloc]init];
    pop.behavior = NSPopoverBehaviorSemitransient;
    pop.contentViewController = vc;
    [pop showRelativeToRect:sender.bounds ofView:sender preferredEdge:NSRectEdgeMaxY];
}

@end
