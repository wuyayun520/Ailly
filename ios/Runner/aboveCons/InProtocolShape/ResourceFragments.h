#import "NativeStoryboardStorage.h"
#import "DependencyPolyfillAdapter.h"
#import "PrevBuilderStack.h"
#import "CanvasDelegateExtension.h"
#import "TransitionCustomPaintTimeline.h"

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ResourceFragments : NSObject


- (void) unmountedUpScaffoldWork;

- (void) processConfigureForTechnique;

@end

NS_ASSUME_NONNULL_END
        