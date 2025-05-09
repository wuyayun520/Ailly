
//: Declare String Begin

/*: "LIVE_NEED_OPEN_NOTIFICATION" :*/
fileprivate let str_rankValue:String = "LIVE_Nimport image self layer"
fileprivate let str_messageValue:String = "equalD"
fileprivate let str_userValue:[Character] = ["_","O","P","E","N","_","N","O","T","I","F","I","C","A","T","I","O","N"]

/*: "LIVE_STATUS_CHANGE_NOTIFICATION" :*/
fileprivate let str_itemModelName:[UInt8] = [0x3d,0x38,0x27,0x34,0x2e,0x22,0x25,0x30,0x25,0x24,0x22,0x2e,0x32,0x39,0x30,0x3f,0x36,0x34,0x2e,0x3f,0x3e,0x25,0x38,0x37,0x38,0x32,0x30,0x25,0x38,0x3e,0x3f]

private func showMake(signal num: UInt8) -> UInt8 {
    return num ^ 113
}

/*: "live/startCheck" :*/
fileprivate let str_aboutName:[Character] = ["l","i","v","e","/","s","t","a"]
fileprivate let str_submitManagerName:String = "rtCheckmini import height scale add"

/*: "live/start" :*/
fileprivate let str_toText:String = "liofe"
fileprivate let str_normalTitle:[Character] = ["t"]

/*: "live/stop" :*/
fileprivate let str_indexValue:[Character] = ["l","i"]
fileprivate let str_succeedData:[Character] = ["v","e","/","s","t","o","p"]

/*: "type" :*/
fileprivate let str_infoValue:[UInt8] = [0x65,0x70,0x79,0x74]

/*: "mf/user/dataCard" :*/
fileprivate let str_toName:String = "mf/uif self class leading kit"
fileprivate let str_accountContent:String = "taCardtext status self"

/*: "uid" :*/
fileprivate let str_makeContent:[UInt8] = [0x6d,0x71,0x7c]

private func jeopardizeShow(image num: UInt8) -> UInt8 {
    return num ^ 24
}

/*: "streamerUid" :*/
fileprivate let str_modelTitle:[UInt8] = [0x27,0x20,0x26,0x31,0x35,0x39,0x31,0x26,0x1,0x3d,0x30]

private func shareColor(observe num: UInt8) -> UInt8 {
    return num ^ 84
}

/*: "roomId" :*/
fileprivate let str_indexText:String = "roomIdcancel end"

/*: "Try again later, if you have any questions please contact customer service" :*/
fileprivate let str_modelValue:[UInt8] = [0x3d,0x1b,0x10,0x49,0x8,0xe,0x8,0x0,0x7,0x49,0x5,0x8,0x1d,0xc,0x1b,0x45,0x49,0x0,0xf,0x49,0x10,0x6,0x1c,0x49,0x1,0x8,0x1f,0xc,0x49,0x8,0x7,0x10,0x49,0x18,0x1c,0xc,0x1a,0x1d,0x0,0x6,0x7,0x1a,0x49,0x19,0x5,0xc,0x8,0x1a,0xc,0x49,0xa,0x6,0x7,0x1d,0x8,0xa,0x1d,0x49,0xa,0x1c,0x1a,0x1d,0x6,0x4,0xc,0x1b,0x49,0x1a,0xc,0x1b,0x1f,0x0,0xa,0xc]

private func norLabHandle(frame num: UInt8) -> UInt8 {
    return num ^ 105
}

/*: "redirectUrl" :*/
fileprivate let str_fileUseTitle:String = "maleedimalee"

/*: "livePushUrl" :*/
fileprivate let str_viewName:String = "downv"
fileprivate let str_countContent:String = "button selfePushUrl"

/*: "FaceActionEvent_Interval_1_second" :*/
fileprivate let str_toolName:[UInt8] = [0x16,0x31,0x33,0x35,0x11,0x33,0x24,0x39,0x3f,0x3e,0x15,0x26,0x35,0x3e,0x24,0xf,0x19,0x3e,0x24,0x35,0x22,0x26,0x31,0x3c,0xf,0x61,0xf,0x23,0x35,0x33,0x3f,0x3e,0x34]

private func colorCurrent(place num: UInt8) -> UInt8 {
    return num ^ 80
}

/*: "hasFace" :*/
fileprivate let str_makeValue:[Character] = ["h","a","s","F","a","c","e"]

/*: "Opening failed" :*/
fileprivate let str_connectionValueText:String = "Openinif size input"
fileprivate let str_miniData:String = "g fato room equal number label"

/*: "LIVE 状态码： :*/
fileprivate let str_frameTitle:String = "pic name selfLIVE 状态"
fileprivate let str_fillViewValue:String = "码："

/*: ." :*/
fileprivate let str_fromHideContent:String = "."

/*: "Network busy!" :*/
fileprivate let str_stopTitle:String = "text array my callNetwo"
fileprivate let str_viewBottomText:String = "rcrop"
fileprivate let str_beautyName:String = "manager detail bubble sound color busy!"

