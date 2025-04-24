#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface OverrideSkinInformation : NSObject

@property (nonatomic) NSMutableDictionary * commonDelivery;

+ (instancetype) overrideSkinInformationWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) channelsSpacing;

- (NSMutableDictionary *) canBindEntropy;

- (int) newestRoute;

- (NSMutableSet *) shouldRenderMargin;

- (NSMutableArray *) canResumeRichText;

@end

NS_ASSUME_NONNULL_END
        