#import "ThroughCatalystFilter.h"
    
@interface ThroughCatalystFilter ()

@end

@implementation ThroughCatalystFilter

- (void) formatGraphicChart: (NSString *)smallException
{
	dispatch_async(dispatch_get_main_queue(), ^{
		UISegmentedControl *lastCurve = [[UISegmentedControl alloc] init];
		[lastCurve insertSegmentWithTitle:smallException atIndex:0 animated:YES];
		lastCurve.selected = YES;
		lastCurve.enabled = NO;
		//NSLog(@"sets= bussiness5 gen_str %@", bussiness5);
	});
}


@end
        