#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface DismissTabBarEntity : NSObject

@property (nonatomic) NSMutableDictionary * shouldUpdateDimension;

@property (nonatomic) NSMutableSet * uniformSound;

+ (instancetype) dismissTabBarEntityWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) releaseAlignment;

- (NSMutableDictionary *) shouldRestartStateful;

- (int) shouldNavigateBehavior;

- (NSMutableSet *) canHandleIcon;

- (NSMutableArray *) shouldStreamHeap;

@end

NS_ASSUME_NONNULL_END
        