
//: Declare String Begin

/*: "mf/call/GetUserInfo" :*/
fileprivate let str_wrapValue:[Character] = ["m","f","/","c","a","l","l","/"]
fileprivate let str_dataLocationTitle:[Character] = ["G","e","t","U","s","e","r","I","n","f","o"]

/*: "uid" :*/
fileprivate let str_mainData:[UInt8] = [0xfb,0xe7,0xea]

private func viewImage(gift num: UInt8) -> UInt8 {
    return num ^ 142
}

/*: "TRTC 随机视频匹配中." :*/
fileprivate let str_taskData:[Character] = ["T","R","T","C"," ","\u{968f}","机","视"]
fileprivate let str_selectionName:[Character] = ["频","匹","配","\u{4e2d}","."]

/*: "TRTC  :*/
fileprivate let str_valueTitle:String = "target model message centerTRTC "

/*: "发起" :*/
fileprivate let str_shareName:[UInt8] = [0x68,0x2,0x1c,0x65,0x38,0x3a]

private func tabEvent(actual num: UInt8) -> UInt8 {
    return num ^ 141
}

/*: "收到" :*/
fileprivate let str_femaleData:[Character] = ["收","\u{5230}"]

/*: 视频通话. logId: :*/
fileprivate let str_curData:[Character] = ["视","频","通","话","."," "]
fileprivate let str_leadingImageData:String = "logId:var press var time"

/*: ." :*/
fileprivate let str_mName:String = "."

/*: "s- :*/
fileprivate let str_modelData:[Character] = ["s","-"]

/*: - :*/
fileprivate let str_viewText:String = "user"

/*: "TRTC 视频通话销毁. logId： :*/
fileprivate let str_valueName:String = "TindexTC"
fileprivate let str_makeName:String = "话销毁. lup action array last size"

/*: "TRTC 视频通话错误. errCode: :*/
fileprivate let str_addData:String = "TRTC \u{89c6}频"
fileprivate let str_presentationText:[Character] = ["\u{901a}","话","错","误","."," "]
fileprivate let str_touchContent:[Character] = ["e","r","r","C","o","d","e",":"]

/*: , errMsg: :*/
fileprivate let str_cellTargetInfoName:String = ", ertransform at show"

/*: "TRTC 视频通话SDK收到警告. warningCode: :*/
fileprivate let str_onName:String = "TRTC \u{89c6}"
fileprivate let str_hiddenData:String = "收到警\u{544a}"
fileprivate let str_sourceText:String = "rningCvar reply let"
fileprivate let str_messageTitle:[Character] = ["o","d","e",":"]

/*: , warningMsg: :*/
fileprivate let str_whiteTitle:String = "max for, wa"
fileprivate let str_appName:String = "indicator"

/*: "TRTC 视频通话进入房间. result: :*/
fileprivate let str_viewModelData:[Character] = ["T","R","T","C"," ","视","\u{9891}","通","话","进","入","\u{623f}","间","."," ","r","e","s","u","l","t"]
fileprivate let str_currencyTitle:[Character] = [":"]

/*: , logId： :*/
fileprivate let str_sizeContent:String = ", lomake player self view interval"

/*:  加入了房间" :*/
fileprivate let str_videoData:String = " \u{52a0}入了房\u{95f4}"

/*:  离开了房间" :*/
fileprivate let str_primaryTitle:String = " 离开了房间"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ShowCloudDelegate.swift
//  AbroadTalking
//
//  Created by young on 2022/11/8.
//

//: import UIKit
import UIKit

//: import TXLiteAVSDK_Professional
import TXLiteAVSDK_Professional

/// 发起通话时的错误码
//: enum VideoChatErrorCode: Int {
enum MakePriorityTarget: Int {
    //: case CallEnd     = 100
    case CallEnd = 100 // 对方已经下线或者结束了通话
    //: case MoneyLack   = 101
    case MoneyLack = 101 // 发起通话,余额不足
    //: case NeedFaceVerifed   = 60003
    case NeedFaceVerifed = 60003 // 需要真人认证提示
}

/// 通话方式
//: enum VideoChatSituation {
enum AtPopChatSituation {
    //: case Start
    case Start // 发起通话（非通话）
    //: case Recieved
    case Recieved // 收到通话（非通话）
    //: case Resume
    case Resume // 恢复通话（通话中）
    //: case Accept
    case Accept // 视频邀约接通（通话中）
    //: case Calling
    case Calling // 视频邀约拨打通（通话中）
}

/// 通话状态
//: enum VideoChatStage {
enum RunChatStage {
    //: case Waiting
    case Waiting // 等待
    //: case Calling
    case Calling // 通话
    //: case Recieved
    case Recieved // 接收
}

