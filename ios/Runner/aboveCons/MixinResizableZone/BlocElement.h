#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface BlocElement : NSObject

@property (nonatomic) int disposecollection;

+ (instancetype) blocElementWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) statelessSubpixel;

- (NSMutableDictionary *) clipBuilder;

- (int) shouldStartReference;

- (NSMutableSet *) delegateLocation;

- (NSMutableArray *) shouldListenAperture;

@end

NS_ASSUME_NONNULL_END
        