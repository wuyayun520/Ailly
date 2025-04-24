#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface PopLastDimension : NSObject

@property (nonatomic) NSMutableArray * actionType;

@property (nonatomic) NSMutableSet * mergerCenter;

@property (nonatomic) NSMutableSet * shouldLoadThread;

@property (nonatomic) int shouldDecodeEqualization;

+ (instancetype) popLastDimensionWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) deserializeConstraint;

- (NSMutableDictionary *) providerLayer;

- (int) smartBatch;

- (NSMutableSet *) selectedBitrate;

- (NSMutableArray *) scopeDensity;

@end

NS_ASSUME_NONNULL_END
        