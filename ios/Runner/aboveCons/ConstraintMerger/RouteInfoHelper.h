#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface RouteInfoHelper : NSObject

@property (nonatomic) NSMutableDictionary * localCycle;

@property (nonatomic) int onremainderchanged;

+ (instancetype) routeInfoHelperWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) requiredPresenter;

- (NSMutableDictionary *) permissiveIndicator;

- (int) shouldMountChannels;

- (NSMutableSet *) denseScene;

- (NSMutableArray *) selectorSize;

@end

NS_ASSUME_NONNULL_END
        