//
//  ViewController.m
//  OnlineStock
//
//  Created by shiyc on 2017/2/26.
//  Copyright © 2017年 shiyc. All rights reserved.
//

#import "ViewController.h"
#import "CommonConfig.h"
@interface ViewController()
{
    CommonConfig *commonConfig;
    NSButton   *mainButton;
    NSTextField *textView;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    commonConfig = [[CommonConfig alloc] init];
    [self setupUI];
    // Do any additional setup after loading the view.
}



- (void)setupUI{

    mainButton = [[NSButton alloc] initWithFrame:NSMakeRect(FRAME_WIDTH/2-50, FRAME_HEIGHT/2, 100, 40)];
    [mainButton setAccessibilitySelectedText:@"test"];
    [self.view addSubview:mainButton];
    [self fetchStockData];
    
    textView = [[NSTextField alloc] initWithFrame:NSMakeRect(FRAME_WIDTH/2-50, FRAME_HEIGHT/2+40, 100, 40)];
    textView.placeholderString = @"te";
    [self.view addSubview:textView];
    
}

- (void)fetchStockData{
    NSArray *stockArray = [NSArray arrayWithObjects:@"sh600000", nil];
    [commonConfig getStockInfo:stockArray success:^(NSURLSessionDataTask *task,id responseObject){
        NSString *result = [[NSString alloc]initWithData:responseObject encoding:NSUTF8StringEncoding];
        NSLog(@"stock data is %@",responseObject);
        [mainButton setAccessibilitySelectedText:result];
        textView.placeholderString = (NSString *)result;
    } failure:^(NSURLSessionDataTask *task, NSError *error){
        NSLog(@"error is %@",error);
    }];
}

- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}


@end
