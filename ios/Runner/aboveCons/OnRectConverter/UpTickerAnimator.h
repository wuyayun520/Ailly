#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UpTickerAnimator : NSObject

@property (nonatomic) NSMutableDictionary * sensorstylepressure;

@property (nonatomic) int advancedSegue;

@property (nonatomic) NSMutableSet * completionroute;

@property (nonatomic) NSMutableDictionary * deferredMetrics;

@property (nonatomic) NSMutableSet * statefulGroup;

+ (instancetype) upTickerAnimatorWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) normalTouch;

- (NSMutableDictionary *) previewappearance;

- (int) bufferScope;

- (NSMutableSet *) localizationvisible;

- (NSMutableArray *) encodecapacities;

@end

NS_ASSUME_NONNULL_END
        