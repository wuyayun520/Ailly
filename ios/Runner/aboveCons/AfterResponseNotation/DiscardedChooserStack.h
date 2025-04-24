#import "AttachListViewHandler.h"
#import "ConcurrentDenseSink.h"

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface DiscardedChooserStack : NSObject


- (void) persistDrawerManager;

- (void) pauseOperation;

@end

NS_ASSUME_NONNULL_END
        