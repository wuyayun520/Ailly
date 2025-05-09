
//: Declare String Begin

/*: "uid" :*/
fileprivate let str_textLeadingTitle:String = "uilive"

/*: "logId" :*/
fileprivate let str_roomData:[Character] = ["l","o","g","I","d"]

/*: "fee" :*/
fileprivate let str_upRowName:String = "withe"

/*: "prompt" :*/
fileprivate let str_equalCanValue:[Character] = ["p","r","o","m","p","t"]

/*: "points" :*/
fileprivate let str_fieldText:String = "contentoints"

/*: "recievedDate" :*/
fileprivate let str_moonData:String = "rcellcicell"

/*: "duration" :*/
fileprivate let str_downTitle:[Character] = ["d","u","r","a","t","i","o","n"]

/*: "toUid" :*/
fileprivate let str_appData:[Character] = ["t","o","U","i","d"]

/*: "fromUid" :*/
fileprivate let str_managerValue:[Character] = ["f","r","o","m","U"]
fileprivate let str_constraintValue:String = "model"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ViewChatModel.swift
//  AbroadTalking
//
//  Created by young on 2022/11/8.
//

//: import UIKit
import UIKit

//: let VIDEO_1v1_CALL_TIMEOUT = 60.0
let kLet_freeName = 60.0 // 拨打方超时时间
//: let VIDEO_1v1_RECIEVED_CALL_TIMEOUT = 60.0
let kLet_errorValue = 60.0 // 接听方超时时间

// MARK: - 自定义model，处理音视频通话

//: class TalkingVideoChatModel {
class ViewChatModel {
    //: var isCaller = false
    var isCaller = false // 是不是通话的发起方
    //: var iUid = ""                // 发起方userId
    var iUid = "" // 发起方userId
    //: var iNickName: String?
    var iNickName: String? // 发起方昵称
    //: var iHeadPic: String?
    var iHeadPic: String? // 发起方头像

    //: var pairUid = ""             // 接收方userId
    var pairUid = "" // 接收方userId
    //: var pairNickName = ""        // 接收方昵称
    var pairNickName = "" // 接收方昵称
    //: var pairHeadPic = ""         // 接收方头像
    var pairHeadPic = "" // 接收方头像
    //: var pairSex = ""             // 接收方性别
    var pairSex = "" // 接收方性别
    //: var pairAge = 0
    var pairAge = 0 // 接收方年龄
    //: var pairBirthday = ""        // 接收方生日
    var pairBirthday = "" // 接收方生日
    //: var videoUrl = ""            // 对方视频地址
    var videoUrl = "" // 对方视频地址
    //: var cover = ""               // 视频封面
    var cover = "" // 视频封面
    //: var location = ""            // 用户活跃国家
    var location = "" // 用户活跃国家
    //: var fee = 0
    var fee = 0 // 女性价格
    //: var feeTips = ""             // 弹窗费用备注内容
    var feeTips = "" // 弹窗费用备注内容
    //: var logId = 0
    var logId = 0 // 聊天房间Id
    //: var points = ""             // 女性积分收益
    var points = "" // 女性积分收益
    //: var videoStage = VideoChatStage.Waiting
    var videoStage = RunChatStage.Waiting // 视频通话状态
    //: var renderPostion = VideoChatRenderPosition.selfOnBg
    var renderPostion = StatusRenderPosition.selfOnBg // 视频渲染画面位置
    //: var resumeTalk = false
    var resumeTalk = false // 是否是重连通话
    //: var recievedReqeustTime: TimeInterval?
    var recievedReqeustTime: TimeInterval? // 接收方时间
    //: var startTime: TimeInterval?
    var startTime: TimeInterval? // 开始时间
    //: var isTalkingNow = false
    var isTalkingNow = false
    //: var prompt = ""                 // VIP折扣提醒（限女性）
    var prompt = "" // VIP折扣提醒（限女性）

    //: required init() {}
    required init() {}
}

