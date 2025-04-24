#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface AnimatedHistogramBase : NSObject

@property (nonatomic) NSString * shouldDisconnectSample;

@property (nonatomic) NSMutableDictionary * shouldObserveCube;

+ (instancetype) animatedHistogramBaseWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) canBuildGram;

- (NSMutableDictionary *) pointdata;

- (int) canFormatSample;

- (NSMutableSet *) oldController;

- (NSMutableArray *) fetchrequest;

@end

NS_ASSUME_NONNULL_END
        