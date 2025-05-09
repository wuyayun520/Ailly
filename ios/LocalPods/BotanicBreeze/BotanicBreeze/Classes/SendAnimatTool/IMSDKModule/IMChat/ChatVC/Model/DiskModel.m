
#import <Foundation/Foundation.h>

NSString *StringFromAppData(Byte *data);


//: video
Byte str_receiveValue[] = {96, 5, 7, 129, 62, 155, 230, 111, 101, 100, 105, 118, 252};


//: [Location]
Byte str_clearName[] = {35, 10, 10, 182, 199, 28, 138, 224, 243, 95, 93, 110, 111, 105, 116, 97, 99, 111, 76, 91, 191};


//: audio
Byte str_containerName[] = {82, 5, 7, 167, 119, 157, 100, 111, 105, 100, 117, 97, 183};


//: text
Byte str_featureName[] = {55, 4, 10, 162, 22, 111, 112, 220, 175, 211, 116, 120, 101, 116, 140};


//: gift
Byte str_blockData[] = {87, 4, 4, 32, 116, 102, 105, 103, 152};


//: img
Byte str_needName[] = {89, 3, 6, 205, 233, 243, 103, 109, 105, 23};


//: Sent 
Byte str_needData[] = {70, 5, 10, 132, 25, 218, 168, 243, 154, 121, 32, 116, 110, 101, 83, 73};


//: map
Byte str_musicValue[] = {31, 3, 10, 222, 138, 85, 247, 42, 41, 253, 112, 97, 109, 178};

// __DEBUG__
// __CLOSE_PRINT__
//
//  DiskModel.m
//  Talking
//
//   on 2021/9/3.
//  Copyright © 2021 
//

// __M_A_C_R_O__
//: #import "DiskModel.h"
#import "DiskModel.h"
//: #import "BotanicBreeze/BotanicBreeze-Swift.h"
#import "BotanicBreeze/BotanicBreeze-Swift.h"

//: @implementation DiskModel
@implementation DiskModel

//: @end
@end

//: @implementation NeedSaveJsonModel
@implementation NeedSaveJsonModel

//: @end
@end

//: @implementation ImageArrayModel
@implementation ImageArrayModel

//: + (void)saveIntimatePhoto:(ImageArrayModel *)photoModel forMsgID:(NSString *)msgID {
+ (void)renderForStatus:(ImageArrayModel *)photoModel custom:(NSString *)msgID {
    //: NSMutableDictionary *dict = [self loadLocalIntimatePhotoDict].mutableCopy;
    NSMutableDictionary *dict = [self localImage].mutableCopy;
    //: NSString *jsonString = [photoModel toJSONString];
    NSString *jsonString = [photoModel toJSONString];
    //: dict[msgID] = jsonString;
    dict[msgID] = jsonString;
    //: NSString *path = [GestureCacheDefine getIntimatePhotoPath];
    NSString *path = [GestureCacheDefine following];
    //: [NSKeyedArchiver archiveRootObject:dict toFile:path];
    [NSKeyedArchiver archiveRootObject:dict toFile:path];
}

//: + (NSMutableDictionary<NSString *, NSString *> *)loadLocalIntimatePhotoDict {
+ (NSMutableDictionary<NSString *, NSString *> *)localImage {
    //: NSString *path = [GestureCacheDefine getIntimatePhotoPath];
    NSString *path = [GestureCacheDefine following];
    //: NSMutableDictionary *dict = [NSKeyedUnarchiver unarchiveObjectWithFile:path];
    NSMutableDictionary *dict = [NSKeyedUnarchiver unarchiveObjectWithFile:path];
    //: if (dict.allKeys.count > 0) {
    if (dict.allKeys.count > 0) {
        //: return dict;
        return dict;
    }
    //: return [NSMutableDictionary dictionary];
    return [NSMutableDictionary dictionary];
}

//: @end
@end

//: @implementation PlayCollectionModel
@implementation PlayCollectionModel

