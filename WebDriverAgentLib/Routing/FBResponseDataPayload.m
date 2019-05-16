//
//  FBResponseDataPayload.m
//  WebDriverAgentLib
//
//  Created by Czq on 2019/5/14.
//  Copyright © 2019年 Facebook. All rights reserved.
//

#import "FBResponseDataPayload.h"

#import <RoutingHTTPServer/RouteResponse.h>

@interface FBResponseDataPayload ()

@property (nonatomic, copy, readonly) NSData *data;

@end

@implementation FBResponseDataPayload
- (instancetype)initWithNSData:(NSData *)data
{
  NSParameterAssert(data);
  if (!data) {
    return nil;
  }
  
  self = [super init];
  if (self) {
    _data = data;
  }
  return self;
}

- (void)dispatchWithResponse:(RouteResponse *)response
{
  NSError *error;
  NSData *blobData = self.data;
  NSCAssert(blobData, @"Valid data must be responded, error of %@", error);
  [response setHeader:@"Content-Type" value:@"application/octet-stream"];
  [response respondWithData:blobData];
}
@end