/// 摄像头状态
//: enum VideoCameraStatus {
enum AtVideoCameraStatus {
    //: case Normal
    case Normal // 还未完成初始化
    //: case Open
    case Open // 开启
    //: case Closed
    case Closed // 关闭
}

/// 视频通话画面渲染位置
//: enum VideoChatRenderPosition {
enum StatusRenderPosition {
    //: case selfOnBg
    case selfOnBg // 自己的视频在背景上渲染
    //: case SelfOnWindow
    case SelfOnWindow // 自己的视频在窗口上渲染
}

/// 视频渲染配置
//: class TalkingVideoChatConfig: NSObject {
class PointOfReferenceReactiveCompatible: NSObject {
    //: var isPreviewNow = false
    var isPreviewNow = false // 是否预览画面
    //: var isSmallMode = false
    var isSmallMode = false // 是否小窗口
    //: var isTalking = false
    var isTalking = false // 是否正在通话
    //: var frontCamera = true
    var frontCamera = true // 是否前置摄像头
    //: var openCamera = true
    var openCamera = true // 本人是否开启摄像头
    //: var disconnected = true
    var disconnected = true // 是否未连接
    //: var remoteCameraStatus = VideoCameraStatus.Normal
    var remoteCameraStatus = AtVideoCameraStatus.Normal // 对方摄像头状态
}

//: class TalkingVideoChatManager: NSObject {
class ShowCloudDelegate: NSObject {
    //: var infoModel: TalkingVideoChatModel?
    var infoModel: ViewChatModel? // 视频通话model
    //: var config = TalkingVideoChatConfig()
    var config = PointOfReferenceReactiveCompatible() // 视频渲染配置类
    //: weak var windowVideoView: UIView?
    weak var windowVideoView: UIView? // 通话视图小窗口视频源
    //: weak var bgVideoView: UIView?
    weak var bgVideoView: UIView? // 通话视图背景视频源
    //: weak var bgView: UIView?
    weak var bgView: UIView? // 通话视图背景
    //: weak var smallRenderView: UIView?
    weak var smallRenderView: UIView? // 小窗口模式渲染视图
    //: private var trtcView: TalkingTRTCVideoView?
    private var trtcView: RawViewDelegete? // 预览view（使用商汤美颜）
    //: var trtcRemotUid: String?
    var trtcRemotUid: String? // 进入视频通话房间的对方
    //: private weak var videoOtherView: UIView?
    private weak var videoOtherView: UIView? // 渲染对方视频的view
    //: var isOpenTRTCPreview = false
    var isOpenTRTCPreview = false // 是否开启TRTC本地视频画面预览

    //: override init() {
    override init() {
        //: super.init()
        super.init()
        //: self.notificationAndInterruptSettings()
        self.playerRank()
    }

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
        //: self.shouldReleaseAllResource()
        self.viewBringOut()
    }
}

// MARK: - Request

//: extension TalkingVideoChatManager {
extension ShowCloudDelegate {
    /// 开始视频速配（男）
    /// - Parameters:
    ///   - uid: 接收者的id
    ///   - completion: 回调
    //: class func req_callGetUserInfo(uid: String, completion: @escaping FinishBlock) {
    class func brandAction(uid: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = WithTitleThen()
        //: reqModel.requestPath = "mf/call/GetUserInfo"
        reqModel.requestPath = (String(str_wrapValue) + String(str_dataLocationTitle))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = ["uid": uid]
        reqModel.params = [String(bytes: str_mainData.map{viewImage(gift: $0)}, encoding: .utf8)!: uid]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_nextTitle.photoLive(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }
}

// MARK: - Public Event

//: extension TalkingVideoChatManager {
extension ShowCloudDelegate {
    /// 释放资源
    //: func shouldReleaseAllResource() {
    func viewBringOut() {
        //: destoryTRTCView()
        vanguard()
    }

    /// 摄像头前后置切换
    //: func useFrontCamera(_ frontCamera: Bool) {
    func trademarkColor(_ frontCamera: Bool) {
        //: guard self.config.frontCamera != frontCamera else { return }
        guard self.config.frontCamera != frontCamera else { return }

        //: self.config.frontCamera = frontCamera
        self.config.frontCamera = frontCamera
        //: self.switchTRTCCamer(front: frontCamera)
        self.toFront(front: frontCamera)
    }

