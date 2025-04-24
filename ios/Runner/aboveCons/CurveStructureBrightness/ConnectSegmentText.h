#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ConnectSegmentText : NSObject

@property (nonatomic) NSMutableDictionary * persistcoordinator;

+ (instancetype) connectSegmentTextWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) subscribeScroll;

- (NSMutableDictionary *) activityDirection;

- (int) canFetchSample;

- (NSMutableSet *) shouldHandleChannels;

- (NSMutableArray *) partitionConfiguration;

@end

NS_ASSUME_NONNULL_END
        