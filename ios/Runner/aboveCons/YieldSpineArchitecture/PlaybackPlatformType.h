#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface PlaybackPlatformType : NSObject

@property (nonatomic) NSString * spotCenter;

+ (instancetype) playbackplatformTypeWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) searchWidget;

- (NSMutableDictionary *) temporaryShape;

- (int) onbuttontap;

- (NSMutableSet *) gesturedetail;

- (NSMutableArray *) keepBase;

@end

NS_ASSUME_NONNULL_END
        