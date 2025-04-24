#import "TensorDependencyList.h"
    
@interface TensorDependencyList ()

@end

@implementation TensorDependencyList

- (void) captureGlobalAnimatedContainer: (NSMutableSet *)asynchronousScreen
{
	dispatch_async(dispatch_get_main_queue(), ^{
		NSInteger persistentMerger =  [asynchronousScreen count];
		//NSLog(@"sets= bussiness9 gen_set %@", bussiness9);
	});
}


@end
        