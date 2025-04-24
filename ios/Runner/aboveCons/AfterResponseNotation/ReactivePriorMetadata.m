#import "ReactivePriorMetadata.h"
    
@interface ReactivePriorMetadata ()

@end

@implementation ReactivePriorMetadata

- (void) buildSpineGraph: (NSMutableArray *)comprehensiveOperation
{
	dispatch_async(dispatch_get_main_queue(), ^{
		UIDatePicker *stepFrequency = [[UIDatePicker alloc]init];
		[stepFrequency setDatePickerMode:UIDatePickerModeCountDownTimer];
		[stepFrequency setLocale: [NSLocale  localeWithLocaleIdentifier:@"zh-Hans"]];
		UITextField *oncosinechanged = [[UITextField alloc] init];
		oncosinechanged.inputView = stepFrequency;
		//NSLog(@"sets= bussiness7 gen_arr %@", bussiness7);
	});
}


@end
        