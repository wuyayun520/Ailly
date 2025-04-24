#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ObserveLossStack : NSObject

@property (nonatomic) NSMutableArray * discardedPageView;

+ (instancetype) observeLossStackWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) smartStateful;

- (NSMutableDictionary *) deserializeCapsule;

- (int) webMetrics;

- (NSMutableSet *) canTrainLoss;

- (NSMutableArray *) pinchableHandler;

@end

NS_ASSUME_NONNULL_END
        