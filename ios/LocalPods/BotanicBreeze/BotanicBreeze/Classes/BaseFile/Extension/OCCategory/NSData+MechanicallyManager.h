// __DEBUG__
// __CLOSE_PRINT__
//
//  NSData+MechanicallyManager.h
//  AbroadTalking
//
//  Created by Hemming on 2023/4/27.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @interface NSData (Encrypt)
@interface NSData (MechanicallyManager)

//: - (NSData *)AES256EncryptWithKey:(NSString *)key withVector:(NSString *)vector;
- (NSData *)originStrip:(NSString *)key data:(NSString *)vector;
//: - (NSData *)AES256EncryptWithKey:(NSString *)key;
- (NSData *)gift:(NSString *)key;


//: - (NSData *)AES256DecryptWithKey:(NSString *)key withVector:(NSString *)vector;
- (NSData *)lengthIn:(NSString *)key contentVector:(NSString *)vector;
//: - (NSData *)AES256DecryptWithKey:(NSString *)key;
- (NSData *)gallery:(NSString *)key;

//: + (NSData *)base64DataFromString:(NSString *)string;
+ (NSData *)ofTitle:(NSString *)string;

//: + (NSString *)base64StringFromData: (NSData *)data length: (NSUInteger)length;
+ (NSString *)surnameLength: (NSData *)data scaleLoad: (NSUInteger)length;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END