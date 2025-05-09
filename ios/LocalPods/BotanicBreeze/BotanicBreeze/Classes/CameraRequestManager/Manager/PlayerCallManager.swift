
//: Declare String Begin

/*: "0,0" :*/
fileprivate let str_hiddenTitle:[Character] = ["0",",","0"]

/*: "dist/loungePlus" :*/
fileprivate let str_applicationTitle:[Character] = ["d","i","s","t","/","l","o","u","n","g","e"]
fileprivate let str_colorData:[Character] = ["P","l","u","s"]

/*: "mf/freeCall/getVideoInfo" :*/
fileprivate let str_fromName:String = "mf/freplayer data"
fileprivate let str_formValue:String = "l/getop data size"
fileprivate let str_toContent:String = "app model else self piceoInf"
fileprivate let str_nameTitle:String = "accept"

/*: "fromType" :*/
fileprivate let str_lineName:[UInt8] = [0x26,0x32,0x2f,0x2d,0x14,0x39,0x30,0x25]

private func sharedToTransaction(transform num: UInt8) -> UInt8 {
    return num ^ 64
}

/*: "videoId" :*/
fileprivate let str_insertName:[Character] = ["v","i","d","e","o","I","d"]

/*: "uid" :*/
fileprivate let str_matchText:String = "uiview"

/*: "type" :*/
fileprivate let str_makeData:[Character] = ["t","y","p","e"]

/*: "logId" :*/
fileprivate let str_atTitle:[Character] = ["l","o","g","I","d"]

/*: "duration" :*/
fileprivate let str_netData:[Character] = ["d","u","r","a","t","i","o","n"]

/*: "stopUid" :*/
fileprivate let str_limitedValue:String = "record view container add sizestopUid"

/*: "mf/freeCall/operation" :*/
fileprivate let str_pathValue:String = "view color colormf/freeC"
fileprivate let str_stateSendName:String = "all/oindicator let point"
fileprivate let str_cellText:String = "TION"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  PlayerCallManager.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/11/6.
//

//: import UIKit
import UIKit

/// 主动拨打视频弹窗管理
//: class TalkingVideoInitivCallManager: NSObject {
class PlayerCallManager: NSObject {
    //: private var videoCallTimer: Timer?
    private var videoCallTimer: Timer? /// timer
    //: var videoCallModel = TalkingVideoInitivCallModel.init()
    var videoCallModel = DataModelType()
    //: private var countDown = 0
    private var countDown = 0 /// x秒后显示主动拨打弹窗
    //: private var intervalDown = 0
    private var intervalDown = 0 /// 间隔时间x秒
    //: private var timer_Duration: TimeInterval = 0
    private var timer_Duration: TimeInterval = 0 /// 时间间隔 初次3s，后续90s

    //: static let shared = TalkingVideoInitivCallManager()
    static let shared = PlayerCallManager()

    //: private override init() {
    override private init() {
        //: super.init()
        super.init()
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(stop_VideoCallTimer),
                                               selector: #selector(conversationLevel),
                                               //: name: DID_LOGIN_OUT_SUCCESS_NOTIFICATION,
                                               name: kLet_useName,
                                               //: object: nil)
                                               object: nil)
    }

    //: override func copy() -> Any { return self }
    override func copy() -> Any { return self }
    //: override func mutableCopy() -> Any { return self }
    override func mutableCopy() -> Any { return self }
}

// MARK: - Event

