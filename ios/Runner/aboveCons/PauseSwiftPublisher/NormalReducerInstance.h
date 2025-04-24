#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface NormalReducerInstance : NSObject

@property (nonatomic) NSMutableSet * accessiblePublisher;

@property (nonatomic) NSMutableArray * sharedUsage;

+ (instancetype) normalReducerInstanceWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) desktopGroup;

- (NSMutableDictionary *) tweenBehavior;

- (int) shouldPushSpine;

- (NSMutableSet *) shouldProcessHero;

- (NSMutableArray *) delegateDecorator;

@end

NS_ASSUME_NONNULL_END
        