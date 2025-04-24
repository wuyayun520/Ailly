#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface AboveResourceProcessor : NSObject

@property (nonatomic) int gemCoord;

+ (instancetype) aboveResourceProcessorWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) canTransitionSpecifier;

- (NSMutableDictionary *) rectFeedback;

- (int) validateInstruction;

- (NSMutableSet *) disposeDimension;

- (NSMutableArray *) easyRestriction;

@end

NS_ASSUME_NONNULL_END
        