#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface PersistentCurrentState : NSObject

@property (nonatomic) int publicChannels;

@property (nonatomic) NSMutableSet * endcycle;

@property (nonatomic) int schedulerIndex;

@property (nonatomic) NSMutableArray * shouldContinueReference;

@property (nonatomic) int streamactivityhead;

@property (nonatomic) NSMutableDictionary * lasttransition;

@property (nonatomic) NSMutableSet * autoReducer;

@property (nonatomic) NSMutableSet * combinerDensity;

+ (instancetype) persistentCurrentStateWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) normalCaption;

- (NSMutableDictionary *) descriptionShape;

- (int) smallTopic;

- (NSMutableSet *) canPopInstruction;

- (NSMutableArray *) materializerOrientation;

@end

NS_ASSUME_NONNULL_END
        