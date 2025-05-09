
//: Declare String Begin

/*: "Speaker On" :*/
fileprivate let str_touchData:[Character] = ["S","p","e","a","k","e","r"," ","O","n"]

/*: "Speaker Off" :*/
fileprivate let str_addText:[Character] = ["S","p","e","a","k","e","r"," "]
fileprivate let str_statusValue:[Character] = ["O","f","f"]

/*: "s- :*/
fileprivate let str_cameraText:String = "return tos-"

/*: - :*/
fileprivate let str_inputValue:[Character] = ["-"]

/*: "TRTC 音频通话销毁. logId： :*/
fileprivate let str_currentValue:[Character] = ["T","R","T","C"," "]
fileprivate let str_indexData:[Character] = ["音"]
fileprivate let str_countName:String = "\u{9891}通话销\u{6bc1}"

/*: ." :*/
fileprivate let str_pleaseTitle:String = "."

/*: "TRTC 音频通话错误. errCode: :*/
fileprivate let str_tableDataValue:[Character] = ["T","R","T","C"," ","音","频","\u{901a}","话","错","误","."," ","e","r","r","C","o"]
fileprivate let str_nameValue:String = "de:image time"

/*: , errMsg: :*/
fileprivate let str_userName:[Character] = [","," "]
fileprivate let str_performValue:String = "label user selferrMsg:"

/*: "TRTC 音频通话SDK收到警告. warningCode: :*/
fileprivate let str_labLeadingTitle:String = "TRTC 音\u{9891}"
fileprivate let str_responseData:String = "通\u{8bdd}SD"
fileprivate let str_userEqualData:String = "\u{544a}. w"
fileprivate let str_levelTitle:String = "skin app managerngCode:"

/*: , warningMsg: :*/
fileprivate let str_backgroundValue:[Character] = [","," ","w","a","r","n","i","n","g","M","s","g",":"]

/*: "TRTC 音频通话进入房间. result: :*/
fileprivate let str_iconTitle:String = "TRTC 音info self equal"
fileprivate let str_colorText:String = "入房间. resnext app let to white"
fileprivate let str_normalData:String = "let for to callult:"

/*: , logId： :*/
fileprivate let str_atLabelTitle:[Character] = [","," ","l","o","g","I","d","："]

/*:  加入了房间" :*/
fileprivate let str_shareData:[Character] = [" ","\u{52a0}","入","\u{4e86}","房","间"]

/*:  离开了房间" :*/
fileprivate let str_levelData:[Character] = [" ","离","开","\u{4e86}","\u{623f}","间"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  FileCaptureReactiveCompatible.swift
//  AbroadTalking
//
//  Created by young on 2022/12/16.
//

//: import UIKit
import UIKit

//: import TXLiteAVSDK_Professional
import TXLiteAVSDK_Professional

/// 音频渲染配置
//: private class TalkingVoiceChatConfig: NSObject {
private class IndexThen: NSObject {
    //: var isHandsfree = false
    var isHandsfree = false // 是否免提，默认否
    //: var isMute = false
    var isMute = false // 是否静音，默认否
    //: var isTalking = false
    var isTalking = false // 是否正在通话
    //: var disconnected = true
    var disconnected = true // 是否未连接
}

//: class TalkingVoiceChatManager: NSObject {
class FileCaptureReactiveCompatible: NSObject {
    //: weak var handsfreeBtn: UIButton?
    weak var handsfreeBtn: UIButton? // 免提按钮弱引用
    //: weak var handsfreeDesLab: UILabel?
    weak var handsfreeDesLab: UILabel? // 免提描述弱引用
    //: private var config = TalkingVoiceChatConfig()
    private var config = IndexThen() // 音频渲染配置类
    //: private var logId = 0
    private var logId = 0 // 通话Id

    //: override init() {
    override init() {
        //: super.init()
        super.init()
        //: self.notificationAndInterruptSettings()
        self.notification()
    }

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
        //: self.shouldReleaseAllResource()
        self.laborResourcesShow()
    }
}

// MARK: - Public Event

