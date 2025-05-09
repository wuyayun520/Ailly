
//: Declare String Begin

/*: "live/enter" :*/
fileprivate let str_groupValue:String = "LI"
fileprivate let str_layerTitle:String = "make mode post error appve/enter"

/*: "streamerUid" :*/
fileprivate let str_insertName:[UInt8] = [0x64,0x69,0x55,0x72,0x65,0x6d,0x61,0x65,0x72,0x74,0x73]

/*: "live/userNum" :*/
fileprivate let str_upGreenName:[Character] = ["l","i","v","e","/","u","s","e"]
fileprivate let str_dataTitle:[Character] = ["r","N","u","m"]

/*: "chatGroupId" :*/
fileprivate let str_sizeTitle:[UInt8] = [0x55,0x5e,0x57,0x42,0x71,0x44,0x59,0x43,0x46,0x7f,0x52]

private func addData(temp num: UInt8) -> UInt8 {
    return num ^ 54
}

/*: "live/members" :*/
fileprivate let str_modelValue:[Character] = ["l","i","v","e","/","m","e","m","b"]
fileprivate let str_liveTingValue:String = "makers"

/*: "live/mute" :*/
fileprivate let str_appTitle:String = "upive"
fileprivate let str_tabTitle:String = "E"

/*: "targetUid" :*/
fileprivate let str_timeImageTitle:[UInt8] = [0x64,0x69,0x55,0x74,0x65,0x67,0x72,0x61,0x74]

/*: "duration" :*/
fileprivate let str_loadButtonData:[UInt8] = [0xdd,0xcc,0xcb,0xd8,0xcd,0xd0,0xd6,0xd7]

private func actionMake(control num: UInt8) -> UInt8 {
    return num ^ 185
}

/*: "live/unmute" :*/
fileprivate let str_dataContent:String = "scale"
fileprivate let str_tempPicText:String = "ve/uncontent at return kit add"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ExecutiveAudienceManager.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/7/7.
//

//: import UIKit
import UIKit

// 观众/主播
//: class TalkingAudienceManager: NSObject {
class ExecutiveAudienceManager: NSObject {
    /// 进房
    //: func req_enterLiveRoom(streamerUid: String, completion: @escaping FinishBlock) {
    func listenerPop(streamerUid: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = WithTitleThen()
        //: reqModel.requestPath = "live/enter"
        reqModel.requestPath = (str_groupValue.lowercased() + String(str_layerTitle.suffix(8)))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = ["streamerUid": streamerUid]
        reqModel.params = [String(bytes: str_insertName.reversed(), encoding: .utf8)!: streamerUid]

        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_nextTitle.photoLive(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 在线人数
    //: func req_liveRoomOnlineNum(chatGroupId: String, completion: @escaping FinishBlock) {
    func isometricComment(chatGroupId: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = WithTitleThen()
        //: reqModel.requestPath = "live/userNum"
        reqModel.requestPath = (String(str_upGreenName) + String(str_dataTitle))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = ["chatGroupId": chatGroupId]
        reqModel.params = [String(bytes: str_sizeTitle.map{addData(temp: $0)}, encoding: .utf8)!: chatGroupId]

        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_nextTitle.photoLive(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 在线列表
    //: func req_liveRoomOnlineList(chatGroupId: String, completion: @escaping FinishBlock) {
    func permission(chatGroupId: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = WithTitleThen()
        //: reqModel.requestPath = "live/members"
        reqModel.requestPath = (String(str_modelValue) + str_liveTingValue.replacingOccurrences(of: "make", with: "e"))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = ["chatGroupId": chatGroupId]
        reqModel.params = [String(bytes: str_sizeTitle.map{addData(temp: $0)}, encoding: .utf8)!: chatGroupId]

        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_nextTitle.photoLive(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 禁言
    //: func req_liveRoomMute(targetUid: String, duration: String, completion: @escaping FinishBlock) {
    func tabPhone(targetUid: String, duration: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = WithTitleThen()
        //: reqModel.requestPath = "live/mute"
        reqModel.requestPath = (str_appTitle.replacingOccurrences(of: "up", with: "l") + "/mut" + str_tabTitle.lowercased())
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = ["targetUid": targetUid, "duration": duration]
        reqModel.params = [String(bytes: str_timeImageTitle.reversed(), encoding: .utf8)!: targetUid, String(bytes: str_loadButtonData.map{actionMake(control: $0)}, encoding: .utf8)!: duration]

        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_nextTitle.photoLive(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 解禁
    //: func req_liveRoomUnmute(targetUid: String, completion: @escaping FinishBlock) {
    func nameCompletion(targetUid: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = WithTitleThen()
        //: reqModel.requestPath = "live/unmute"
        reqModel.requestPath = (str_dataContent.replacingOccurrences(of: "scale", with: "li") + String(str_tempPicText.prefix(5)) + "mute")
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = ["targetUid": targetUid]
        reqModel.params = [String(bytes: str_timeImageTitle.reversed(), encoding: .utf8)!: targetUid]

        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_nextTitle.photoLive(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }
}
