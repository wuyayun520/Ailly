#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface HoldWidgetTransformer : NSObject

@property (nonatomic) int polygonPadding;

@property (nonatomic) NSString * dependencyTail;

@property (nonatomic) int statefulResilience;

+ (instancetype) holdWidgetTransformerWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) shouldNavigateCycle;

- (NSMutableDictionary *) updateBitrate;

- (int) singleBox;

- (NSMutableSet *) formatGrayscale;

- (NSMutableArray *) canTransformLabel;

@end

NS_ASSUME_NONNULL_END
        