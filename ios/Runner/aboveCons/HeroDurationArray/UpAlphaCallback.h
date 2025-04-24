#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UpAlphaCallback : NSObject

@property (nonatomic) NSMutableArray * equipmentLocation;

+ (instancetype) upAlphaCallbackWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) priorThreshold;

- (NSMutableDictionary *) localResource;

- (int) currentTimeline;

- (NSMutableSet *) upgradeConstraint;

- (NSMutableArray *) shouldObservePadding;

@end

NS_ASSUME_NONNULL_END
        