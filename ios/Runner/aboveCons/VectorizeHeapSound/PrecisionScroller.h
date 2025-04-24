#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface PrecisionScroller : NSObject


- (void) skipConcurrentSample;

- (void) mightCrudeLayoutAction: (NSMutableArray *)animatorFeedback;

@end

NS_ASSUME_NONNULL_END
        