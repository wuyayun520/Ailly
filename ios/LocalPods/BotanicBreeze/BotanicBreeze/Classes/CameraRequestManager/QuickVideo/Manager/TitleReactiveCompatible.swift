
//: Declare String Begin

/*: "mf/videoMatch/switch" :*/
fileprivate let str_cellValue:String = "equal let center status imf/vi"
fileprivate let str_photoValue:String = "let datach/switch"

/*: "status" :*/
fileprivate let str_sharedValue:[UInt8] = [0xcd,0xca,0xdf,0xca,0xcb,0xcd]

private func withColor(gift num: UInt8) -> UInt8 {
    return num ^ 190
}

/*: "mf/videoMatch/checkMatch" :*/
fileprivate let str_infoValue:String = "mf/vpause message model title"
fileprivate let str_scaleName:String = "atch/video type view false type"
fileprivate let str_textMakeRowValue:[Character] = ["k","M","a","t","c","h"]

/*: "matchVersion" :*/
fileprivate let str_contentSizeValue:[UInt8] = [0x6b,0x5f,0x72,0x61,0x66,0x54,0x63,0x70,0x71,0x67,0x6d,0x6c]

fileprivate func subjectLab(progress num: UInt8) -> UInt8 {
    let value = Int(num) - 254
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "v4" :*/
fileprivate let str_bottomShareChangeData:[Character] = ["v","4"]

/*: "enterType" :*/
fileprivate let str_cornerTitle:[UInt8] = [0xde,0xd5,0xcf,0xde,0xc9,0xef,0xc2,0xcb,0xde]

/*: "mf/videoMatch/headPics" :*/
fileprivate let str_scaleViewData:String = "limit image textmf/vi"
fileprivate let str_pushValue:String = "deoMlist var op return else"
fileprivate let str_dataValue:String = "eadPicsclick color actual request white"

/*: "mf/videoMatch/matchV3" :*/
fileprivate let str_picContent:[Character] = ["m","f","/","v","i","d","e","o","M","a","t","c","h","/","m","a"]
fileprivate let str_containerData:String = "tchV3party up message true will"

/*: "matchId" :*/
fileprivate let str_userModelName:[UInt8] = [0xfc,0xf0,0x3,0xf2,0xf7,0xd8,0xf3]

fileprivate func nameHidden(operation num: UInt8) -> UInt8 {
    let value = Int(num) + 113
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "mf/videoMatch/matchV4" :*/
fileprivate let str_indexName:[Character] = ["m","f","/","v","i","d","e","o","M","a","t","c","h","/","m","a","t"]
fileprivate let str_giftValue:[Character] = ["c","h","V","4"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  TitleReactiveCompatible.swift
//  AbroadTalking
//
//  Created by young on 2022/11/4.
//

//: import UIKit
import UIKit

//: class TalkingQuickVideoManager: NSObject {
class TitleReactiveCompatible: NSObject {
    /// 视频速配开关（女）
    /// - Parameters:
    ///   - status: status=1开启，status=0关闭
    ///   - completion: 回调
    //: class func req_videoMatchSwitch(status: Bool, completion: @escaping FinishBlock) {
    class func favorite(status: Bool, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = WithTitleThen()
        //: reqModel.requestPath = "mf/videoMatch/switch"
        reqModel.requestPath = (String(str_cellValue.suffix(5)) + "deoMat" + String(str_photoValue.suffix(9)))
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.showErrorStatusBar = false
        reqModel.showErrorStatusBar = false
        //: reqModel.params = ["status": status]
        reqModel.params = [String(bytes: str_sharedValue.map{withColor(gift: $0)}, encoding: .utf8)!: status]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_nextTitle.photoLive(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 视频速配资格检查（男）
    /// - Parameters:
    ///   - isRandomVideo: 是否是随机视频
    ///   - completion: 回调
    //: class func req_videoMatchCheck(enterType: Int = 0, completion: @escaping FinishBlock) {
    class func resumeCompletion(enterType: Int = 0, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = WithTitleThen()
        //: reqModel.requestPath = "mf/videoMatch/checkMatch"
        reqModel.requestPath = (String(str_infoValue.prefix(4)) + "ideoM" + String(str_scaleName.prefix(5)) + "chec" + String(str_textMakeRowValue))
        //: reqModel.params = ["matchVersion": "v4", "enterType": enterType]
        reqModel.params = [String(bytes: str_contentSizeValue.map{subjectLab(progress: $0)}, encoding: .utf8)!: "v4", String(bytes: str_cornerTitle.map{$0^187}, encoding: .utf8)!: enterType]
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_nextTitle.photoLive(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 速配头像列表（男）
    /// - Parameter completion: 回调
    //: class func req_videoMatchHeadPics(completion: @escaping FinishBlock) {
    class func targetTelevision(completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = WithTitleThen()
        //: reqModel.requestPath = "mf/videoMatch/headPics"
        reqModel.requestPath = (String(str_scaleViewData.suffix(5)) + String(str_pushValue.prefix(4)) + "atch/h" + String(str_dataValue.prefix(7)))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_nextTitle.photoLive(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 开始视频速配（男）
    /// - Parameters:
    ///   - matchId: 默认传0，skip的时候传之前的matchId
    ///   - completion: 回调
    //: class func req_videoMatchToMatch(matchId: Int, completion: @escaping FinishBlock) {
    class func pointBlankFrame(matchId: Int, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = WithTitleThen()
        //: reqModel.requestPath = "mf/videoMatch/matchV3"
        reqModel.requestPath = (String(str_picContent) + String(str_containerData.prefix(5)))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = ["matchId": matchId]
        reqModel.params = [String(bytes: str_userModelName.map{nameHidden(operation: $0)}, encoding: .utf8)!: matchId]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_nextTitle.photoLive(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 开始随机视频（男）
    /// - Parameters:
    ///   - params: 参数
    ///   - completion: 回调
    //: class func req_randomVideoToMatch(params: [String: Any], completion: @escaping FinishBlock) {
    class func localIndex(params: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = WithTitleThen()
        //: reqModel.requestPath = "mf/videoMatch/matchV4"
        reqModel.requestPath = (String(str_indexName) + String(str_giftValue))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = params
        reqModel.params = params
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_nextTitle.photoLive(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }
}
