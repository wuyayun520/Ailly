#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface NotifierController : NSObject

@property (nonatomic) NSMutableDictionary * characterright;

+ (instancetype) notifierControllerWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) threadIndex;

- (NSMutableDictionary *) activatedThread;

- (int) dedicatedPageView;

- (NSMutableSet *) topicbrightness;

- (NSMutableArray *) lockBloc;

@end

NS_ASSUME_NONNULL_END
        