#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface BackwardPetScroller : NSObject

@property (nonatomic) NSMutableSet * shouldFetchButton;

+ (instancetype) backwardPetScrollerWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) stepChain;

- (NSMutableDictionary *) trainController;

- (int) ignoredBehavior;

- (NSMutableSet *) canEndDelegate;

- (NSMutableArray *) canStopHero;

@end

NS_ASSUME_NONNULL_END
        