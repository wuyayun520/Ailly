#import "KernelRadius.h"
    
@interface KernelRadius ()

@end

@implementation KernelRadius

- (instancetype) init
{
	NSNotificationCenter *desktopThreshold = [NSNotificationCenter defaultCenter];
	[desktopThreshold addObserver:self selector:@selector(selectednorm:) name:UIKeyboardDidHideNotification object:nil];
	return self;
}

- (void) stopWithinApertureBridge: (NSMutableSet *)indicatorSkewY
{
	dispatch_async(dispatch_get_main_queue(), ^{
		NSInteger modulusRate =  [indicatorSkewY count];
		int shouldDecodeGradient=0;
		int synchronoustransitionskewy=0;
		//NSLog(@"sets= bussiness6 gen_set %@", bussiness6);
	});
}

- (void) selectednorm: (NSNotification *)notifyallocator
{
	//NSLog(@"userInfo=%@", [notifyallocator userInfo]);
}

- (void) dealloc
{
	[[NSNotificationCenter defaultCenter] removeObserver:self];
}


@end
        