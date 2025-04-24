#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ScopeProtocol : NSObject

@property (nonatomic) NSMutableDictionary * curveTag;

@property (nonatomic) NSString * accessibleAlpha;

+ (instancetype) scopeProtocolWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) stringifyBloc;

- (NSMutableDictionary *) ignoredInkWell;

- (int) framePosition;

- (NSMutableSet *) disconnectText;

- (NSMutableArray *) routeActivity;

@end

NS_ASSUME_NONNULL_END
        