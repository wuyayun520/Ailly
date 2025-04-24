#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ThroughExpandedSorter : NSObject

@property (nonatomic) NSMutableArray * tensorMediaQuery;

+ (instancetype) throughExpandedSorterWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) scenarioFlags;

- (NSMutableDictionary *) canLayoutNavigation;

- (int) constraintOrigin;

- (NSMutableSet *) independentElement;

- (NSMutableArray *) shouldRoutePainter;

@end

NS_ASSUME_NONNULL_END
        