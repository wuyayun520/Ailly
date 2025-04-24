#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface BitrateReducer : NSObject

@property (nonatomic) int shouldFinishInterpolation;

@property (nonatomic) NSMutableSet * currentBox;

@property (nonatomic) NSMutableDictionary * stackDuration;

+ (instancetype) bitrateReducerWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) insteadworkflow;

- (NSMutableDictionary *) quantizationTransition;

- (int) isdelegate;

- (NSMutableSet *) transformgrayscale;

- (NSMutableArray *) difficultGraph;

@end

NS_ASSUME_NONNULL_END
        