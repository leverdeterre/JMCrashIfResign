//
//  JMMobileProvisionning.m
//  Pods
//
//  Created by jerome morissard on 24/07/2015.
//
//

#import "JMMobileProvisionning.h"

@implementation JMMobileProvisionning

- (instancetype)initWithDictionary:(NSDictionary *)dict
{
    self = [super init];
    if (self) {
        if ([dict objectForKey:MobileProvisioningAppIDName]) {
            _appIDName = [dict objectForKey:MobileProvisioningAppIDName];
        }
        
        if ([dict objectForKey:MobileProvisioningApplicationIdentifierPrefix]) {
            _applicationIdentifierPrefix = [dict objectForKey:MobileProvisioningApplicationIdentifierPrefix];
        }
        
        if ([dict objectForKey:MobileProvisioningTeamIdentifier]) {
            _teamIdentifiers = [dict objectForKey:MobileProvisioningTeamIdentifier];
        }
        
        if ([dict objectForKey:MobileProvisioningCreationDate]) {
            _creationDate = [dict objectForKey:MobileProvisioningCreationDate];
        }
        
        if ([dict objectForKey:MobileProvisioningExpirationDate]) {
            _expirationDate = [dict objectForKey:MobileProvisioningExpirationDate];
        }
        
        if ([dict objectForKey:MobileProvisioningEntitlements]) {
            _entitlements = [dict objectForKey:MobileProvisioningEntitlements];
        }
        
        if ([dict objectForKey:MobileProvisioningName]) {
            _name = [dict objectForKey:MobileProvisioningName];
        }
        
        if ([dict objectForKey:MobileProvisioningTeamName]) {
            _teamName = [dict objectForKey:MobileProvisioningTeamName];
        }
        
        if ([dict objectForKey:MobileProvisioningProvisionedDevices]) {
            _provisionedDevices = [dict objectForKey:MobileProvisioningProvisionedDevices];
        }
        
        if ([dict objectForKey:MobileProvisioningGetTaskAllow]) {
            _isDevMobileProvisioning = [dict objectForKey:MobileProvisioningGetTaskAllow];
        }
        
        if ([dict objectForKey:MobileProvisioningApsEnvironment]) {
            _apsEnvironment = [dict objectForKey:MobileProvisioningApsEnvironment];
        }
        
        _summary = dict;
    }

    return self;
}

- (JMMobileProvisionningPushConfiguration)pushConfiguration
{
    if ([_apsEnvironment isEqualToString:@"development"]) {
        return JMMobileProvisionningPushConfigurationDevelopment;
    } else if ([_apsEnvironment isEqualToString:@"production"]) {
        return JMMobileProvisionningPushConfigurationProduction;
    }
    
    return JMMobileProvisionningPushConfigurationDisable;
}

- (NSDictionary *)summary  //Overided setter, to change keyName
{
    NSMutableDictionary *editedDict = [_summary mutableCopy];
    
    NSString *value = [_summary objectForKey:MobileProvisioningGetTaskAllow];
    [editedDict removeObjectForKey:MobileProvisioningGetTaskAllow];
    if ([value isEqualToString:@"true"]) {
        [editedDict setObject:@"YES" forKey:@"Mobile Provisioning Development"];
    }
    else {
        [editedDict setObject:@"NO" forKey:@"Mobile Provisioning Development"];
    }
        
    value = [_summary objectForKey:MobileProvisioningApsEnvironment];
    [editedDict removeObjectForKey:MobileProvisioningApsEnvironment];
    if ([value isEqualToString:@"development"]) {
        [editedDict setObject:@"YES" forKey:@"Push Enable (DEV)"];
    } else if ([value isEqualToString:@"production"]) {
        [editedDict setObject:@"YES" forKey:@"Push Enable (PROD)"];
    } else {
        [editedDict setObject:@"NO" forKey:@"Push Enable"];
    }
    
    return editedDict;
}

- (NSString *)description
{
    return self.summary.description;
}


@end
