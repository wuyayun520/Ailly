#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface IndicatorZone : NSObject

@property (nonatomic) NSMutableDictionary * skirtcount;

@property (nonatomic) int navigatordispatcher;

+ (instancetype) indicatorZoneWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) awaitLocation;

- (NSMutableDictionary *) significantInfo;

- (int) sanitizefuture;

- (NSMutableSet *) canRebuildStateful;

- (NSMutableArray *) disabledHash;

@end

NS_ASSUME_NONNULL_END
        