//
//  FBResponseDataPayload.h
//  WebDriverAgentLib
//
//  Created by Czq on 2019/5/14.
//  Copyright © 2019年 Facebook. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <WebDriverAgentLib/FBResponsePayload.h>

NS_ASSUME_NONNULL_BEGIN

@interface FBResponseDataPayload : NSObject <FBResponsePayload>

- (instancetype)initWithNSData:(NSData *)data;

@end

NS_ASSUME_NONNULL_END
