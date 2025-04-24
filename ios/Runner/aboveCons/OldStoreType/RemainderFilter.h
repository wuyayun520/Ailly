#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface RemainderFilter : NSObject

@property (nonatomic) NSMutableDictionary * prismaticColor;

+ (instancetype) remainderFilterWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) compositionalPageView;

- (NSMutableDictionary *) shouldEndNavigation;

- (int) enabledChannel;

- (NSMutableSet *) processStore;

- (NSMutableArray *) restoreCubit;

@end

NS_ASSUME_NONNULL_END
        