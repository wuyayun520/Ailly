#import "RouteOperation.h"
    
@interface RouteOperation ()

@end

@implementation RouteOperation

- (void) configureForSinkBuffer: (NSMutableSet *)liteResource
{
	dispatch_async(dispatch_get_main_queue(), ^{
		if (![liteResource containsObject:@"projectScope"]) {
			UIPageControl *marshalScene = [[UIPageControl alloc] initWithFrame:CGRectMake(13, 205, 973, 296)];
			marshalScene.tag = 16;
			marshalScene.pageIndicatorTintColor = [UIColor purpleColor];
			marshalScene.tag = 50;
			marshalScene.pageIndicatorTintColor = [UIColor yellowColor];
		}
		//NSLog(@"sets= bussiness3 gen_set %@", bussiness3);
	});
}


@end
        