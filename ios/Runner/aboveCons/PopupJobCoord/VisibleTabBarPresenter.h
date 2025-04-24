#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface VisibleTabBarPresenter : NSObject

@property (nonatomic) int fixedSplitter;

@property (nonatomic) int resilientDescriptor;

@property (nonatomic) int liteEqualization;

@property (nonatomic) NSString * deferredSymbol;

+ (instancetype) visibleTabBarPresenterWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) concreteAction;

- (NSMutableDictionary *) compositionalEvent;

- (int) localAsync;

- (NSMutableSet *) shouldDetachRoute;

- (NSMutableArray *) segmentVisible;

@end

NS_ASSUME_NONNULL_END
        