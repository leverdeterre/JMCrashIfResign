//
//  NSDictionary+JMCrashIfResign.h
//  Pods
//
//  Created by jerome morissard on 24/07/2015.
//
//

#import <Foundation/Foundation.h>

@interface NSDictionary (JMCrashIfResign)

+ (NSDictionary *)jmo_dictionaryWithDefaultMobileProvisioning;
+ (NSDictionary *)jmo_dictionaryWithMobileProvisioningString:(NSString *)RawMobileProvisionning;

@end
