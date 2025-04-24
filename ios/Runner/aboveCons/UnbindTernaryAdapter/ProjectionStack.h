#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ProjectionStack : NSObject

@property (nonatomic) NSMutableDictionary * presentername;

+ (instancetype) projectionStackWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) routescene;

- (NSMutableDictionary *) animatedVolume;

- (int) displayWidget;

- (NSMutableSet *) radiusContext;

- (NSMutableArray *) dynamicBloc;

@end

NS_ASSUME_NONNULL_END
        