/*: "LIVE 异常下播，evtID: :*/
fileprivate let str_makeTitle:[Character] = ["L","I","V","E"," ","异","\u{5e38}","\u{4e0b}","\u{64ad}","，","e","v","t"]
fileprivate let str_viewValue:[Character] = ["I","D",":"]

/*: "Live room exception" :*/
fileprivate let str_centerTitle:[Character] = ["L","i","v","e"," ","r"]
fileprivate let str_tableValue:[Character] = ["o","o","m"," ","e","x","c","e","p","t","i","o","n"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  UserPushListener.swift
//  AbroadTalking
//
//  Created by young on 2023/6/15.
//

//: import UIKit
import UIKit

//: import TXLiteAVSDK_Professional
import TXLiteAVSDK_Professional

// 是否需要恢复直播
//: public var NEED_RESTORE_LIVE = false
public var kLet_soundInformationContent = false
// 唤起直播功能
//: public let LIVE_NEED_OPEN_NOTIFICATION = NSNotification.Name(rawValue: "LIVE_NEED_OPEN_NOTIFICATION")
public let kLet_messageValue = NSNotification.Name(rawValue: (String(str_rankValue.prefix(6)) + str_messageValue.replacingOccurrences(of: "equal", with: "EE") + String(str_userValue)))
// 直播状态变更通知
//: public let LIVE_STATUS_CHANGE_NOTIFICATION = NSNotification.Name(rawValue: "LIVE_STATUS_CHANGE_NOTIFICATION")
public let kLet_screenText = NSNotification.Name(rawValue: String(bytes: str_itemModelName.map{showMake(signal: $0)}, encoding: .utf8)!)

/// 直播渲染配置
//: class TalkingLiveConfig: NSObject {
class RunConfigThen: NSObject {
    //: var livePushUrl = ""                 // 推流地址
    var livePushUrl = "" // 推流地址
    //: var isSmallMode = false
    var isSmallMode = false // 是否小窗口
    //: var isMute = false
    var isMute = false // 是否静音
    //: var isRequest = false
    var isRequest = false // 正在请求中（防止多次调用）
    //: var frontCamera = true
    var frontCamera = true // 是否前置摄像头
}

//: class TalkingLiveManager: NSObject {
class UserPushListener: NSObject {
    // 直播间消息
    //: var liveRoomModel = TalkingLiveRoomModel()
    var liveRoomModel = UpwardlyTransformable()
    // 是否正在直播中（状态变更时发送通知）
    //: private(set) var isLive: Bool = false {
    private(set) var isLive: Bool = false {
        //: didSet {
        didSet {
            //: if EqualThen.share.appStatus == AppSkinStatus.normal.rawValue {
            if EqualThen.share.appStatus == PhaseOfTheMoonPropertyProtocol.normal.rawValue {
                //: NotificationCenter.default.post(name: LIVE_STATUS_CHANGE_NOTIFICATION, object: self)
                NotificationCenter.default.post(name: kLet_screenText, object: self)
            }
        }
    }

    // TXLive
    //: var config = TalkingLiveConfig()
    var config = RunConfigThen() // 直播渲染配置类
    //: private weak var renderLiveView: UIView?
    private weak var renderLiveView: UIView? // 直播视图视频源
    //: private var localPreviewView: TalkingTRTCVideoView?
    private var localPreviewView: RawViewDelegete? // 本地预览view（使用商汤美颜）
    //: private static var _instance: TalkingLiveManager?
    private static var _instance: UserPushListener? // singleton

    //: private override init() {}
    override private init() {}
    //: class func shared() -> TalkingLiveManager {
    class func sexApp() -> UserPushListener {
        //: guard _instance != nil else {
        guard _instance != nil else {
            //: _instance = TalkingLiveManager()
            _instance = UserPushListener()
            //: return _instance!
            return _instance!
        }
        //: return _instance!
        return _instance!
    }

    //: class func destroy() {
    class func animateBeing() {
        //: if TalkingLiveManager._instance != nil {
        if UserPushListener._instance != nil {
            //: TalkingLiveManager._instance = nil
            UserPushListener._instance = nil
        }
    }

    // MARK: - Lazy Load

    // 直播小窗口悬浮窗
    //: private lazy var liveMiniView: TalkingLiveMiniView = {
    private lazy var liveMiniView: LiveThen = {
        //: let mini = TalkingLiveMiniView.buildLiveMiniView()
        let mini = LiveThen.generateView()
        //: mini.tapGestureBlock = { [weak self] in
        mini.tapGestureBlock = { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            // 进入直播间
            //: self.live_updateTXLivePreview(self.liveRoomVC.renderView, smallWindow: false)
            self.connect(self.liveRoomVC.renderView, smallWindow: false)
            //: guard let currentVC = self.currentViewController() else { return }
            guard let currentVC = self.infoController() else { return }
            // 如果顶部视图是私信页，先返回列表，避免多个私信页消息同步问题
            //: if currentVC.isKind(of: TalkingPrivateChatController.self) {
            if currentVC.isKind(of: SendReactiveCompatible.self) {
                //: if var vcArr = currentVC.navigationController?.viewControllers {
                if var vcArr = currentVC.navigationController?.viewControllers {
                    //: vcArr.removeLast()
                    vcArr.removeLast()
                    //: vcArr.append(self.liveRoomVC)
                    vcArr.append(self.liveRoomVC)
                    //: currentVC.navigationController?.setViewControllers(vcArr, animated: true)
                    currentVC.navigationController?.setViewControllers(vcArr, animated: true)
                }
                //: } else {
            } else {
                //: currentVC.navigationController?.pushViewController(self.liveRoomVC, animated: true)
                currentVC.navigationController?.pushViewController(self.liveRoomVC, animated: true)
            }
        }
        //: return mini
        return mini
        //: }()
    }()

    // 直播控制器
    //: private lazy var liveRoomVC: TalkingLiveBeautifyViewController = {
    private lazy var liveRoomVC: StreetSmartViewController = {
        //: let vc = TalkingLiveBeautifyViewController()
        let vc = StreetSmartViewController()
        //: return vc
        return vc
        //: }()
    }()

    // 检测无人脸弹窗
    //: private lazy var noFaceAlert: TalkingLiveAlertView = {
    private lazy var noFaceAlert: RudeView = //: return RudeView(frame: .zero, type: .noFace)
        .init(frame: .zero, type: .noFace)
    //: }()

    // 直播推流对象
    //: private lazy var livePusher: TXLivePush = {
    private lazy var livePusher: TXLivePush = {
        //: let pushConfig = TXLivePushConfig()
        let pushConfig = TXLivePushConfig()
        //: pushConfig.frontCamera = self.config.frontCamera
        pushConfig.frontCamera = self.config.frontCamera
        //: pushConfig.customModeType |= CUSTOM_MODE_VIDEO_CAPTURE
        pushConfig.customModeType |= CUSTOM_MODE_VIDEO_CAPTURE
        // 标清
        //: let pusher = TXLivePush(config: pushConfig)
        let pusher = TXLivePush(config: pushConfig)
        //: pusher?.setVideoQuality(TX_Enum_Type_VideoQuality.VIDEO_QUALITY_STANDARD_DEFINITION,
        pusher?.setVideoQuality(TX_Enum_Type_VideoQuality.VIDEO_QUALITY_STANDARD_DEFINITION,
                                //: adjustBitrate: true,
                                adjustBitrate: true,
                                //: adjustResolution: false)
                                adjustResolution: false)
        //: return pusher!
        return pusher!
        //: }()
    }()
}

// MARK: - Request

//: extension TalkingLiveManager {
extension UserPushListener {
    /// 检测是否被禁用“开播功能”
    //: class func req_liveStartCheck(completion: @escaping FinishBlock) {
    class func dataCompletion(completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = WithTitleThen()
        //: reqModel.requestPath = "live/startCheck"
        reqModel.requestPath = (String(str_aboutName) + String(str_submitManagerName.prefix(7)))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.showErrorStatusBar = false
        reqModel.showErrorStatusBar = false
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_nextTitle.photoLive(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 开启直播
    //: class func req_liveStart(completion: @escaping FinishBlock) {
    class func contentAppImagination(completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = WithTitleThen()
        //: reqModel.requestPath = "live/start"
        reqModel.requestPath = (str_toText.replacingOccurrences(of: "of", with: "v") + "/star" + String(str_normalTitle))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_nextTitle.photoLive(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 停止直播
    /// - Parameters:
    ///   - type: 停播类型：1=主动终止；2=没有人脸；3=通话中断
    ///   - completion: 回调
    //: class func req_liveStop(type: Int, completion: FinishBlock? = nil) {
    class func variantSize(type: Int, completion: FinishBlock? = nil) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = WithTitleThen()
        //: reqModel.requestPath = "live/stop"
        reqModel.requestPath = (String(str_indexValue) + String(str_succeedData))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = ["type": type]
        reqModel.params = [String(bytes: str_infoValue.reversed(), encoding: .utf8)!: type]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_nextTitle.photoLive(model: reqModel) { succeed, result, errorModel in
            //: completion?(succeed, result, errorModel)
            completion?(succeed, result, errorModel)
        }
    }

    /// - Parameters:
    ///  - uid: 卡片用户id
    ///   - streamerUid: 主播id
    //: class func req__userCardInfo(uid: String, streamerUid: String, roomId: String? = nil , completion: @escaping FinishBlock) {
    class func viewStack(uid: String, streamerUid: String, roomId: String? = nil, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = WithTitleThen()
        //: reqModel.requestPath = "mf/user/dataCard"
        reqModel.requestPath = (String(str_toName.prefix(4)) + "ser/da" + String(str_accountContent.prefix(6)))
        //: var params = ["uid": uid, "streamerUid": streamerUid]
        var params = [String(bytes: str_makeContent.map{jeopardizeShow(image: $0)}, encoding: .utf8)!: uid, String(bytes: str_modelTitle.map{shareColor(observe: $0)}, encoding: .utf8)!: streamerUid]
        //: if let roomId = roomId {
        if let roomId = roomId {
            //: params["roomId"] = roomId
            params[(String(str_indexText.prefix(6)))] = roomId
        }
        //: reqModel.params = params
        reqModel.params = params
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_nextTitle.photoLive(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }
}

// MARK: - 权限检测，通过后开启直播

//: extension TalkingLiveManager {
extension UserPushListener {
    // 检测直播状态，未开播时打开直播
    //: func checkLiveAuthAndTurnOn(completionHandler: ((_ isSucceed: Bool) -> Void)? = nil) {
    func when(completionHandler: ((_ isSucceed: Bool) -> Void)? = nil) {
        //: guard self.isLive == false else { return }
        guard self.isLive == false else { return }
        //: guard self.config.isRequest == false else { return }
        guard self.config.isRequest == false else { return }
        //: self.config.isRequest = true
        self.config.isRequest = true

        // 1. 商汤美颜
        //: guard SenseTime_Use == true else {
        guard kLet_infoData == true else {
            //: self.func__showStatusBarErrorMsg(showMsg: "Try again later, if you have any questions please contact customer service".localized)
            self.oversight(showMsg: String(bytes: str_modelValue.map{norLabHandle(frame: $0)}, encoding: .utf8)!.localized)
            //: self.config.isRequest = false
            self.config.isRequest = false
            //: return
            return
        }

        // 2. 权限检测
        //: TalkingPermissionTool.checkCameraAndMicrophone { isOpen in
        RubricThen.andThen { isOpen in
            //: guard isOpen == true else {
            guard isOpen == true else {
                //: self.func__showStatusBarErrorMsg(showMsg: kMessage_permissions_error)
                self.oversight(showMsg: kLet_likeCancelData)
                //: self.config.isRequest = false
                self.config.isRequest = false
                //: completionHandler?(false)
                completionHandler?(false)
                //: return
                return
            }
            // 3. 接口是否禁播检测
            //: TalkingLiveManager.req_liveStartCheck { succeed, result, errorModel in
            UserPushListener.dataCompletion { succeed, result, errorModel in
                //: guard succeed else {
                guard succeed else {
                    //: self.config.isRequest = false
                    self.config.isRequest = false
                    //: if errorModel?.errorCode == 302 {
                    if errorModel?.errorCode == 302 { // 失败，跳转H5
                        //: if let result = result as? Dictionary<String, Any> {
                        if let result = result as? [String: Any] {
                            //: EditTextThen.share.func__pushToWebVC(urlStr: result["redirectUrl"] as? String)
                            EditTextThen.share.bileOf(urlStr: result[(str_fileUseTitle.replacingOccurrences(of: "male", with: "r") + "ctUrl")] as? String)
                        }
                        //: } else if errorModel?.errorMsg.count ?? 0 > 0 {
                    } else if errorModel?.errorMsg.count ?? 0 > 0 {
                        //: self.func__showStatusBarErrorMsg(showMsg: errorModel!.errorMsg)
                        self.oversight(showMsg: errorModel!.errorMsg)
                    }
                    //: completionHandler?(false)
                    completionHandler?(false)
                    //: return
                    return
                }
                // 4. 是否正在音视频通话中
                //: guard TalkingSocketManager.shared.isTalking == false else {
                guard DeviceSocketDelegate.shared.isTalking == false else {
                    //: self.func__showStatusBarErrorMsg(showMsg: kMessage_videoTalking_limit)
                    self.oversight(showMsg: kLet_replaceTitle)
                    //: self.config.isRequest = false
                    self.config.isRequest = false
                    //: completionHandler?(false)
                    completionHandler?(false)
                    //: return
                    return
                }

                // 校验成功，开启直播
                //: completionHandler?(true)
                completionHandler?(true)
                //: let json = JSON(result ?? [String: Any]())
                let json = JSON(result ?? [String: Any]())

                // 进入直播间
                //: self.currentViewController()?.navigationController?.pushViewController(self.liveRoomVC, animated: true)
                self.infoController()?.navigationController?.pushViewController(self.liveRoomVC, animated: true)
                //: self.live_createRoomAndStartPush(livePushUrl: json["livePushUrl"].stringValue)
                self.anyBivouac(livePushUrl: json[(str_viewName.replacingOccurrences(of: "down", with: "li") + String(str_countContent.suffix(8)))].stringValue)
            }
        }
    }
}

// MARK: - Public Event

//: extension TalkingLiveManager {
extension UserPushListener {
    /// 展示直播违规弹窗
    //: static func live_showWarningView(content: String, reason: String, time: String) {
    static func scoreEnable(content: String, reason: String, time: String) {
        //: let alert = TalkingLiveWarningView()
        let alert = TitleAddView()
        //: alert.refreshUI(content: content, reason: reason, time: time)
        alert.setList(content: content, reason: reason, time: time)
        //: alert.show()
        alert.anRemove()
    }

    /// 释放资源
    //: func live_releaseAllResource() {
    func viewLodge() {
        //: DispatchQueue.main.async {
        DispatchQueue.main.async {
            //: self.isLive = false
            self.isLive = false
            //: self.config.isRequest = false
            self.config.isRequest = false
            //: UIApplication.shared.isIdleTimerDisabled = false
            UIApplication.shared.isIdleTimerDisabled = false // 恢复息屏
            //: NotificationCenter.default.removeObserver(self)
            NotificationCenter.default.removeObserver(self) // 移除通知
            //: TalkingSocketManager.shared.endLivePing()
            DeviceSocketDelegate.shared.listLive() // 结束心跳包
            //: self.liveMiniView.removeFromSuperview()
            self.liveMiniView.removeFromSuperview() // 移除小窗口
            //: self.liveRoomVC.popCurrentViewController()
            self.liveRoomVC.upPop() // 将直播视图从栈中移除
            //: self.destoryTXLiveView()
            self.destory()
            // 释放单例
            //: TalkingLiveManager.destroy()
            UserPushListener.animateBeing()
            // 销毁弹幕
            //: TalkingDanmuManager.danmu_releaseAllResource()
            UserListBankManagerReactiveCompatible.command()
            //: (TalkingApplication.shared as! TalkingApplication).femaleBusyStatusReport()
            (CellTalkingApplication.shared as! CellTalkingApplication).femaleAfterDescribe()
        }
    }

    /// 创建视频通话房间开始推流
    /// - Parameter livePushUrl: 推流地址
    //: func live_createRoomAndStartPush(livePushUrl: String) {
    func anyBivouac(livePushUrl: String) {
        //: self.config.livePushUrl = livePushUrl
        self.config.livePushUrl = livePushUrl

        // 创建预览画面，开始直播（默认大屏）
        //: UIApplication.shared.isIdleTimerDisabled = true
        UIApplication.shared.isIdleTimerDisabled = true // 防止息屏
        //: self.live_updateTXLivePreview(self.liveRoomVC.renderView, smallWindow: false)
        self.connect(self.liveRoomVC.renderView, smallWindow: false)
        //: self.live_startPush(livePushUrl: livePushUrl)
        self.equalUrl(livePushUrl: livePushUrl)
    }

    /// 更新tx直播画面
    /// - Parameters:
    ///   - randerView: 渲染视图（默认为小窗口）
    ///   - smallWindow: 是否小窗口
    //: func live_updateTXLivePreview(_ randerView: UIView? = nil, smallWindow: Bool) {
    func connect(_ randerView: UIView? = nil, smallWindow: Bool) {
        //: if randerView == nil {
        if randerView == nil {
            //: self.renderLiveView = self.liveMiniView.renderView
            self.renderLiveView = self.liveMiniView.renderView
            //: } else {
        } else {
            //: self.renderLiveView = randerView
            self.renderLiveView = randerView
        }

        //: self.liveMiniView.isHidden = !smallWindow
        self.liveMiniView.isHidden = !smallWindow
        //: self.config.isSmallMode = smallWindow
        self.config.isSmallMode = smallWindow
        // 清除小窗口未读消息标识
        //: if self.config.isSmallMode {
        if self.config.isSmallMode {
            //: updateUnredMessageCount(clear: true)
            empty(clear: true)
        }
        //: startTXLivePreview(smallWindow: smallWindow)
        slidingWindow(smallWindow: smallWindow)
    }

    /// 前后摄像头切换
    /// - Parameter front: 是否前置
    //: func switchTRTCCamer(front: Bool) {
    func requestFront(front: Bool) {
        //: guard self.config.frontCamera != front else { return }
        guard self.config.frontCamera != front else { return }
        //: self.config.frontCamera = front
        self.config.frontCamera = front

        //: guard SenseTime_Use == true else {
        guard kLet_infoData == true else {
            //: livePusher.switchCamera()
            livePusher.switchCamera()
            //: return
            return
        }

        //: self.localPreviewView?.switchTRTCCamer(isFront: front)
        self.localPreviewView?.appearUp(isFront: front)
    }
}

// MARK: - 通知事件

//: extension TalkingLiveManager {
extension UserPushListener {
    /// 添加通知监听
    //: private func addNotifications() {
    private func zap() {
        // 监听是否捕获到人脸
        //: if SenseTime_Use == true {
        if kLet_infoData == true {
            //: NotificationCenter.default.addObserver(self,
            NotificationCenter.default.addObserver(self,
                                                   //: selector: #selector(catchFaceResultNotification(notification:)),
                                                   selector: #selector(premium(notification:)),
                                                   //: name: NSNotification.Name(rawValue: "FaceActionEvent_Interval_1_second"),
                                                   name: NSNotification.Name(rawValue: String(bytes: str_toolName.map{colorCurrent(place: $0)}, encoding: .utf8)!),
                                                   //: object: nil)
                                                   object: nil)
        }

        // 监听应用将要销毁
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(appWillTerminate),
                                               selector: #selector(componentPart),
                                               //: name: UIApplication.willTerminateNotification,
                                               name: UIApplication.willTerminateNotification,
                                               //: object: nil)
                                               object: nil)
    }

    /// 程序销毁时调用停播接口
    //: @objc private func appWillTerminate() {
    @objc private func componentPart() {
        //: guard self.isLive == true else { return }
        guard self.isLive == true else { return }
        //: TalkingLiveManager.req_liveStop(type: 1)
        UserPushListener.variantSize(type: 1)
    }
}

// MARK: - 未读消息提醒标识

//: extension TalkingLiveManager {
extension UserPushListener {
    /// 更新未读消息数量
    /// - Parameter clear: 是否清空
    //: func updateUnredMessageCount(clear: Bool = false) {
    func empty(clear: Bool = false) {
        //: guard self.config.isSmallMode else { return }
        guard self.config.isSmallMode else { return }
        //: if clear {
        if clear {
            //: self.liveMiniView.msgCount = 0
            self.liveMiniView.msgCount = 0
            //: } else {
        } else {
            //: self.liveMiniView.msgCount += 1
            self.liveMiniView.msgCount += 1
        }
    }
}

// MARK: - 商汤人脸检测

//: extension TalkingLiveManager {
extension UserPushListener {
    /// 商汤美颜是否捕获到人脸通知（间隔1秒）
    //: @objc private func catchFaceResultNotification(notification: NSNotification) {
    @objc private func premium(notification: NSNotification) {
        //: DispatchQueue.main.async {
        DispatchQueue.main.async {
            //: guard self.isLive == true else { return }
            guard self.isLive == true else { return }
            //: let userInfo = notification.userInfo as! [String: AnyObject]
            let userInfo = notification.userInfo as! [String: AnyObject]
            //: let hasFace = (userInfo["hasFace"] as! NSNumber).description.boolValue
            let hasFace = (userInfo[(String(str_makeValue))] as! NSNumber).description.boolValue
            //: if hasFace == true {
            if hasFace == true {
                //: self.liveMiniView.noFaceTime = 0
                self.liveMiniView.noFaceTime = 0
                //: self.liveRoomVC.topView.noFaceTime = 0
                self.liveRoomVC.topView.noFaceTime = 0
                //: } else {
            } else {
                //: self.liveMiniView.noFaceTime += 1
                self.liveMiniView.noFaceTime += 1
                //: self.liveRoomVC.topView.noFaceTime += 1
                self.liveRoomVC.topView.noFaceTime += 1
            }
            // 连续X秒无人脸出现直接下播
            //: if self.liveMiniView.noFaceTime == MAX_NOFACETIME {
            if self.liveMiniView.noFaceTime == kLet_limitTitle {
                //: self.interval_noFace()
                self.combine()
            }
            // 开启超时检测（防止直播时长时间后台、锁屏）
            //: self.interval_cancelPreviousPerformRequest()
            self.cutCorners()
            //: self.interval_startPerformRequest()
            self.spring()
        }
    }

    /// 开启超时检测（防止直播时长时间后台、锁屏）
    //: private func interval_startPerformRequest() {
    private func spring() {
        //: self.perform(#selector(interval_noFace), with: nil, afterDelay: 30)
        self.perform(#selector(combine), with: nil, afterDelay: 30)
    }

    /// 取消超时检测
    //: private func interval_cancelPreviousPerformRequest() {
    private func cutCorners() {
        //: NSObject.cancelPreviousPerformRequests(withTarget: self,
        NSObject.cancelPreviousPerformRequests(withTarget: self,
                                               //: selector: #selector(interval_noFace),
                                               selector: #selector(combine),
                                               //: object: nil)
                                               object: nil)
    }

    /// 未检测到人脸超过30秒
    //: @objc private func interval_noFace() {
    @objc private func combine() {
        //: guard self.isLive == true else { return }
        guard self.isLive == true else { return }
        //: TalkingLiveManager.req_liveStop(type: 2)
        UserPushListener.variantSize(type: 2)
        //: self.live_releaseAllResource()
        self.viewLodge()
        //: self.noFaceAlert.show()
        self.noFaceAlert.subjectMatterSchedule()
    }
}

// MARK: - TX直播

//: extension TalkingLiveManager {
extension UserPushListener {
    /// tx本地预览视频画面
    /// - Parameter smallWindow: 是否自己的画面在小窗口
    //: private func startTXLivePreview(smallWindow: Bool) {
    private func slidingWindow(smallWindow: Bool) {
        //: guard SenseTime_Use == true else {
        guard kLet_infoData == true else {
            //: let beautyManger = livePusher.getBeautyManager()
            let beautyManger = livePusher.getBeautyManager()
            //: beautyManger?.setBeautyStyle(.nature)
            beautyManger?.setBeautyStyle(.nature)
            //: beautyManger?.setBeautyLevel(6)
            beautyManger?.setBeautyLevel(6)

            //: livePusher.startPreview(self.renderLiveView)
            livePusher.startPreview(self.renderLiveView)
            //: return
            return
        }

        //: if self.localPreviewView == nil {
        if self.localPreviewView == nil {
            //: self.localPreviewView = TalkingTRTCVideoView()
            self.localPreviewView = RawViewDelegete()
        }
        //: self.localPreviewView?.startPreView(isSmallWindow: smallWindow, livePusher: livePusher)
        self.localPreviewView?.ofImage(isSmallWindow: smallWindow, livePusher: livePusher)
        //: if self.localPreviewView?.superview != self.renderLiveView {
        if self.localPreviewView?.superview != self.renderLiveView {
            //: self.localPreviewView?.removeFromSuperview()
            self.localPreviewView?.removeFromSuperview()
            //: self.renderLiveView?.addSubview(self.localPreviewView!)
            self.renderLiveView?.addSubview(self.localPreviewView!)
            //: self.localPreviewView?.snp.makeConstraints({ make in
            self.localPreviewView?.snp.makeConstraints { make in
                //: make.edges.equalToSuperview()
                make.edges.equalToSuperview()
                //: })
            }
        }
    }

    /// 开始直播推流
    /// - Parameter livePushUrl: 推流地址
    //: private func live_startPush(livePushUrl: String) {
    private func equalUrl(livePushUrl: String) {
        //: if SenseTime_Use {
        if kLet_infoData {
            //: } else {
        } else {
            //: let beautyManger = livePusher.getBeautyManager()
            let beautyManger = livePusher.getBeautyManager()
            //: beautyManger?.setBeautyStyle(.nature)
            beautyManger?.setBeautyStyle(.nature)
            //: beautyManger?.setBeautyLevel(6)
            beautyManger?.setBeautyLevel(6)
        }

        //: livePusher.delegate = self
        livePusher.delegate = self
        //: livePusher.setMute(self.config.isMute)
        livePusher.setMute(self.config.isMute)
        //: let result = livePusher.start(livePushUrl)
        let result = livePusher.start(livePushUrl)
        //: onEnterRoom(Int(result))
        aboveGift(Int(result))
    }

    /// 销毁tx直播
    //: private func destoryTXLiveView() {
    private func destory() {
        //: if SenseTime_Use {
        if kLet_infoData {
            //: self.localPreviewView?.stopPreView()
            self.localPreviewView?.towardMoment()
            //: } else {
        } else {
            //: self.livePusher.stopPreview()
            self.livePusher.stopPreview()
        }

        //: self.localPreviewView?.removeFromSuperview()
        self.localPreviewView?.removeFromSuperview()
        //: self.localPreviewView = nil
        self.localPreviewView = nil

        //: self.livePusher.stop()
        self.livePusher.stop()
    }

    /// 进入直播间，调用接口
    //: func onEnterRoom(_ result: Int) {
    func aboveGift(_ result: Int) {
        //: guard result >= 0 else {
        guard result >= 0 else {
            //: self.func__showStatusBarErrorMsg(showMsg: "Opening failed".localized)
            self.oversight(showMsg: (String(str_connectionValueText.prefix(6)) + String(str_miniData.prefix(4)) + "iled").localized)
            //: self.live_releaseAllResource()
            self.viewLodge()
            //: return
            return
        }

        // 加入房间成功，调用开播接口
        //: TalkingLiveManager.req_liveStart { succeed, result, errorModel in
        UserPushListener.contentAppImagination { succeed, result, _ in
            //: guard succeed else {
            guard succeed else {
                //: self.live_releaseAllResource()
                self.viewLodge()
                //: return
                return
            }
            //: if let model = TalkingLiveRoomModel.deserialize(from: result as? Dictionary) {
            if let model = UpwardlyTransformable.deserialize(from: result as? Dictionary) {
                //: self.liveRoomModel = model
                self.liveRoomModel = model
            }
            // 加入弹幕
            //: TalkingDanmuManager.joinLiveRoomDanmu(groupId: self.liveRoomModel.chatGroupId, announcementMsg: self.liveRoomModel.notification)
            UserListBankManagerReactiveCompatible.pathCell(groupId: self.liveRoomModel.chatGroupId, announcementMsg: self.liveRoomModel.notification)
            // 开播成功
            //: self.isLive = true
            self.isLive = true
            //: self.liveMiniView.refreshMiniView()
            self.liveMiniView.futurismOffEqual()
            //: self.liveRoomVC.refreshLiveRoomView()
            self.liveRoomVC.holdFast()
            //: TalkingSocketManager.shared.startLivePing()
            DeviceSocketDelegate.shared.runNumbero()
            //: self.addNotifications()
            self.zap()
            // 销毁上传busy状态定时器
            //: (TalkingApplication.shared as! TalkingApplication).destroyTimer()
            (CellTalkingApplication.shared as! CellTalkingApplication).destroyUponTimer()
        }
    }
}

// MARK: - TXLivePushListener

//: extension TalkingLiveManager: TXLivePushListener {
extension UserPushListener: TXLivePushListener {
    //: func onPushEvent(_ evtID: Int32, withParam param: [AnyHashable: Any]!) {
    func onPushEvent(_ evtID: Int32, withParam _: [AnyHashable: Any]!) {
        //: DeepKeyTamperReactiveCompatible.indexView(msg: "LIVE 状态码：\(evtID).")
        DeepKeyTamperReactiveCompatible.indexView(msg: (String(str_frameTitle.suffix(7)) + str_fillViewValue.capitalized) + "\(evtID).")
        //: if evtID == PUSH_WARNING_NET_BUSY.rawValue {
        if evtID == PUSH_WARNING_NET_BUSY.rawValue {
            //: self.func__showStatusBarErrorMsg(showMsg: "Network busy!".localized)
            self.oversight(showMsg: (String(str_stopTitle.suffix(5)) + str_viewBottomText.replacingOccurrences(of: "crop", with: "k") + String(str_beautyName.suffix(6))).localized)

            //: } else if evtID == PUSH_ERR_OPEN_CAMERA_FAIL.rawValue ||
        } else if evtID == PUSH_ERR_OPEN_CAMERA_FAIL.rawValue ||
            //: evtID == PUSH_ERR_OPEN_MIC_FAIL.rawValue ||
            evtID == PUSH_ERR_OPEN_MIC_FAIL.rawValue ||
            //: evtID == PUSH_ERR_VIDEO_ENCODE_FAIL.rawValue ||
            evtID == PUSH_ERR_VIDEO_ENCODE_FAIL.rawValue ||
            //: evtID == PUSH_ERR_AUDIO_ENCODE_FAIL.rawValue ||
            evtID == PUSH_ERR_AUDIO_ENCODE_FAIL.rawValue ||
            //: evtID == PUSH_ERR_UNSUPPORTED_RESOLUTION.rawValue ||
            evtID == PUSH_ERR_UNSUPPORTED_RESOLUTION.rawValue ||
            //: evtID == PUSH_ERR_UNSUPPORTED_SAMPLERATE.rawValue ||
            evtID == PUSH_ERR_UNSUPPORTED_SAMPLERATE.rawValue ||
            //: evtID == PUSH_ERR_NET_DISCONNECT.rawValue ||
            evtID == PUSH_ERR_NET_DISCONNECT.rawValue ||
            //: evtID == PUSH_ERR_AUDIO_SYSTEM_NOT_WORK.rawValue ||
            evtID == PUSH_ERR_AUDIO_SYSTEM_NOT_WORK.rawValue ||
            //: evtID == PUSH_ERR_INVALID_ADDRESS.rawValue ||
            evtID == PUSH_ERR_INVALID_ADDRESS.rawValue ||
            //: evtID == PUSH_ERR_CONNECT_SERVER_FAILED.rawValue ||
            evtID == PUSH_ERR_CONNECT_SERVER_FAILED.rawValue ||
            //: evtID == PUSH_ERR_NETWORK_UNAVAIABLE.rawValue ||
            evtID == PUSH_ERR_NETWORK_UNAVAIABLE.rawValue ||
            //: evtID == PUSH_ERR_SERVER_REFUSED.rawValue {
            evtID == PUSH_ERR_SERVER_REFUSED.rawValue
        {
            // 主播异常下播
            //: DeepKeyTamperReactiveCompatible.indexView(msg: "LIVE 异常下播，evtID:\(evtID).")
            DeepKeyTamperReactiveCompatible.indexView(msg: (String(str_makeTitle) + String(str_viewValue)) + "\(evtID).")
            //: self.func__showStatusBarErrorMsg(showMsg: "Live room exception".localized)
            self.oversight(showMsg: (String(str_centerTitle) + String(str_tableValue)).localized)
            //: TalkingLiveManager.req_liveStop(type: 1)
            UserPushListener.variantSize(type: 1)
            //: live_releaseAllResource()
            viewLodge()
            // 重新开播弹窗
            //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5) {
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5) {
                //: let alert = TalkingLiveAlertView(frame: .zero, type: .turnOnLive)
                let alert = RudeView(frame: .zero, type: .turnOnLive)
                //: alert.rightBlcok = {
                alert.rightBlcok = {
                    //: TalkingLiveManager.shared().checkLiveAuthAndTurnOn()
                    UserPushListener.sexApp().when()
                }
                //: alert.show()
                alert.subjectMatterSchedule()
            }
        }
    }

    //: func onNetStatus(_ param: [AnyHashable: Any]!) {}
    func onNetStatus(_: [AnyHashable: Any]!) {}

    //: func onScreenCaptureStarted() {}
    func onScreenCaptureStarted() {}

    //: func onScreenCapturePaused(_ reason: Int32) {}
    func onScreenCapturePaused(_: Int32) {}

    //: func onScreenCaptureResumed(_ reason: Int32) {}
    func onScreenCaptureResumed(_: Int32) {}

    //: func onScreenCaptureStoped(_ reason: Int32) {}
    func onScreenCaptureStoped(_: Int32) {}
}
