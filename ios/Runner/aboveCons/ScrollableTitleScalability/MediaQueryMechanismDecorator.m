#import "MediaQueryMechanismDecorator.h"
    
@interface MediaQueryMechanismDecorator ()

@end

@implementation MediaQueryMechanismDecorator

- (void) cachePadding: (NSMutableSet *)resumelayout
{
	dispatch_async(dispatch_get_main_queue(), ^{
		NSNumberFormatter *lockResolver = [[NSNumberFormatter alloc] init];
		lockResolver.minimumFractionDigits = 8;
		[lockResolver setNumberStyle:NSNumberFormatterSpellOutStyle];
		lockResolver.minimumFractionDigits = 1;
		//NSLog(@"sets= bussiness1 gen_set %@", bussiness1);
	});
}


@end
        