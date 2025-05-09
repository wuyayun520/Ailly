
//: Declare String Begin

/*: "msgInfo" :*/
fileprivate let str_makeManagerValue:[Character] = ["m","s","g","I","n","f","o"]

/*: "jumps" :*/
fileprivate let str_rowName:[Character] = ["j","u","m","p","s"]

/*: "uid" :*/
fileprivate let str_sharedCornerTitle:[Character] = ["u","i","d"]

/*: "roomId" :*/
fileprivate let str_playName:[UInt8] = [0xf3,0xee,0xee,0xec,0xc8,0xe5]

/*: "msgId" :*/
fileprivate let str_videoName:[UInt8] = [0x53,0x4d,0x59,0x77,0x5a]

private func stormWindow(handle num: UInt8) -> UInt8 {
    return num ^ 62
}

/*: "time" :*/
fileprivate let str_actualData:[UInt8] = [0xe7,0xdc,0xe0,0xd8]

fileprivate func momentRange(digital num: UInt8) -> UInt8 {
    let value = Int(num) + 141
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  NameRawThen.swift
//  AbroadTalking
//
//  Created by young on 2023/4/12.
//

//: import UIKit
import UIKit

//: class TalkingGroupChatManager: NSObject {
class NameRawThen: NSObject {
    //: weak var chatRoomVC: TalkingGroupChatController?
    weak var chatRoomVC: SocialGroupPopRecognizerDelegate?
    //: @objc static let share = TalkingGroupChatManager()
    @objc static let share = NameRawThen()
    //: private override init() {}
    override private init() {}
    //: override func copy() -> Any { return self }
    override func copy() -> Any { return self }
    //: override func mutableCopy() -> Any { return self }
    override func mutableCopy() -> Any { return self }
}

// MARK: - 处理@ 消息

//: extension TalkingGroupChatManager {
extension NameRawThen {
    /// 接收到@ 消息
    /// - Parameters:
    ///   - msg: 腾讯消息体
    ///   - extraInfo: "extra" 数据
    //: func receivedMentionMsg(msg: V2TIMMessage, extraInfo: [AnyHashable: Any]) {
    func actionKey(msg: V2TIMMessage, extraInfo: [AnyHashable: Any]) {
        //: let dict = JSON(extraInfo)
        let dict = JSON(extraInfo)
        //: let jumps = dict["msgInfo"]["jumps"].arrayValue
        let jumps = dict[(String(str_makeManagerValue))][(String(str_rowName))].arrayValue

        // 判断是否有@ 本人
        //: var atMe = false
        var atMe = false
        //: for dict in jumps {
        for dict in jumps {
            //: if dict["uid"].stringValue == EqualThen.share.loginUid {
            if dict[(String(str_sharedCornerTitle))].stringValue == EqualThen.share.loginUid {
                //: atMe = true
                atMe = true
                //: break
                break
            }
        }
        //: guard atMe == true else { return }
        guard atMe == true else { return }

        //: let sendTime = msg.timestamp.timeIntervalSince1970*1000
        let sendTime = msg.timestamp.timeIntervalSince1970 * 1000
        //: if MacroDefine.isGroupChat(msg.groupID) {
        if UserMacroDefine.equalChat(msg.groupID) { // 家族
            //: } else {
        } else { // 公共聊天室
            //: guard let vc = chatRoomVC else { return }
            guard let vc = chatRoomVC else { return }
            //: let dict: [String: Any] = ["roomId": msg.groupID ?? "",
            let dict: [String: Any] = [String(bytes: str_playName.map{$0^129}, encoding: .utf8)!: msg.groupID ?? "",
                                       //: "msgId": msg.msgID ?? "",
                                       String(bytes: str_videoName.map{stormWindow(handle: $0)}, encoding: .utf8)!: msg.msgID ?? "",
                                       //: "time": sendTime]
                                       String(bytes: str_actualData.map{momentRange(digital: $0)}, encoding: .utf8)!: sendTime]
            //: vc.handleMentionMsg(info: dict)
            vc.hit(info: dict)
        }
    }
}
