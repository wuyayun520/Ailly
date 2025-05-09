
//: Declare String Begin

/*: "TalkingFemaleVIPCallIdsArrayKey_ :*/
fileprivate let str_afterValue:[UInt8] = [0x5c,0x69,0x74,0x73,0x71,0x76,0x6f,0x4e,0x6d,0x75,0x69,0x74,0x6d,0x5e,0x51,0x58,0x4b,0x69,0x74,0x74,0x51,0x6c,0x7b,0x49,0x7a,0x7a,0x69,0x81,0x53,0x6d,0x81,0x67]

fileprivate func consumerDay(number num: UInt8) -> UInt8 {
    let value = Int(num) + 248
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "CHANGE_BEAN" :*/
fileprivate let str_picText:String = "CHtextNG"

/*: "Failed to get user information, please return and try again" :*/
fileprivate let str_pathContent:[UInt8] = [0x11,0x36,0x3e,0x3b,0x32,0x33,0x77,0x23,0x38,0x77,0x30,0x32,0x23,0x77,0x22,0x24,0x32,0x25,0x77,0x3e,0x39,0x31,0x38,0x25,0x3a,0x36,0x23,0x3e,0x38,0x39,0x7b,0x77,0x27,0x3b,0x32,0x36,0x24,0x32,0x77,0x25,0x32,0x23,0x22,0x25,0x39,0x77,0x36,0x39,0x33,0x77,0x23,0x25,0x2e,0x77,0x36,0x30,0x36,0x3e,0x39]

private func valueBag(name num: UInt8) -> UInt8 {
    return num ^ 87
}

/*: "type" :*/
fileprivate let str_giftTitle:[Character] = ["t","y","p","e"]

/*: "uid" :*/
fileprivate let str_appData:String = "uion"

/*: "fromFreeCall" :*/
fileprivate let str_socialValue:String = "clear section perfromFr"
fileprivate let str_targetTitle:String = "party"

/*: "cmd" :*/
fileprivate let str_frameValue:[UInt8] = [0x0,0xe,0x7]

private func giftTabCustomer(location num: UInt8) -> UInt8 {
    return num ^ 99
}

/*: "requestCall" :*/
fileprivate let str_textTitle:[Character] = ["r","e","q","u","e"]
fileprivate let str_colorData:String = "stCallbirth view else"

/*: "data" :*/
fileprivate let str_kitAppearFromValue:[UInt8] = [0xce,0xcb,0xde,0xcb]

/*: "onRequestCall" :*/
fileprivate let str_toolTitle:[Character] = ["o","n","R","e","q","u","e"]
fileprivate let str_addressText:String = "automatic selfstCall"

/*: "&type=3" :*/
fileprivate let str_containerCameraName:String = "&"
fileprivate let str_tableContent:String = "true super roomtype=3"

/*: "&type=4" :*/
fileprivate let str_labName:[Character] = ["&","t","y","p","e","=","4"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  NameMenuManager.swift
//  AbroadTalking
//
//  Created by young on 2023/8/15.
//

//: import UIKit
import UIKit

//: enum CallMenuType: Int {
enum ArrayNameConvertible: Int {
    //: case VideoCall = 0
    case VideoCall = 0 // 视频通话
    //: case VoiceCall = 1
    case VoiceCall = 1 // 语音通话
}

//: typealias OnReqestCallBlock = () -> Void
typealias OnReqestCallBlock = () -> Void

//: class TalkingCallMenuManager: NSObject {
class NameMenuManager: NSObject {
    // 被呼叫用户ID
    //: var uid: String?
    var uid: String?
    //: var onReqestCallBlock: OnReqestCallBlock?
    var onReqestCallBlock: OnReqestCallBlock? /// 发起建立通话成功

    // 女性用户VIP折扣弹窗Key
    //: let FemaleVIPCallIdsArrayKey = "TalkingFemaleVIPCallIdsArrayKey_\(EqualThen.share.loginUid)"
    let FemaleVIPCallIdsArrayKey = String(bytes: str_afterValue.map{consumerDay(number: $0)}, encoding: .utf8)! + "\(EqualThen.share.loginUid)"

    //: override init() {
    override init() {
        //: super.init()
        super.init()
    }

    //: deinit {
    deinit {
        //: TalkingSocketManager.shared.videoMatchDelegate = nil
        DeviceSocketDelegate.shared.videoMatchDelegate = nil
        //: TalkingSocketManager.shared.errorDelegate = nil
        DeviceSocketDelegate.shared.errorDelegate = nil
    }
}

// MARK: - Event

//: extension TalkingCallMenuManager {
extension NameMenuManager {
    /// 展示音视频通话选择菜单
    /// - Parameters:
    ///   - videoPrice: 视频通话价格
    ///   - voicePrice: 语音通话价格
    ///   - vipPrompt: 女性呼叫VIP用户价格变动提醒
    //: func showVideoCallMenu(videoPrice: String?, voicePrice: String?, vipPrompt: String? = nil) {
    func upHandle(videoPrice: String?, voicePrice: String?, vipPrompt: String? = nil) {
        // 音视频通话中
        //: guard TalkingSocketManager.shared.isTalking == false else {
        guard DeviceSocketDelegate.shared.isTalking == false else {
            //: self.func__showStatusBarErrorMsg(showMsg: kMessage_videoTalking_limit)
            self.oversight(showMsg: kLet_replaceTitle)
            //: return
            return
        }

        //: let vc = TalkingMunuPopView(frame: UIScreen.main.bounds)
        let vc = OnViewDelegate(frame: UIScreen.main.bounds)
        //: vc.initWithList(type: .Call, videoPrice: videoPrice, voicePrice: voicePrice)
        vc.canny(type: .Call, videoPrice: videoPrice, voicePrice: voicePrice)
        //: vc.munuBlock = { [weak self] index, _ in
        vc.munuBlock = { [weak self] index, _ in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: let type = CallMenuType(rawValue: index) ?? .VideoCall
            let type = ArrayNameConvertible(rawValue: index) ?? .VideoCall
            // 展示VIP折扣提醒弹窗
            //: if vipPrompt != nil, vipPrompt?.count ?? 0 > 0 {
            if vipPrompt != nil, vipPrompt?.count ?? 0 > 0 {
                //: var prompt = ""
                var prompt = ""
                //: if index == 0 {
                if index == 0 {
                    //: prompt = vipPrompt!.replacingOccurrences(of: "CHANGE_BEAN", with: videoPrice ?? "0")
                    prompt = vipPrompt!.replacingOccurrences(of: (str_picText.replacingOccurrences(of: "text", with: "A") + "E_BEAN"), with: videoPrice ?? "0")
                    //: } else {
                } else {
                    //: prompt = vipPrompt!.replacingOccurrences(of: "CHANGE_BEAN", with: voicePrice ?? "0")
                    prompt = vipPrompt!.replacingOccurrences(of: (str_picText.replacingOccurrences(of: "text", with: "A") + "E_BEAN"), with: voicePrice ?? "0")
                }
                //: self.showFemaleVIPCallAlertView(type: type, vipPrompt: prompt)
                self.keyPrompt(type: type, vipPrompt: prompt)
                //: return
                return
            }

            //: requestCall(type: type)
            circumference(type: type)
        }
    }

    /// 发起音/视频通话
    /// - Parameter type: 通话类型
    //: func requestCall(type: CallMenuType) {
    func circumference(type: ArrayNameConvertible) {
        //: switch(type) {
        switch type {
        //: case .VideoCall:
        case .VideoCall:
            //: self.checkAndCallVideo()
            self.modelComplection()
        //: case .VoiceCall:
        case .VoiceCall:
            //: self.checkAndCallVoice()
            self.bodilyFunctionText()
        }
    }

    /// 检查权限后发起音频通话
    /// - Parameter complection: 回调
    //: func checkAndCallVoice(complection: ((_ succeed: Bool) -> Void)? = nil) {
    func bodilyFunctionText(complection: ((_ succeed: Bool) -> Void)? = nil) {
        // 音视频通话中
        //: guard TalkingSocketManager.shared.isTalking == false else {
        guard DeviceSocketDelegate.shared.isTalking == false else {
            //: self.func__showStatusBarErrorMsg(showMsg: kMessage_videoTalking_limit)
            self.oversight(showMsg: kLet_replaceTitle)
            //: complection?(false)
            complection?(false)
            //: return
            return
        }

        // 麦克风权限
        //: TalkingPermissionTool.func__openRecordServiceWithBlock(true) { isOpen in
        RubricThen.valueClose(true) { isOpen in
            //: guard isOpen == true else {
            guard isOpen == true else {
                //: self.func__showStatusBarErrorMsg(showMsg: kMessage_permissions_error)
                self.oversight(showMsg: kLet_likeCancelData)
                //: complection?(false)
                complection?(false)
                //: return
                return
            }
            // 发起音频通话
            //: TalkingSocketManager.shared.videoMatchDelegate = self
            DeviceSocketDelegate.shared.videoMatchDelegate = self
            //: TalkingSocketManager.shared.errorDelegate = self
            DeviceSocketDelegate.shared.errorDelegate = self
            //: self.send_socket_requestCall(type: 1)
            self.talkType(type: 1)
            //: complection?(true)
            complection?(true)
        }
    }

    /// 检测权限后发起视频通话
    /// - Parameter complection: 回调
    //: func checkAndCallVideo(complection: ((_ succeed: Bool) -> Void)? = nil) {
    func modelComplection(complection: ((_ succeed: Bool) -> Void)? = nil) {
        // 音视频通话中
        //: guard TalkingSocketManager.shared.isTalking == false else {
        guard DeviceSocketDelegate.shared.isTalking == false else {
            //: self.func__showStatusBarErrorMsg(showMsg: kMessage_videoTalking_limit)
            self.oversight(showMsg: kLet_replaceTitle)
            //: complection?(false)
            complection?(false)
            //: return
            return
        }

        // 权限判断
        //: TalkingPermissionTool.checkCameraAndMicrophone { isOpen in
        RubricThen.andThen { isOpen in
            //: guard isOpen == true else {
            guard isOpen == true else {
                //: self.func__showStatusBarErrorMsg(showMsg: kMessage_permissions_error)
                self.oversight(showMsg: kLet_likeCancelData)
                //: complection?(false)
                complection?(false)
                //: return
                return
            }
            // 发起视频通话
            //: TalkingSocketManager.shared.videoMatchDelegate = self
            DeviceSocketDelegate.shared.videoMatchDelegate = self
            //: TalkingSocketManager.shared.errorDelegate = self
            DeviceSocketDelegate.shared.errorDelegate = self
            //: self.send_socket_requestCall(type: 0)
            self.talkType(type: 0)
            //: complection?(true)
            complection?(true)
        }
    }
}

// MARK: - 会员折扣提示弹窗

//: extension TalkingCallMenuManager {
extension NameMenuManager {
    /// 展示会员折扣提示弹窗
    /// - Parameters:
    ///   - index: 0：视频通话；1：音频通话
    ///   - vipPrompt: 女性呼叫VIP用户价格变动提醒
    //: private func showFemaleVIPCallAlertView(type: CallMenuType, vipPrompt: String) {
    private func keyPrompt(type: ArrayNameConvertible, vipPrompt: String) {
        //: guard EqualThen.share.loginUserMode.status == AppSkinStatus.normal.rawValue else {
        guard EqualThen.share.loginUserMode.status == PhaseOfTheMoonPropertyProtocol.normal.rawValue else {
            //: self.requestCall(type: type)
            self.circumference(type: type)
            //: return
            return
        }
        // 每个用户只展示一次
        //: var array: Array = Defaults.object(forKey: FemaleVIPCallIdsArrayKey) as? [String] ?? [String]()
        var array: Array = kLet_turnPartyValue.object(forKey: FemaleVIPCallIdsArrayKey) as? [String] ?? [String]()
        //: if array.contains(uid ?? "") { // 已展示
        if array.contains(uid ?? "") { // 已展示
            //: self.requestCall(type: type)
            self.circumference(type: type)
            //: return
            return
        }

        // 更新缓存, 展示视图
        //: array.append(uid ?? "")
        array.append(uid ?? "")
        //: Defaults.set(array, forKey: FemaleVIPCallIdsArrayKey)
        kLet_turnPartyValue.set(array, forKey: FemaleVIPCallIdsArrayKey)
        //: let alert = TalkingFemaleVIPCallAlertView(type: type, content: vipPrompt)
        let alert = PlayerAlertView(type: type, content: vipPrompt)
        //: alert.callBlock = { type in
        alert.callBlock = { type in
            //: self.requestCall(type: type)
            self.circumference(type: type)
        }
        //: alert.show()
        alert.plan()
    }
}

// MARK: - ModelObjectProtocol, FileCurrentErrorDelegate【音视频通话逻辑处理】

//: extension TalkingCallMenuManager: SocketManagerVideoMatchDelegate, TalkingSocketManagerErrorDelegate {
extension NameMenuManager: ModelObjectProtocol, FileCurrentErrorDelegate {
    /// 发送音视频通话socket
    /// - Parameter type: 通话类型：0：视频通话，1：语音通话
    //: func send_socket_requestCall(type: Int) {
    func talkType(type: Int) {
        //: guard let uid = self.uid else {
        guard let uid = self.uid else {
            //: self.func__showStatusBarErrorMsg(showMsg: "Failed to get user information, please return and try again".localized)
            self.oversight(showMsg: String(bytes: str_pathContent.map{valueBag(name: $0)}, encoding: .utf8)!.localized)
            //: return
            return
        }

        //: var data: [String: Any] = ["type": type, "uid": uid]
        var data: [String: Any] = [(String(str_giftTitle)): type, (str_appData.replacingOccurrences(of: "on", with: "d")): uid]
        //: let index = EnableFreeCallType.nor
        let index = GestureSignedMagnitude.nor
        //: if EqualThen.share.loginUserMode.freeCallTimes > 0 && EqualThen.share.appUserConfigMode.enableFreeCallType & index.rawValue == index.rawValue && EqualThen.share.loginUserMode.sex == Gender.male.rawValue {
        if EqualThen.share.loginUserMode.freeCallTimes > 0 && EqualThen.share.appUserConfigMode.enableFreeCallType & index.rawValue == index.rawValue && EqualThen.share.loginUserMode.sex == RunReplaceableCollection.male.rawValue {
            //: data.updateValue(1, forKey: "fromFreeCall")
            data.updateValue(1, forKey: (String(str_socialValue.suffix(6)) + "eeCal" + str_targetTitle.replacingOccurrences(of: "party", with: "l")))
            //: TalkingSocketManager.shared.isFreeCall = true
            DeviceSocketDelegate.shared.isFreeCall = true
        }
        //: let info: [String: Any] = ["cmd": "requestCall", "data": data]
        let info: [String: Any] = [String(bytes: str_frameValue.map{giftTabCustomer(location: $0)}, encoding: .utf8)!: (String(str_textTitle) + String(str_colorData.prefix(6))), String(bytes: str_kitAppearFromValue.map{$0^170}, encoding: .utf8)!: data]
        //: TalkingSocketManager.shared.sendMessage(info: info)
        DeviceSocketDelegate.shared.noCurrent(info: info)
    }

    /// 匹配成功，可以拨打通话
    //: func socket_match_onRequestCall(data: [String: Any]) {        self.onReqestCallBlock?()
    func makeList(data: [String: Any]) { self.onReqestCallBlock?()
        //: var newData = data
        var newData = data
        //: newData["uid"] = self.uid
        newData[(str_appData.replacingOccurrences(of: "on", with: "d"))] = self.uid
        //: EqualThen.share.start1v1TalkCall(info: newData)
        EqualThen.share.situationClick(info: newData)
    }

    //: func socket_match_onVideoMatch(data: [String: Any]) {}
    func finishData(data _: [String: Any]) {}

    /// 失败处理
    //: func socket_didRecieveError(errorNo: Int, cmd: String, msg: String, data: [String: Any]) {
    func constraintInsert(errorNo: Int, cmd: String, msg: String, data: [String: Any]) {
        //: if cmd == "onRequestCall" {
        if cmd == (String(str_toolTitle) + String(str_addressText.suffix(6))) {
            //: self.func__showStatusBarErrorMsg(showMsg: msg)
            self.oversight(showMsg: msg)
            //: if errorNo == VideoChatErrorCode.MoneyLack.rawValue {
            if errorNo == MakePriorityTarget.MoneyLack.rawValue {
                //: let json = JSON(data)
                let json = JSON(data)
                //: var appendParams = "&type=3"
                var appendParams = (str_containerCameraName.capitalized + String(str_tableContent.suffix(6)))
                //: if json["type"].intValue == 1 { // 音频
                if json[(String(str_giftTitle))].intValue == 1 { // 音频
                    //: appendParams = "&type=4"
                    appendParams = (String(str_labName))
                }
                //: EditTextThen.share.func__pushToRechargeAlert(appendParams: appendParams)
                EditTextThen.share.pause(appendParams: appendParams)
            }
        }
    }
}