    /// 摄像头开启与关闭
    /// - Parameter openCamera: 是否开启
    //: func useCamera(_ openCamera: Bool) {
    func employ(_ openCamera: Bool) {
        //: guard self.config.openCamera != openCamera else { return }
        guard self.config.openCamera != openCamera else { return }

        //: self.config.openCamera = openCamera
        self.config.openCamera = openCamera
        //: self.setTRTCCamera(isOpen: openCamera)
        self.loseOn(isOpen: openCamera)
    }

    /// 更改视频采集渲染展示位置
    //: func changeRenderView() {
    func contentChild() {
        //: guard self.infoModel?.videoStage == .Calling else { return }
        guard self.infoModel?.videoStage == .Calling else { return }

        //: DispatchQueue.main.async {
        DispatchQueue.main.async {
            //: let windowHidden = self.windowVideoView?.isHidden ?? true
            let windowHidden = self.windowVideoView?.isHidden ?? true
            //: self.windowVideoView?.isHidden = self.bgVideoView?.isHidden ?? true
            self.windowVideoView?.isHidden = self.bgVideoView?.isHidden ?? true
            //: self.bgVideoView?.isHidden = windowHidden
            self.bgVideoView?.isHidden = windowHidden
            //: self.bgView?.isHidden = self.bgVideoView?.isHidden ?? true
            self.bgView?.isHidden = self.bgVideoView?.isHidden ?? true
            //: self.startTRTCPreview(smallWindow: self.infoModel?.renderPostion != .selfOnBg)
            self.nobilityComment(smallWindow: self.infoModel?.renderPostion != .selfOnBg)
            //: self.reloadTRTCRemotView()
            self.statusBy()
        }
    }

    /// 创建视频通话房间
    //: func createRoomAndStartPublish() {
    func hidden() {
        // 如果没有预览先开启预览
        //: self.config.isTalking = true
        self.config.isTalking = true
        //: if self.config.isPreviewNow == false {
        if self.config.isPreviewNow == false {
            //: self.startPreview()
            self.stochasticProcessMatch()
        }

        //: enterRoom()
        dioramaName()
    }
}

// MARK: - Private Event

//: extension TalkingVideoChatManager {
extension ShowCloudDelegate {
    /// 前后摄像头切换
    /// - Parameter front: 是否前置
    //: private func switchTRTCCamer(front: Bool) {
    private func toFront(front: Bool) {
        //: guard SenseTime_Use == true else {
        guard kLet_infoData == true else {
            //: TRTCCloud.sharedInstance().getDeviceManager().switchCamera(front)
            TRTCCloud.sharedInstance().getDeviceManager().switchCamera(front)
            //: return
            return
        }

        //: self.trtcView?.switchTRTCCamer(isFront: front)
        self.trtcView?.appearUp(isFront: front)
    }

    /// 是否开启摄像头
    /// - Parameter isOpen: 是否开启
    //: private func setTRTCCamera(isOpen: Bool) {
    private func loseOn(isOpen: Bool) {
        //: guard SenseTime_Use == true else {
        guard kLet_infoData == true else {
            //: if isOpen {
            if isOpen {
                //: self.config.openCamera = true
                self.config.openCamera = true
                //: self.startTRTCPreview(smallWindow: self.infoModel?.renderPostion != .selfOnBg)
                self.nobilityComment(smallWindow: self.infoModel?.renderPostion != .selfOnBg)
                //: } else {
            } else {
                //: self.config.openCamera = false
                self.config.openCamera = false
                //: self.isOpenTRTCPreview = false
                self.isOpenTRTCPreview = false
                //: TRTCCloud.sharedInstance().stopLocalPreview()
                TRTCCloud.sharedInstance().stopLocalPreview()
            }

            //: return
            return
        }

        // 触发`TRTCCloudDelegate`
        //: if isOpen {
        if isOpen {
            //: self.config.openCamera = true
            self.config.openCamera = true
            //: } else {
        } else {
            //: self.config.openCamera = false
            self.config.openCamera = false
            //: TRTCCloud.sharedInstance().stopLocalPreview()
            TRTCCloud.sharedInstance().stopLocalPreview()
        }
        //: self.trtcView?.setTRTCCamera(isOpen: isOpen)
        self.trtcView?.eraseOff(isOpen: isOpen)
        //: self.trtcView?.isHidden = !isOpen
        self.trtcView?.isHidden = !isOpen
    }
}

// MARK: - 小窗口模式

//: extension TalkingVideoChatManager {
extension ShowCloudDelegate {
    /// 进入小窗口模式
    //: func enterSmallRenderMode() {
    func complexionMode() {
        //: guard self.config.isSmallMode == false else { return }
        guard self.config.isSmallMode == false else { return }

        //: self.config.isSmallMode = true
        self.config.isSmallMode = true
        //: reloadTRTCRemotView()
        statusBy()
    }

