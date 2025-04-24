#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface LatencyEnvironmentInteraction : NSObject

@property (nonatomic) int momentumFrequency;

+ (instancetype) latencyEnvironmentInteractionWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) localShader;

- (NSMutableDictionary *) shouldDisposeMonster;

- (int) activatedInitiators;

- (NSMutableSet *) errorFacade;

- (NSMutableArray *) cubeScope;

@end

NS_ASSUME_NONNULL_END
        