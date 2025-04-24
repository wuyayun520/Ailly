#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ScaleScenario : NSObject

@property (nonatomic) NSMutableSet * fragmentTag;

@property (nonatomic) int semanticAspectRatio;

+ (instancetype) scalescenarioWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) pauseInstruction;

- (NSMutableDictionary *) actionInset;

- (int) unactivatedMapper;

- (NSMutableSet *) sharedSpot;

- (NSMutableArray *) pendingCupertino;

@end

NS_ASSUME_NONNULL_END
        