    /// 退出小窗口模式
    //: func exitSmallRenderMode() {
    func someMakeMode() {
        //: guard self.config.isSmallMode == true else { return }
        guard self.config.isSmallMode == true else { return }

        //: self.config.isSmallMode = false
        self.config.isSmallMode = false
//        startPreview()
        //: reloadTRTCRemotView()
        statusBy()
    }
}

// MARK: - 通知事件

//: extension TalkingVideoChatManager {
extension ShowCloudDelegate {
    /// 初始化通知
    //: func notificationAndInterruptSettings() {
    func playerRank() {
        // 监听 App 切后台
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(appDidEnterBackground(notif:)),
                                               selector: #selector(sessionNotif(notif:)),
                                               //: name: UIApplication.didEnterBackgroundNotification,
                                               name: UIApplication.didEnterBackgroundNotification,
                                               //: object: nil)
                                               object: nil)

        // 监听 App 从后台切前台
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(appWillEnterForeground(notif:)),
                                               selector: #selector(infoLog(notif:)),
                                               //: name: UIApplication.willEnterForegroundNotification,
                                               name: UIApplication.willEnterForegroundNotification,
                                               //: object: nil)
                                               object: nil)

        // 监听电话事件
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(audioSessionWasInterrupted(notif:)),
                                               selector: #selector(tip(notif:)),
                                               //: name: AVAudioSession.interruptionNotification,
                                               name: AVAudioSession.interruptionNotification,
                                               //: object: nil)
                                               object: nil)

        // 播放设备更改监听
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(audioRouteChangeListenerCallback(notif:)),
                                               selector: #selector(draft(notif:)),
                                               //: name: AVAudioSession.routeChangeNotification,
                                               name: AVAudioSession.routeChangeNotification,
                                               //: object: nil)
                                               object: nil)
    }

    /// app进入后台
    //: @objc private func appDidEnterBackground(notif: Notification?) {
    @objc private func sessionNotif(notif: Notification?) {
        //: if notif == nil {
        if notif == nil {
            // 静音
            //: TRTCCloud.sharedInstance().muteLocalAudio(true)
            TRTCCloud.sharedInstance().muteLocalAudio(true)
        }
    }

    /// 监听 App 从后台切前台
    //: @objc private func appWillEnterForeground(notif: Notification?) {
    @objc private func infoLog(notif: Notification?) {
        //: if notif == nil {
        if notif == nil { // 音频被打断，调用这个notification为空，前后台切换不影响语音
            // 非静音
            //: TRTCCloud.sharedInstance().muteLocalAudio(false)
            TRTCCloud.sharedInstance().muteLocalAudio(false)
        }
    }

    // 监听电话事件
    //: @objc private func audioSessionWasInterrupted(notif: Notification) {
    @objc private func tip(notif: Notification) {
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
                //: self.appDidEnterBackground(notif: nil)
                self.sessionNotif(notif: nil)
                //: } else if interruptStatus == AVAudioSession.InterruptionType.ended {
            } else if interruptStatus == AVAudioSession.InterruptionType.ended {
                // 恢复音频设备
                //: self.appWillEnterForeground(notif: nil)
                self.infoLog(notif: nil)
            }
        }
    }

    // 播放设备更改监听
    //: @objc func audioRouteChangeListenerCallback(notif: Notification) {
    @objc func draft(notif: Notification) {
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
        case .newDeviceAvailable:
            // 听筒
            //: TRTCCloud.sharedInstance().setAudioRoute(.modeEarpiece)
            TRTCCloud.sharedInstance().setAudioRoute(.modeEarpiece)

        //: case .oldDeviceUnavailable:
        case .oldDeviceUnavailable:
            // 免提
            //: TRTCCloud.sharedInstance().setAudioRoute(.modeSpeakerphone)
            TRTCCloud.sharedInstance().setAudioRoute(.modeSpeakerphone)

        //: default:
        default:
            //: break
            break
        }
    }
}

// MARK: - 视频通话事件

