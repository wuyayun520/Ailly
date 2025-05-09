
//: Declare String Begin

/*: "mf/user/getUserInfo" :*/
fileprivate let str_bottomValue:String = "background equal index for fillmf/use"
fileprivate let str_headData:String = "tUserself point name title"

/*: "uid" :*/
fileprivate let str_labelData:[UInt8] = [0x2,0xf6,0xf1]

fileprivate func accountingData(value num: UInt8) -> UInt8 {
    let value = Int(num) - 141
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "mf/user/getReceivedGifts" :*/
fileprivate let str_modelTitle:[Character] = ["m","f","/","u","s","e","r","/","g","e","t","R","e","c","e","i"]
fileprivate let str_resultData:[Character] = ["v","e","d","G","i","f","t","s"]

/*: "mf/crush/send" :*/
fileprivate let str_makeValue:String = "mf/crusm value"
fileprivate let str_sizeValue:String = "app make datah/send"

/*: "targetUid" :*/
fileprivate let str_dataLastTitle:[UInt8] = [0xb0,0x9d,0xae,0xa3,0xa1,0xb0,0x91,0xa5,0xa0]

fileprivate func changeDate(point num: UInt8) -> UInt8 {
    let value = Int(num) + 196
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "user/attention" :*/
fileprivate let str_colorMoreName:[UInt8] = [0x6e,0x6f,0x69,0x74,0x6e,0x65,0x74,0x74,0x61,0x2f,0x72,0x65,0x73,0x75]

/*: "user/removeAttention" :*/
fileprivate let str_backgroundValue:String = "user/rlabel label model make"
fileprivate let str_cellValue:[Character] = ["e","A","t","t","e","n","t","i","o","n"]

/*: "attentionUid" :*/
fileprivate let str_stateTitle:[UInt8] = [0x1d,0x8,0x8,0x19,0x12,0x8,0x15,0x13,0x12,0x29,0x15,0x18]

/*: "removeAttentionUid" :*/
fileprivate let str_quickValue:[UInt8] = [0x64,0x69,0x55,0x6e,0x6f,0x69,0x74,0x6e,0x65,0x74,0x74,0x41,0x65,0x76,0x6f,0x6d,0x65,0x72]

/*: "user/addBlack" :*/
fileprivate let str_mapData:[UInt8] = [0xc0,0xc6,0xd0,0xc7,0x9a,0xd4,0xd1,0xd1,0xf7,0xd9,0xd4,0xd6,0xde]

private func backgroundSend(actual num: UInt8) -> UInt8 {
    return num ^ 181
}

/*: "user/remBlack" :*/
fileprivate let str_itemData:[Character] = ["u","s","e","r","/","r","e","m","B","l","a","c","k"]

/*: "mf/moment/like" :*/
fileprivate let str_popValue:String = "self modelmf/mome"
fileprivate let str_appData:[Character] = ["n","t","/","l","i","k","e"]

/*: "momentId" :*/
fileprivate let str_editText:[UInt8] = [0x7f,0x7d,0x7f,0x77,0x7c,0x66,0x5b,0x76]

/*: "type" :*/
fileprivate let str_roomName:[UInt8] = [0x4c,0x51,0x48,0x3d]

fileprivate func partyLabel(strike num: UInt8) -> UInt8 {
    let value = Int(num) + 40
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "mf/user/uploadAuthPic" :*/
fileprivate let str_playerName:String = "mf/usevalue answer after let model"
fileprivate let str_colorTitle:String = "return frame coloroadAu"

/*: "auth_pic" :*/
fileprivate let str_collectionMakeData:[UInt8] = [0x8e,0x9a,0x9b,0x87,0xb0,0x9f,0x86,0x8c]

private func heightCollection(error num: UInt8) -> UInt8 {
    return num ^ 239
}

/*: "mf/newFeature/residualInfo" :*/
fileprivate let str_pathToolName:String = "extension casemf/ne"
fileprivate let str_imageHeadValue:String = "user cell array label sizere/r"
fileprivate let str_dateBarValue:String = "image model self videoualI"
fileprivate let str_indexLanguageText:String = "nlabelo"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  TitleEqualRequestManager.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/9/8.
//

//: import UIKit
import UIKit

//: class TalkingUserRequestManager: NSObject {
class TitleEqualRequestManager: NSObject {
    // MARK: - 用户信息

    //: class func func__otherUserInfo(uid: String, completion: @escaping FinishBlock) {
    class func userInfoCompletionFuncOther(uid: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = WithTitleThen()
        //: reqModel.requestPath = "mf/user/getUserInfo"
        reqModel.requestPath = (String(str_bottomValue.suffix(6)) + "r/ge" + String(str_headData.prefix(5)) + "Info")
        //: reqModel.params = ["uid": uid]
        reqModel.params = [String(bytes: str_labelData.map{accountingData(value: $0)}, encoding: .utf8)!: uid]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_nextTitle.photoLive(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    // MARK: - 收到的礼物

    //: class func func__getReceivedGift(uid: String, completion: @escaping FinishBlock) {
    class func untilCapacity(uid: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = WithTitleThen()
        //: reqModel.requestPath = "mf/user/getReceivedGifts"
        reqModel.requestPath = (String(str_modelTitle) + String(str_resultData))
        //: reqModel.params = ["uid": uid]
        reqModel.params = [String(bytes: str_labelData.map{accountingData(value: $0)}, encoding: .utf8)!: uid]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_nextTitle.photoLive(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    // MARK: - 发送心动

    //: class func func__sendCrushWithUserId(targetUid: String, completion: @escaping FinishBlock) {
    class func drogue(targetUid: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = WithTitleThen()
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.requestPath = "mf/crush/send"
        reqModel.requestPath = (String(str_makeValue.prefix(7)) + String(str_sizeValue.suffix(6)))
        //: reqModel.params = ["targetUid": targetUid]
        reqModel.params = [String(bytes: str_dataLastTitle.map{changeDate(point: $0)}, encoding: .utf8)!: targetUid]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_nextTitle.photoLive(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    // MARK: - 关注

    //: class func func__attentionWithUserId(uid: String, isAttention: Bool, completion: @escaping FinishBlock) {
    class func ofCompletion(uid: String, isAttention: Bool, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = WithTitleThen()
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.requestPath = isAttention == true ? "user/attention" : "user/removeAttention"
        reqModel.requestPath = isAttention == true ? String(bytes: str_colorMoreName.reversed(), encoding: .utf8)! : (String(str_backgroundValue.prefix(6)) + "emov" + String(str_cellValue))
        //: reqModel.params = isAttention == true ? ["attentionUid": uid] : ["removeAttentionUid": uid]
        reqModel.params = isAttention == true ? [String(bytes: str_stateTitle.map{$0^124}, encoding: .utf8)!: uid] : [String(bytes: str_quickValue.reversed(), encoding: .utf8)!: uid]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_nextTitle.photoLive(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    // MARK: - 拉黑

    //: class func func__pullBlackWithUserId(uid: String, isBlack: Bool, completion: @escaping FinishBlock) {
    class func betweenValue(uid: String, isBlack: Bool, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = WithTitleThen()
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.requestPath = isBlack == true ? "user/addBlack" : "user/remBlack"
        reqModel.requestPath = isBlack == true ? String(bytes: str_mapData.map{backgroundSend(actual: $0)}, encoding: .utf8)! : (String(str_itemData))
        //: reqModel.params = ["uid": uid]
        reqModel.params = [String(bytes: str_labelData.map{accountingData(value: $0)}, encoding: .utf8)!: uid]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_nextTitle.photoLive(model: reqModel) { succeed, result, errorModel in
            //: if succeed == true {
            if succeed == true {
                //: if isBlack {
                if isBlack {
                    //: TalkingBlockListManager.shared.addUserToBlockList(userId: uid)
                    BlockMakeListManager.shared.beyondWithId(userId: uid)
                    //: } else {
                } else {
                    //: TalkingBlockListManager.shared.removeUserForBlockList(userId: uid)
                    BlockMakeListManager.shared.forImage(userId: uid)
                }
            }
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    // MARK: - 点赞

    //: class func func__likeMoment(mid: String, type: String, completion: @escaping FinishBlock) {
    class func addCompletion(mid: String, type: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = WithTitleThen()
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.requestPath = "mf/moment/like"
        reqModel.requestPath = (String(str_popValue.suffix(7)) + String(str_appData))
        //: reqModel.params = ["momentId": mid, "type": type]
        reqModel.params = [String(bytes: str_editText.map{$0^18}, encoding: .utf8)!: mid, String(bytes: str_roomName.map{partyLabel(strike: $0)}, encoding: .utf8)!: type]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_nextTitle.photoLive(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    // MARK: - 举报

    //: class func func__reportRequest(reqPath: String, reqParams: Dictionary<String, String>, completion: @escaping FinishBlock) {
    class func upEnable(reqPath: String, reqParams: [String: String], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = WithTitleThen()
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.requestPath = reqPath
        reqModel.requestPath = reqPath
        //: reqModel.params = reqParams
        reqModel.params = reqParams
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_nextTitle.photoLive(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    // MARK: - 真人认证

    //: class func func__realVerifyUploadPic(pic: UIImage, completion: @escaping FinishBlock) {
    class func harvestMoonCompletion(pic: UIImage, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = WithTitleThen()
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.requestPath = "mf/user/uploadAuthPic"
        reqModel.requestPath = (String(str_playerName.prefix(6)) + "r/upl" + String(str_colorTitle.suffix(5)) + "thPic")
        //: let data = pic.jpegData(compressionQuality: 1)
        let data = pic.jpegData(compressionQuality: 1)
        //: reqModel.params = ["auth_pic": data ?? ""]
        reqModel.params = [String(bytes: str_collectionMakeData.map{heightCollection(error: $0)}, encoding: .utf8)!: data ?? ""]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_nextTitle.photoLive(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    // MARK: - 查询套餐剩余量

    //: class func func__reqResidualInfo(completion: @escaping FinishBlock) {
    class func programGiftLoad(completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = WithTitleThen()
        //: reqModel.requestPath = "mf/newFeature/residualInfo"
        reqModel.requestPath = (String(str_pathToolName.suffix(5)) + "wFeatu" + String(str_imageHeadValue.suffix(4)) + "esid" + String(str_dateBarValue.suffix(4)) + str_indexLanguageText.replacingOccurrences(of: "label", with: "f"))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_nextTitle.photoLive(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }
}
