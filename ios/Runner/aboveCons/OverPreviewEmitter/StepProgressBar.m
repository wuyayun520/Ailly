#import "StepProgressBar.h"
    
@interface StepProgressBar ()

@end

@implementation StepProgressBar

- (void) subscribeReusableResponse: (int)activeSensor
{
	dispatch_async(dispatch_get_main_queue(), ^{
		UIActivityIndicatorView *validategrayscale = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleLarge];
		validategrayscale.hidesWhenStopped = YES;
		if (validategrayscale.animating) {
			[validategrayscale stopAnimating];
			[validategrayscale setFrame:CGRectMake(75, 6, 66, 48)];
			[validategrayscale setFrame:CGRectMake(48, 88, 35, 59)];
			[validategrayscale setFrame:CGRectMake(76, 20, 95, 40)];
		}
		[validategrayscale setFrame:CGRectMake(activeSensor, 222, 745, 465)];
		//NSLog(@"sets= bussiness4 gen_int %@", bussiness4);
	});
}


@end
        