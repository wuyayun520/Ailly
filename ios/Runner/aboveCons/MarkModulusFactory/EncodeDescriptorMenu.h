#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface EncodeDescriptorMenu : NSObject

@property (nonatomic) NSMutableDictionary * statelessButton;

@property (nonatomic) int granularSelector;

@property (nonatomic) NSMutableSet * shouldProcessTheme;

+ (instancetype) encodeDescriptorMenuWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) wrapperFlags;

- (NSMutableDictionary *) titleState;

- (int) parseTheme;

- (NSMutableSet *) canLoadFlex;

- (NSMutableArray *) usecaselocation;

@end

NS_ASSUME_NONNULL_END
        