//: extension TalkingVideoChatManager {
extension ShowCloudDelegate {
    /// 预览视频画面
    /// - Parameter isMatch: 是否随机视频
    //: func startPreview(isMatch: Bool = false) {
    func stochasticProcessMatch(isMatch: Bool = false) {
        //: if isMatch {
        if isMatch {
            //: DeepKeyTamperReactiveCompatible.indexView(msg: "TRTC 随机视频匹配中.")
            DeepKeyTamperReactiveCompatible.indexView(msg: (String(str_taskData) + String(str_selectionName)))
            //: } else {
        } else {
            //: DeepKeyTamperReactiveCompatible.indexView(msg: "TRTC \((infoModel?.videoStage == .Waiting) ? "发起":"收到")视频通话. logId:\(infoModel?.logId ?? 0).")
            DeepKeyTamperReactiveCompatible.indexView(msg: (String(str_valueTitle.suffix(5))) + "\((infoModel?.videoStage == .Waiting) ? "发起" : "收到")" + (String(str_curData) + String(str_leadingImageData.prefix(6))) + "\(infoModel?.logId ?? 0).")
        }
        //: if self.infoModel?.videoStage == .Waiting {
        if self.infoModel?.videoStage == .Waiting {
            //: startTRTCPreview(smallWindow: false)
            nobilityComment(smallWindow: false)
            //: } else if self.infoModel?.videoStage == .Recieved {
        } else if self.infoModel?.videoStage == .Recieved {
            //: startTRTCPreview(smallWindow: false)
            nobilityComment(smallWindow: false)
            //: } else if self.infoModel?.videoStage == .Calling {
        } else if self.infoModel?.videoStage == .Calling {
            //: if self.infoModel?.renderPostion == .selfOnBg {
            if self.infoModel?.renderPostion == .selfOnBg {
                //: startTRTCPreview(smallWindow: false)
                nobilityComment(smallWindow: false)
                //: } else {
            } else {
                //: startTRTCPreview(smallWindow: true)
                nobilityComment(smallWindow: true)
            }
        }
        //: self.config.isPreviewNow = true
        self.config.isPreviewNow = true
    }

    /// trtc本地预览视频画面
    /// - Parameter smallWindow: 是否自己的画面在小窗口
    //: func startTRTCPreview(smallWindow: Bool) {
    func nobilityComment(smallWindow: Bool) {
        //: guard SenseTime_Use == true else {
        guard kLet_infoData == true else {
            //: if !self.isOpenTRTCPreview {
            if !self.isOpenTRTCPreview {
                //: let beautyManger = TRTCCloud.sharedInstance().getBeautyManager()
                let beautyManger = TRTCCloud.sharedInstance().getBeautyManager()
                //: beautyManger.setBeautyStyle(.nature)
                beautyManger.setBeautyStyle(.nature)
                //: beautyManger.setBeautyLevel(6)
                beautyManger.setBeautyLevel(6)
            }

            //: if (smallWindow) {
            if smallWindow {
                //: if (!self.isOpenTRTCPreview) {
                if !self.isOpenTRTCPreview {
                    //: if (self.config.openCamera) {
                    if self.config.openCamera {
                        //: TRTCCloud.sharedInstance().startLocalPreview(self.config.frontCamera, view: self.windowVideoView)
                        TRTCCloud.sharedInstance().startLocalPreview(self.config.frontCamera, view: self.windowVideoView)
                        //: self.isOpenTRTCPreview = true
                        self.isOpenTRTCPreview = true
                    }
                    //: self.videoOtherView = self.bgVideoView
                    self.videoOtherView = self.bgVideoView
                    //: } else {
                } else {
                    //: TRTCCloud.sharedInstance().updateLocalView(self.windowVideoView)
                    TRTCCloud.sharedInstance().updateLocalView(self.windowVideoView)
                    //: self.videoOtherView = self.bgVideoView
                    self.videoOtherView = self.bgVideoView
                }
                //: } else {
            } else {
                //: if (!self.isOpenTRTCPreview) {
                if !self.isOpenTRTCPreview {
                    //: if (self.config.openCamera) {
                    if self.config.openCamera {
                        //: TRTCCloud.sharedInstance().startLocalPreview(self.config.frontCamera, view: self.bgVideoView)
                        TRTCCloud.sharedInstance().startLocalPreview(self.config.frontCamera, view: self.bgVideoView)
                        //: self.isOpenTRTCPreview = true
                        self.isOpenTRTCPreview = true
                    }
                    //: self.videoOtherView = self.windowVideoView
                    self.videoOtherView = self.windowVideoView
                    //: } else {
                } else {
                    //: TRTCCloud.sharedInstance().updateLocalView(self.bgVideoView)
                    TRTCCloud.sharedInstance().updateLocalView(self.bgVideoView)
                    //: self.videoOtherView = self.windowVideoView
                    self.videoOtherView = self.windowVideoView
                }
            }

            //: return
            return
        }

        //: if self.trtcView == nil {
        if self.trtcView == nil {
            //: self.trtcView = TalkingTRTCVideoView()
            self.trtcView = RawViewDelegete()
        }
        //: self.trtcView?.startPreView(isSmallWindow: smallWindow)
        self.trtcView?.ofImage(isSmallWindow: smallWindow)
        //: if smallWindow {
        if smallWindow { // 自己在小窗口
            //: if self.trtcView?.superview != self.windowVideoView {
            if self.trtcView?.superview != self.windowVideoView {
                //: self.trtcView?.removeFromSuperview()
                self.trtcView?.removeFromSuperview()
                //: self.windowVideoView?.addSubview(self.trtcView!)
                self.windowVideoView?.addSubview(self.trtcView!)
                //: self.trtcView?.snp.makeConstraints({ make in
                self.trtcView?.snp.makeConstraints { make in
                    //: make.edges.equalToSuperview()
                    make.edges.equalToSuperview()
                    //: })
                }

                //: self.videoOtherView = self.bgVideoView
                self.videoOtherView = self.bgVideoView
            }
            //: } else {
        } else {
            //: if self.trtcView?.superview != self.bgVideoView {
            if self.trtcView?.superview != self.bgVideoView {
                //: self.trtcView?.removeFromSuperview()
                self.trtcView?.removeFromSuperview()
                //: self.bgVideoView?.addSubview(self.trtcView!)
                self.bgVideoView?.addSubview(self.trtcView!)
                //: self.trtcView?.snp.makeConstraints({ make in
                self.trtcView?.snp.makeConstraints { make in
                    //: make.edges.equalToSuperview()
                    make.edges.equalToSuperview()
                    //: })
                }

                //: self.videoOtherView = self.windowVideoView
                self.videoOtherView = self.windowVideoView
            }
        }
    }

