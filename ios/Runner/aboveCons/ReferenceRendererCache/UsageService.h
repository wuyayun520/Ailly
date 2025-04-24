#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UsageService : NSObject

@property (nonatomic) NSMutableDictionary * symbolMode;

+ (instancetype) usageServiceWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) serializeMaterial;

- (NSMutableDictionary *) conformQueue;

- (int) featureTop;

- (NSMutableSet *) resolverObserver;

- (NSMutableArray *) canListenPainter;

@end

NS_ASSUME_NONNULL_END
        