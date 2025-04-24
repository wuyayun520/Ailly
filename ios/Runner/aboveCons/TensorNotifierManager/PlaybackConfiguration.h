#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface PlaybackConfiguration : NSObject

@property (nonatomic) NSMutableDictionary * advancedSink;

@property (nonatomic) int shouldHandleSine;

@property (nonatomic) NSString * smartsignature;

@property (nonatomic) NSMutableDictionary * sortedChallenge;

@property (nonatomic) NSMutableSet * reusableReplica;

+ (instancetype) playbackConfigurationWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) shouldDisconnectSegment;

- (NSMutableDictionary *) significantMedia;

- (int) taxonomyDuration;

- (NSMutableSet *) shouldRenderAspectRatio;

- (NSMutableArray *) generateConfiguration;

@end

NS_ASSUME_NONNULL_END
        