    /// 更新trtc视频采集通话
    //: private func reloadTRTCRemotView() {
    private func statusBy() {
        //: guard self.trtcRemotUid != nil else { return }
        guard self.trtcRemotUid != nil else { return }

        //: if self.smallRenderView != nil && self.config.isSmallMode == true {
        if self.smallRenderView != nil, self.config.isSmallMode == true {
            //: TRTCCloud.sharedInstance().updateRemoteView(self.smallRenderView, streamType: .big, forUser: self.trtcRemotUid!)
            TRTCCloud.sharedInstance().updateRemoteView(self.smallRenderView, streamType: .big, forUser: self.trtcRemotUid!)
            //: } else {
        } else {
            //: TRTCCloud.sharedInstance().updateRemoteView(self.videoOtherView, streamType: .big, forUser: self.trtcRemotUid!)
            TRTCCloud.sharedInstance().updateRemoteView(self.videoOtherView, streamType: .big, forUser: self.trtcRemotUid!)
        }
    }

    /// 进入视频通话房间
    //: private func enterRoom() {
    private func dioramaName() {
        //: let roomId = self.infoModel?.logId ?? 0
        let roomId = self.infoModel?.logId ?? 0
        //: self.trtcRemotUid = nil
        self.trtcRemotUid = nil
        //: let params = TRTCParams()
        let params = TRTCParams()
        //: params.sdkAppId = TRTCAppID
        params.sdkAppId = kLet_deviceEndPartyTitle
        //: params.roomId = UInt32(roomId)
        params.roomId = UInt32(roomId)
        //: params.userId = EqualThen.share.loginUserMode.userID
        params.userId = EqualThen.share.loginUserMode.userID
        //: params.userSig = EqualThen.share.appUserConfigMode.uSigTrtc
        params.userSig = EqualThen.share.appUserConfigMode.uSigTrtc
        //: params.streamId = "s-\(params.userId)-\(roomId)"
        params.streamId = "s-\(params.userId)-\(roomId)"

        //: let videoEncParam = TRTCVideoEncParam()
        let videoEncParam = TRTCVideoEncParam()
        //: videoEncParam.videoResolution = ._640_360
        videoEncParam.videoResolution = ._640_360
        //: videoEncParam.videoFps = 15
        videoEncParam.videoFps = 15
        //: videoEncParam.videoBitrate = 600
        videoEncParam.videoBitrate = 600
        //: videoEncParam.minVideoBitrate = 360
        videoEncParam.minVideoBitrate = 360
        //: videoEncParam.resMode = .portrait
        videoEncParam.resMode = .portrait
        //: TRTCCloud.sharedInstance().delegate = self
        TRTCCloud.sharedInstance().delegate = self
        //: TRTCCloud.sharedInstance().setVideoEncoderParam(videoEncParam)
        TRTCCloud.sharedInstance().setVideoEncoderParam(videoEncParam)

        //: if SenseTime_Use {
        if kLet_infoData {
            //: TRTCCloud.sharedInstance().enableCustomVideoCapture(.big, enable: true)
            TRTCCloud.sharedInstance().enableCustomVideoCapture(.big, enable: true)
            //: } else {
        } else {
            //: let beautyManger = TRTCCloud.sharedInstance().getBeautyManager()
            let beautyManger = TRTCCloud.sharedInstance().getBeautyManager()
            //: beautyManger.setBeautyStyle(.nature)
            beautyManger.setBeautyStyle(.nature)
            //: beautyManger.setBeautyLevel(6)
            beautyManger.setBeautyLevel(6)
        }

        //: TRTCCloud.sharedInstance().startLocalAudio(TRTCAudioQuality.default)
        TRTCCloud.sharedInstance().startLocalAudio(TRTCAudioQuality.default)
        //: TRTCCloud.sharedInstance().enterRoom(params, appScene: .videoCall)
        TRTCCloud.sharedInstance().enterRoom(params, appScene: .videoCall)
    }

