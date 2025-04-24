#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface DisplayableGramEvaluation : NSObject

@property (nonatomic) NSString * sampleCount;

@property (nonatomic) NSMutableDictionary * semanticLinker;

@property (nonatomic) NSMutableArray * subscriberBound;

+ (instancetype) displayableGramEvaluationWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) tappableMetrics;

- (NSMutableDictionary *) emitCycle;

- (int) graphicMode;

- (NSMutableSet *) activeModulus;

- (NSMutableArray *) provideStore;

@end

NS_ASSUME_NONNULL_END
        