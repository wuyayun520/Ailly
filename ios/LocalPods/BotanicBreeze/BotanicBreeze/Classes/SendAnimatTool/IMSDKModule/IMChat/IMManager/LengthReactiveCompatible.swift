
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_popName:[UInt8] = [0x76,0x7b,0x76,0x81,0x35,0x70,0x7c,0x71,0x72,0x7f,0x47,0x36,0x2d,0x75,0x6e,0x80,0x2d,0x7b,0x7c,0x81,0x2d,0x6f,0x72,0x72,0x7b,0x2d,0x76,0x7a,0x7d,0x79,0x72,0x7a,0x72,0x7b,0x81,0x72,0x71]

fileprivate func titleSign(label num: UInt8) -> UInt8 {
    let value = Int(num) - 13
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "System notification" :*/
fileprivate let str_mapValue:[Character] = ["S","y","s","t","e","m"," ","n"]
fileprivate let str_successTitle:[Character] = ["o","t","i","f","i","c","a","t","i","o","n"]

/*: "http://static. :*/
fileprivate let str_tableTitle:String = "in false observerhttp://"
fileprivate let str_toStatusData:String = "return level self size tingstatic."

/*: .com/app/img/message/xitong-v2.png" :*/
fileprivate let str_bottomRowValue:[UInt8] = [0x67,0x6e,0x70,0x2e,0x32,0x76,0x2d,0x67,0x6e,0x6f,0x74,0x69,0x78,0x2f,0x65,0x67,0x61,0x73,0x73,0x65,0x6d,0x2f,0x67,0x6d,0x69,0x2f,0x70,0x70,0x61,0x2f,0x6d,0x6f,0x63,0x2e]

/*: "Customer Care Center" :*/
fileprivate let str_areaName:String = "dismiss let end import headCustom"
fileprivate let str_programValue:[Character] = ["a","r","e"," ","C","e","n","t","e","r"]

/*: .com/app/img/message/cs.png" :*/
fileprivate let str_resultGiftName:[Character] = [".","c","o","m","/","a","p","p","/","i","m"]
fileprivate let str_makeListContent:[Character] = ["g","/","m","e","s","s","a","g","e","/","c","s",".","p","n","g"]

/*: "Public Chat Room" :*/
fileprivate let str_allTopData:[Character] = ["P","u","b","l","i","c"," ","C","h","a","t"]
fileprivate let str_roomTitle:String = "type to Room"

/*: "icon_chats_pcr" :*/
fileprivate let str_showContent:[Character] = ["i","c","o","n","_"]
fileprivate let str_addName:String = "chats_pcrin make room"

/*: "New friends" :*/
fileprivate let str_colorData:String = "match count finishNew"
fileprivate let str_viewFemaleValue:String = "style target friends"

/*: "icon_chats_mm" :*/
fileprivate let str_toName:[Character] = ["i","c","o","n","_","c","h","a","t","s","_","m","m"]

/*: " customElem.data is error" :*/
fileprivate let str_targetMainText:String = " cusmode pin back"
fileprivate let str_topData:[Character] = ["t","o","m","E","l","e","m",".","d","a","t","a"," ","i","s"," ","e","r","r","o","r"]

/*: "extra" :*/
fileprivate let str_centerMapData:String = "eframera"

/*: "msgInfo" :*/
fileprivate let str_playerText:[Character] = ["m","s"]
fileprivate let str_viewValue:[Character] = ["g","I","n","f","o"]

/*: "messageType" :*/
fileprivate let str_attachTitle:[Character] = ["m","e","s","s","a","g","e","T","y","p"]
fileprivate let str_modelData:[Character] = ["e"]

/*: "msgType" :*/
fileprivate let str_giftName:String = "to selfmsgTy"
fileprivate let str_videoValue:[Character] = ["p","e"]

/*: "tips" :*/
fileprivate let str_meName:String = "tpops"

/*: "totalIntimate" :*/
fileprivate let str_conversationData:String = "TOTA"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  LengthReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Hemming on 2023/3/9.
//

//: import UIKit
import UIKit

//: public class TalkingConversationModel: NSObject {
public class LengthReactiveCompatible: NSObject {
    //: var type: V2TIMConversationType?
    var type: V2TIMConversationType?
    //: var userID = ""         // 如果会话类型为 C2C 单聊，userID 会存储对方的用户ID，否则为 ni
    var userID = "" // 如果会话类型为 C2C 单聊，userID 会存储对方的用户ID，否则为 ni
    //: var sender = ""         // 消息发送者ID
    var sender = "" // 消息发送者ID
    //: var groupID = ""        // 如果会话类型为群聊，groupID 会存储当前群的群 ID，否则为 nil
    var groupID = "" // 如果会话类型为群聊，groupID 会存储当前群的群 ID，否则为 nil
    //: var groupType = ""      // 如果会话类型为群聊，groupType 为当前群类型
    var groupType = "" // 如果会话类型为群聊，groupType 为当前群类型
    //: var targetId = ""
    var targetId = ""
    //: var conversationID = "" // 会话唯一 ID，C2C 单聊组成方式为 c2c_userID，群聊组成方式为 group_groupID
    var conversationID = "" // 会话唯一 ID，C2C 单聊组成方式为 c2c_userID，群聊组成方式为 group_groupID

    //: var showName = ""
    var showName = ""
    //: var faceUrl = ""
    var faceUrl = ""
    //: var unreadCount: Int = 0
    var unreadCount: Int = 0 // 未读数
    //: var orderKey: Int = 0
    var orderKey: Int = 0 // 排序
    //: var isPinned = false
    var isPinned = false // 是否置顶
    //: var isShowMsgUnread = false
    var isShowMsgUnread = false // 会话中最后一条消息是否未读

    //: var draftText = ""      // 草稿信息
    var draftText = "" // 草稿信息
    //: var draftTimestamp: NSDate?
    var draftTimestamp: NSDate? // 草稿编辑时间，草稿设置的时候自动生成

    //: var onlyOneRoomId = "" // 聊天室ID,如果只有一个聊天室，则返回此字段
    var onlyOneRoomId = "" // 聊天室ID,如果只有一个聊天室，则返回此字段
    //: var num = 0
    var num = 0 // 聊天室当前在线人数

    //: var hasTimestamp = false
    var hasTimestamp = false // swift 解包
    //: var timestamp: NSDate?
    var timestamp: NSDate? // 会话中最后一条消息的时间
    //: var listShowMessage: V2TIMMessage?
    var listShowMessage: V2TIMMessage? // 最后一条消息
    //: var gj_userInfo: SoulCacheModel?
    var gj_userInfo: SoulCacheModel? // 用户信息
    //: var chatType: TalkingIMChatType = .unDefined
    var chatType: TalkingIMChatType = .unDefined
    //: var listOnlineStatus = 0
    var listOnlineStatus = 0 // 记录是否在线;1=在线,0=不在线（自定义字段）
    //: var isNewUser = false
    var isNewUser = false // 表示是否是新用户（自定义字段）
    //: var ismoreAPAuto = false
    var ismoreAPAuto = false // 更多会话认证
    //: var totalIntimate = 0
    var totalIntimate = 0 // 与当前用户的亲密值
    //: var userStatus    = 1
    var userStatus = 1 // 用户状态  1正常2被禁言3被封号5被拉黑

    //: override init() {
    override init() {
        //: super.init()
        super.init()
    }

    //: init(conv: V2TIMConversation) {
    init(conv: V2TIMConversation) {
        //: super.init()
        super.init()
        //: self.type = conv.type
        self.type = conv.type
        //: self.userID     = conv.userID ?? ""
        self.userID = conv.userID ?? ""
        //: self.sender     = conv.lastMessage?.sender ?? ""
        self.sender = conv.lastMessage?.sender ?? ""
        //: self.groupID    = conv.groupID ?? ""
        self.groupID = conv.groupID ?? ""
        //: self.groupType  = conv.groupType ?? ""
        self.groupType = conv.groupType ?? ""
        //: self.targetId   = self.userID.count > 0 ? self.userID:self.groupID
        self.targetId = self.userID.count > 0 ? self.userID : self.groupID
        //: self.conversationID = conv.conversationID
        self.conversationID = conv.conversationID
        //: self.showName = conv.showName
        self.showName = conv.showName
        //: self.faceUrl = conv.faceUrl ?? ""
        self.faceUrl = conv.faceUrl ?? ""
        //: self.unreadCount = Int(conv.unreadCount)
        self.unreadCount = Int(conv.unreadCount)
        //: self.orderKey = Int(conv.orderKey)
        self.orderKey = Int(conv.orderKey)
        //: self.isPinned = conv.isPinned
        self.isPinned = conv.isPinned
        //: if conv.lastMessage?.timestamp != nil {
        if conv.lastMessage?.timestamp != nil {
            //: self.hasTimestamp = true
            self.hasTimestamp = true
            //: self.timestamp = conv.lastMessage?.timestamp as NSDate?
            self.timestamp = conv.lastMessage?.timestamp as NSDate?
        }
        //: self.draftText = conv.draftText ?? ""
        self.draftText = conv.draftText ?? ""
        //: self.isShowMsgUnread = (!(conv.lastMessage?.isSelf ?? true) && conv.unreadCount > 0)
        self.isShowMsgUnread = (!(conv.lastMessage?.isSelf ?? true) && conv.unreadCount > 0)
        //: if conv.type == .C2C {
        if conv.type == .C2C {
            //: self.chatType = .private
            self.chatType = .private
            //: if conv.userID == MacroDefine.getXiaoMiID() {
            if conv.userID == UserMacroDefine.underGet() {
                //: self.chatType = .system
                self.chatType = .system
                //: } else if conv.userID == MacroDefine.getCustomerServiceID() {
            } else if conv.userID == UserMacroDefine.addTap() {
                //: self.chatType = .service
                self.chatType = .service
            }

            //: } else {
        } else {
            //: self.chatType = .group
            self.chatType = .group
        }
        //: if conv.lastMessage != nil {
        if conv.lastMessage != nil {
            //: if self.func__checkMsgCanShow(msg: conv.lastMessage) {
            if self.substituteMsg(msg: conv.lastMessage) {
                //: self.listShowMessage = conv.lastMessage
                self.listShowMessage = conv.lastMessage
            }
        }
        //: if self.listShowMessage != nil {
        if self.listShowMessage != nil {
            //: self.func__updateLastShowMsg()
            self.messageChange()
        }
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_popName.map{titleSign(label: $0)}, encoding: .utf8)!)
    }
}

