#import "DrawAppBarType.h"
#import "PriorityIntegration.h"
#import "DeferredLatencyOwner.h"

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface AnimationResultProtocol : NSObject


- (void) dismissBuilderUntilCubit;

- (void) notifyRemainderResponse;

@end

NS_ASSUME_NONNULL_END
        