//
//  JMResignDetector.m
//  Pods
//
//  Created by jerome morissard on 24/07/2015.
//
//

#import "JMResignDetector.h"
#import "JMMobileProvisionning.h"
#import "NSDictionary+JMCrashIfResign.h"

@implementation JMResignDetector

+ (void)registerSecureTeamIdentifiers:(NSArray *)teamIdentifiers
{
    NSDictionary *provisionningDict = [NSDictionary jmo_dictionaryWithDefaultMobileProvisioning];
    JMMobileProvisionning *provisionning = [[JMMobileProvisionning alloc] initWithDictionary:provisionningDict];
    
    if (provisionning && teamIdentifiers.count) {
        if (![teamIdentifiers containsObject:provisionning.teamIdentifiers.firstObject]) {
            NSLog(@"Exit, App not signed with secure teamIdentifier");
            exit(0);
        }
    }
}

@end