// MARK: - 获取占位model

//: extension TalkingConversationModel {
extension LengthReactiveCompatible {
    /// 获取占位model
    /// - Parameter chatType: model类型
    /// - Returns: model
    //: class func getPlaceholderModel(chatType: TalkingIMChatType) -> TalkingConversationModel {
    class func userType(chatType: TalkingIMChatType) -> LengthReactiveCompatible {
        //: let model = TalkingConversationModel()
        let model = LengthReactiveCompatible()
        //: model.chatType = chatType
        model.chatType = chatType
        //: if chatType == .system {
        if chatType == .system { // 系统通知
            //: model.userID = MacroDefine.getXiaoMiID()
            model.userID = UserMacroDefine.underGet()
            //: model.targetId = MacroDefine.getXiaoMiID()
            model.targetId = UserMacroDefine.underGet()
            //: model.showName = "System notification".localized
            model.showName = (String(str_mapValue) + String(str_successTitle)).localized
            //: model.faceUrl = "http://static.\(ReplaceUrlDomain).com/app/img/message/xitong-v2.png"
            model.faceUrl = (String(str_tableTitle.suffix(7)) + String(str_toStatusData.suffix(7))) + "\(kLet_deviceName)" + String(bytes: str_bottomRowValue.reversed(), encoding: .utf8)!

            //: } else if chatType == .service {
        } else if chatType == .service { // 官方客服
            //: model.userID = MacroDefine.getCustomerServiceID()
            model.userID = UserMacroDefine.addTap()
            //: model.targetId = MacroDefine.getCustomerServiceID()
            model.targetId = UserMacroDefine.addTap()
            //: model.showName = "Customer Care Center".localized
            model.showName = (String(str_areaName.suffix(6)) + "er C" + String(str_programValue)).localized
            //: model.faceUrl = "http://static.\(ReplaceUrlDomain).com/app/img/message/cs.png"
            model.faceUrl = (String(str_tableTitle.suffix(7)) + String(str_toStatusData.suffix(7))) + "\(kLet_deviceName)" + (String(str_resultGiftName) + String(str_makeListContent))

            //: } else if chatType == .group {
        } else if chatType == .group { // 公共聊天室
            //: model.showName = "Public Chat Room".localized
            model.showName = (String(str_allTopData) + String(str_roomTitle.suffix(5))).localized
            //: model.faceUrl = "icon_chats_pcr"
            model.faceUrl = (String(str_showContent) + String(str_addName.prefix(9)))

            //: } else if chatType == .moreMsg {
        } else if chatType == .moreMsg { // 更多消息
            //: model.showName = "New friends".localized
            model.showName = (String(str_colorData.suffix(3)) + String(str_viewFemaleValue.suffix(8))).localized
            //: model.faceUrl = "icon_chats_mm"
            model.faceUrl = (String(str_toName))
        }

