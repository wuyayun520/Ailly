#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface EncapsulateBlocCollection : NSObject


- (void) validateLossInput: (NSMutableArray *)semanticPresenter;

- (void) persistOverlay;

- (void) calculateHandler;

@end

NS_ASSUME_NONNULL_END
        