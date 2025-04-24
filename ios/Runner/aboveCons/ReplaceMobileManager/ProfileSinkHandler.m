#import "ProfileSinkHandler.h"
    
@interface ProfileSinkHandler ()

@end

@implementation ProfileSinkHandler

- (void) createAnimator
{
	dispatch_async(dispatch_get_main_queue(), ^{
		NSMutableSet *skinSpeed = [NSMutableSet set];
		for (int i = 8; i != 0; --i) {
			[skinSpeed addObject:[NSString stringWithFormat:@"timelineStyle%d", i]];
		}
		if (![skinSpeed containsObject:@"imperativeparticlecolor"]) {
			UIPageControl *dynamicticker = [[UIPageControl alloc] initWithFrame:CGRectMake(62, 243, 734, 423)];
			dynamicticker.frame = CGRectMake(422, 264, 650, 94);
		}
		//NSLog(@"sets= bussiness3 gen_set %@", bussiness3);
	});
}


@end
        