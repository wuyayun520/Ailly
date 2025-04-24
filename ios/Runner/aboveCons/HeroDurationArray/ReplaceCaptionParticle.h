#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ReplaceCaptionParticle : NSObject

@property (nonatomic) NSMutableArray * globalStatus;

@property (nonatomic) NSMutableSet * shouldContinueTouch;

+ (instancetype) replaceCaptionParticleWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) streamText;

- (NSMutableDictionary *) shouldShowWorkflow;

- (int) concatenateLayout;

- (NSMutableSet *) respondParticle;

- (NSMutableArray *) shouldUnmountedEquipment;

@end

NS_ASSUME_NONNULL_END
        