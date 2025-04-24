#import "StatefulFeatureProtocol.h"
#import "TemporaryCombinerArray.h"

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface FormatWorkflowMetadata : NSObject


- (void) subscribeHandleToPlayback;

- (void) emitInterpolationViaObserver;

@end

NS_ASSUME_NONNULL_END
        