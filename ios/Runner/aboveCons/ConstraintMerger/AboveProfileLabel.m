#import "AboveProfileLabel.h"
    
@interface AboveProfileLabel ()

@end

@implementation AboveProfileLabel

- (void) scheduleLayout: (NSMutableDictionary *)statefulTabView
{
	dispatch_async(dispatch_get_main_queue(), ^{
		NSInteger activeResource = statefulTabView.count;
		UIBezierPath * prismaticTexture = [UIBezierPath bezierPathWithArcCenter:CGPointMake(activeResource, 401) radius:3 startAngle:M_PI endAngle:M_2_PI clockwise:NO];
		[prismaticTexture removeAllPoints];
		[prismaticTexture stroke];
		[prismaticTexture addLineToPoint:CGPointMake(114, 401)];
		[prismaticTexture closePath];
		//NSLog(@"sets= bussiness4 gen_dic %@", bussiness4);
	});
}


@end
        