//: + (void)saveIntimateVideo:(PlayCollectionModel *)videoModel forMsgID:(NSString *)msgID {
+ (void)gallery:(PlayCollectionModel *)videoModel sizeId:(NSString *)msgID {
    //: NSMutableDictionary *dict = [self loadLocalIntimateVideoDict].mutableCopy;
    NSMutableDictionary *dict = [self giftLock].mutableCopy;
    //: NSString *jsonString = [videoModel toJSONString];
    NSString *jsonString = [videoModel toJSONString];
    //: dict[msgID] = jsonString;
    dict[msgID] = jsonString;
    //: NSString *path = [GestureCacheDefine getIntimateVideoPath];
    NSString *path = [GestureCacheDefine productAction];
    //: [NSKeyedArchiver archiveRootObject:dict toFile:path];
    [NSKeyedArchiver archiveRootObject:dict toFile:path];
}

//: + (NSMutableDictionary<NSString *, NSString *> *)loadLocalIntimateVideoDict {
+ (NSMutableDictionary<NSString *, NSString *> *)giftLock {
    //: NSString *path = [GestureCacheDefine getIntimateVideoPath];
    NSString *path = [GestureCacheDefine productAction];
    //: NSMutableDictionary *dict = [NSKeyedUnarchiver unarchiveObjectWithFile:path];
    NSMutableDictionary *dict = [NSKeyedUnarchiver unarchiveObjectWithFile:path];
    //: if (dict.allKeys.count > 0) {
    if (dict.allKeys.count > 0) {
        //: return dict;
        return dict;
    }
    //: return [NSMutableDictionary dictionary];
    return [NSMutableDictionary dictionary];
}

//: @end
@end

//: @implementation AbTalkingChatMsgCustomSendModel
@implementation FromJsonModel

//: @end
@end

//: @implementation TalkingModel
@implementation TalkingModel

//: @end
@end

//: @implementation UtiliserJsonModel
@implementation UtiliserJsonModel

//: @end
@end

//: @implementation AbTalkingChatMsgGiftModel
@implementation AutomaticallyJsonModel

//: @end
@end

//: @implementation TextModel
@implementation TextModel

//: @end
@end


//: @implementation AbTalkingChatMsgQuoteModel
@implementation StorageMediumModel

