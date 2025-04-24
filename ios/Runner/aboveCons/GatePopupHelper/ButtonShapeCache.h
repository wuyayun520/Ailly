#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ButtonShapeCache : NSObject

@property (nonatomic) int shouldFormatOperation;

@property (nonatomic) NSMutableSet * shouldNotifySpot;

@property (nonatomic) NSString * shouldNotifyStep;

@property (nonatomic) NSMutableArray * ascentPosition;

@property (nonatomic) NSMutableDictionary * frameInset;

@property (nonatomic) NSMutableSet * semanticSingleton;

@property (nonatomic) NSMutableArray * herosize;

+ (instancetype) buttonShapeCacheWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) transformTabBar;

- (NSMutableDictionary *) borderSystem;

- (int) showSpine;

- (NSMutableSet *) prepareKernel;

- (NSMutableArray *) coordinatorType;

@end

NS_ASSUME_NONNULL_END
        