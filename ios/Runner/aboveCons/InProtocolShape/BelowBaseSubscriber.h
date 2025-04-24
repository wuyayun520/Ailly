#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface BelowBaseSubscriber : NSObject

@property (nonatomic) NSMutableSet * actioninsidechain;

+ (instancetype) belowbaseSubscriberWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) movementSpeed;

- (NSMutableDictionary *) sharedCaption;

- (int) offsetPadding;

- (NSMutableSet *) shouldConnectSpine;

- (NSMutableArray *) accessibleTriangles;

@end

NS_ASSUME_NONNULL_END
        