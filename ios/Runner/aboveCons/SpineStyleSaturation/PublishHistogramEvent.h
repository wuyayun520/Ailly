#import "TangentTimerCollection.h"
#import "GrayscaleGraph.h"

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface PublishHistogramEvent : NSObject


- (void) decodeState;

- (void) replicateHash;

@end

NS_ASSUME_NONNULL_END
        