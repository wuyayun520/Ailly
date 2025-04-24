#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ButtonStroke : NSObject

@property (nonatomic) NSString * liteAsset;

@property (nonatomic) NSString * shouldKeepCursor;

@property (nonatomic) NSMutableArray * overlaylevelskewx;

+ (instancetype) buttonStrokeWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) destroyRect;

- (NSMutableDictionary *) shouldRestartCharacter;

- (int) mediaMode;

- (NSMutableSet *) shouldPopEntropy;

- (NSMutableArray *) accessibleHandler;

@end

NS_ASSUME_NONNULL_END
        