    /// 销毁trtc
    //: private func destoryTRTCView() {
    private func vanguard() {
        //: DeepKeyTamperReactiveCompatible.indexView(msg: "TRTC 视频通话销毁. logId：\(infoModel?.logId ?? 0).")
        DeepKeyTamperReactiveCompatible.indexView(msg: (str_valueName.replacingOccurrences(of: "index", with: "R") + " \u{89c6}频通" + String(str_makeName.prefix(6)) + "ogId\u{ff1a}") + "\(infoModel?.logId ?? 0).")
        //: self.config.isPreviewNow = false
        self.config.isPreviewNow = false

        //: if SenseTime_Use {
        if kLet_infoData {
            //: self.trtcView?.stopPreView()
            self.trtcView?.towardMoment()
            //: } else {
        } else {
            //: self.isOpenTRTCPreview = false
            self.isOpenTRTCPreview = false
            //: TRTCCloud.sharedInstance().stopLocalPreview()
            TRTCCloud.sharedInstance().stopLocalPreview()
        }

        //: self.trtcView?.removeFromSuperview()
        self.trtcView?.removeFromSuperview()
        //: self.trtcView = nil
        self.trtcView = nil

        //: if self.config.isTalking == true {
        if self.config.isTalking == true {
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
    }

    /// 视频通话重连
    //: func restartTalkWhenDisconnectedAndNetAvailable() {
    func sumView() {
        //: if self.config.disconnected == true {
        if self.config.disconnected == true {
            //: self.config.disconnected = false
            self.config.disconnected = false
            //: self.createRoomAndStartPublish()
            self.hidden()
        }
    }
}

// MARK: - TRTCCloudDelegate

//: extension TalkingVideoChatManager: TRTCCloudDelegate {
extension ShowCloudDelegate: TRTCCloudDelegate {
    //: func onError(_ errCode: TXLiteAVError, errMsg: String?, extInfo: [AnyHashable: Any]?) {
    func onError(_ errCode: TXLiteAVError, errMsg: String?, extInfo _: [AnyHashable: Any]?) {
        //: DeepKeyTamperReactiveCompatible.indexView(msg: "TRTC 视频通话错误. errCode:\(errCode), errMsg:\(String(describing: errMsg)).")
        DeepKeyTamperReactiveCompatible.indexView(msg: (str_addData + String(str_presentationText) + String(str_touchContent)) + "\(errCode)" + (String(str_cellTargetInfoName.prefix(4)) + "rMsg:") + "\(String(describing: errMsg)).")
        //: if errMsg != nil {
        if errMsg != nil {
            //: self.func__showStatusBarErrorMsg(showMsg: errMsg!)
            self.oversight(showMsg: errMsg!)
        }
    }

    //: func onWarning(_ warningCode: TXLiteAVWarning, warningMsg: String?, extInfo: [AnyHashable: Any]?) {
    func onWarning(_ warningCode: TXLiteAVWarning, warningMsg: String?, extInfo _: [AnyHashable: Any]?) {
        //: DeepKeyTamperReactiveCompatible.indexView(msg: "TRTC 视频通话SDK收到警告. warningCode:\(warningCode), warningMsg:\(String(describing: warningMsg)).")
        DeepKeyTamperReactiveCompatible.indexView(msg: (str_onName + "\u{9891}通话SDK" + str_hiddenData + ". wa" + String(str_sourceText.prefix(6)) + String(str_messageTitle)) + "\(warningCode)" + (String(str_whiteTitle.suffix(4)) + "rningMsg" + str_appName.replacingOccurrences(of: "indicator", with: ":")) + "\(String(describing: warningMsg)).")
        //: if self.config.remoteCameraStatus == .Normal {
        if self.config.remoteCameraStatus == .Normal {
            //: self.config.remoteCameraStatus = .Closed
            self.config.remoteCameraStatus = .Closed
            //: NotificationCenter.default.post(name: VIDEO_CHAT_OTHER_CAMERA_AVAILABLE_NOTIFICATION, object: self)
            NotificationCenter.default.post(name: kLet_titleValue, object: self)
        }
    }

