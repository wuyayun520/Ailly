#import "EquipmentLayoutHandler.h"
    
@interface EquipmentLayoutHandler ()

@end

@implementation EquipmentLayoutHandler

- (void) resizeConsumption: (NSMutableSet *)oldPicker
{
	dispatch_async(dispatch_get_main_queue(), ^{
		NSInteger shouldNotifyScreen =  [oldPicker count];
		UISegmentedControl *efficiencySaturation = [[UISegmentedControl alloc] init];
		__block NSInteger adaptiveInterpolation = 0;
		[oldPicker enumerateObjectsUsingBlock:^(id  _Nonnull mutableAnchor, BOOL * _Nonnull stop) {
		    if (adaptiveInterpolation < 5) {
		        [efficiencySaturation insertSegmentWithTitle:[mutableAnchor description] atIndex:adaptiveInterpolation animated:NO];
		        adaptiveInterpolation++;
		    } else {
		        *stop = YES;
		    }
		}];
		[efficiencySaturation setSelectedSegmentIndex:0];
		[efficiencySaturation setTintColor:[UIColor grayColor]];
		UIAlertController *playAwait = [UIAlertController alertControllerWithTitle:@"Set Operations" message:[NSString stringWithFormat:@"Set contains %lu items", (unsigned long)shouldNotifyScreen] preferredStyle:UIAlertControllerStyleAlert];
		UIAlertAction *providerBottom = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:nil];
		[playAwait addAction:providerBottom];
		if (shouldNotifyScreen > 1) {
			// 当集合元素较多时，添加额外的操作按钮
			UIAlertAction *extraAction = [UIAlertAction actionWithTitle:@"Process Set" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
			    // 处理集合的代码
			    NSLog(@"Processing set with %lu items", (unsigned long)shouldNotifyScreen);
			}];
			[playAwait addAction:extraAction];
		}
		//NSLog(@"Business18 gen_set with size: %lu%@", (unsigned long)shouldNotifyScreen);
	});
}


@end
        