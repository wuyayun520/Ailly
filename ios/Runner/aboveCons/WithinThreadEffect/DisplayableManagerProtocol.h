#import "LayoutWorkHead.h"
#import "PersistCustomPaintDecorator.h"

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface DisplayableManagerProtocol : NSObject


- (void) dissociateSession;

- (void) destroyGateBesideWrapper;

@end

NS_ASSUME_NONNULL_END
        