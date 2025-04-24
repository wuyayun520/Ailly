#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ObserveDrawerTrigger : NSObject

@property (nonatomic) NSString * requiredElasticity;

+ (instancetype) observeDrawerTriggerWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) delegateMethod;

- (NSMutableDictionary *) shouldNotifyBehavior;

- (int) transitionmaterial;

- (NSMutableSet *) markSize;

- (NSMutableArray *) autoProgressBar;

@end

NS_ASSUME_NONNULL_END
        