//: extension TalkingVideoInitivCallManager {
extension PlayerCallManager {
    //: private func distroryNotif() {
    private func distroryLogNotif() {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    //: func setObserver() {
    func upObserver() {
        //: guard EqualThen.share.loginUserMode.callPopupSetting != "0,0" else {
        guard EqualThen.share.loginUserMode.callPopupSetting != "0,0" else {
            //: distroryNotif()
            distroryLogNotif()
            //: return
            return
        }
        //: let arr = EqualThen.share.loginUserMode.callPopupSetting .split(separator: ",")
        let arr = EqualThen.share.loginUserMode.callPopupSetting.split(separator: ",")
        //: if arr.count > 1 {
        if arr.count > 1 {
            //: countDown = Int(arr[0]) ?? 0
            countDown = Int(arr[0]) ?? 0
            //: intervalDown = Int(arr[1]) ?? 0
            intervalDown = Int(arr[1]) ?? 0
        }
        //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now()+Double(countDown)) {
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + Double(countDown)) {
            //: self.req_getVideoInfo()
            self.instrumentation()
        }
        /// 充值/订阅成功
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(paySuccessTool),
                                               selector: #selector(jawsOfLife),
                                               //: name: USER_UPDATE_RESIDUALINFO_NOTIFICATION,
                                               name: USER_UPDATE_LOUNGEPLUSINFO_NOTIFICATION,
                                               //: object: nil)
                                               object: nil)
    }

    /// 开启x秒倒计时
    //: func initVideoCallTimer() {
    func dubTimer() {
        //: self.timer_Duration = TimeInterval(intervalDown)
        self.timer_Duration = TimeInterval(intervalDown)
        //: if videoCallTimer == nil {
        if videoCallTimer == nil {
            //: videoCallTimer = Timer.scheduledTimer(timeInterval: timer_Duration, target: self, selector: #selector(req_getVideoInfo), userInfo: nil, repeats: true)
            videoCallTimer = Timer.scheduledTimer(timeInterval: timer_Duration, target: self, selector: #selector(instrumentation), userInfo: nil, repeats: true)
            //: RunLoop.current.add(videoCallTimer!, forMode: RunLoop.Mode.common)
            RunLoop.current.add(videoCallTimer!, forMode: RunLoop.Mode.common)
        }
    }

    //: private func videoCallTimerPopView() {
    private func marginApp() {
        /// 当前显示半屏充值页或订阅页时，不显示弹窗
        //: if currentViewController()?.isKind(of: TalkingWebViewController.self) == true {
        if infoController()?.isKind(of: IgnitionKeyViewController.self) == true {
            //: let vc = currentViewController() as! TalkingWebViewController
            let vc = infoController() as! IgnitionKeyViewController
            //: if vc.urlStr.contains(WebUrlType.RechargeToVideoInitivHalfPage.rawValue) || vc.urlStr.contains("dist/loungePlus") {
            if vc.urlStr.contains(TypeNameLiteral.RechargeToVideoInitivHalfPage.rawValue) || vc.urlStr.contains((String(str_applicationTitle) + String(str_colorData))) {
                //: return
                return
            }
        }
        /// 当前在随机匹配页，视频通话页，不显示弹窗
        //: if currentViewController()?.isKind(of: TalkingRandomVideoViewController.self) == true || currentViewController()?.isKind(of: TalkingVideoInitivCallVC.self) == true {
        if infoController()?.isKind(of: EqualCaptureReactiveCompatible.self) == true || infoController()?.isKind(of: BulgeOutViewController.self) == true {
            //: return
            return
        }
        //: TalkingPopupWindowManager.shared.videoCallPopUpWindow()
        PlayerWindowManager.shared.beforeUp()
        //: stop_VideoCallTimer()
        conversationLevel()
    }

    /// 停止
    //: @objc func stop_VideoCallTimer() {
    @objc func conversationLevel() {
        //: if self.videoCallTimer != nil {
        if self.videoCallTimer != nil {
            //: self.videoCallTimer?.invalidate()
            self.videoCallTimer?.invalidate()
            //: self.videoCallTimer = nil
            self.videoCallTimer = nil
        }
    }

    ///  充值成功后，跳转到callTab页面
    //: @objc private func paySuccessTool() {
    @objc private func jawsOfLife() {
        //: if currentViewController()?.isKind(of: TalkingWebViewController.self) == true {
        if infoController()?.isKind(of: IgnitionKeyViewController.self) == true {
            //: let vc = currentViewController() as! TalkingWebViewController
            let vc = infoController() as! IgnitionKeyViewController
            //: if (vc.urlStr.contains(WebUrlType.RechargeHalfPage.rawValue) || vc.urlStr.contains(WebUrlType.SubscribeAlert.rawValue )) && vc.isRechargeOrSubscribeChangeMatch {
            if vc.urlStr.contains(TypeNameLiteral.RechargeHalfPage.rawValue) || vc.urlStr.contains(TypeNameLiteral.SubscribeAlert.rawValue), vc.isRechargeOrSubscribeChangeMatch {
                //: stop_VideoCallTimer()
                conversationLevel()
                //: vc.dismiss(animated: true)
                vc.dismiss(animated: true)
//                tabberSelete()
            }
        }
    }
}

