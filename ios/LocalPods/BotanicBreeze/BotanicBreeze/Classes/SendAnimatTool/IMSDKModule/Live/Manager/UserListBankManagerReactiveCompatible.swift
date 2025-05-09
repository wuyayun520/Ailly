
//: Declare String Begin

/*: " customElem.data is error" :*/
fileprivate let str_lineLastData:String = "name title push view self cus"
fileprivate let str_pageData:[Character] = ["m",".","d","a","t","a"," ","i","s"," ","e","r","r","o","r"]

/*: "extra" :*/
fileprivate let str_lidSizeTitle:String = "extrkind"

/*: "MF:PartyChatSysMsg" :*/
fileprivate let str_modelToUserData:String = "MF:Pconversation return view private input"
fileprivate let str_upData:String = "background user block plainChatSys"
fileprivate let str_keyText:[Character] = ["M","s","g"]

/*: "opType" :*/
fileprivate let str_sizeName:String = "opTypeinside key manager button"

/*: "roomLogout" :*/
fileprivate let str_textData:String = "detailoom"
fileprivate let str_deadlineTitle:String = "ureplace"

/*: "MF:PartyChatWelMsg" :*/
fileprivate let str_titleData:[Character] = ["M","F",":","P","a","r","t","y","C","h","a","t","W","e","l","M","s","g"]

/*: "startLive" :*/
fileprivate let str_valueText:String = "startLivecontainer index hide"

/*: "floatingScreen" :*/
fileprivate let str_rawValue:[UInt8] = [0xcd,0xc7,0xc4,0xca,0xdf,0xc2,0xc5,0xcc,0xf8,0xc8,0xd9,0xce,0xce,0xc5]

private func messageRegular(selected num: UInt8) -> UInt8 {
    return num ^ 171
}

/*: "mute" :*/
fileprivate let str_angleName:String = "mheadte"

/*: "uid" :*/
fileprivate let str_roomColorData:String = "homeid"

/*: "expireAt" :*/
fileprivate let str_themeMainValue:[Character] = ["e","x","p","i","r"]
fileprivate let str_contentResignName:[Character] = ["e","A","t"]

/*: "unmute" :*/
fileprivate let str_confirmText:String = "namenmnamete"

/*: "MF:LiveChatGiftMsg" :*/
fileprivate let str_activeValue:[Character] = ["M","F",":","L","i","v"]
fileprivate let str_imageToData:[Character] = ["e","C","h","a","t"]
fileprivate let str_pathData:String = "GiftMsgrequest min try need"

/*: "MF:PartyChatGiftMsg" :*/
fileprivate let str_translateData:String = "MF:Parin not"
fileprivate let str_equalData:String = "normal cell extension leveliftMsg"

/*: "gift" :*/
fileprivate let str_messageValue:String = "gifrow"

/*: "id" :*/
fileprivate let str_coverText:[Character] = ["i","d"]

/*: "imgPreview" :*/
fileprivate let str_halfValue:[Character] = ["i","m","g","P","r","e"]
fileprivate let str_requestMakeContent:String = "vieroom"

/*: "name" :*/
fileprivate let str_tapValue:String = "nampic"

/*: "num" :*/
fileprivate let str_hostClearTitle:String = "lineum"

/*: "mfBean" :*/
fileprivate let str_sexValue:[UInt8] = [0x8,0x1,0xdd,0x0,0xfc,0x9]