//: extension TalkingVoiceChatManager {
extension FileCaptureReactiveCompatible {
    /// 挂断来电后，需重恢复音频设备
    //: func enableAudioModule(enable: Bool) {
    func colorEnable(enable: Bool) {
        //: guard enable == true else { return }
        guard enable == true else { return }

        // 先暂停音频设备
        //: notification_stopLocalAudio(notif: nil)
        coordinateError(notif: nil)
        //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1) {
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1) {
            // 再恢复音频设备
            //: self.notification_startLocalAudio(notif: nil)
            self.maxPing(notif: nil)
        }
    }

    /// 释放资源
    //: func shouldReleaseAllResource() {
    func laborResourcesShow() {
        //: destoryTRTCView()
        safetyMarginView()
    }

    /// 创建音频通话房间
    /// - Parameter roomId: 房间id
    //: func createRoomAndStartPublish(roomId: Int) {
    func closeline(roomId: Int) {
        //: self.handsfreeBtn?.isEnabled = !hasHeadSet()
        self.handsfreeBtn?.isEnabled = !levelMagnitude()

        //: self.config.isTalking = true
        self.config.isTalking = true
        //: self.logId = roomId
        self.logId = roomId
        //: enterRoom()
        showRoom()
    }

    /// 设置静音
    /// - Parameter isMute: true：静音；false：恢复
    //: func setMute(isMute: Bool) {
    func setFill(isMute: Bool) {
        //: guard self.config.isMute != isMute else { return }
        guard self.config.isMute != isMute else { return }

        //: self.config.isMute = isMute
        self.config.isMute = isMute
        //: TRTCCloud.sharedInstance().muteLocalAudio(isMute)
        TRTCCloud.sharedInstance().muteLocalAudio(isMute)
    }

    /// 设置免提
    /// - Parameter isHandsfree: true：开启免提；false：听筒
    //: func setHandsfree(isHandsfree: Bool) {
    func outsideTo(isHandsfree: Bool) {
        //: guard hasHeadSet() == false else { return }
        guard levelMagnitude() == false else { return }
        //: guard self.config.isHandsfree != isHandsfree else { return }
        guard self.config.isHandsfree != isHandsfree else { return }

        //: self.config.isHandsfree = isHandsfree
        self.config.isHandsfree = isHandsfree
        //: self.handsfreeBtn?.isSelected = isHandsfree
        self.handsfreeBtn?.isSelected = isHandsfree
        //: self.handsfreeDesLab?.text = isHandsfree ? "Speaker On".localized:"Speaker Off".localized
        self.handsfreeDesLab?.text = isHandsfree ? (String(str_touchData)).localized : (String(str_addText) + String(str_statusValue)).localized
        //: updateWhenPlayDeviceChanged(isHandsfree: isHandsfree)
        yellow(isHandsfree: isHandsfree)
    }
}

// MARK: - Private Event

//: extension TalkingVoiceChatManager {
extension FileCaptureReactiveCompatible {
    /// 判断当前设备是否链接了蓝牙耳机等设备
    /// - Returns: true：有；false：没有
    //: private func hasHeadSet() -> Bool {
    private func levelMagnitude() -> Bool {
        //: let audioSession = AVAudioSession.sharedInstance()
        let audioSession = AVAudioSession.sharedInstance()
        //: let currentRoute = audioSession.currentRoute
        let currentRoute = audioSession.currentRoute
        //: for output in currentRoute.outputs {
        for output in currentRoute.outputs {
            //: let portType = output.portType
            let portType = output.portType
            //: if portType == .headphones ||
            if portType == .headphones ||
                //: portType == .bluetoothA2DP ||
                portType == .bluetoothA2DP ||
                //: portType == .bluetoothLE ||
                portType == .bluetoothLE ||
                //: portType == .bluetoothHFP {
                portType == .bluetoothHFP
            {
                //: return true
                return true
            }
        }

        //: return false
        return false
    }
}

// MARK: - 通知事件

