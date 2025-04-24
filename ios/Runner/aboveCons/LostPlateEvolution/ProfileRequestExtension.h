#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ProfileRequestExtension : NSObject

@property (nonatomic) NSString * tabviewVisibility;

@property (nonatomic) NSString * intuitiveProtocol;

@property (nonatomic) int ephemeralCompleter;

+ (instancetype) profileRequestExtensionWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) mediaqueryLocation;

- (NSMutableDictionary *) rebuildSignature;

- (int) nextCharacter;

- (NSMutableSet *) agileRestriction;

- (NSMutableArray *) staticDistinction;

@end

NS_ASSUME_NONNULL_END
        