fileprivate func leadingApp(please num: UInt8) -> UInt8 {
    let value = Int(num) - 155
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "MF:LiveChatPrizeMsg" :*/
fileprivate let str_birthData:String = "MF:Livbutton to none background by"
fileprivate let str_partyTitle:String = "izeMsgview equal status"

/*: "<at>@[\\S\\s]+?</at>" :*/
fileprivate let str_objectValue:String = "<at>up player"
fileprivate let str_upValue:String = "true no bottoms]+?</at>"

/*: "加入弹幕房间" :*/
fileprivate let str_priorityName:String = "\u{52a0}入弹幕房"
fileprivate let str_voiceDateValue:String = "间"

/*: "Failed to enter the chat room. Please try again later" :*/
fileprivate let str_intervalTitle:[UInt8] = [0x72,0x65,0x74,0x61,0x6c,0x20,0x6e,0x69,0x61,0x67,0x61,0x20,0x79,0x72,0x74,0x20,0x65,0x73,0x61,0x65,0x6c,0x50,0x20,0x2e,0x6d,0x6f,0x6f,0x72,0x20,0x74,0x61,0x68,0x63,0x20,0x65,0x68,0x74,0x20,0x72,0x65,0x74,0x6e,0x65,0x20,0x6f,0x74,0x20,0x64,0x65,0x6c,0x69,0x61,0x46]

/*: "live/sendMsg" :*/
fileprivate let str_sizeTitle:String = "live/selet day model capture level"
fileprivate let str_addClearReplyValue:String = "ndMsgmodel voice video self"

/*: "groupId" :*/
fileprivate let str_makeName:[Character] = ["g","r","o","u","p","I"]
fileprivate let str_pathValue:String = "D"

/*: "message" :*/
fileprivate let str_valueBackgroundText:[Character] = ["m","e","s","s","a","g","e"]

/*: "toUid" :*/
fileprivate let str_cookieData:String = "toUidroom nearby icon"

/*: "party/sendMsg" :*/
fileprivate let str_genderTitle:[Character] = ["p","a","r","t"]
fileprivate let str_resultTitle:[Character] = ["y","/","s","e","n","d","M","s","g"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  UserListBankManagerReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/7/7.
//

//: import UIKit
import UIKit

//: protocol TalkingDanmuManagerDelegate: NSObject {
protocol UpManagerDelegate: NSObject {
    /// 弹幕消息
    //: func func__DanmuRecvNewModel(Msg: TalkingLiveRoomDanmuModel)
    func modelTo(Msg: ModeDanmuModel)
    /// 礼物动效
    //: func func__giftRecvNewModel(Msg: TalkingLiveRoomDanmuModel)
    func handleOpen(Msg: ModeDanmuModel)

    //: func func__actionUserNewModel(pushUid: String?)
    func unused(pushUid: String?)

    //: func func__longTouchUserNewModel(nickName: String, atUid: String?)
    func readOut(nickName: String, atUid: String?)
    // 用户进入房间
    //: func func__userLogin()
    func bottomLogin()
    // 用户退出房间
    //: func func__userLogout()
    func ask()
}

//: class TalkingDanmuManager: NSObject {
class UserListBankManagerReactiveCompatible: NSObject {
    //: private var maxJoinRoom = 1
    private var maxJoinRoom = 1 // 重试加入弹幕房间次数
    //: private static var _instance: TalkingDanmuManager?
    private static var _instance: UserListBankManagerReactiveCompatible? // singleton
    //: open weak var delegate: TalkingDanmuManagerDelegate?
    open weak var delegate: UpManagerDelegate?

    //: override private init() {}
    override private init() {}
    //: class func shared() -> TalkingDanmuManager {
    class func willSize() -> UserListBankManagerReactiveCompatible {
        //: guard _instance != nil else {
        guard _instance != nil else {
            //: _instance = TalkingDanmuManager()
            _instance = UserListBankManagerReactiveCompatible()
            //: return _instance!
            return _instance!
        }
        //: return _instance!
        return _instance!
    }
}

// MARK: - 展示消息通知

//: extension TalkingDanmuManager {
extension UserListBankManagerReactiveCompatible {
    /// 公告消息
    //: func showAnnouncementMsg(str: String) {
    func demonstrateStr(str: String) {
        //: var model = TalkingLiveRoomDanmuModel()
        var model = ModeDanmuModel()
        //: var msgInfo = TalkingDanmuMsgInfo()
        var msgInfo = KeyTransformable()
        //: msgInfo.messageType = 1
        msgInfo.messageType = 1 /// (公告算是特殊的文本消息)
        //: msgInfo.content = str
        msgInfo.content = str
        //: model.msgInfo = msgInfo
        model.msgInfo = msgInfo
        //: let celldata = TalkingLiveRoomDammuCellData()
        let celldata = TextCellData()
        //: model = celldata.showAnnouncementMsg(model: model)
        model = celldata.labView(model: model)
        //: delegate?.func__DanmuRecvNewModel(Msg: model)
        delegate?.modelTo(Msg: model)
    }

    /// 处理接收到的弹幕消息，展示
    /// - Parameters:
    ///   - msg: V2TIMMessage
    //: func onRecvDanmuNewMsg(msg: V2TIMMessage) {
    func appConstraint(msg: V2TIMMessage) {
        //: guard let extra = String(data: msg.customElem.data, encoding: .utf8) else {
        guard let extra = String(data: msg.customElem.data, encoding: .utf8) else {
            //: printLog(message: " customElem.data is error")
            printLog(message: (String(str_lineLastData.suffix(4)) + "tomEle" + String(str_pageData)))
            //: return
            return
        }
        //: let jsonData: Data = extra.data(using: .utf8)!
        let jsonData: Data = extra.data(using: .utf8)!
        //: let dict = try? JSONSerialization.jsonObject(with: jsonData, options: .mutableContainers) as? NSDictionary
        let dict = try? JSONSerialization.jsonObject(with: jsonData, options: .mutableContainers) as? NSDictionary
        //: let extraDic = dict?["extra"] as? [String: Any]
        let extraDic = dict?[(str_lidSizeTitle.replacingOccurrences(of: "kind", with: "a"))] as? [String: Any]
        //: let ext = msg.customElem.extension
        let ext = msg.customElem.extension

        //: if ext == "MF:PartyChatSysMsg", extraDic?["opType"] as? String == "roomLogout" { // 语聊房退房操作
        if ext == (String(str_modelToUserData.prefix(4)) + "arty" + String(str_upData.suffix(7)) + String(str_keyText)), extraDic?[(String(str_sizeName.prefix(6)))] as? String == (str_textData.replacingOccurrences(of: "detail", with: "r") + "Logo" + str_deadlineTitle.replacingOccurrences(of: "replace", with: "t")) { // 语聊房退房操作
            //: self.delegate?.func__userLogout()
            self.delegate?.ask()
            //: return
            return

                    //: } else if ext == "MF:PartyChatWelMsg" { // 语聊房进入欢迎消息
        } else if ext == (String(str_titleData)) { // 语聊房进入欢迎消息
            //: self.delegate?.func__userLogin()
            self.delegate?.bottomLogin()

            //: } else if let opType = extraDic?["opType"], opType as? String == "startLive" {
        } else if let opType = extraDic?[(String(str_sizeName.prefix(6)))], opType as? String == (String(str_valueText.prefix(9))) {
            //: NotificationCenter.default.post(name: LIVE_RECIVE_STARTLIVE_NOTIFICATION, object: nil)
            NotificationCenter.default.post(name: kLet_licenseData, object: nil)
            //: return
            return

                    //: } else if let opType = extraDic?["opType"], opType as? String == "floatingScreen" { // 飘屏
        } else if let opType = extraDic?[(String(str_sizeName.prefix(6)))], opType as? String == String(bytes: str_rawValue.map{messageRegular(selected: $0)}, encoding: .utf8)! { // 飘屏
            //: if let dict = extraDic?["floatingScreen"] {
            if let dict = extraDic?[String(bytes: str_rawValue.map{messageRegular(selected: $0)}, encoding: .utf8)!] {
                //: NotificationCenter.default.post(name: LIVE_RECIVE_FLOATSCREEN_NOTIFICATION, object: nil, userInfo: ["floatingScreen": dict])
                NotificationCenter.default.post(name: kLet_messageBottomTitle, object: nil, userInfo: [String(bytes: str_rawValue.map{messageRegular(selected: $0)}, encoding: .utf8)!: dict])
            }
            //: return
            return

                    //: } else if let opType = extraDic?["opType"], opType as? String == "mute" { // 禁言
        } else if let opType = extraDic?[(String(str_sizeName.prefix(6)))], opType as? String == (str_angleName.replacingOccurrences(of: "head", with: "u")) { // 禁言
            //: if let uid = extraDic?["uid"] as? Int {
            if let uid = extraDic?[(str_roomColorData.replacingOccurrences(of: "home", with: "u"))] as? Int {
                //: if EqualThen.share.loginUserMode.userID == "\(uid)" {
                if EqualThen.share.loginUserMode.userID == "\(uid)" {
                    //: if ext == "MF:PartyChatSysMsg" { // 语聊房
                    if ext == (String(str_modelToUserData.prefix(4)) + "arty" + String(str_upData.suffix(7)) + String(str_keyText)) { // 语聊房
                        //: TalkingVoiceRoomManager.shared().partyModel.muteExpireAt = extraDic?["expireAt"] as? Int ?? 0
                        ViewRoomManager.astatine().partyModel.muteExpireAt = extraDic?[(String(str_themeMainValue) + String(str_contentResignName))] as? Int ?? 0
                        //: }else {
                    } else {
                        //: TalkingLiveManager.shared().liveRoomModel.muteExpireAt = extraDic?["expireAt"] as? Int ?? 0
                        UserPushListener.sexApp().liveRoomModel.muteExpireAt = extraDic?[(String(str_themeMainValue) + String(str_contentResignName))] as? Int ?? 0
                    }
                }
            }
            //: return
            return

                    //: } else if let opType = extraDic?["opType"], opType as? String == "unmute" { // 解禁
        } else if let opType = extraDic?[(String(str_sizeName.prefix(6)))], opType as? String == (str_confirmText.replacingOccurrences(of: "name", with: "u")) { // 解禁
            //: if let uid = extraDic?["uid"] as? Int {
            if let uid = extraDic?[(str_roomColorData.replacingOccurrences(of: "home", with: "u"))] as? Int {
                //: if EqualThen.share.loginUserMode.userID == "\(uid)" {
                if EqualThen.share.loginUserMode.userID == "\(uid)" {
                    //: if EqualThen.share.loginUserMode.userID == "\(uid)" {
                    if EqualThen.share.loginUserMode.userID == "\(uid)" {
                        //: if ext == "MF:PartyChatSysMsg" { // 语聊房
                        if ext == (String(str_modelToUserData.prefix(4)) + "arty" + String(str_upData.suffix(7)) + String(str_keyText)) { // 语聊房
                            //: TalkingVoiceRoomManager.shared().partyModel.muteExpireAt = 0
                            ViewRoomManager.astatine().partyModel.muteExpireAt = 0
                            //: }else {
                        } else {
                            //: TalkingLiveManager.shared().liveRoomModel.muteExpireAt = 0
                            UserPushListener.sexApp().liveRoomModel.muteExpireAt = 0
                        }
                    }
                }
            }
            //: return
            return
        }

        //: if var model = TalkingLiveRoomDanmuModel.deserialize(from: extraDic as? Dictionary) {
        if var model = ModeDanmuModel.deserialize(from: extraDic as? Dictionary) {
            //: model.MsgExtension = msg.customElem.extension
            model.MsgExtension = msg.customElem.extension

            //: if model.msgInfo?.messageType == 3, model.MsgExtension == "MF:LiveChatGiftMsg" || model.MsgExtension == "MF:PartyChatGiftMsg" {
            if model.msgInfo?.messageType == 3, model.MsgExtension == (String(str_activeValue) + String(str_imageToData) + String(str_pathData.prefix(7))) || model.MsgExtension == (String(str_translateData.prefix(6)) + "tyChatG" + String(str_equalData.suffix(6))) {
                //: let dic: Dictionary? = extraDic?["gift"] as? [String: Any]
                let dic: Dictionary? = extraDic?[(str_messageValue.replacingOccurrences(of: "row", with: "t"))] as? [String: Any]
                //: if dic == nil {
                if dic == nil {
                    //: return
                    return
                }
                //: model.gift?.fromUid = model.user?.uid ?? 0
                model.gift?.fromUid = model.user?.uid ?? 0
                //: model.gift?.fromNickname = model.user?.nickname ?? ""
                model.gift?.fromNickname = model.user?.nickname ?? ""
                //: model.gift?.fromHeadPic = model.user?.headPic ?? ""
                model.gift?.fromHeadPic = model.user?.headPic ?? ""
                //: model.gift?.pid = Int(dic?["id"] as! String)
                model.gift?.pid = Int(dic?["id"] as! String)
                //: model.gift?.giftPic = dic?["imgPreview"] as? String ?? ""
                model.gift?.giftPic = dic?[(String(str_halfValue) + str_requestMakeContent.replacingOccurrences(of: "room", with: "w"))] as? String ?? ""
                //: model.gift?.pname = dic?["name"] as! String
                model.gift?.pname = dic?[(str_tapValue.replacingOccurrences(of: "pic", with: "e"))] as! String
                //: if model.gift?.animationTimes ?? 0 <= 0 {
                if model.gift?.animationTimes ?? 0 <= 0 {
                    //: model.gift?.animationTimes = dic?["num"] as? Int ?? 0
                    model.gift?.animationTimes = dic?[(str_hostClearTitle.replacingOccurrences(of: "line", with: "n"))] as? Int ?? 0
                }

                //: if TalkingLiveManager.shared().liveRoomModel.roomId.count > 0 {
                if UserPushListener.sexApp().liveRoomModel.roomId.count > 0 { // 直播间弹幕礼物(包含男性用户)
                    //: if TalkingLiveManager.shared().config.isSmallMode {
                    if UserPushListener.sexApp().config.isSmallMode {
                        //: AbTalkingPrivateChatAnimatTool.shared.disposeReceiveLiveRoomGiftMsg(giftMessageDic: dict! as NSDictionary)
                        SendAnimatTool.shared.miscue(giftMessageDic: dict! as NSDictionary)
                        //: } else {
                    } else {
                        //: delegate?.func__giftRecvNewModel(Msg: model)
                        delegate?.handleOpen(Msg: model)
                    }

                    //: } else if TalkingVoiceRoomManager.shared().isParty && model.gift?.isDisplay == true {
                } else if ViewRoomManager.astatine().isParty, model.gift?.isDisplay == true { // 语聊房弹幕礼物
                    //: if TalkingVoiceRoomManager.shared().isSmallMode {
                    if ViewRoomManager.astatine().isSmallMode {
                        //: AbTalkingPrivateChatAnimatTool.shared.disposeReceiveLiveRoomGiftMsg(giftMessageDic: dict! as NSDictionary)
                        SendAnimatTool.shared.miscue(giftMessageDic: dict! as NSDictionary)
                        //: } else {
                    } else {
                        //: delegate?.func__giftRecvNewModel(Msg: model)
                        delegate?.handleOpen(Msg: model)
                    }
                }

                //: let mfBean = model.msgInfo?.mfBean
                let mfBean = model.msgInfo?.mfBean
                //: NotificationCenter.default.post(name: LIVE_USER_POINT_CHANGE, object: nil, userInfo: ["mfBean": mfBean ?? 0.0])
                NotificationCenter.default.post(name: kLet_statusText, object: nil, userInfo: [String(bytes: str_sexValue.map{leadingApp(please: $0)}, encoding: .utf8)!: mfBean ?? 0.0])

                //: if model.gift?.giftPic.count ?? 0 > 0 {
                if model.gift?.giftPic.count ?? 0 > 0 {
                    //: if let newStr = model.gift?.giftPic.replacingOccurrences(of: UrlDomin.urlAes256Decrypt(), with: ReplaceUrlDomain) {
                    if let newStr = model.gift?.giftPic.replacingOccurrences(of: UrlDomin.urlAes256Decrypt(), with: kLet_deviceName) {
                        //: URLSession.shared.dataTask(with: URL(string: newStr)!) { data, _, error in
                        URLSession.shared.dataTask(with: URL(string: newStr)!) { data, _, error in
                            //: DispatchQueue.main.async {
                            DispatchQueue.main.async {
                                //: guard let data = data, error == nil, let image = UIImage(data: data) else {
                                guard let data = data, error == nil, let image = UIImage(data: data) else {
                                    //: self.setLiveRoomDammuCellData(danmuModel: model)
                                    self.enableConstraint(danmuModel: model)
                                    //: return
                                    return
                                }
                                //: model.gift?.giftImg = image
                                model.gift?.giftImg = image
                                //: self.setLiveRoomDammuCellData(danmuModel: model)
                                self.enableConstraint(danmuModel: model)
                            }
                            //: }.resume()
                        }.resume()
                    }
                }
                //: return
                return
            }
            //: if EqualThen.share.appStatus == AppSkinStatus.special.rawValue, model.MsgExtension == "MF:LiveChatPrizeMsg" {
            if EqualThen.share.appStatus == PhaseOfTheMoonPropertyProtocol.special.rawValue, model.MsgExtension == (String(str_birthData.prefix(6)) + "eChatPr" + String(str_partyTitle.prefix(6))) {
                //: return
                return
            }

            //: setLiveRoomDammuCellData(danmuModel: model)
            enableConstraint(danmuModel: model)
        }
    }

    //: private func setLiveRoomDammuCellData(danmuModel: TalkingLiveRoomDanmuModel) {
    private func enableConstraint(danmuModel: ModeDanmuModel) {
        //: var model = danmuModel
        var model = danmuModel
        //: let celldata = TalkingLiveRoomDammuCellData()
        let celldata = TextCellData()
        //: model = celldata.caculateMsgHeight(model: model)
        model = celldata.can(model: model)
        //: celldata.actionUserBlock = { [weak self] atUid in
        celldata.actionUserBlock = { [weak self] atUid in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.delegate?.func__actionUserNewModel(pushUid: atUid)
            self.delegate?.unused(pushUid: atUid)
        }
        //: celldata.longUserBlock = { [weak self] atUid in
        celldata.longUserBlock = { [weak self] atUid in
            //: guard let self = self else { return }
            guard let self = self else { return }

            //: var uid = String(model.user?.uid ?? 0)
            var uid = String(model.user?.uid ?? 0)
            //: var name = model.user?.nickname ?? ""
            var name = model.user?.nickname ?? ""
            //: if atUid != nil, model.msgInfo?.jumps.count ?? 0 > 0, atUid != EqualThen.share.loginUserMode.userID, atUid != String(model.user?.uid ?? 0) {
            if atUid != nil, model.msgInfo?.jumps.count ?? 0 > 0, atUid != EqualThen.share.loginUserMode.userID, atUid != String(model.user?.uid ?? 0) {
                //: uid = atUid!
                uid = atUid!
                //: let text = model.msgInfo?.content ?? ""
                let text = model.msgInfo?.content ?? ""
                //: let regex = try! NSRegularExpression(pattern: "<at>@[\\S\\s]+?</at>", options: [])
                let regex = try! NSRegularExpression(pattern: (String(str_objectValue.prefix(4)) + "@[\\S\\" + String(str_upValue.suffix(9))), options: [])
                //: let result = regex.matches(in: text, options: [], range: NSRange(location: 0, length: text.utf16.count))
                let result = regex.matches(in: text, options: [], range: NSRange(location: 0, length: text.utf16.count))
                //: let matchRange = result.first?.range
                let matchRange = result.first?.range
                //: if matchRange?.length ?? 0 > 10 {
                if matchRange?.length ?? 0 > 10 {
                    //: let subStr = String.substringByUnicodeIndex(str: text, from: (matchRange?.location ?? 0) + 5, to: (matchRange?.length ?? 0) - 5)
                    let subStr = String.substringByUnicodeIndex(str: text, from: (matchRange?.location ?? 0) + 5, to: (matchRange?.length ?? 0) - 5)
                    //: name = subStr
                    name = subStr
                }
            }

            //: self.delegate?.func__longTouchUserNewModel(nickName: name, atUid: uid)
            self.delegate?.readOut(nickName: name, atUid: uid)
        }

        //: delegate?.func__DanmuRecvNewModel(Msg: model)
        delegate?.modelTo(Msg: model)
    }
}

//: extension TalkingDanmuManager {
extension UserListBankManagerReactiveCompatible {
    /// 释放单利
    //: class func danmu_releaseAllResource() {
    class func command() {
        //: if TalkingDanmuManager._instance != nil {
        if UserListBankManagerReactiveCompatible._instance != nil {
            //: TalkingDanmuManager._instance = nil
            UserListBankManagerReactiveCompatible._instance = nil
        }
    }

    /// 加入直播弹幕
    //: class func joinLiveRoomDanmu(groupId: String, announcementMsg: String, completion: ((_ succeed: Bool) -> Void)? = nil) {
    class func pathCell(groupId: String, announcementMsg: String, completion: ((_ succeed: Bool) -> Void)? = nil) {
        //: V2TIMManager.sharedInstance().joinGroup(groupId, msg: nil) {
        V2TIMManager.sharedInstance().joinGroup(groupId, msg: nil) {
            //: printLog(message: "加入弹幕房间")
            printLog(message: (str_priorityName + str_voiceDateValue.capitalized))
            //: if announcementMsg.count > 0 {
            if announcementMsg.count > 0 {
                //: TalkingDanmuManager.shared().showAnnouncementMsg(str: announcementMsg)
                UserListBankManagerReactiveCompatible.willSize().demonstrateStr(str: announcementMsg)
            }
            //: completion?(true)
            completion?(true)

            //: } fail: { _, _ in
        } fail: { _, _ in
            //: if TalkingDanmuManager.shared().maxJoinRoom == 1 {
            if UserListBankManagerReactiveCompatible.willSize().maxJoinRoom == 1 {
                //: TalkingDanmuManager.shared().maxJoinRoom = 0
                UserListBankManagerReactiveCompatible.willSize().maxJoinRoom = 0
                //: joinLiveRoomDanmu(groupId: groupId, announcementMsg: "")
                pathCell(groupId: groupId, announcementMsg: "")
                //: } else {
            } else {
                //: TalkingDanmuManager.shared().func__showStatusBarErrorMsg(showMsg: "Failed to enter the chat room. Please try again later".localized)
                UserListBankManagerReactiveCompatible.willSize().oversight(showMsg: String(bytes: str_intervalTitle.reversed(), encoding: .utf8)!.localized)
            }
            //: completion?(false)
            completion?(false)
        }
    }

    /// 退出群聊弹幕
    //: class func qiutGroupDanmu(groupId: String, completion: ((_ succeed: Bool) -> Void)? = nil) {
    class func someAction(groupId: String, completion: ((_ succeed: Bool) -> Void)? = nil) {
        //: V2TIMManager.sharedInstance().quitGroup(groupId, succ: {
        V2TIMManager.sharedInstance().quitGroup(groupId, succ: {
            //: completion?(true)
            completion?(true)
            //: }, fail: { _, _ in
        }, fail: { _, _ in
            //: completion?(false)
            completion?(false)
            //: })
        })
    }
}

// MARK: - 发送接口

//: extension TalkingDanmuManager {
extension UserListBankManagerReactiveCompatible {
    /// 发送文本弹幕消息
    /// - Parameters:
    ///   - groupId: 弹幕群组id
    ///   - message: 消息内容
    ///   - toUid:   @用户的uid
    ///   - completion: 回调
    //: class func uploadToTextMsg(groupId: String, message: String, toUid: String? = "", completion: FinishBlock? = nil) {
    class func toCurrent(groupId: String, message: String, toUid: String? = "", completion: FinishBlock? = nil) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = WithTitleThen()
        //: reqModel.requestPath = "live/sendMsg"
        reqModel.requestPath = (String(str_sizeTitle.prefix(7)) + String(str_addClearReplyValue.prefix(5)))
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: var dict = [String: Any]()
        var dict = [String: Any]()
        //: dict["groupId"] = groupId
        dict[(String(str_makeName) + str_pathValue.lowercased())] = groupId
        //: dict["message"] = message
        dict[(String(str_valueBackgroundText))] = message
        //: if toUid?.count ?? 0 > 0 {
        if toUid?.count ?? 0 > 0 {
            //: dict["toUid"] = toUid
            dict[(String(str_cookieData.prefix(5)))] = toUid
        }
        //: reqModel.params = dict
        reqModel.params = dict
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_nextTitle.photoLive(model: reqModel) { succeed, result, errorModel in
            //: completion?(succeed, result, errorModel)
            completion?(succeed, result, errorModel)
        }
    }

    /// 语聊房发送文本弹幕消息
    /// - Parameters:
    ///   - groupId: 弹幕群组id
    ///   - message: 消息内容
    ///   - toUid:   @用户的uid
    ///   - completion: 回调
    //: class func voiceRoomSendTextMsg(groupId: String, message: String, toUid: String? = "", completion: FinishBlock? = nil) {
    class func sendView(groupId: String, message: String, toUid: String? = "", completion: FinishBlock? = nil) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = WithTitleThen()
        //: reqModel.requestPath = "party/sendMsg"
        reqModel.requestPath = (String(str_genderTitle) + String(str_resultTitle))
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: var dict = [String: Any]()
        var dict = [String: Any]()
        //: dict["groupId"] = groupId
        dict[(String(str_makeName) + str_pathValue.lowercased())] = groupId
        //: dict["message"] = message
        dict[(String(str_valueBackgroundText))] = message
        //: if toUid?.count ?? 0 > 0 {
        if toUid?.count ?? 0 > 0 {
            //: dict["toUid"] = toUid
            dict[(String(str_cookieData.prefix(5)))] = toUid
        }
        //: reqModel.params = dict
        reqModel.params = dict
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_nextTitle.photoLive(model: reqModel) { succeed, result, errorModel in
            //: completion?(succeed, result, errorModel)
            completion?(succeed, result, errorModel)
        }
    }
}