//: extension TalkingVoiceChatManager {
extension FileCaptureReactiveCompatible {
    /// 初始化通知
    //: func notificationAndInterruptSettings() {
    func notification() {
        // 监听 App 切后台
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(notification_stopLocalAudio(notif:)),
                                               selector: #selector(coordinateError(notif:)),
                                               //: name: UIApplication.didEnterBackgroundNotification,
                                               name: UIApplication.didEnterBackgroundNotification,
                                               //: object: nil)
                                               object: nil)

        // 监听 App 从后台切前台
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(notification_startLocalAudio(notif:)),
                                               selector: #selector(maxPing(notif:)),
                                               //: name: UIApplication.willEnterForegroundNotification,
                                               name: UIApplication.willEnterForegroundNotification,
                                               //: object: nil)
                                               object: nil)

        // 监听电话事件
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(audioSessionWasInterrupted(notif:)),
                                               selector: #selector(onNotif(notif:)),
                                               //: name: AVAudioSession.interruptionNotification,
                                               name: AVAudioSession.interruptionNotification,
                                               //: object: nil)
                                               object: nil)

        // 播放设备更改监听
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(audioRouteChangeListenerCallback(notif:)),
                                               selector: #selector(atListener(notif:)),
                                               //: name: AVAudioSession.routeChangeNotification,
                                               name: AVAudioSession.routeChangeNotification,
                                               //: object: nil)
                                               object: nil)
    }

    /// app进入后台，暂停音频设备
    //: @objc private func notification_stopLocalAudio(notif: Notification?) {
    @objc private func coordinateError(notif: Notification?) {
        //: if notif == nil {
        if notif == nil {
            //: TRTCCloud.sharedInstance().stopLocalAudio()
            TRTCCloud.sharedInstance().stopLocalAudio()
        }
    }

    /// 监听 App 从后台切前台，开启音频设备
    //: @objc private func notification_startLocalAudio(notif: Notification?) {
    @objc private func maxPing(notif: Notification?) {
        //: if notif == nil {
        if notif == nil {
            //: TRTCCloud.sharedInstance().startLocalAudio(.default)
            TRTCCloud.sharedInstance().startLocalAudio(.default)
        }
    }

    // 监听电话事件
    //: @objc private func audioSessionWasInterrupted(notif: Notification) {
    @objc private func onNotif(notif: Notification) {
        //: guard notif.userInfo != nil else { return }
        guard notif.userInfo != nil else { return }
        //: DispatchQueue.main.async {
        DispatchQueue.main.async {
            //: guard let status = notif.userInfo![AVAudioSessionInterruptionTypeKey] as? UInt else {
            guard let status = notif.userInfo![AVAudioSessionInterruptionTypeKey] as? UInt else {
                //: return
                return
            }
            //: let  interruptStatus = AVAudioSession.InterruptionType(rawValue: status)
            let interruptStatus = AVAudioSession.InterruptionType(rawValue: status)
            //: if interruptStatus == AVAudioSession.InterruptionType.began {
            if interruptStatus == AVAudioSession.InterruptionType.began {
                // 暂停音频设备
                //: self.notification_stopLocalAudio(notif: nil)
                self.coordinateError(notif: nil)
                //: } else if interruptStatus == AVAudioSession.InterruptionType.ended {
            } else if interruptStatus == AVAudioSession.InterruptionType.ended {
                // 恢复音频设备
                //: self.notification_startLocalAudio(notif: nil)
                self.maxPing(notif: nil)
            }
        }
    }

    // 播放设备更改监听
    //: @objc func audioRouteChangeListenerCallback(notif: Notification) {
    @objc func atListener(notif: Notification) {
        //: guard let interuptionDict = notif.userInfo else { return }
        guard let interuptionDict = notif.userInfo else { return }
        //: guard let number = interuptionDict[AVAudioSessionRouteChangeReasonKey] as? NSNumber else {
        guard let number = interuptionDict[AVAudioSessionRouteChangeReasonKey] as? NSNumber else {
            //: return
            return
        }
        //: let routeChangeReason = AVAudioSession.RouteChangeReason(rawValue: number.uintValue)
        let routeChangeReason = AVAudioSession.RouteChangeReason(rawValue: number.uintValue)

        //: switch(routeChangeReason) {
        switch routeChangeReason {
        //: case .newDeviceAvailable:
        case .newDeviceAvailable: // 听筒
            //: self.handsfreeBtn?.isEnabled = false
            self.handsfreeBtn?.isEnabled = false
            //: updateWhenPlayDeviceChanged(isHandsfree: false)
            yellow(isHandsfree: false)

        //: case .oldDeviceUnavailable:
        case .oldDeviceUnavailable: // 免提
            //: self.handsfreeBtn?.isEnabled = true
            self.handsfreeBtn?.isEnabled = true
            //: self.config.isHandsfree = true
            self.config.isHandsfree = true
            //: self.handsfreeBtn?.isSelected = true
            self.handsfreeBtn?.isSelected = true
            //: self.handsfreeDesLab?.text = "Speaker On".localized
            self.handsfreeDesLab?.text = (String(str_touchData)).localized
            //: updateWhenPlayDeviceChanged(isHandsfree: self.config.isHandsfree)
            yellow(isHandsfree: self.config.isHandsfree)

        //: default:
        default:
            //: break
            break
        }
    }
}

