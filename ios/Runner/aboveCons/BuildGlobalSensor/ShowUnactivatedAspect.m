#import "ShowUnactivatedAspect.h"
    
@interface ShowUnactivatedAspect ()

@end

@implementation ShowUnactivatedAspect

- (instancetype) init
{
	NSNotificationCenter *difficultGroup = [NSNotificationCenter defaultCenter];
	[difficultGroup addObserver:self selector:@selector(canUnmountConvolution:) name:UIKeyboardWillChangeFrameNotification object:nil];
	return self;
}

- (void) routeDirectlyResource: (NSMutableDictionary *)missedEquipment
{
	dispatch_async(dispatch_get_main_queue(), ^{
		NSInteger statictrajectory = missedEquipment.count;
		UIBezierPath * tweakOrientation = [UIBezierPath bezierPathWithArcCenter:CGPointMake(statictrajectory, 297) radius:3 startAngle:M_PI_2 endAngle:M_PI_2 clockwise:NO];
		[tweakOrientation removeAllPoints];
		[tweakOrientation stroke];
		[tweakOrientation addLineToPoint:CGPointMake(101, 297)];
		[tweakOrientation closePath];
		//NSLog(@"sets= bussiness4 gen_dic %@", bussiness4);
	});
}

- (void) canUnmountConvolution: (NSNotification *)inactivePreview
{
	//NSLog(@"userInfo=%@", [inactivePreview userInfo]);
}

- (void) dealloc
{
	[[NSNotificationCenter defaultCenter] removeObserver:self];
}


@end
        