//: - (BOOL)isQuoteMsg{
- (BOOL)coverMsg{
    //: if (self && self.msgId && self.msgId.length > 0) {
    if (self && self.msgId && self.msgId.length > 0) {
        //: return YES;
        return YES;
    }
    //: return NO;
    return NO;
}
//: - (CGSize)quoteSize:(NSInteger)maxWidth{
- (CGSize)location:(NSInteger)maxWidth{
    //: NSInteger height = height;
    NSInteger height = height;

    //: NSDictionary* attributes = @{NSFontAttributeName: [UIFont pingfangRugularFontWithFontSize:12]};
    NSDictionary* attributes = @{NSFontAttributeName: [UIFont outsideAllSizeWithFontSize:12]};


    //: if ([self.renderType isEqualToString:@"video"] || [self.renderType isEqualToString:@"img"]) {
    if ([self.renderType isEqualToString:StringFromAppData(str_receiveValue)] || [self.renderType isEqualToString:StringFromAppData(str_needName)]) {
        //: NSString *str = [NSString stringWithFormat:@"%@: ",self.sendName];
        NSString *str = [NSString stringWithFormat:@"%@: ",self.sendName];
        //: CGSize nameSize = [str boundingRectWithSize:CGSizeMake(1.7976931348623157e+308, 14) options:(NSStringDrawingUsesLineFragmentOrigin|NSStringDrawingUsesFontLeading) attributes:attributes context:nil].size;
        CGSize nameSize = [str boundingRectWithSize:CGSizeMake(1.7976931348623157e+308, 14) options:(NSStringDrawingUsesLineFragmentOrigin|NSStringDrawingUsesFontLeading) attributes:attributes context:nil].size;

        //: return CGSizeMake(((5 + nameSize.width + 34) < (maxWidth) ? (5 + nameSize.width + 34) : (maxWidth)) , 31);
        return CGSizeMake(((5 + nameSize.width + 34) < (maxWidth) ? (5 + nameSize.width + 34) : (maxWidth)) , 31);
    }
    //: if ([self.renderType isEqualToString:@"text"]) {
    if ([self.renderType isEqualToString:StringFromAppData(str_featureName)]) {
        //: NSString *str = [NSString stringWithFormat:@"%@: %@",self.sendName,self.renderData.content];
        NSString *str = [NSString stringWithFormat:@"%@: %@",self.sendName,self.renderData.content];
        //: CGSize contentSize = [str boundingRectWithSize:CGSizeMake(1.7976931348623157e+308, 14) options:(NSStringDrawingUsesLineFragmentOrigin|NSStringDrawingUsesFontLeading) attributes:attributes context:nil].size;
        CGSize contentSize = [str boundingRectWithSize:CGSizeMake(1.7976931348623157e+308, 14) options:(NSStringDrawingUsesLineFragmentOrigin|NSStringDrawingUsesFontLeading) attributes:attributes context:nil].size;

        //: return CGSizeMake(((maxWidth) < (5 + contentSize.width) ? (maxWidth) : (5 + contentSize.width)) , 14);
        return CGSizeMake(((maxWidth) < (5 + contentSize.width) ? (maxWidth) : (5 + contentSize.width)) , 14);
    }

    //: if ([self.renderType isEqualToString:@"audio"]) {
    if ([self.renderType isEqualToString:StringFromAppData(str_containerName)]) {
        //: NSString *str = [NSString stringWithFormat:@"%@: ",self.sendName];
        NSString *str = [NSString stringWithFormat:@"%@: ",self.sendName];
        //: CGSize nameSize = [str boundingRectWithSize:CGSizeMake(1.7976931348623157e+308, 14) options:(NSStringDrawingUsesLineFragmentOrigin|NSStringDrawingUsesFontLeading) attributes:attributes context:nil].size;
        CGSize nameSize = [str boundingRectWithSize:CGSizeMake(1.7976931348623157e+308, 14) options:(NSStringDrawingUsesLineFragmentOrigin|NSStringDrawingUsesFontLeading) attributes:attributes context:nil].size;

        //: return CGSizeMake(((5 + nameSize.width + 48) < (maxWidth) ? (5 + nameSize.width + 48) : (maxWidth)) , 22);
        return CGSizeMake(((5 + nameSize.width + 48) < (maxWidth) ? (5 + nameSize.width + 48) : (maxWidth)) , 22);
    }
    //: if ([self.renderType isEqualToString:@"gift"]) {
    if ([self.renderType isEqualToString:StringFromAppData(str_blockData)]) {
        //: NSString *str = [NSString stringWithFormat:@"%@: %@%@ x%ld",self.sendName,@"Sent ".localized,self.renderData.giftNameLocal, (long)self.renderData.giftNum];
        NSString *str = [NSString stringWithFormat:@"%@: %@%@ x%ld",self.sendName,StringFromAppData(str_needData).localized,self.renderData.coriolisEffectLocal, (long)self.renderData.giftNum];
        //: CGSize contentSize = [str boundingRectWithSize:CGSizeMake(1.7976931348623157e+308, 14) options:(NSStringDrawingUsesLineFragmentOrigin|NSStringDrawingUsesFontLeading) attributes:attributes context:nil].size;
        CGSize contentSize = [str boundingRectWithSize:CGSizeMake(1.7976931348623157e+308, 14) options:(NSStringDrawingUsesLineFragmentOrigin|NSStringDrawingUsesFontLeading) attributes:attributes context:nil].size;
        //: return CGSizeMake(((maxWidth) < (5 + contentSize.width) ? (maxWidth) : (5 + contentSize.width)) , 14);
        return CGSizeMake(((maxWidth) < (5 + contentSize.width) ? (maxWidth) : (5 + contentSize.width)) , 14);
    }
    //: if ([self.renderType isEqualToString:@"map"]) {
    if ([self.renderType isEqualToString:StringFromAppData(str_musicValue)]) {
        //: NSString *str = [NSString stringWithFormat:@"%@: %@",self.sendName,@"[Location]".localized];
        NSString *str = [NSString stringWithFormat:@"%@: %@",self.sendName,StringFromAppData(str_clearName).localized];
        //: CGSize contentSize = [str boundingRectWithSize:CGSizeMake(1.7976931348623157e+308, 14) options:(NSStringDrawingUsesLineFragmentOrigin|NSStringDrawingUsesFontLeading) attributes:attributes context:nil].size;
        CGSize contentSize = [str boundingRectWithSize:CGSizeMake(1.7976931348623157e+308, 14) options:(NSStringDrawingUsesLineFragmentOrigin|NSStringDrawingUsesFontLeading) attributes:attributes context:nil].size;
        //: return CGSizeMake(((maxWidth) < (5 + contentSize.width + 5) ? (maxWidth) : (5 + contentSize.width + 5)) , 14);
        return CGSizeMake(((maxWidth) < (5 + contentSize.width + 5) ? (maxWidth) : (5 + contentSize.width + 5)) , 14);
    }

    //: return CGSizeZero;
    return CGSizeZero;
}

