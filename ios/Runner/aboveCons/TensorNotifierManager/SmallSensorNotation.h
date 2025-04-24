#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface SmallSensorNotation : NSObject

@property (nonatomic) NSMutableDictionary * materialBorder;

@property (nonatomic) int capacitiesduration;

+ (instancetype) smallsensorNotationWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) shouldDismissCompletion;

- (NSMutableDictionary *) declarativeMediaQuery;

- (int) routeflags;

- (NSMutableSet *) largeGridView;

- (NSMutableArray *) imperativeEquivalent;

@end

NS_ASSUME_NONNULL_END
        