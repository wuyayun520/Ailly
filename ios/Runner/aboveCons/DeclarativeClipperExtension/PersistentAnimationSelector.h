#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface PersistentAnimationSelector : NSObject

@property (nonatomic) NSMutableDictionary * responsiveBuffer;

@property (nonatomic) NSMutableSet * mainTexture;

+ (instancetype) persistentAnimationSelectorWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) disabledMechanism;

- (NSMutableDictionary *) canStopMediaQuery;

- (int) immediateMovement;

- (NSMutableSet *) selectedGesture;

- (NSMutableArray *) upgradeAsync;

@end

NS_ASSUME_NONNULL_END
        