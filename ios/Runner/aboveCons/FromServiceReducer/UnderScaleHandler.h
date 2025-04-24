#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UnderScaleHandler : NSObject

@property (nonatomic) NSMutableArray * priorcupertino;

+ (instancetype) underScaleHandlerWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) shouldDecodeProfile;

- (NSMutableDictionary *) requiredClipper;

- (int) desktopDetector;

- (NSMutableSet *) unsortedMerger;

- (NSMutableArray *) canEndCompletion;

@end

NS_ASSUME_NONNULL_END
        