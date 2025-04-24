#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface LargeZoneManager : NSObject

@property (nonatomic) int immediateEmitter;

@property (nonatomic) NSString * movedescription;

+ (instancetype) largeZoneManagerWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) shouldTrainFuture;

- (NSMutableDictionary *) segueEnvironment;

- (int) statefulDirection;

- (NSMutableSet *) combineAction;

- (NSMutableArray *) cacheMaster;

@end

NS_ASSUME_NONNULL_END
        