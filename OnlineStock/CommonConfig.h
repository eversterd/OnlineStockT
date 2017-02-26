//
//  CommonConfig.h
//  OnlineStock
//
//  Created by shiyc on 2017/2/26.
//  Copyright © 2017年 shiyc. All rights reserved.
//

#import <Foundation/Foundation.h>

#define FRAME_WIDTH  self.view.frame.size.width
#define FRAME_HEIGHT self.view.frame.size.height

@interface CommonConfig : NSObject

- (void)getStockInfo:(NSArray *)stockIds;

@end