// MARK: - Load Data

//: extension TalkingVideoInitivCallManager {
extension PlayerCallManager {
    /// 获取用户主动拨打视频信息
    //: @objc private func req_getVideoInfo() {
    @objc private func instrumentation() {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = WithTitleThen()
        //: reqModel.requestPath = "mf/freeCall/getVideoInfo"
        reqModel.requestPath = (String(str_fromName.prefix(6)) + "eCal" + String(str_formValue.prefix(4)) + "tVid" + String(str_toContent.suffix(5)) + str_nameTitle.replacingOccurrences(of: "accept", with: "o"))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = ["fromType": "0"]
        reqModel.params = [String(bytes: str_lineName.map{sharedToTransaction(transform: $0)}, encoding: .utf8)!: "0"]
        //: reqModel.showErrorStatusBar = false
        reqModel.showErrorStatusBar = false
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_nextTitle.photoLive(model: reqModel) { succeed, result, errorModel in
            /// 用户正在通话中，需要开启x秒后再次请求
            //: if errorModel?.errorCode == 104 {
            if errorModel?.errorCode == 104 {
                //: self.initVideoCallTimer()
                self.dubTimer()
                //: return
                return
            }
            //: guard succeed == true else {
            guard succeed == true else {
                //: self.distroryNotif()
                self.distroryLogNotif()
                //: self.stop_VideoCallTimer()
                self.conversationLevel()
                //: return
                return
            }
            //: guard let result = result as? Dictionary<String, Any> else {
            guard let result = result as? [String: Any] else {
                //: return
                return
            }
            //: if let model = TalkingVideoInitivCallModel.deserialize(from: result as? Dictionary) {
            if let model = DataModelType.deserialize(from: result as? Dictionary) {
                //: self.videoCallModel = model
                self.videoCallModel = model
            }
            /// 预加载
            //: let  player = TalkingVideoPlayerManager.init()
            let player = SendPlayListener()
            //: player.setMute(bEnable: true)
            player.wreak(bEnable: true)
            //: player.playerWithUrlAndVideoView(url: self.videoCallModel.winVideoUrl, view: UIView.init())
            player.requestView(url: self.videoCallModel.winVideoUrl, view: UIView())

            //: self.videoCallTimerPopView()
            self.marginApp()
        }
    }

    /** 接口记录用户是否接通或拒绝当前通话
     *  type :3 拒绝 1 接通 2 挂断
     *  duration 接通时长
     */
    //: func req_userOperation(type: Int, duration: Int = 0, stopUid: String = "", completion: @escaping FinishBlock) {
    func fileBy(type: Int, duration: Int = 0, stopUid: String = "", completion: @escaping FinishBlock) {
        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["videoId"] = videoCallModel.videoId
        dict[(String(str_insertName))] = videoCallModel.videoId
        //: dict["uid"] = videoCallModel.uid
        dict[(str_matchText.replacingOccurrences(of: "view", with: "d"))] = videoCallModel.uid
        //: dict["type"] = type
        dict[(String(str_makeData))] = type
        //: dict["logId"] = videoCallModel.logId
        dict[(String(str_atTitle))] = videoCallModel.logId

        //: if duration > 0 {
        if duration > 0 {
            //: dict["duration"] = duration
            dict[(String(str_netData))] = duration
        }
        //: if stopUid.count > 0 {
        if stopUid.count > 0 {
            //: dict["stopUid"] = stopUid
            dict[(String(str_limitedValue.suffix(7)))] = stopUid
        }

        //: let reqModel = TalkingRequestModel.init()
        let reqModel = WithTitleThen()
        //: reqModel.requestPath = "mf/freeCall/operation"
        reqModel.requestPath = (String(str_pathValue.suffix(8)) + String(str_stateSendName.prefix(5)) + "pera" + str_cellText.lowercased())
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.params = dict
        reqModel.params = dict
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_nextTitle.photoLive(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }
}
