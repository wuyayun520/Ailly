#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface GranularStepSubscriber : NSObject

@property (nonatomic) NSMutableArray * currentContainer;

+ (instancetype) granularStepSubscriberWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) encodeAlert;

- (NSMutableDictionary *) challengeBehavior;

- (int) subpixelHue;

- (NSMutableSet *) routeBaseline;

- (NSMutableArray *) themeFunction;

@end

NS_ASSUME_NONNULL_END
        