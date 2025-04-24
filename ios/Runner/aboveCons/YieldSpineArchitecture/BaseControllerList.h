#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface BaseControllerList : NSObject

@property (nonatomic) NSMutableArray * requestresponse;

@property (nonatomic) int stepMode;

@property (nonatomic) int overridecurve;

@property (nonatomic) NSMutableDictionary * liteModal;

@property (nonatomic) NSMutableArray * concurrentStatus;

+ (instancetype) baseControllerListWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) requiredDependency;

- (NSMutableDictionary *) bandwidthSize;

- (int) smartLatency;

- (NSMutableSet *) textfieldMediator;

- (NSMutableArray *) hasplate;

@end

NS_ASSUME_NONNULL_END
        