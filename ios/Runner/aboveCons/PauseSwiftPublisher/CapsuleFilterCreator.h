#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface CapsuleFilterCreator : NSObject

@property (nonatomic) int reductionFrequency;

+ (instancetype) capsuleFiltercreatorWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) canPresentListView;

- (NSMutableDictionary *) transitionTag;

- (int) basicTimeline;

- (NSMutableSet *) easySink;

- (NSMutableArray *) uniformCluster;

@end

NS_ASSUME_NONNULL_END
        