// MARK: - 音频通话事件

//: extension TalkingVoiceChatManager {
extension FileCaptureReactiveCompatible {
    /// 进入音频通话房间
    //: private func enterRoom() {
    private func showRoom() {
        //: let params = TRTCParams()
        let params = TRTCParams()
        //: params.sdkAppId = TRTCAppID
        params.sdkAppId = kLet_deviceEndPartyTitle
        //: params.roomId = UInt32(logId)
        params.roomId = UInt32(logId)
        //: params.userId = EqualThen.share.loginUserMode.userID
        params.userId = EqualThen.share.loginUserMode.userID
        //: params.userSig = EqualThen.share.appUserConfigMode.uSigTrtc
        params.userSig = EqualThen.share.appUserConfigMode.uSigTrtc
        //: params.streamId = "s-\(params.userId)-\(logId)"
        params.streamId = "s-\(params.userId)-\(logId)"
        //: TRTCCloud.sharedInstance().delegate = self
        TRTCCloud.sharedInstance().delegate = self
        //: TRTCCloud.sharedInstance().startLocalAudio(.default)
        TRTCCloud.sharedInstance().startLocalAudio(.default)
        //: TRTCCloud.sharedInstance().enterRoom(params, appScene: .audioCall)
        TRTCCloud.sharedInstance().enterRoom(params, appScene: .audioCall)
        // 初始设置是否免提
        //: updateWhenPlayDeviceChanged(isHandsfree: self.config.isHandsfree)
        yellow(isHandsfree: self.config.isHandsfree)
    }

    /// 更新通话模式
    /// - Parameter isHandsfree: 是否免提
    //: private func updateWhenPlayDeviceChanged(isHandsfree: Bool) {
    private func yellow(isHandsfree: Bool) {
        //: TRTCCloud.sharedInstance().setAudioRoute((isHandsfree ? .modeSpeakerphone:.modeEarpiece))
        TRTCCloud.sharedInstance().setAudioRoute(isHandsfree ? .modeSpeakerphone : .modeEarpiece)
    }

    /// 销毁trtc
    //: private func destoryTRTCView() {
    private func safetyMarginView() {
        //: DeepKeyTamperReactiveCompatible.indexView(msg: "TRTC 音频通话销毁. logId：\(logId).")
        DeepKeyTamperReactiveCompatible.indexView(msg: (String(str_currentValue) + String(str_indexData) + str_countName + ". logId：") + "\(logId).")
        //: guard self.config.isTalking else { return }
        guard self.config.isTalking else { return }

        //: if self.config.isHandsfree == false {
        if self.config.isHandsfree == false { // 恢复系统扬声器播放声音
            //: updateWhenPlayDeviceChanged(isHandsfree: true)
            yellow(isHandsfree: true)
        }
        //: TRTCCloud.sharedInstance().exitRoom()
        TRTCCloud.sharedInstance().exitRoom()
        //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5) {
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5) {
            //: TRTCCloud.destroySharedIntance()
            TRTCCloud.destroySharedIntance()
        }
        //: self.config.isTalking = false
        self.config.isTalking = false
    }

    /// 音频通话重连
    /// - Parameter roomId: 房间Id
    //: func restartTalkWhenDisconnectedAndNetAvailable(roomId: Int) {
    func black(roomId: Int) {
        //: if self.config.disconnected == true {
        if self.config.disconnected == true {
            //: self.config.disconnected = false
            self.config.disconnected = false
            //: self.createRoomAndStartPublish(roomId: roomId)
            self.closeline(roomId: roomId)
        }
    }
}

