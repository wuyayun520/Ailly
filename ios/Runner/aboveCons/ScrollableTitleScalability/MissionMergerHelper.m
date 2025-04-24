#import "MissionMergerHelper.h"
    
@interface MissionMergerHelper ()

@end

@implementation MissionMergerHelper

- (void) executeInvisibleAnimation: (NSMutableArray *)logorchain
{
	dispatch_async(dispatch_get_main_queue(), ^{
		NSString *activeMomentum = [logorchain objectAtIndex:0];
		UISegmentedControl *encodeMethod = [[UISegmentedControl alloc] init];
		[encodeMethod insertSegmentWithTitle:activeMomentum atIndex:0 animated:YES];
		UISlider *hasskin = [[UISlider alloc] init];
		hasskin.value = 0.5;
		hasskin.minimumValue = 0;
		hasskin.maximumValue = 1;
		hasskin.enabled = YES;
		BOOL shouldShowStamp = hasskin.isEnabled;
		//NSLog(@"sets= business15 gen_arr %@", business15);
	});
}


@end
        