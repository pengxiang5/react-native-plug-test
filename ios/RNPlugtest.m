
#import "RNPlugtest.h"

@implementation RNPlugtest

- (dispatch_queue_t)methodQueue
{
    return dispatch_get_main_queue();
}
RCT_EXPORT_MODULE()

RCT_EXPORT_METHOD(sumA:(int)a andB:(int)b (RCTResponseSenderBlock)callback) {
  int c = a+b;
  callback(c);//将c的值回调给JS
}

RCT_REMAP_METHOD(testRespondMethod,
                 name:(NSString *)name
                 resolver:(RCTPromiseResolveBlock)resolve
                 rejecter:(RCTPromiseRejectBlock)reject) {
  if([self respondsToSelector:NSSelectorFromString(name)]) {
    resolve(@YES);
  }
  else {
    reject(@"-1001", @"not respond this method", nil);
  }
}

- (void)dealloc {
  NSLog(@"dealloc------");
}

@end
  
