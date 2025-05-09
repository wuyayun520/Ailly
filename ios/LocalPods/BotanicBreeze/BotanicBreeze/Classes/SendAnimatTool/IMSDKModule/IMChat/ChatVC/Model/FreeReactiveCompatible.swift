
//: Declare String Begin

/*: "TalkingIntimatePhotoUnlockMsgIdArrayKey" :*/
fileprivate let str_normalName:[UInt8] = [0xaf,0x9a,0x97,0x90,0x92,0x95,0x9c,0xb2,0x95,0x8f,0x92,0x96,0x9a,0x8f,0x9e,0xab,0x93,0x94,0x8f,0x94,0xae,0x95,0x97,0x94,0x98,0x90,0xb6,0x88,0x9c,0xb2,0x9f,0xba,0x89,0x89,0x9a,0x82,0xb0,0x9e,0x82]

/*: "TalkingPrivateChatVideoTipsIsShow_ :*/
fileprivate let str_pathEnableValue:[UInt8] = [0xb2,0x87,0x8a,0x8d,0x8f,0x88,0x81,0xb6,0x94,0x8f,0x90,0x87,0x92,0x83,0xa5,0x8e,0x87,0x92,0xb0,0x8f,0x82,0x83,0x89,0xb2,0x8f,0x96,0x95,0xaf,0x95,0xb5,0x8e,0x89,0x91,0xb9]

private func scienceLaboratoryLabel(inside num: UInt8) -> UInt8 {
    return num ^ 230
}

/*: _ :*/
fileprivate let str_phoneValue:[Character] = ["_"]

/*: "Quick greeting can only be sent to him once" :*/
fileprivate let str_imageName:[UInt8] = [0x66,0x8a,0x7e,0x78,0x80,0x35,0x7c,0x87,0x7a,0x7a,0x89,0x7e,0x83,0x7c,0x35,0x78,0x76,0x83,0x35,0x84,0x83,0x81,0x8e,0x35,0x77,0x7a,0x35,0x88,0x7a,0x83,0x89,0x35,0x89,0x84,0x35,0x7d,0x7e,0x82,0x35,0x84,0x83,0x78,0x7a]