        //: return model
        return model
    }
}

//: extension TalkingConversationModel {
extension LengthReactiveCompatible {
    //: func func__updateLastShowMsg() {
    func messageChange() {
        //: if self.type == .C2C {
        if self.type == .C2C {
            //: V2TIMManager.sharedInstance().getC2CHistoryMessageList(self.userID, count: 10, lastMsg: nil) { msgs in
            V2TIMManager.sharedInstance().getC2CHistoryMessageList(self.userID, count: 10, lastMsg: nil) { msgs in
                //: guard let msgsList: [V2TIMMessage] = msgs  else {
                guard let msgsList: [V2TIMMessage] = msgs else {
                    //: return
                    return
                }
                //: for msg in msgsList {
                for msg in msgsList {
                    //: if self.func__checkMsgCanShow(msg: msg) {
                    if self.substituteMsg(msg: msg) {
                        //: self.listShowMessage = msg
                        self.listShowMessage = msg
                        //: if msg.timestamp != nil {
                        if msg.timestamp != nil {
                            //: self.timestamp = msg.timestamp as NSDate?
                            self.timestamp = msg.timestamp as NSDate?
                            //: self.hasTimestamp = true
                            self.hasTimestamp = true
                        }
                        //: self.isShowMsgUnread = (!msg.isSelf && !msg.isRead)
                        self.isShowMsgUnread = (!msg.isSelf && !msg.isRead)
                        //: break
                        break
                    }
                }
                //: } fail: { code, des in
            } fail: { _, _ in
            }
            //: } else {
        } else {
            //: V2TIMManager.sharedInstance().getGroupHistoryMessageList(self.groupID, count: 10, lastMsg: nil) { msgs in
            V2TIMManager.sharedInstance().getGroupHistoryMessageList(self.groupID, count: 10, lastMsg: nil) { msgs in
                //: guard let msgsList: [V2TIMMessage] = msgs  else {
                guard let msgsList: [V2TIMMessage] = msgs else {
                    //: return
                    return
                }
                //: for msg in msgsList {
                for msg in msgsList {
                    //: if self.func__checkMsgCanShow(msg: msg) {
                    if self.substituteMsg(msg: msg) {
                        //: self.listShowMessage = msg
                        self.listShowMessage = msg
                        //: if msg.timestamp != nil {
                        if msg.timestamp != nil {
                            //: self.timestamp = msg.timestamp as NSDate?
                            self.timestamp = msg.timestamp as NSDate?
                            //: self.hasTimestamp = true
                            self.hasTimestamp = true
                        }
                        //: self.isShowMsgUnread = (!msg.isSelf && !msg.isRead)
                        self.isShowMsgUnread = (!msg.isSelf && !msg.isRead)
                        //: break
                        break
                    }
                }
                //: } fail: { code, des in
            } fail: { _, _ in
            }
        }
    }