    //: func onEnterRoom(_ result: Int) {
    func onEnterRoom(_ result: Int) {
        //: DeepKeyTamperReactiveCompatible.indexView(msg: "TRTC 视频通话进入房间. result:\(result), logId：\(infoModel?.logId ?? 0).")
        DeepKeyTamperReactiveCompatible.indexView(msg: (String(str_viewModelData) + String(str_currencyTitle)) + "\(result)" + (String(str_sizeContent.prefix(4)) + "gId：") + "\(infoModel?.logId ?? 0).")
        //: if result < 0 {
        if result < 0 { // 加入失败
            //: self.config.disconnected = true
            self.config.disconnected = true
            //: self.config.isPreviewNow = false
            self.config.isPreviewNow = false
            //: TalkingSocketManager.shared.endTalkingPing()
            DeviceSocketDelegate.shared.panelWith()
            //: } else {
        } else {
            //: self.config.disconnected = false
            self.config.disconnected = false
            //: self.config.isPreviewNow = true
            self.config.isPreviewNow = true
        }
    }

    //: func onExitRoom(_ reason: Int) {
    func onExitRoom(_: Int) {
        //: self.config.disconnected = true
        self.config.disconnected = true
        //: self.config.isPreviewNow = false
        self.config.isPreviewNow = false
        //: TalkingSocketManager.shared.endTalkingPing()
        DeviceSocketDelegate.shared.panelWith()
    }

    //: func onRemoteUserEnterRoom(_ userId: String) {
    func onRemoteUserEnterRoom(_ userId: String) {
        //: printLog(message: "\(userId) 加入了房间")
        printLog(message: "\(userId)" + (str_videoData))
    }

    //: func onRemoteUserLeaveRoom(_ userId: String, reason: Int) {
    func onRemoteUserLeaveRoom(_ userId: String, reason _: Int) {
        //: printLog(message: "\(userId) 离开了房间")
        printLog(message: "\(userId)" + (str_primaryTitle.capitalized))
    }

    /// 用户首针画面
    //: func onFirstVideoFrame(_ userId: String, streamType: TRTCVideoStreamType, width: Int32, height: Int32) {
    func onFirstVideoFrame(_ userId: String, streamType _: TRTCVideoStreamType, width _: Int32, height _: Int32) {
        //: if userId.count > 0 {
        if userId.count > 0 {
            //: let renderView = self.infoModel?.renderPostion == .selfOnBg ? self.windowVideoView:self.bgVideoView
            let renderView = self.infoModel?.renderPostion == .selfOnBg ? self.windowVideoView : self.bgVideoView
            //: renderView?.isHidden = false
            renderView?.isHidden = false
            //: self.bgView?.isHidden = self.bgVideoView?.isHidden ?? false
            self.bgView?.isHidden = self.bgVideoView?.isHidden ?? false
        }
    }

    /// 对方摄像头是否可用
    //: func onUserVideoAvailable(_ userId: String, available: Bool) {
    func onUserVideoAvailable(_ userId: String, available: Bool) {
        //: guard userId != EqualThen.share.loginUserMode.userID else { return }
        guard userId != EqualThen.share.loginUserMode.userID else { return }

        //: self.trtcRemotUid = userId
        self.trtcRemotUid = userId
        //: self.config.remoteCameraStatus = available ? .Open:.Closed
        self.config.remoteCameraStatus = available ? .Open : .Closed

        // 对方摄像头是否可用通知
        //: NotificationCenter.default.post(name: VIDEO_CHAT_OTHER_CAMERA_AVAILABLE_NOTIFICATION, object: self)
        NotificationCenter.default.post(name: kLet_titleValue, object: self)

        //: if self.smallRenderView != nil && self.config.isSmallMode {
        if self.smallRenderView != nil && self.config.isSmallMode {
            //: TRTCCloud.sharedInstance().startRemoteView(userId, streamType: .big, view: self.smallRenderView!)
            TRTCCloud.sharedInstance().startRemoteView(userId, streamType: .big, view: self.smallRenderView!)
            //: } else {
        } else {
            //: TRTCCloud.sharedInstance().startRemoteView(userId, streamType: .big, view: self.videoOtherView)
            TRTCCloud.sharedInstance().startRemoteView(userId, streamType: .big, view: self.videoOtherView)
        }
    }
}