fileprivate func fillAgain(photo num: UInt8) -> UInt8 {
    let value = Int(num) + 235
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "txt" :*/
fileprivate let str_shareTitle:[Character] = ["t","x","t"]

/*: "audio" :*/
fileprivate let str_lastErrorValue:[Character] = ["a","u","d","i","o"]

/*: "Please add greeting text" :*/
fileprivate let str_possibilityName:[Character] = ["P","l","e","a","s","e"," ","a","d","d"," "]
fileprivate let str_viewData:String = "caneet"
fileprivate let str_targetValue:String = "make path ending text"

/*: "You have not set up a photo greeting, please set it up before sending!" :*/
fileprivate let str_errorText:[UInt8] = [0xf6,0xc0,0xda,0x8f,0xc7,0xce,0xd9,0xca,0x8f,0xc1,0xc0,0xdb,0x8f,0xdc,0xca,0xdb,0x8f,0xda,0xdf,0x8f,0xce,0x8f,0xdf,0xc7,0xc0,0xdb,0xc0,0x8f,0xc8,0xdd,0xca,0xca,0xdb,0xc6,0xc1,0xc8,0x83,0x8f,0xdf,0xc3,0xca,0xce,0xdc,0xca,0x8f,0xdc,0xca,0xdb,0x8f,0xc6,0xdb,0x8f,0xda,0xdf,0x8f,0xcd,0xca,0xc9,0xc0,0xdd,0xca,0x8f,0xdc,0xca,0xc1,0xcb,0xc6,0xc1,0xc8,0x8e]

private func countPush(raw num: UInt8) -> UInt8 {
    return num ^ 175
}

/*: "Cancel" :*/
fileprivate let str_distanceName:String = "time color gestureCancel"

/*: "Go to set" :*/
fileprivate let str_itemValue:[Character] = ["G","o"," ","t","o"]
fileprivate let str_callText:[Character] = [" ","s","e","t"]

/*: "#startTime#" :*/
fileprivate let str_succeedContent:String = "#stahome replace"
fileprivate let str_mainCellName:[Character] = ["r","t","T","i","m","e","#"]

/*: "#endTime#" :*/
fileprivate let str_textData:[Character] = ["#","e","n","d","T"]
fileprivate let str_blockName:String = "path background runningime#"

/*: "text" :*/
fileprivate let str_profileData:String = "tmakext"

/*: "img" :*/
fileprivate let str_listValue:[Character] = ["i","m","g"]

/*: "video" :*/
fileprivate let str_controlName:String = "vidinfoo"

/*: "gift" :*/
fileprivate let str_messageCoverData:String = "GIFT"

/*: "map" :*/
fileprivate let str_assetReportText:String = "maapp"

/*: "PrivateChat 点击引用消息 :*/
fileprivate let str_indexName:[Character] = ["P","r","i","v","a","t","e","C"]
fileprivate let str_infoText:[Character] = ["h","a","t"," ","点","击","引","用","\u{6d88}","息"]

/*: ." :*/
fileprivate let str_removeText:[Character] = ["."]

/*: "Sent " :*/
fileprivate let str_modelTitle:[Character] = ["S","e","n","t"," "]

/*: " x :*/
fileprivate let str_centerData:String = " xtag import count left"

/*: "&type= :*/
fileprivate let str_toValue:String = "&type=float key"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  FreeReactiveCompatible.swift
//  AbroadTalking
//
//  Created by young on 2023/1/5.
//

//: import UIKit
import UIKit

/// 一键打招呼Block
//: typealias QuickGreetingBlock = (_ errorCode: Int?, _ errorMsg: String?, _ textDict: [String: Any]?, _ audioDict: [String: Any]?) -> Void
typealias QuickGreetingBlock = (_ errorCode: Int?, _ errorMsg: String?, _ textDict: [String: Any]?, _ audioDict: [String: Any]?) -> Void

/// 图片打招呼Block
//: typealias BeautyPhotosBlock = (_ isPushSet: Bool, _ PhotoDict: [String: Any]?) -> Void
typealias BeautyPhotosBlock = (_ isPushSet: Bool, _ PhotoDict: [String: Any]?) -> Void

//: public class TalkingPrivateChatManager: NSObject {
public class FreeReactiveCompatible: NSObject {
    /// 记录私信对端已读回执时间 [key：userID，value：对端最后已读回执时间]
    //: var readReceiptDict = [String: Int]()
    var readReceiptDict = [String: Int]()

    //: @objc static let share = TalkingPrivateChatManager()
    @objc static let share = FreeReactiveCompatible()
    //: private override init() {}
    override private init() {}

    //: @objc let UnlockMsgIdArrayKey = "TalkingIntimatePhotoUnlockMsgIdArrayKey"  // 私密照片已解锁礼物消息数组的key
    @objc let UnlockMsgIdArrayKey = String(bytes: str_normalName.map{$0^251}, encoding: .utf8)! // 私密照片已解锁礼物消息数组的key
}

// MARK: - 插入音视频通话提示消息

//: extension TalkingPrivateChatManager {
extension FreeReactiveCompatible {
    /// 判断是否需要插入音视频通话提示消息
    /// - Parameters:
    ///   - toUid: 对方Id
    ///   - msgView: TUI视图
    ///   - completionHandler: 回调
    //: static func chat_privateChatVideo_insertTipMsg(toUid: String, msgView: TUIMessageController, needInsertHandler: (() -> Void)?) {
    static func emptyHanded(toUid: String, msgView: TUIMessageController, needInsertHandler: (() -> Void)?) {
        // 非审核模式
        //: guard EqualThen.share.appStatus == AppSkinStatus.normal.rawValue else { return }
        guard EqualThen.share.appStatus == PhaseOfTheMoonPropertyProtocol.normal.rawValue else { return }
        // 男性
        //: guard EqualThen.share.loginUserMode.sex == Gender.male.rawValue else { return }
        guard EqualThen.share.loginUserMode.sex == RunReplaceableCollection.male.rawValue else { return }

        // 是否展示过提示文案
        //: let TalkingPrivateChatVideoTipsIsShow = "TalkingPrivateChatVideoTipsIsShow_\(String(EqualThen.share.loginUserMode.userID))_\(toUid)"
        let TalkingPrivateChatVideoTipsIsShow = String(bytes: str_pathEnableValue.map{scienceLaboratoryLabel(inside: $0)}, encoding: .utf8)! + "\(String(EqualThen.share.loginUserMode.userID))_\(toUid)"
        //: let isShow = Defaults.bool(forKey: TalkingPrivateChatVideoTipsIsShow)
        let isShow = kLet_turnPartyValue.bool(forKey: TalkingPrivateChatVideoTipsIsShow)
        //: guard isShow == false else { return }
        guard isShow == false else { return }

        // 消息达到5条
        //: guard msgView.uiMsgs.count >= 5 else { return }
        guard msgView.uiMsgs.count >= 5 else { return }

        //: var hasVoiceVideo = false
        var hasVoiceVideo = false // 是否有音视频通话消息
        //: var outgoingMsgCount = 0
        var outgoingMsgCount = 0 // 消息发送方已发送消息数量
        //: for indexModel in msgView.uiMsgs {
        for indexModel in msgView.uiMsgs {
            //: let indexModel = indexModel as? TUIMessageCellData
            let indexModel = indexModel as? TUIMessageCellData
            //: if indexModel != nil {
            if indexModel != nil {
                //: if indexModel!.isKind(of: SendCellData.self) {
                if indexModel!.isKind(of: SendCellData.self) { // 是否包含音视频文本
                    //: let textMsgModel = indexModel as! SendCellData
                    let textMsgModel = indexModel as! SendCellData
                    //: if textMsgModel.isVoiceVideo == true {
                    if textMsgModel.isVoiceVideo == true {
                        //: hasVoiceVideo = true
                        hasVoiceVideo = true
                        //: break
                        break
                    }
                }

                // 语音消息 || 文本消息 || 图片消息 || 视频消息
                //: if indexModel!.isKind(of: AtHeadCellData.self) ||
                if indexModel!.isKind(of: AtHeadCellData.self) ||
                    //: indexModel!.isKind(of: SendCellData.self) ||
                    indexModel!.isKind(of: SendCellData.self) ||
                    //: indexModel!.isKind(of: DataReactiveCompatible.self) ||
                    indexModel!.isKind(of: DataReactiveCompatible.self) ||
                    //: indexModel!.isKind(of: ManageCellData.self) {
                    indexModel!.isKind(of: ManageCellData.self)
                {
                    //: if indexModel?.direction == .MsgDirectionOutgoing {
                    if indexModel?.direction == .MsgDirectionOutgoing { // 消息发送方
                        //: outgoingMsgCount += 1
                        outgoingMsgCount += 1
                    }
                }
            }
        }

        //: guard hasVoiceVideo == false else {
        guard hasVoiceVideo == false else {
            //: Defaults.set(true, forKey: TalkingPrivateChatVideoTipsIsShow)
            kLet_turnPartyValue.set(true, forKey: TalkingPrivateChatVideoTipsIsShow)
            //: return
            return
        }
        //: guard outgoingMsgCount >= 5 else { return }
        guard outgoingMsgCount >= 5 else { return }

        // 回调外部插入音视频提示消息
        //: if needInsertHandler != nil {
        if needInsertHandler != nil {
            //: needInsertHandler!()
            needInsertHandler!()
            //: Defaults.set(true, forKey: TalkingPrivateChatVideoTipsIsShow)
            kLet_turnPartyValue.set(true, forKey: TalkingPrivateChatVideoTipsIsShow)
        }
    }
}

// MARK: - 一键打招呼

//: extension TalkingPrivateChatManager {
extension FreeReactiveCompatible {
    /// 判断是否可以一键打招呼，回调结果
    /// - Parameters:
    ///   - toUserId: 接收方UserId
    ///   - handler: errorCode：1 = 已发送过；2=未添加打招呼数据;
    //: static func chat_sendQuickGreeting(toUserId: String, completionHandler: @escaping QuickGreetingBlock) {
    static func tap(toUserId: String, completionHandler: @escaping QuickGreetingBlock) {
        //: let key = "\(EqualThen.share.loginUserMode.userID)_\(TalkingSendAutoGreetIsToKey)_\(toUserId)"
        let key = "\(EqualThen.share.loginUserMode.userID)_\(kLet_callTitle)_\(toUserId)"
        //: let ishave = UserDefaults.standard.bool(forKey: key)
        let ishave = UserDefaults.standard.bool(forKey: key)
        //: guard !ishave else {
        guard !ishave else {
            //: completionHandler(1, "Quick greeting can only be sent to him once".localized, nil, nil)
            completionHandler(1, String(bytes: str_imageName.map{fillAgain(photo: $0)}, encoding: .utf8)!.localized, nil, nil)
            //: return
            return
        }

        //: ProgressHUD.show()
        ModelReactiveCompatible.fromTarget()
        //: PostulationReactiveCompatible.req_getAutoGreetContent { succeed, result, errorModel in
        PostulationReactiveCompatible.upEvent { succeed, result, errorModel in
            //: ProgressHUD.dismiss()
            ModelReactiveCompatible.dataConverterCan()
            //: guard succeed == true else {
            guard succeed == true else {
                //: if errorModel?.errorCode == 60003, !EqualThen.share.loginUserMode.isNaUser {
                if errorModel?.errorCode == 60003, !EqualThen.share.loginUserMode.isNaUser {
                    /// 真人认证提示弹窗
                    //: TalkingPopupWindowManager.shared.faceVerificationPopUpWindow()
                    PlayerWindowManager.shared.visageMakeUpwardChangeFormWindow()
                    //: return
                    return
                }
                //: completionHandler(2, errorModel?.errorMsg ?? "", nil, nil)
                completionHandler(2, errorModel?.errorMsg ?? "", nil, nil)
                //: return
                return
            }
            //: guard let dict = result as? [String: Any] else {
            guard let dict = result as? [String: Any] else {
                //: completionHandler(2, "", nil, nil)
                completionHandler(2, "", nil, nil)
                //: return
                return
            }
            //: let textDict = dict["txt"] as? [String: Any]
            let textDict = dict[(String(str_shareTitle))] as? [String: Any]
            //: let audioDict = dict["audio"] as? [String: Any]
            let audioDict = dict[(String(str_lastErrorValue))] as? [String: Any]
            //: if textDict?.count == 0 && audioDict?.count == 0 {
            if textDict?.count == 0, audioDict?.count == 0 {
                //: completionHandler(2, "Please add greeting text".localized, nil, nil)
                completionHandler(2, (String(str_possibilityName) + str_viewData.replacingOccurrences(of: "can", with: "gr") + String(str_targetValue.suffix(8))).localized, nil, nil)
                //: return
                return
            }

            // 一键打招呼本地存储
            //: chat_changeSaveGreetData(toUserId: toUserId, isHave: true)
            metadata(toUserId: toUserId, isHave: true)
            //: completionHandler(nil, nil, textDict, audioDict)
            completionHandler(nil, nil, textDict, audioDict)
        }
    }

    /// 一键打招呼状态本地存储
    /// - Parameters:
    ///   - toUserId: 接收方UserId
    ///   - isHave: 是否已发送
    //: static func chat_changeSaveGreetData(toUserId: String, isHave: Bool) {
    static func metadata(toUserId: String, isHave: Bool) {
        // 一键打招呼本地cunc
        //: let key = "\(EqualThen.share.loginUserMode.userID)_\(TalkingSendAutoGreetIsToKey)_\(toUserId)"
        let key = "\(EqualThen.share.loginUserMode.userID)_\(kLet_callTitle)_\(toUserId)"
        //: UserDefaults.standard.set(isHave, forKey: key)
        UserDefaults.standard.set(isHave, forKey: key)
    }

    /// 图片打招呼
    /// - Parameters:
    ///   - toUserId: 接收方UserId
    ///   - handler: errorCode：1 = 已发送过；2=未添加打招呼数据；
    //: static func chat_sendBeautyPhotos(toUserId: String, completionHandler: @escaping BeautyPhotosBlock) {
    static func doingArray(toUserId: String, completionHandler: @escaping BeautyPhotosBlock) {
        //: ProgressHUD.show()
        ModelReactiveCompatible.fromTarget()
        //: PostulationReactiveCompatible.req_getIntimatePhoto(toUid: toUserId) { succeed, result, errorModel in
        PostulationReactiveCompatible.modelLine(toUid: toUserId) { succeed, result, errorModel in
            //: ProgressHUD.dismiss()
            ModelReactiveCompatible.dataConverterCan()
            /// 未添加打招呼图片
            //: if errorModel?.errorCode == 111 {
            if errorModel?.errorCode == 111 {
                //: let config = ShowAlertConfig()
                let config = AtAlertConfig()
                //: config.alignment = .center
                config.alignment = .center
                //: if TalkingRequestAddrTool.share.interfaceLang == LangType.pt.rawValue {
                if SendUpReactiveCompatible.share.interfaceLang == EditTermConvertible.pt.rawValue {
                    //: config.width = 330
                    config.width = 330
                }
                //: TalkingAlertShow.customAlert(message: "You have not set up a photo greeting, please set it up before sending!".localized, leftBtnTitle: "Cancel".localized, rightBtnTitle: "Go to set".localized, leftBlock: {
                MotilityThen.customLabel(message: String(bytes: str_errorText.map{countPush(raw: $0)}, encoding: .utf8)!.localized, leftBtnTitle: (String(str_distanceName.suffix(6))).localized, rightBtnTitle: (String(str_itemValue) + String(str_callText)).localized, leftBlock: {
                    //: TalkingAlertShow.hideAlert()
                    MotilityThen.afterward()

                    //: }, rightBlock: {
                }, rightBlock: {
                    //: TalkingAlertShow.hideAlert()
                    MotilityThen.afterward()
                    //: completionHandler(true, nil)
                    completionHandler(true, nil)
                    //: }, config: config)
                }, config: config)
                //: return
                return
                    //: } else if errorModel?.errorCode == 60003, !EqualThen.share.loginUserMode.isNaUser {
            } else if errorModel?.errorCode == 60003, !EqualThen.share.loginUserMode.isNaUser {
                /// 真人认证提示弹窗
                //: TalkingPopupWindowManager.shared.faceVerificationPopUpWindow()
                PlayerWindowManager.shared.visageMakeUpwardChangeFormWindow()
                //: return
                return
            }
            //: if succeed {
            if succeed {
                //: guard let dict = result as? [String: Any] else {
                guard let dict = result as? [String: Any] else {
                    //: return
                    return
                }
                //: completionHandler(false, dict)
                completionHandler(false, dict)
            }
        }
    }
}

// MARK: - 插入与官方客服聊天提示消息

//: extension TalkingPrivateChatManager {
extension FreeReactiveCompatible {
    ///  判断是否需要插入与官方客服聊天提示消息
    /// - Parameter needInsertHandler: 回调
    //: static func chat_customerServiceCenter_insertTipMsg(needInsertHandler: ((_ tipsStr: String?) -> Void)?) {
    static func instanceHandler(needInsertHandler: ((_ tipsStr: String?) -> Void)?) {
        //: guard EqualThen.share.appConfigMode.CSConfig.systemTips.count > 0 else {
        guard EqualThen.share.appConfigMode.CSConfig.systemTips.count > 0 else { // 接口没下发，无需提示
            //: if needInsertHandler != nil {
            if needInsertHandler != nil {
                //: needInsertHandler!(nil)
                needInsertHandler!(nil)
            }
            //: return
            return
        }

        // 根据设备所在时区转换时间
        //: let startTime = NSDate.getCurrentZoneDateString(shDateStr: EqualThen.share.appConfigMode.CSConfig.startTime)
        let startTime = NSDate.blockStr(shDateStr: EqualThen.share.appConfigMode.CSConfig.startTime)
        //: let endTime = NSDate.getCurrentZoneDateString(shDateStr: EqualThen.share.appConfigMode.CSConfig.endTime)
        let endTime = NSDate.blockStr(shDateStr: EqualThen.share.appConfigMode.CSConfig.endTime)
        //: let isIncluded = NSDate.compareCurrentTimeIsIncluded(startTime: startTime, endTime: endTime)
        let isIncluded = NSDate.upwardAnalogDigitalConverter(startTime: startTime, endTime: endTime)

        //: guard isIncluded == false else {
        guard isIncluded == false else {
            //: if needInsertHandler != nil {
            if needInsertHandler != nil {
                //: needInsertHandler!(nil)
                needInsertHandler!(nil)
            }
            //: return
            return
        }

        // 非工作时间段内，添加提示
        //: var tips = EqualThen.share.appConfigMode.CSConfig.systemTips
        var tips = EqualThen.share.appConfigMode.CSConfig.systemTips
        //: tips = tips.replacingOccurrences(of: "#startTime#", with: "\(startTime)")
        tips = tips.replacingOccurrences(of: (String(str_succeedContent.prefix(4)) + String(str_mainCellName)), with: "\(startTime)")
        //: tips = tips.replacingOccurrences(of: "#endTime#", with: "\(endTime)")
        tips = tips.replacingOccurrences(of: (String(str_textData) + String(str_blockName.suffix(4))), with: "\(endTime)")
        //: if needInsertHandler != nil {
        if needInsertHandler != nil {
            //: needInsertHandler!(tips)
            needInsertHandler!(tips)
        }
    }
}

// MARK: - 刷新私密消息（照片、视频）展示状态

//: extension TalkingPrivateChatManager {
extension FreeReactiveCompatible {
    /// 接收到解锁私密消息（照片、视频）的礼物，刷新本地消息状态
    /// - Parameters:
    ///   - cellData: 数据
    ///   - msgView: TUI视图
    //: static func chat_onNewMessage_refreshLocalIntimateMsgStatus(cellData: TUIMessageCellData, msgView: TUIMessageController) {
    static func accountingData(cellData: TUIMessageCellData, msgView: TUIMessageController) {
        //: guard msgView.uiMsgs.count > 0 else {
        guard msgView.uiMsgs.count > 0 else {
            // --------- 【外部页面】收到了解锁礼物消息 ---------
            // 首次进入到当前页面，刷新消息状态
            //: var array = Defaults.object(forKey: TalkingPrivateChatManager.share.UnlockMsgIdArrayKey) as? [String]
            var array = kLet_turnPartyValue.object(forKey: FreeReactiveCompatible.share.UnlockMsgIdArrayKey) as? [String]

            // 本地有私密消息解锁礼物缓存，且是图片消息 或 视频消息
            //: guard array?.count ?? 0 > 0 &&
            guard array?.count ?? 0 > 0,
                  //: (cellData.isKind(of: DataReactiveCompatible.self) ||
                  cellData.isKind(of: DataReactiveCompatible.self) ||
                  //: cellData.isKind(of: ManageCellData.self)) else { return }
                  cellData.isKind(of: ManageCellData.self) else { return }

            // 找到本人发送的私密消息，更新状态为已解锁
            //: if array!.contains(cellData.msgModel.msgInfo.msgId) {
            if array!.contains(cellData.msgModel.msgInfo.msgId) {
                //: inner_changeIntimateMsg(cellData, msgView)
                nameIndex(cellData, msgView)

                // 更新本地缓存
                //: array!.removeAll(where: { $0 == cellData.msgModel.msgInfo.msgId })
                array!.removeAll(where: { $0 == cellData.msgModel.msgInfo.msgId })
                //: Defaults.set(array, forKey: TalkingPrivateChatManager.share.UnlockMsgIdArrayKey)
                kLet_turnPartyValue.set(array, forKey: FreeReactiveCompatible.share.UnlockMsgIdArrayKey)
            }

            //: return
            return
        }

        //  --------- 在【当前页面】收到解锁礼物消息 ---------
        // 只有收到礼物解锁消息才刷新
        //: guard cellData.isKind(of: SoulCellData.self) && cellData.msgModel.gift.unlockMsgId.count > 0 else { return }
        guard cellData.isKind(of: SoulCellData.self), cellData.msgModel.gift.unlockMsgId.count > 0 else { return }

        // 找到本人发送的私密消息，更新状态为已解锁
        //: let unlockMsgId = cellData.msgModel.gift.unlockMsgId
        let unlockMsgId = cellData.msgModel.gift.unlockMsgId
        //: for msgCellData in msgView.uiMsgs {
        for msgCellData in msgView.uiMsgs {
            //: let data = msgCellData as! TUIMessageCellData
            let data = msgCellData as! TUIMessageCellData
            //: if data.msgModel.msgInfo.msgId == unlockMsgId {
            if data.msgModel.msgInfo.msgId == unlockMsgId {
                //: inner_changeIntimateMsg(data, msgView)
                nameIndex(data, msgView)
                //: break
                break
            }
        }
    }

    /// 刷新本地消息状态
    /// - Parameters:
    ///   - cellData: 数据
    ///   - msgView: TUI视图
    //: static private func inner_changeIntimateMsg(_ cellData: TUIMessageCellData, _ msgView: TUIMessageController) {
    private static func nameIndex(_ cellData: TUIMessageCellData, _ msgView: TUIMessageController) {
        //: if cellData.isKind(of: DataReactiveCompatible.self) {
        if cellData.isKind(of: DataReactiveCompatible.self) { // 私密照片
            //: let model = cellData.msgModel.msgInfo.intimatePhoto
            let model = cellData.msgModel.msgInfo.intimatePhoto
            //: if model.lockStatus != 0 {
            if model.lockStatus != 0 {
                //: model.lockStatus = 0
                model.lockStatus = 0
                //: msgView.changeIntimatePhotoMsg(cellData, photoModel: model)
                msgView.changeIntimatePhotoMsg(cellData, photoModel: model)
            }

            //: } else if cellData.isKind(of: ManageCellData.self) {
        } else if cellData.isKind(of: ManageCellData.self) { // 私密视频
            //: let model = cellData.msgModel.msgInfo.video
            let model = cellData.msgModel.msgInfo.video
            //: if model.lockStatus != 0 {
            if model.lockStatus != 0 {
                //: model.lockStatus = 0
                model.lockStatus = 0
                //: msgView.changeIntimateVideoMsg(cellData, videoModel: model)
                msgView.changeIntimateVideoMsg(cellData, videoModel: model)
            }
        }
    }
}

// MARK: - 未回复Reply to get points~逻辑

//: extension TalkingPrivateChatManager {
extension FreeReactiveCompatible {
    /// 女性记录最新回复时间, 刷新表格
    /// - Parameters:
    ///   - cellData: 数据
    ///   - msgView: TUI视图
    //: static func updateReplyLatestTimeAndReload(_ msgIncome: CGFloat, _ msgTime: Date?, _ msgView: TUIMessageController) {
    static func latestReplyFlushAndTimeApp(_ msgIncome: CGFloat, _ msgTime: Date?, _ msgView: TUIMessageController) {
        //: guard EqualThen.share.loginUserMode.sex == Gender.female.rawValue else { return }
        guard EqualThen.share.loginUserMode.sex == RunReplaceableCollection.female.rawValue else { return }
        //: guard msgIncome > 0 else { return }
        guard msgIncome > 0 else { return }
        //: guard let msgTime = msgTime else { return }
        guard let msgTime = msgTime else { return }
        //: guard TalkingPrivateChatController.replyLatestTimes.compare(msgTime) == .orderedAscending else { return }
        guard SendReactiveCompatible.replyLatestTimes.compare(msgTime) == .orderedAscending else { return }
        //: TalkingPrivateChatController.replyLatestTimes = msgTime
        SendReactiveCompatible.replyLatestTimes = msgTime
        //: msgView.tableView.reloadData()
        msgView.tableView.reloadData()
    }

    /// 判断是否展示未回复付费消息提示
    //: @objc public static func needShowReplyTipsMessage(_ direction: TMsgDirection, msgType: Int, msgTime: Date?) -> Bool {
    @objc public static func cards(_ direction: TMsgDirection, msgType: Int, msgTime: Date?) -> Bool {
        //: guard EqualThen.share.loginUserMode.sex == Gender.female.rawValue else { return false }
        guard EqualThen.share.loginUserMode.sex == RunReplaceableCollection.female.rawValue else { return false }
        //: guard direction == .MsgDirectionIncoming else { return false }
        guard direction == .MsgDirectionIncoming else { return false }
        //: guard let msgTime = msgTime else { return false }
        guard let msgTime = msgTime else { return false }
        //: guard TalkingPrivateChatController.replyLatestTimes.compare(msgTime) == .orderedAscending else { return false }
        guard SendReactiveCompatible.replyLatestTimes.compare(msgTime) == .orderedAscending else { return false }
        //: guard TalkingPrivateChatManager.isReplyToGetPointsMsg(direction, msgType, msgTime: msgTime) else { return false }
        guard FreeReactiveCompatible.repossess(direction, msgType, msgTime: msgTime) else { return false }
        //: return true
        return true
    }

    /// 是否是回复获取积分消息
    /// - Parameters:
    ///   - direction: 消息方向
    ///   - msgType: 消息类型
    ///   - msgTime: 消息时间
    /// - Returns: 结果
    //: static func isReplyToGetPointsMsg(_ direction: TMsgDirection, _ msgType: Int, msgTime: Date?) -> Bool {
    static func repossess(_ direction: TMsgDirection, _ msgType: Int, msgTime: Date?) -> Bool {
        // 非审核模式, messageType == 5, 时间<24小时
        //: guard EqualThen.share.appStatus == AppSkinStatus.normal.rawValue else { return false }
        guard EqualThen.share.appStatus == PhaseOfTheMoonPropertyProtocol.normal.rawValue else { return false }
        //: guard direction == .MsgDirectionIncoming else { return false }
        guard direction == .MsgDirectionIncoming else { return false }
        //: guard msgType == 5 else { return false }
        guard msgType == 5 else { return false }
        //: guard let msgTime = msgTime else { return false }
        guard let msgTime = msgTime else { return false }
        //: guard Date().timeIntervalSince(msgTime) < 24*60*60 else { return false }
        guard Date().timeIntervalSince(msgTime) < 24 * 60 * 60 else { return false }
        //: return true
        return true
    }
}

// MARK: - VIP展示消息已读逻辑

//: extension TalkingPrivateChatManager {
extension FreeReactiveCompatible {
    /// 是否需要插入已读回执引导充值VIP提醒消息
    /// - Parameter cellData: 消息数据
    /// - Returns: 结果
    //: static func needInsertVIPReadReceiptMsg(cellData: TUIMessageCellData) -> Bool {
    static func makeUp(cellData: TUIMessageCellData) -> Bool {
        //: if EqualThen.share.loginUserMode.loungePlus == false,
        if EqualThen.share.loginUserMode.loungePlus == false,
           //: cellData.innerMessage.groupID == nil,
           cellData.innerMessage.groupID == nil,
           //: cellData.status == .Msg_Status_Succ,
           cellData.status == .Msg_Status_Succ,
           //: cellData.direction == .MsgDirectionOutgoing,
           cellData.direction == .MsgDirectionOutgoing,
           //: cellData.msgModel.msgInfo.callCmd.count <= 0 {
           cellData.msgModel.msgInfo.callCmd.count <= 0
        {
            //: return true
            return true
        }
        //: return false
        return false
    }

    /// 是否展示消息 已读/未读 标识
    /// - Parameter cellData: 消息数据
    /// - Returns: 结果
    //: static func isShowReadMsg(cellData: TUIMessageCellData) -> Bool {
    static func read(cellData: TUIMessageCellData) -> Bool {
        // vip && 非群聊 && 发送成功 && 本人发送 && 非音视频通话文本消息，展示消息是否已读标识
        //: if EqualThen.share.loginUserMode.loungePlus == true,
        if EqualThen.share.loginUserMode.loungePlus == true,
           //: cellData.innerMessage.groupID == nil,
           cellData.innerMessage.groupID == nil,
           //: cellData.status == .Msg_Status_Succ,
           cellData.status == .Msg_Status_Succ,
           //: cellData.direction == .MsgDirectionOutgoing,
           cellData.direction == .MsgDirectionOutgoing,
           //: cellData.msgModel.msgInfo.callCmd.count <= 0 {
           cellData.msgModel.msgInfo.callCmd.count <= 0
        {
            //: return true
            return true
        }
        //: return false
        return false
    }

    /// 消息对方是否已读
    /// - Parameter cellData: 消息数据
    /// - Returns: 结果
    //: static func msgIsRead(cellData: TUIMessageCellData) -> Bool {
    static func actionEnableHead(cellData: TUIMessageCellData) -> Bool {
        //: guard let selfMsgTime = cellData.innerMessage.timestamp else { return false }
        guard let selfMsgTime = cellData.innerMessage.timestamp else { return false }
        //: if cellData.innerMessage.isPeerRead == true {
        if cellData.innerMessage.isPeerRead == true {
            //: return true
            return true
        }
        //: let readTimeInterval = TalkingPrivateChatManager.share.readReceiptDict[cellData.innerMessage.userID] ?? 0
        let readTimeInterval = FreeReactiveCompatible.share.readReceiptDict[cellData.innerMessage.userID] ?? 0
        //: let readTime = Date(timeIntervalSince1970: TimeInterval(readTimeInterval))
        let readTime = Date(timeIntervalSince1970: TimeInterval(readTimeInterval))
        //: if selfMsgTime <= readTime {
        if selfMsgTime <= readTime {
            //: return true
            return true
        }
        //: return false
        return false
    }
}

// MARK: - Reply消息逻辑

//: extension TalkingPrivateChatManager {
extension FreeReactiveCompatible {
    /// 回复消息
    /// - Parameters:
    ///   - cellData: 数据
    ///   - targetId: 对方uid
    /// - Returns: 引用消息模型
    //: static func handleReplyMsg(cellData: TUIMessageCellData, targetId: String) -> AbTalkingChatMsgQuoteModel {
    static func upJump(cellData: TUIMessageCellData, targetId: String) -> StorageMediumModel {
        //: let quoteModel = AbTalkingChatMsgQuoteModel()
        let quoteModel = StorageMediumModel()
        //: quoteModel.msgId = cellData.msgModel.msgInfo.msgId
        quoteModel.msgId = cellData.msgModel.msgInfo.msgId
        //: if cellData.direction == .MsgDirectionIncoming {
        if cellData.direction == .MsgDirectionIncoming {
            //: quoteModel.uid = targetId
            quoteModel.uid = targetId
            //: } else {
        } else {
            //: quoteModel.uid = EqualThen.share.loginUserMode.userID
            quoteModel.uid = EqualThen.share.loginUserMode.userID
        }
        //: let renderData = AbTalkingChatMsgQuoteDataModel()
        let renderData = AJsonModel()
        //: if cellData.isKind(of: SendCellData.self) {
        if cellData.isKind(of: SendCellData.self) {
            //: quoteModel.renderType = "text"
            quoteModel.renderType = (str_profileData.replacingOccurrences(of: "make", with: "e"))
            //: renderData.content = cellData.msgModel.msgInfo.content
            renderData.content = cellData.msgModel.msgInfo.content

            //: } else if cellData.isKind(of: DataReactiveCompatible.self) {
        } else if cellData.isKind(of: DataReactiveCompatible.self) {
            //: quoteModel.renderType = "img"
            quoteModel.renderType = (String(str_listValue))
            //: renderData.previewUrl = cellData.msgModel.msgInfo.imageUri
            renderData.previewUrl = cellData.msgModel.msgInfo.imageUri

            //: } else if cellData.isKind(of: ManageCellData.self) {
        } else if cellData.isKind(of: ManageCellData.self) {
            //: quoteModel.renderType = "video"
            quoteModel.renderType = (str_controlName.replacingOccurrences(of: "info", with: "e"))
            //: renderData.videoUrl = cellData.msgModel.msgInfo.video.videoUrl
            renderData.videoUrl = cellData.msgModel.msgInfo.video.videoUrl
            //: renderData.coverUrl = cellData.msgModel.msgInfo.video.coverImg
            renderData.coverUrl = cellData.msgModel.msgInfo.video.coverImg

            //: } else if cellData.isKind(of: AtHeadCellData.self) {
        } else if cellData.isKind(of: AtHeadCellData.self) {
            //: let audioCelldata = cellData as! AtHeadCellData
            let audioCelldata = cellData as! AtHeadCellData
            //: quoteModel.renderType = "audio"
            quoteModel.renderType = (String(str_lastErrorValue))
            //: let voiceCache = PermitReactiveCompatible.cache_getAudioDB(message: audioCelldata.innerMessage)
            let voiceCache = PermitReactiveCompatible.currency(message: audioCelldata.innerMessage)
            //: renderData.duration = Int(voiceCache.db_audioLength) ?? 0
            renderData.duration = Int(voiceCache.db_audioLength) ?? 0

            //: } else if cellData.isKind(of: SoulCellData.self) {
        } else if cellData.isKind(of: SoulCellData.self) {
            //: quoteModel.renderType = "gift"
            quoteModel.renderType = (str_messageCoverData.lowercased())
            //: let giftCellData = cellData as! SoulCellData
            let giftCellData = cellData as! SoulCellData
            //: renderData.giftName = giftCellData.msgModel.gift.name
            renderData.giftName = giftCellData.msgModel.gift.name
            //: renderData.giftNameI18n = giftCellData.msgModel.gift.nameI18n
            renderData.giftNameI18n = giftCellData.msgModel.gift.nameI18n
            //: renderData.giftIcon = giftCellData.msgModel.gift.imgPreview
            renderData.giftIcon = giftCellData.msgModel.gift.imgPreview
            //: renderData.giftPrice = giftCellData.msgModel.gift.price
            renderData.giftPrice = giftCellData.msgModel.gift.price
            //: renderData.giftNum = Int(giftCellData.msgModel.gift.num) ?? 0
            renderData.giftNum = Int(giftCellData.msgModel.gift.num) ?? 0
            //: }else if cellData.isKind(of: CompartmentSourceCellData.self) {
        } else if cellData.isKind(of: CompartmentSourceCellData.self) {
            //: quoteModel.renderType = "map"
            quoteModel.renderType = (str_assetReportText.replacingOccurrences(of: "app", with: "p"))
            //: renderData.latlon = cellData.msgModel.msgInfo.latlon
            renderData.latlon = cellData.msgModel.msgInfo.latlon
        }
        //: quoteModel.renderData = renderData
        quoteModel.renderData = renderData
        //: return quoteModel
        return quoteModel
    }

    /// 点击“引用”消息
    /// - Parameters:
    ///   - cellData: 数据
    ///   - targetId: 对方uid
    //: static func handleClickReplyMsg(cellData: TUIMessageCellData, targetId: String) {
    static func dataId(cellData: TUIMessageCellData, targetId: String) {
        //: let renderData = cellData.msgModel.quoteMsgInfo
        let renderData = cellData.msgModel.quoteMsgInfo
        //: DeepKeyTamperReactiveCompatible.indexView(msg: "PrivateChat 点击引用消息\(renderData.renderType).")
        DeepKeyTamperReactiveCompatible.indexView(msg: (String(str_indexName) + String(str_infoText)) + "\(renderData.renderType).")
        //: if renderData.renderType == "text" {
        if renderData.renderType == (str_profileData.replacingOccurrences(of: "make", with: "e")) {
            //: let popView = QuoteDetailPopView(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight))
            let popView = IterateView(frame: CGRect(x: 0, y: 0, width: kLet_cameraValue, height: kLet_clickData))
            //: popView.msgDetailText = renderData.renderData.content
            popView.msgDetailText = renderData.renderData.content
            //: popView.show()
            popView.upFail()

            //: } else if renderData.renderType == "img" {
        } else if renderData.renderType == (String(str_listValue)) {
            //: let libraryPath = NSSearchPathForDirectoriesInDomains(.cachesDirectory, .userDomainMask, true).first!
            let libraryPath = NSSearchPathForDirectoriesInDomains(.cachesDirectory, .userDomainMask, true).first!
            //: var filePath = (libraryPath as NSString).appendingPathComponent(imageFileName)
            var filePath = (libraryPath as NSString).appendingPathComponent(kLet_coverValue)
            //: filePath = (filePath as NSString).appendingPathComponent((renderData.renderData.previewUrl as NSString).lastPathComponent)
            filePath = (filePath as NSString).appendingPathComponent((renderData.renderData.previewUrl as NSString).lastPathComponent)

            //: var model = TalkingMomentPhotoModel.init()
            var model = ZapModelType()
            //: if FileManager.default.fileExists(atPath: filePath) {
            if FileManager.default.fileExists(atPath: filePath) {
                //: let data = NSData.init(contentsOfFile: filePath)
                let data = NSData(contentsOfFile: filePath)
                //: model.imagePic = UIImage(data: data! as Data)
                model.imagePic = UIImage(data: data! as Data)
                //: } else {
            } else {
                //: model.imgUrl =  renderData.renderData.previewUrl
                model.imgUrl = renderData.renderData.previewUrl
            }
            //: var currenModel = TalkingMomentModel.init()
            var currenModel = WithMomentModel()
            //: var tempArr: [TalkingMomentPhotoModel] = []
            var tempArr: [ZapModelType] = []
            //: tempArr.append(model)
            tempArr.append(model)
            //: currenModel.pic = tempArr
            currenModel.pic = tempArr
            //: let vc = TalkingMomentPhotosVC.init(momentModel: currenModel, index: 0, type: .normal)
            let vc = TargetPhotosVc(momentModel: currenModel, index: 0, type: .normal)
            //: TalkingPrivateChatManager.share.getNavigationController()?.pushViewController(vc, animated: true)
            FreeReactiveCompatible.share.getApp()?.pushViewController(vc, animated: true)

            //: } else if renderData.renderType == "video" {
        } else if renderData.renderType == (str_controlName.replacingOccurrences(of: "info", with: "e")) {
            //: let videoPath = renderData.renderData.videoUrl
            let videoPath = renderData.renderData.videoUrl
            //: let vc = TalkingMomentVideoVC.init(videoPath: videoPath)
            let vc = AtViewController(videoPath: videoPath)
            //: TalkingPrivateChatManager.share.getNavigationController()?.pushViewController(vc, animated: true)
            FreeReactiveCompatible.share.getApp()?.pushViewController(vc, animated: true)

            //: } else if renderData.renderType == "audio" {
        } else if renderData.renderType == (String(str_lastErrorValue)) {
            //: let cacheWrap = VoxReactiveCompatible.db_getVoiceMsg(with: renderData.msgId)
            let cacheWrap = VoxReactiveCompatible.destroy(with: renderData.msgId)
            //: let playModel = TalkingVoiceMsgPlayModel()
            let playModel = ContentTransformable()
            //: if cacheWrap != nil {
            if cacheWrap != nil {
                //: playModel.db_voiceCacheWrap = cacheWrap!
                playModel.db_voiceCacheWrap = cacheWrap!

                //: } else {
            } else {
                //: let model = VoxReactiveCompatible()
                let model = VoxReactiveCompatible()
                //: model.msgId = renderData.msgId
                model.msgId = renderData.msgId
                //: model.db_voiceUri = renderData.renderData.url
                model.db_voiceUri = renderData.renderData.url
                //: model.db_senduid = renderData.uid
                model.db_senduid = renderData.uid
                //: if renderData.uid == EqualThen.share.loginUserMode.userID {
                if renderData.uid == EqualThen.share.loginUserMode.userID {
                    //: model.db_touid = targetId
                    model.db_touid = targetId
                    //: } else {
                } else {
                    //: model.db_touid = EqualThen.share.loginUserMode.userID
                    model.db_touid = EqualThen.share.loginUserMode.userID
                }
                //: model.db_audioLength = "\(renderData.renderData.duration)"
                model.db_audioLength = "\(renderData.renderData.duration)"
                //: VoxReactiveCompatible.db_insertVoiceMsg(model)
                VoxReactiveCompatible.nearList(model)
                //: playModel.db_voiceCacheWrap = model
                playModel.db_voiceCacheWrap = model
            }

            //: TalkingVoiceMsgPlayManager.shared.stopAudioPlayer()
            ControlRawManagerDelegate.shared.viewPlayer()
            //: TalkingVoiceMsgPlayManager.shared.starPlayReplyMsg(playModel: playModel)
            ControlRawManagerDelegate.shared.visible(playModel: playModel)

            //: } else if renderData.renderType == "gift" {
        } else if renderData.renderType == (str_messageCoverData.lowercased()) {
            //: let popView = QuoteDetailPopView(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight))
            let popView = IterateView(frame: CGRect(x: 0, y: 0, width: kLet_cameraValue, height: kLet_clickData))
            //: popView.msgDetailText = "Sent ".localized + renderData.renderData.giftNameLocal() + " x\(renderData.renderData.giftNum)"
            popView.msgDetailText = (String(str_modelTitle)).localized + renderData.renderData.coriolisEffectLocal() + " x\(renderData.renderData.giftNum)"
            //: popView.show()
            popView.upFail()
            //: } else if renderData.renderType == "map" {
        } else if renderData.renderType == (str_assetReportText.replacingOccurrences(of: "app", with: "p")) {
            //: let location = TalkingMapView(frame: CGRect.zero, isSelf: (cellData.direction == .MsgDirectionOutgoing), latlon: renderData.renderData.latlon)
            let location = GiftAtViewDelegate(frame: CGRect.zero, isSelf: cellData.direction == .MsgDirectionOutgoing, latlon: renderData.renderData.latlon)
            //: location.show()
            location.textSub()
        }
    }
}

// MARK: - Event

//: extension TalkingPrivateChatManager {
extension FreeReactiveCompatible {
    /// 检测用户短视频版本是否可用【> = 1.1.6 可用】
    /// - Returns: 是否可用
    //: static func checkShortVideo(userVersion: String) -> Bool {
    static func latentPeriod(userVersion: String) -> Bool {
        //: guard let version = Int(userVersion.replacingOccurrences(of: ".", with: "")) else {
        guard let version = Int(userVersion.replacingOccurrences(of: ".", with: "")) else {
            //: return false
            return false
        }
        //: if version*100 < 116*100 {
        if version * 100 < 116 * 100 {
            //: return false
            return false
        }

        //: return true
        return true
    }

    /// 检测用户是否可以直接进入预览界面

    //: static func checkCanPreview(isImg: Bool, needAlert:Bool) -> Int {
    static func toVideo(isImg: Bool, needAlert: Bool) -> Int {
        //: let modelArr = EqualThen.share.loginUserMode.residualInfo.filter { model in
        let modelArr = EqualThen.share.loginUserMode.residualInfo.filter { model in
            //: model.type == (isImg ? 1 : 2)
            model.type == (isImg ? 1 : 2)
        }

        //: if let model = modelArr[safe: 0], model.num > 0 {
        if let model = modelArr[safe: 0], model.num > 0 {
            //: return model.num
            return model.num
        }

        //: if needAlert {
        if needAlert {
            //: if EqualThen.share.loginUserMode.loungePlus {
            if EqualThen.share.loginUserMode.loungePlus {
                //: EditTextThen.share.func__pushToRechargeAlert(appendParams: "&type=\((isImg ? 1 : 2))")
                EditTextThen.share.pause(appendParams: (String(str_toValue.prefix(6))) + "\(isImg ? 1 : 2)")
                //: }else{
            } else {
                //: EditTextThen.share.func__pushToSubscribeAlert()
                EditTextThen.share.addShowParams()
            }
        }

        //: return 0
        return 0
    }
}
