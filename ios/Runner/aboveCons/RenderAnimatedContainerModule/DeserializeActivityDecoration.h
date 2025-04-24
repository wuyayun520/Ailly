#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface DeserializeActivityDecoration : NSObject

@property (nonatomic) NSMutableSet * scaleOpacity;

@property (nonatomic) NSMutableDictionary * stackshape;

+ (instancetype) deserializeActivitydecorationWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) transformerShape;

- (NSMutableDictionary *) bindpopup;

- (int) cacheStyle;

- (NSMutableSet *) composableDetector;

- (NSMutableArray *) reductionLevel;

@end

NS_ASSUME_NONNULL_END
        