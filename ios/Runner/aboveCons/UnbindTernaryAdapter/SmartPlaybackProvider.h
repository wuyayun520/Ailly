#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface SmartPlaybackProvider : NSObject

@property (nonatomic) NSMutableArray * shouldPresentCache;

@property (nonatomic) NSMutableDictionary * protocolDistance;

+ (instancetype) smartPlaybackProviderWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) deserializeExponent;

- (NSMutableDictionary *) canEncodeCoordinator;

- (int) measureMetadata;

- (NSMutableSet *) dedicatedImpact;

- (NSMutableArray *) scrollLevel;

@end

NS_ASSUME_NONNULL_END
        