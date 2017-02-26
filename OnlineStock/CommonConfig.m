//
//  CommonConfig.m
//  OnlineStock
//
//  Created by shiyc on 2017/2/26.
//  Copyright © 2017年 shiyc. All rights reserved.
//

#import "CommonConfig.h"
@interface CommonConfig()
{
  AFHTTPSessionManager *manager ;
}
@end
@implementation CommonConfig

- (instancetype)init{
    self = [super init];
    if (self) {
        manager = [AFHTTPSessionManager manager];
    }
    return self;
}

- (void)getStockInfo:(NSArray *)stockIds
             success:(void(^)(NSURLSessionDataTask *task, id responseObject))success
             failure:(void (^)(NSURLSessionDataTask *task, NSError *error))failure{
    NSString *stockId = [stockIds objectAtIndex:0];
    NSString *url = [NSString stringWithFormat:@"https://hq.sinajs.cn/list=%@",stockId];
    
    manager.securityPolicy = [AFSecurityPolicy policyWithPinningMode:AFSSLPinningModeNone];
    manager.responseSerializer = [AFHTTPResponseSerializer serializer];
    manager.requestSerializer  = [AFJSONRequestSerializer serializer];
    manager.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"application/json", @"text/json", @"text/javascript",@"application/x-javascript",nil];
    [manager POST:url parameters:nil progress:nil success:success failure:failure];


}

@end
