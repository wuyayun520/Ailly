#import "CacheTableCubit.h"
    
@interface CacheTableCubit ()

@end

@implementation CacheTableCubit

- (void) forTextFieldLayout: (NSString *)rectifyrect
{
	dispatch_async(dispatch_get_main_queue(), ^{
		UISegmentedControl *skinTint = [[UISegmentedControl alloc] init];
		[skinTint insertSegmentWithTitle:rectifyrect atIndex:0 animated:YES];
		skinTint.enabled = YES;
		skinTint.selected = NO;
		UIPickerView *sizedboxOperation = [[UIPickerView alloc] initWithFrame:CGRectMake(158, 195, 184, 97)];
		sizedboxOperation.frame = CGRectMake(11, 204, 99, 165);
		sizedboxOperation.contentScaleFactor = 3.9;
		sizedboxOperation.layer.cornerRadius = 1.6;
		//NSLog(@"sets= bussiness5 gen_str %@", bussiness5);
	});
}


@end
        