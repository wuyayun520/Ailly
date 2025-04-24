#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface TappableMetadataImplement : NSObject

@property (nonatomic) NSMutableArray * stackValidation;

@property (nonatomic) NSMutableArray * sensorDirection;

+ (instancetype) tappableMetadataImplementWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) canContinueGesture;

- (NSMutableDictionary *) channelsCommand;

- (int) canInflateBox;

- (NSMutableSet *) assetAcceleration;

- (NSMutableArray *) initiatorsRight;

@end

NS_ASSUME_NONNULL_END
        