    //: func func__checkMsgCanShow(msg: V2TIMMessage) -> Bool {
    func substituteMsg(msg: V2TIMMessage) -> Bool {
        //: guard let extra = String(data: msg.customElem.data, encoding: .utf8) else {
        guard let extra = String(data: msg.customElem.data, encoding: .utf8) else {
            //: printLog(message: " customElem.data is error")
            printLog(message: (String(str_targetMainText.prefix(4)) + String(str_topData)))
            //: return false
            return false
        }
        //: let json = JSON(parseJSON: extra)
        let json = JSON(parseJSON: extra)
        //: let extraDic = json["extra"]
        let extraDic = json[(str_centerMapData.replacingOccurrences(of: "frame", with: "xt"))]
        //: let msgInfo = extraDic["msgInfo"]
        let msgInfo = extraDic[(String(str_playerText) + String(str_viewValue))]
        //: var messageType = extraDic["messageType"].intValue
        var messageType = extraDic[(String(str_attachTitle) + String(str_modelData))].intValue
        //: let msgType = msgInfo["msgType"].stringValue
        let msgType = msgInfo[(String(str_giftName.suffix(5)) + String(str_videoValue))].stringValue
        //: if messageType == 0 {
        if messageType == 0 {
            //: messageType = msgInfo["messageType"].intValue
            messageType = msgInfo[(String(str_attachTitle) + String(str_modelData))].intValue
        }
        //: if (!msgType.isEmptyString && msgType == "tips") || messageType == 15 || messageType == 17 {
        if (!msgType.isEmptyString && msgType == (str_meName.replacingOccurrences(of: "pop", with: "ip"))) || messageType == 15 || messageType == 17 {
            //: return false
            return false
        }
        //: return true
        return true
    }

