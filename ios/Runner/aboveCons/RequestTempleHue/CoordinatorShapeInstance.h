#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface CoordinatorShapeInstance : NSObject

@property (nonatomic) NSMutableDictionary * particlelocation;

@property (nonatomic) NSMutableDictionary * animatedcontainerTint;

@property (nonatomic) NSMutableSet * reductioninfo;

+ (instancetype) coordinatorShapeInstanceWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) visualizeRoute;

- (NSMutableDictionary *) disabledPublisher;

- (int) dispatchBitrate;

- (NSMutableSet *) insteadMetadata;

- (NSMutableArray *) inactiveOccasion;

@end

NS_ASSUME_NONNULL_END
        