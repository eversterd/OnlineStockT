//
//  ViewController.m
//  OnlineStock
//
//  Created by shiyc on 2017/2/26.
//  Copyright © 2017年 shiyc. All rights reserved.
//

#import "ViewController.h"
#import "CommonConfig.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupUI];
    // Do any additional setup after loading the view.
}

- (void)setupUI{

    NSButton *mainButton = [[NSButton alloc] initWithFrame:NSMakeRect(FRAME_WIDTH/2-50, FRAME_HEIGHT/2, 100, 40)];
    [mainButton setAccessibilitySelectedText:@"test"];
    [self.view addSubview:mainButton];
}

- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}


@end
