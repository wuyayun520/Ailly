#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UnderChecklistResult : NSObject

@property (nonatomic) int invisibleRequest;

+ (instancetype) underChecklistResultWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) priorText;

- (NSMutableDictionary *) significantColor;

- (int) borderFunction;

- (NSMutableSet *) profilemode;

- (NSMutableArray *) obtainProvider;

@end

NS_ASSUME_NONNULL_END
        