//: extension TalkingVideoChatModel {
extension ViewChatModel {
    /// 根据数据，生成音视频通话模型
    /// - Parameters:
    ///   - info: 数据
    ///   - situation: 通话方式
    /// - Returns: 回调
    //: class func getVideoModel(info: [String: Any], situation: VideoChatSituation) -> TalkingVideoChatModel {
    class func sinceInsiderInformationSituation(info: [String: Any], situation: AtPopChatSituation) -> ViewChatModel {
        //: let model = TalkingVideoChatModel()
        let model = ViewChatModel()
        //: model.iUid = EqualThen.share.loginUserMode.userID
        model.iUid = EqualThen.share.loginUserMode.userID
        //: model.iHeadPic = EqualThen.share.loginUserMode.headPic
        model.iHeadPic = EqualThen.share.loginUserMode.headPic
        //: model.iNickName = EqualThen.share.loginUserMode.nickname
        model.iNickName = EqualThen.share.loginUserMode.nickname
        //: let json = JSON(info)
        let json = JSON(info)
        //: model.pairUid = json["uid"].stringValue
        model.pairUid = json[(str_textLeadingTitle.replacingOccurrences(of: "live", with: "d"))].stringValue
        //: model.logId = json["logId"].intValue
        model.logId = json[(String(str_roomData))].intValue
        //: model.fee = json["fee"].intValue
        model.fee = json[(str_upRowName.replacingOccurrences(of: "with", with: "fe"))].intValue
        //: model.prompt = json["prompt"].stringValue
        model.prompt = json[(String(str_equalCanValue))].stringValue
        //: model.points = json["points"].stringValue
        model.points = json[(str_fieldText.replacingOccurrences(of: "content", with: "p"))].stringValue

        //: switch(situation) {
        switch situation {
        //: case .Start:
        case .Start:
            //: model.isCaller = true
            model.isCaller = true
            //: model.videoStage = .Waiting
            model.videoStage = .Waiting

        //: case .Recieved:
        case .Recieved:
            //: model.isCaller = false
            model.isCaller = false
            //: model.videoStage = .Recieved
            model.videoStage = .Recieved
            //: let recievedDate = json["recievedDate"].rawValue as? Date
            let recievedDate = json[(str_moonData.replacingOccurrences(of: "cell", with: "e") + "vedDate")].rawValue as? Date
            //: if recievedDate != nil {
            if recievedDate != nil {
                //: model.recievedReqeustTime = recievedDate?.timeIntervalSince1970
                model.recievedReqeustTime = recievedDate?.timeIntervalSince1970
            }

        //: case .Resume:
        case .Resume:
            //: let duration = json["duration"].intValue
            let duration = json[(String(str_downTitle))].intValue
            //: let interval = Date().timeIntervalSince1970
            let interval = Date().timeIntervalSince1970
            //: let startTalkTime = floor(interval) - Double(duration)
            let startTalkTime = floor(interval) - Double(duration)
            //: let uid = json["toUid"].stringValue
            let uid = json[(String(str_appData))].stringValue
            //: let from = json["fromUid"].stringValue
            let from = json[(String(str_managerValue) + str_constraintValue.replacingOccurrences(of: "model", with: "id"))].stringValue
            //: model.isTalkingNow = true
            model.isTalkingNow = true
            //: model.resumeTalk = true
            model.resumeTalk = true
            //: model.startTime = startTalkTime
            model.startTime = startTalkTime
            //: model.isCaller = (model.iUid == from) ? true:false
            model.isCaller = (model.iUid == from) ? true : false
            //: model.pairUid = model.isCaller == true ? uid : from
            model.pairUid = model.isCaller == true ? uid : from
            //: model.videoStage = .Calling
            model.videoStage = .Calling

        //: case .Accept:
        case .Accept:
            //: model.isCaller = false
            model.isCaller = false
            //: model.videoStage = .Calling
            model.videoStage = .Calling

        //: case .Calling:
        case .Calling:
            //: model.isCaller = true
            model.isCaller = true
            //: model.videoStage = .Calling
            model.videoStage = .Calling
        }

        //: return model
        return model
    }

    /// 获取剩余应答时间
    /// - Returns: 时间（秒）
    //: func remainAnswerCallTime() -> TimeInterval {
    func rest() -> TimeInterval {
        //: if self.isCaller {
        if self.isCaller {
            //: return 0
            return 0
        }

        //: if self.recievedReqeustTime == nil {
        if self.recievedReqeustTime == nil {
            //: return VIDEO_1v1_RECIEVED_CALL_TIMEOUT
            return kLet_errorValue
        }

        //: let date = Date()
        let date = Date()
        //: let currentInterval = date.timeIntervalSince1970
        let currentInterval = date.timeIntervalSince1970
        //: let remainTime = self.recievedReqeustTime! + VIDEO_1v1_RECIEVED_CALL_TIMEOUT - currentInterval
        let remainTime = self.recievedReqeustTime! + kLet_errorValue - currentInterval
        //: return remainTime
        return remainTime
    }
}