//: @end
@end

//: @implementation AbTalkingChatMsgQuoteDataModel
@implementation AJsonModel

//: - (NSString *)giftNameLocal{
- (NSString *)coriolisEffectLocal{
    //: NSString *locName;
    NSString *locName;
    //: NSString *sysLangCode = [MacroDefine getSystemLangCode];
    NSString *sysLangCode = [UserMacroDefine lang];
    //: if ([sysLangCode isEqualToString:@"ar"]) {
    if ([sysLangCode isEqualToString:@"ar"]) {
        //: locName = self.giftNameI18n[@"ar"];
        locName = self.giftNameI18n[@"ar"];
    //: }else if ([sysLangCode isEqualToString:@"es"]) {
    }else if ([sysLangCode isEqualToString:@"es"]) {
        //: locName = self.giftNameI18n[@"es"];
        locName = self.giftNameI18n[@"es"];
    //: }else if ([sysLangCode isEqualToString:@"pt"]) {
    }else if ([sysLangCode isEqualToString:@"pt"]) {
        //: locName = self.giftNameI18n[@"pt"];
        locName = self.giftNameI18n[@"pt"];
    //: }else{
    }else{
        //: locName = self.giftNameI18n[@"en"];
        locName = self.giftNameI18n[@"en"];
    }
    //: if (locName == nil || locName.length > 0 ) {
    if (locName == nil || locName.length > 0 ) {
        //: locName = self.giftName;
        locName = self.giftName;
    }
    //: return locName;
    return locName;
}

//: @end
@end

//: @implementation WantGiftModel
@implementation StreetSmartJsonModel

//: + (void)saveAskForGiftWithMsgID:(NSString *)msgID {
+ (void)method:(NSString *)msgID {
    //: @synchronized (self) {
    @synchronized (self) {
        //: NSMutableArray *arr = [self loadAskForGiftArr];
        NSMutableArray *arr = [self send];
        //: [arr addObject:msgID];
        [arr addObject:msgID];
        //: NSString *path = [GestureCacheDefine getAskForGiftPath];
        NSString *path = [GestureCacheDefine showInfo];
        //: [NSKeyedArchiver archiveRootObject:arr toFile:path];
        [NSKeyedArchiver archiveRootObject:arr toFile:path];
    }
}

//: + (NSMutableArray *)loadAskForGiftArr {
+ (NSMutableArray *)send {
    //: NSString *path = [GestureCacheDefine getAskForGiftPath];
    NSString *path = [GestureCacheDefine showInfo];
    //: NSMutableArray *arr = [NSKeyedUnarchiver unarchiveObjectWithFile:path];
    NSMutableArray *arr = [NSKeyedUnarchiver unarchiveObjectWithFile:path];
    //: if (arr.count > 0) {
    if (arr.count > 0) {
        //: return arr;
        return arr;
    }
    //: return [@[] mutableCopy];
    return [@[] mutableCopy];
}

//: @end
@end

Byte * AppDataToCache(Byte *data) {
    int localTitle = data[0];
    int allow = data[1];
    int total = data[2];
    if (!localTitle) return data + total;
    for (int i = 0; i < allow / 2; i++) {
        int begin = total + i;
        int end = total + allow - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[0] = 0;
    data[total + allow] = 0;
    return data + total;
}

NSString *StringFromAppData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)AppDataToCache(data)];
}  
