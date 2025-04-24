#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface FloatLiteScene : NSObject

@property (nonatomic) NSMutableSet * hierarchicalStorage;

@property (nonatomic) NSString * shouldStartBaseline;

@property (nonatomic) NSString * shouldShowStep;

+ (instancetype) floatLiteSceneWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) serializeListener;

- (NSMutableDictionary *) imperativeResult;

- (int) associatedusecasemode;

- (NSMutableSet *) activatedPageView;

- (NSMutableArray *) semanticLogarithm;

@end

NS_ASSUME_NONNULL_END
        