// MARK: - TRTCCloudDelegate

//: extension TalkingVoiceChatManager: TRTCCloudDelegate {
extension FileCaptureReactiveCompatible: TRTCCloudDelegate {
    //: func onError(_ errCode: TXLiteAVError, errMsg: String?, extInfo: [AnyHashable: Any]?) {
    func onError(_ errCode: TXLiteAVError, errMsg: String?, extInfo _: [AnyHashable: Any]?) {
        //: DeepKeyTamperReactiveCompatible.indexView(msg: "TRTC 音频通话错误. errCode:\(errCode), errMsg:\(String(describing: errMsg)).")
        DeepKeyTamperReactiveCompatible.indexView(msg: (String(str_tableDataValue) + String(str_nameValue.prefix(3))) + "\(errCode)" + (String(str_userName) + String(str_performValue.suffix(7))) + "\(String(describing: errMsg)).")
        //: if errMsg != nil {
        if errMsg != nil {
            //: self.func__showStatusBarErrorMsg(showMsg: errMsg!)
            self.oversight(showMsg: errMsg!)
        }
    }

    //: func onWarning(_ warningCode: TXLiteAVWarning, warningMsg: String?, extInfo: [AnyHashable: Any]?) {
    func onWarning(_ warningCode: TXLiteAVWarning, warningMsg: String?, extInfo _: [AnyHashable: Any]?) {
        //: DeepKeyTamperReactiveCompatible.indexView(msg: "TRTC 音频通话SDK收到警告. warningCode:\(warningCode), warningMsg:\(String(describing: warningMsg)).")
        DeepKeyTamperReactiveCompatible.indexView(msg: (str_labLeadingTitle + str_responseData + "K收到警" + str_userEqualData + "arni" + String(str_levelTitle.suffix(7))) + "\(warningCode)" + (String(str_backgroundValue)) + "\(String(describing: warningMsg)).")
    }

    //: func onEnterRoom(_ result: Int) {
    func onEnterRoom(_ result: Int) {
        //: DeepKeyTamperReactiveCompatible.indexView(msg: "TRTC 音频通话进入房间. result:\(result), logId：\(logId).")
        DeepKeyTamperReactiveCompatible.indexView(msg: (String(str_iconTitle.prefix(6)) + "频通话进" + String(str_colorText.prefix(8)) + String(str_normalData.suffix(4))) + "\(result)" + (String(str_atLabelTitle)) + "\(logId).")
        //: if result < 0 {
        if result < 0 { // 加入失败
            //: self.config.disconnected = true
            self.config.disconnected = true
            //: TalkingSocketManager.shared.endTalkingPing()
            DeviceSocketDelegate.shared.panelWith()
            //: } else {
        } else {
            //: self.config.disconnected = false
            self.config.disconnected = false
        }
    }

    //: func onExitRoom(_ reason: Int) {
    func onExitRoom(_: Int) {
        //: self.config.disconnected = true
        self.config.disconnected = true
        //: TalkingSocketManager.shared.endTalkingPing()
        DeviceSocketDelegate.shared.panelWith()
    }

    //: func onRemoteUserEnterRoom(_ userId: String) {
    func onRemoteUserEnterRoom(_ userId: String) {
        //: printLog(message: "\(userId) 加入了房间")
        printLog(message: "\(userId)" + (String(str_shareData)))
    }

    //: func onRemoteUserLeaveRoom(_ userId: String, reason: Int) {
    func onRemoteUserLeaveRoom(_ userId: String, reason _: Int) {
        //: printLog(message: "\(userId) 离开了房间")
        printLog(message: "\(userId)" + (String(str_levelData)))
    }
}