    //: func func__updateLastConvModel(conv: V2TIMConversation) {
    func entitle(conv: V2TIMConversation) {
        //: self.draftText = conv.draftText ?? ""
        self.draftText = conv.draftText ?? ""
        //: self.orderKey = Int(conv.orderKey)
        self.orderKey = Int(conv.orderKey)
        //: self.unreadCount = Int(conv.unreadCount)
        self.unreadCount = Int(conv.unreadCount)

        //: if conv.lastMessage != nil {
        if conv.lastMessage != nil {
            //: if self.func__checkMsgCanShow(msg: conv.lastMessage) {
            if self.substituteMsg(msg: conv.lastMessage) {
                //: self.listShowMessage = conv.lastMessage
                self.listShowMessage = conv.lastMessage
                //: if conv.lastMessage.timestamp != nil {
                if conv.lastMessage.timestamp != nil {
                    //: self.timestamp = conv.lastMessage.timestamp as NSDate?
                    self.timestamp = conv.lastMessage.timestamp as NSDate?
                    //: self.hasTimestamp = true
                    self.hasTimestamp = true
                }
                //: self.sender = conv.lastMessage.sender
                self.sender = conv.lastMessage.sender
                //: self.isShowMsgUnread = (!conv.lastMessage.isSelf && conv.unreadCount > 0)
                self.isShowMsgUnread = (!conv.lastMessage.isSelf && conv.unreadCount > 0)
                //: self.updateIntimateTool(conv: conv)
                self.stackOf(conv: conv)
                //: } else {
            } else {
                //: self.func__updateLastShowMsg()
                self.messageChange()
            }
        }
    }
}

/// 亲密度
//: extension TalkingConversationModel {
extension LengthReactiveCompatible {
    //: private func updateIntimateTool(conv: V2TIMConversation) {
    private func stackOf(conv: V2TIMConversation) {
        /// 新消息会话变更时，获取亲密度
        //: let data = conv.lastMessage!
        let data = conv.lastMessage!
        //: let dic = TUIMsgChatManager.parseTXMessageData(data: data.customElem.data)
        let dic = TUIMsgChatManager.parseTXMessageData(data: data.customElem.data)
        //: let jsonDic = JSON(dic)
        let jsonDic = JSON(dic)
        //: let extra = jsonDic["extra"].dictionary
        let extra = jsonDic[(str_centerMapData.replacingOccurrences(of: "frame", with: "xt"))].dictionary
        //: let msgInfo = extra?["msgInfo"]?.dictionary
        let msgInfo = extra?[(String(str_playerText) + String(str_viewValue))]?.dictionary
        //: if let totalIntimate = msgInfo?["totalIntimate"]?.int {
        if let totalIntimate = msgInfo?[(str_conversationData.lowercased() + "lIntimate")]?.int {
            //: if let model = PermitReactiveCompatible.cache_getCachedUserInfo(targetId: self.userID) {
            if let model = PermitReactiveCompatible.targetAppear(targetId: self.userID) {
                /// 获取消息为最新时
                //: let time = Int(data.timestamp.timeIntervalSince1970)
                let time = Int(data.timestamp.timeIntervalSince1970)
                //: if time > model.intimateTime {
                if time > model.intimateTime {
                    //: self.totalIntimate = totalIntimate
                    self.totalIntimate = totalIntimate
                    /// 更新
                    //: PermitReactiveCompatible.cache_updateIntimate(with: userID, intimate: totalIntimate, currTime: time)
                    PermitReactiveCompatible.closePlayer(with: userID, intimate: totalIntimate, currTime: time)
                    //: } else {
                } else {
                    //: self.totalIntimate = model.intimate
                    self.totalIntimate = model.intimate
                }
                //: } else {
            } else {
                //: self.totalIntimate = totalIntimate
                self.totalIntimate = totalIntimate
            }
        }
    }
}
