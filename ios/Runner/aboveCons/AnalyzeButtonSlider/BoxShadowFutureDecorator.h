#import "DynamicStreamStack.h"
#import "WithoutStampAmortization.h"
#import "SpriteProviderDecorator.h"

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface BoxShadowFutureDecorator : NSObject


- (void) notifyRow;

- (void) popMitigateAfterModulus;

@end

NS_ASSUME_NONNULL_END
        