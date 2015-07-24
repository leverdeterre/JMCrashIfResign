//
//  JMMobileProvisionning
//  Pods
//
//  Created by jerome morissard on 24/07/2015.
//
//

#import <Foundation/Foundation.h>

#define MobileProvisioningAppIDName @"AppIDName"
#define MobileProvisioningApplicationIdentifierPrefix @"ApplicationIdentifierPrefix"
#define MobileProvisioningCreationDate @"CreationDate"
#define MobileProvisioningEntitlements @"Entitlements"
#define MobileProvisioningExpirationDate @"ExpirationDate"
#define MobileProvisioningName @"Name"
#define MobileProvisioningProvisionedDevices @"ProvisionedDevices"
#define MobileProvisioningTeamName @"TeamName"
#define MobileProvisioningTeamIdentifier @"TeamIdentifier"
#define MobileProvisioningGetTaskAllow @"get-task-allow"
#define MobileProvisioningApsEnvironment @"aps-environment"

typedef NS_ENUM(NSUInteger, JMMobileProvisionningPushConfiguration) {
    JMMobileProvisionningPushConfigurationDisable,
    JMMobileProvisionningPushConfigurationDevelopment,
    JMMobileProvisionningPushConfigurationProduction
};

@interface JMMobileProvisionning : NSObject

@property (strong, nonatomic) NSDictionary *summary;
@property (strong, nonatomic) NSString *appIDName;
@property (strong, nonatomic) NSArray *applicationIdentifierPrefix;
@property (strong, nonatomic) NSString *creationDate;
@property (strong, nonatomic) NSString *expirationDate;
@property (strong, nonatomic) NSArray *entitlements;
@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSArray *provisionedDevices;
@property (strong, nonatomic) NSString *teamName;
@property (strong, nonatomic) NSString *teamIdentifier;
@property (strong, nonatomic) NSString *isDevMobileProvisioning;
@property (strong, nonatomic) NSString *apsEnvironment;
@property (assign, readonly, nonatomic) JMMobileProvisionningPushConfiguration pushConfiguration;

- (instancetype)initWithDictionary:(NSDictionary *)dict;

@end
