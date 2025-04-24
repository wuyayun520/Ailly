#import "NotifierWidget.h"
#import "DraggableGlobalEqualization.h"
#import "DependencyFilter.h"
#import "ConcreteScrollOwner.h"

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface EnabledBlocShape : NSObject


- (void) exitPublicSink;

- (void) startUnscheduleIntoCheckbox;

@end

NS_ASSUME_NONNULL_END
        