
//: Declare String Begin

/*: "call/sendMsg" :*/
fileprivate let str_showFrameModelValue:[Character] = ["c","a","l","l","/","s","e","n","d","M","s","g"]

/*: "logId" :*/
fileprivate let str_rangeTitle:String = "logIdmake attribute"

/*: "content" :*/
fileprivate let str_makeData:[Character] = ["c","o","n","t","e","n"]
fileprivate let str_contentText:[Character] = ["t"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  TextDanmuManager.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/7/7.
//

//: import UIKit
import UIKit

//: protocol TalkingVideoDanmuManagerDelegate: NSObject {
protocol CaptureReactiveCompatible: NSObject {
    /// 弹幕消息
    //: func func__DanmuRecvNewModel(Msg: TalkingVideoCallDanmuModel)
    func radicalUp(Msg: WithDanmuModel)
}

//: class TalkingVideoDanmuManager: NSObject {
class TextDanmuManager: NSObject {
    //: private var maxJoinRoom = 1
    private var maxJoinRoom = 1 // 重试加入弹幕房间次数

    //: private static var _instance: TalkingVideoDanmuManager?
    private static var _instance: TextDanmuManager? // singleton

    //: open weak var delegate: TalkingVideoDanmuManagerDelegate?
    open weak var delegate: CaptureReactiveCompatible?

    //: override func copy() -> Any { return self }
    override func copy() -> Any { return self }
    //: override func mutableCopy() -> Any { return self }
    override func mutableCopy() -> Any { return self }
    //: private override init() {}
    override private init() {}
    //: class func shared() -> TalkingVideoDanmuManager {
    class func averageCost() -> TextDanmuManager {
        //: guard _instance != nil else {
        guard _instance != nil else {
            //: _instance = TalkingVideoDanmuManager()
            _instance = TextDanmuManager()
            //: return _instance!
            return _instance!
        }
        //: return _instance!
        return _instance!
    }
}

// MARK: - 展示消息通知

//: extension TalkingVideoDanmuManager {
extension TextDanmuManager {
    /// 处理接收到的弹幕消息，展示
    /// - Parameters:
    ///   - msg:
    //: func onRecvDanmuNewMsg(msg: [String: Any]) {
    func radical(msg: [String: Any]) {
        //: if var model = TalkingVideoCallDanmuModel.deserialize(from: msg) {
        if var model = WithDanmuModel.deserialize(from: msg) {
            //: let celldata = TalkingVideoCallDammuCellData.init()
            let celldata = NameMakeReactiveCompatible()
            //: model = celldata.caculateMsgHeight(model: model)
            model = celldata.taskMake(model: model)
            //: self.delegate?.func__DanmuRecvNewModel(Msg: model)
            self.delegate?.radicalUp(Msg: model)
        }
    }

    /// 发送文本弹幕消息
    /// - Parameters:
    ///   - logId: 当前通话id
    ///   - content: 消息内容
    ///   - completion: 回调

    //: class func uploadToTextMsg(logId: String, content: String, completion: FinishBlock? = nil) {
    class func dismissReason(logId: String, content: String, completion: FinishBlock? = nil) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = WithTitleThen()
        //: reqModel.requestPath = "call/sendMsg"
        reqModel.requestPath = (String(str_showFrameModelValue))
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["logId"] = logId
        dict[(String(str_rangeTitle.prefix(5)))] = logId
        //: dict["content"] = content
        dict[(String(str_makeData) + String(str_contentText))] = content
        //: reqModel.params = dict
        reqModel.params = dict
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_nextTitle.photoLive(model: reqModel) { succeed, result, errorModel in
            //: completion?(succeed, result, errorModel)
            completion?(succeed, result, errorModel)
        }
    }
}

//: extension TalkingVideoDanmuManager {
extension TextDanmuManager {
    /// 释放单利
    //: class func danmu_releaseAllResource() {
    class func resource() {
        //: if TalkingVideoDanmuManager._instance != nil {
        if TextDanmuManager._instance != nil {
            //: TalkingVideoDanmuManager._instance = nil
            TextDanmuManager._instance = nil
        }
    }
}
