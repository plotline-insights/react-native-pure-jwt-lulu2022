
#import "RNPureJwt.h"
#import <Plotline/Plotline-Swift.h>

@implementation RNPureJwt

RCT_EXPORT_METHOD(init:(NSString *)apiKey userId:(NSString *)userId)
{
 [Plotline initializeWithApiKey:apiKey userId:userId];
}

RCT_EXPORT_METHOD(track:(NSString *)eventName properties: (NSDictionary *) properties)
{
 if(properties != nil) {
  [Plotline trackWithEventName:eventName properties:properties];
 } else {
  [Plotline trackWithEventName:eventName];
 }
}

RCT_EXPORT_METHOD(setLocale:(NSString *)locale)
{
 [Plotline setLocaleWithLocale:locale];
}

RCT_EXPORT_METHOD(identify:(NSDictionary *)attribute)
{
 [Plotline identifyWithAttributes:attribute];
}

RCT_EXPORT_METHOD(showMockStudy)
{
 [Plotline showMockStudy];
}

RCT_EXPORT_MODULE();

@end
  
