#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface PointSlider : NSObject

@property (nonatomic) NSMutableDictionary * plateColor;

@property (nonatomic) NSMutableDictionary * sceneMargin;

@property (nonatomic) NSMutableArray * binaryStyle;

+ (instancetype) pointSliderWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) pendingTransition;

- (NSMutableDictionary *) customRestriction;

- (int) canRouteAlert;

- (NSMutableSet *) displayTween;

- (NSMutableArray *) intermediateSplitter;

@end

NS_ASSUME_NONNULL_END
        