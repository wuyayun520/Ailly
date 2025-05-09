
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_renderEffectData:[UInt8] = [0x21,0x26,0x21,0x3c,0x60,0x2b,0x27,0x2c,0x2d,0x3a,0x72,0x61,0x68,0x20,0x29,0x3b,0x68,0x26,0x27,0x3c,0x68,0x2a,0x2d,0x2d,0x26,0x68,0x21,0x25,0x38,0x24,0x2d,0x25,0x2d,0x26,0x3c,0x2d,0x2c]

/*: "&type=6" :*/
fileprivate let str_fromData:[Character] = ["&","t","y","p","e","=","6"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  BulgeOutViewController.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/11/6.
//

//: import UIKit
import UIKit

//: import CallKit.CXCallObserver
import CallKit.CXCallObserver

//: class TalkingVideoInitivCallVC: TalkingBaseViewController {
class BulgeOutViewController: SeamViewController {
    //: var chatModel: TalkingVideoChatModel?
    var chatModel: ViewChatModel? // 视频通话模型
    //: private var miniView: TalkingVideoMiniView?
    private var miniView: PopView? // 视频通话小窗口
    //: private var isFromMiniView = false
    private var isFromMiniView = false // 是否点击小窗口进入
    //: private var palyerStatus = VideoPlayerStatus.Unknown
    private var palyerStatus = TitleerPlayerStatus.Unknown // 视频播放状态
    //: var isRandomVCPush = false
    var isRandomVCPush = false // 是否随机视频匹配进来

    //: override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
    override init(nibName _: String?, bundle _: Bundle?) {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_renderEffectData.map{$0^72}, encoding: .utf8)!)
    }

    //: override func viewDidAppear(_ animated: Bool) {
    override func viewDidAppear(_ animated: Bool) {
        //: super.viewDidAppear(animated)
        super.viewDidAppear(animated)
        //: let nav = self.navigationController as! TalkingNavigationController
        let nav = self.navigationController as! LengthArrayControllerDelegate
        //: nav.protectedPushVc = nil
        nav.protectedPushVc = nil
        //: UIApplication.shared.isIdleTimerDisabled = true
        UIApplication.shared.isIdleTimerDisabled = true // 设备不会进入休眠状态
    }

    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
        //: if self.miniView != nil {
        if self.miniView != nil { // 移除小窗口
            //: self.miniView?.removeFromSuperview()
            self.miniView?.removeFromSuperview()
            //: self.miniView = nil
            self.miniView = nil
            //: TalkingSocketManager.shared.currTalkingVC = nil
            DeviceSocketDelegate.shared.currTalkingVC = nil
        }
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.hideNavi = true
        self.hideNavi = true
        //: self.view.backgroundColor = UIColor.RGBA(51, 51, 51, 1)
        self.view.backgroundColor = UIColor.showSub(51, 51, 51, 1)
        //: TalkingSocketManager.shared.isTalking = true
        DeviceSocketDelegate.shared.isTalking = true
        //: setupSubviews()
        pointSubviews()
        //: setupSubViewsConstraint()
        setupThroughConstraint()
        //: req_callGetUserInfo()
        tableNow()
        //: self.startPreview()
        self.upshot()
    }

    //: deinit {
    deinit {
        //: self.player?.stopPlay()
        self.player?.viewMake()
        //: self.player?.removeVideoWidget()
        self.player?.moment()
        //: self.player = nil
        self.player = nil
        //: UIApplication.shared.isIdleTimerDisabled = false
        UIApplication.shared.isIdleTimerDisabled = false
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
        //: TalkingSocketManager.shared.isTalking = false
        DeviceSocketDelegate.shared.isTalking = false
    }

    // MARK: - Lazy Load

    /// 视频通话操作按钮
    //: private lazy var interactionView: TalkingVideoInitivCallView = {
    private lazy var interactionView: ScanCallView = {
        //: let v = TalkingVideoInitivCallView(frame: .zero, chatModel: self.chatModel)
        let v = ScanCallView(frame: .zero, chatModel: self.chatModel)
        //: v.durationTime = Double(TalkingVideoInitivCallManager.shared.videoCallModel.callCountdown)
        v.durationTime = Double(PlayerCallManager.shared.videoCallModel.callCountdown)
        //: v.delegate = self
        v.delegate = self
        //: return v
        return v
        //: }()
    }()

    // 视频通话小窗口
    //: private lazy var windowView: TalkingVideoWindowView = {
    private lazy var windowView: ToRecognizerDelegate = {
        //: let v = TalkingVideoWindowView()
        let v = ToRecognizerDelegate()
        //: v.frame = CGRect(x: ScreenWidth-15-actualWidth(w: 125), y: StatusBarHeight+actualHeight(h: 25)+26+35, width: actualWidth(w: 125), height: actualHeight(h: 170))
        v.frame = CGRect(x: kLet_cameraValue - 15 - actualWidth(w: 125), y: kLet_timeSenseValue + actualHeight(h: 25) + 26 + 35, width: actualWidth(w: 125), height: actualHeight(h: 170))
        //: v.block = { [weak self] in
        v.block = { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.changeRenderView()
            self.plotElement()
        }
        //: return v
        return v
        //: }()
    }()

    //: private lazy var videoManager: TalkingVideoInitivCallTool = {
    private lazy var videoManager: ToReactiveCompatible = {
        //: let m = TalkingVideoInitivCallTool()
        let m = ToReactiveCompatible()
        //: m.infoModel = self.chatModel
        m.infoModel = self.chatModel
        // 视图传递给manager
        //: m.bgVideoView = self.view
        m.bgVideoView = self.view
        //: m.bgView = self.interactionView
        m.bgView = self.interactionView
        //: m.windowVideoView = self.windowView.renderView
        m.windowVideoView = self.windowView.renderView
        //: return m
        return m
        //: }()
    }()

    // 懒加载初始化
    //: private lazy var player: TalkingVideoPlayerManager? = {
    private lazy var player: SendPlayListener? = {
        //: let  player = TalkingVideoPlayerManager.init()
        let player = SendPlayListener()
        //: player.player.setMute(false)
        player.player.setMute(false)
        //: return player
        return player
        //: }()
    }()
}

// MARK: - Request && 刷新UI

//: extension TalkingVideoInitivCallVC {
extension BulgeOutViewController {
    /// 初始化信息
    //: private func req_callGetUserInfo() {
    private func tableNow() {
        //: self.chatModel = TalkingVideoChatModel.init()
        self.chatModel = ViewChatModel()
        //: self.chatModel?.isCaller = true
        self.chatModel?.isCaller = true
        //: self.chatModel?.videoStage = .Calling
        self.chatModel?.videoStage = .Calling
        //: self.chatModel?.renderPostion = .SelfOnWindow
        self.chatModel?.renderPostion = .SelfOnWindow
        //: self.chatModel?.isTalkingNow = true
        self.chatModel?.isTalkingNow = true

        //: self.player?.delegate = self
        self.player?.delegate = self
        //: self.player?.playerWithUrlAndVideoView(url: TalkingVideoInitivCallManager.shared.videoCallModel.callVideoUrl, view: self.interactionView)
        self.player?.requestView(url: PlayerCallManager.shared.videoCallModel.callVideoUrl, view: self.interactionView)
        //: self.videoManager.startPreview()
        self.videoManager.startTo()
    }
}

// MARK: - Event

//: extension TalkingVideoInitivCallVC {
extension BulgeOutViewController {
    /// 预览视频画面
    //: private func startPreview() {
    private func upshot() {
        //: self.videoManager.startPreview()
        self.videoManager.startTo()
    }

    // 将当前视图从栈中移除
    //: private func popCurrentViewController(animated: Bool = true) {
    private func modelAnimated(animated: Bool = true) {
        //: self.navigationController?.popViewController(animated: animated)
        self.navigationController?.popViewController(animated: animated)
//        if self.navigationController?.topViewController == self {
//            self.navigationController?.popViewController(animated: animated)
//        } else {
//            if var vcArr = self.navigationController?.viewControllers {
//                if let index = vcArr.firstIndex(of: self) {
//                    vcArr.remove(at: index)
//                    self.navigationController?.setViewControllers(vcArr, animated: false)
//                }
//            }
//        }
    }

    /// 视频通话双方窗口转换
    //: private func changeRenderView() {
    private func plotElement() {
        //: if self.chatModel?.renderPostion == .selfOnBg {
        if self.chatModel?.renderPostion == .selfOnBg {
            //: self.chatModel?.renderPostion = .SelfOnWindow
            self.chatModel?.renderPostion = .SelfOnWindow
            //: self.player?.player.setupVideoWidget(self.interactionView, insert: 0)
            self.player?.player.setupVideoWidget(self.interactionView, insert: 0)
            //: } else if self.chatModel?.renderPostion == .SelfOnWindow {
        } else if self.chatModel?.renderPostion == .SelfOnWindow {
            //: self.chatModel?.renderPostion = .selfOnBg
            self.chatModel?.renderPostion = .selfOnBg
            //: self.player?.player.setupVideoWidget(self.windowView.renderView, insert: 0)
            self.player?.player.setupVideoWidget(self.windowView.renderView, insert: 0)
        }

        //: self.videoManager.changeRenderView()
        self.videoManager.changeBlock()
    }
}

// MARK: - PlayerDelegete

//: extension TalkingVideoInitivCallVC: TalkingVideoPlayerDelegate {
extension BulgeOutViewController: CameraReactiveCompatible {
    //: func func__playerStatus(player: TalkingVideoPlayerManager, status: VideoPlayerStatus) {
    func titleCell(player _: SendPlayListener, status: TitleerPlayerStatus) {
        //: palyerStatus = status
        palyerStatus = status
        //: if status == .Failed {
        if status == .Failed {
            //: uploadRecord.uploadRecordEvent(eventID: videoPlayFailure)
            kLet_textData.historicalPaper(eventID: kLet_transformValue)
        }
    }

    //: func func__playerDuration(player: TalkingVideoPlayerManager, duration: Int, currentTime: Int) {
    func playTable(player _: SendPlayListener, duration _: Int, currentTime _: Int) {}

    //: func func__playerProgress(player: TalkingVideoPlayerManager, progress: CGFloat) {
    func dataScript(player _: SendPlayListener, progress _: CGFloat) {}
}

// MARK: - StatusObjectProtocol【通话按钮操作事件】

//: extension TalkingVideoInitivCallVC: Talking1v1VideoInteractionViewDelegate {
extension BulgeOutViewController: StatusObjectProtocol {
    //: func interactionView_reportSucceed() {
    func doingApp() {}

    /// 接听视频通话
    //: func interactionView_shouldAcceptCall() {
    func sizeCall() {}

    /// 拨打方结束通话
    //: func interactionView_shouldEndCall() {
    func belowHalf() {
        //: if self.miniView != nil {
        if self.miniView != nil { // 移除小窗口
            //: self.miniView?.removeFromSuperview()
            self.miniView?.removeFromSuperview()
            //: self.miniView = nil
            self.miniView = nil
            //: TalkingSocketManager.shared.currTalkingVC = nil
            DeviceSocketDelegate.shared.currTalkingVC = nil
        }
        //: let duration = TalkingVideoInitivCallManager.shared.videoCallModel.callCountdown - Int(interactionView.durationTime)
        let duration = PlayerCallManager.shared.videoCallModel.callCountdown - Int(interactionView.durationTime)
        //: let uid = interactionView.durationTime <= 0 ? "\(TalkingVideoInitivCallManager.shared.videoCallModel.uid)" : EqualThen.share.loginUserMode.userID
        let uid = interactionView.durationTime <= 0 ? "\(PlayerCallManager.shared.videoCallModel.uid)" : EqualThen.share.loginUserMode.userID
        //: TalkingVideoInitivCallManager.shared.req_userOperation(type: 2, duration: duration, stopUid: uid) { succeed, result, errorModel in
        PlayerCallManager.shared.fileBy(type: 2, duration: duration, stopUid: uid) { _, _, _ in
        }
        /// 视频失败上报
        //: if palyerStatus != .Finished && palyerStatus != .Playing {
        if palyerStatus != .Finished && palyerStatus != .Playing {
            //: uploadRecord.uploadRecordEvent(eventID: videoPlayFailure)
            kLet_textData.historicalPaper(eventID: kLet_transformValue)
        }
        //: popCurrentViewController()
        modelAnimated()

        //: if EqualThen.share.appUserConfigMode.popupCallEndEvent == 1 {
        if EqualThen.share.appUserConfigMode.popupCallEndEvent == 1 {
            //: EditTextThen.share.func__pushToHalfWebVC(webViewType: .RechargeToVideoInitivHalfPage)
            EditTextThen.share.plumage(webViewType: .RechargeToVideoInitivHalfPage)
            //: } else if EqualThen.share.appUserConfigMode.popupCallEndEvent == 2 {
        } else if EqualThen.share.appUserConfigMode.popupCallEndEvent == 2 {
            //: EditTextThen.share.func__pushToSubscribeAlert(appendParams: "&type=6")
            EditTextThen.share.addShowParams(appendParams: (String(str_fromData)))
        }
        //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.0) {
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.0) {
            //: if self.currentViewController()?.isKind(of: TalkingWebViewController.self) == true {
            if self.infoController()?.isKind(of: IgnitionKeyViewController.self) == true {
                //: let vc = self.currentViewController() as! TalkingWebViewController
                let vc = self.infoController() as! IgnitionKeyViewController
                //: vc.isVideoCallRechargeHalfPage = true
                vc.isVideoCallRechargeHalfPage = true
                //: if !self.isRandomVCPush {
                if !self.isRandomVCPush {
                    /// 主动拨打视频弹窗，充值成功才切换到match
                    //: vc.isRechargeOrSubscribeChangeMatch = true
                    vc.isRechargeOrSubscribeChangeMatch = true
                }
            }
        }
    }

    /// 旋转摄像头
    //: func interactionView_shouldChangeCamera(isFront: Bool) {
    func nameFront(isFront: Bool) {
        //: self.videoManager.useFrontCamera(isFront)
        self.videoManager.doingTotal(isFront)
    }

    /// 开启/关闭摄像头
    //: func interactionView_shouldForbiddenCamera(forbidden: Bool) {
    func marque(forbidden: Bool) {
        //: self.videoManager.useCamera(!forbidden)
        self.videoManager.outsideHandle(!forbidden)
    }

    /// 展示视频通话小窗口
    //: func interactionView_shouldDisplayMiniWindow() {
    func miniMake() {
        //: TalkingSocketManager.shared.currTalkingVC = self
        DeviceSocketDelegate.shared.currTalkingVC = self
        //: self.miniView = TalkingVideoMiniView.buildVideoMiniView()
        self.miniView = PopView.titleError()
        //: self.player?.player.setupVideoWidget(self.miniView?.renderView, insert: 0)
        self.player?.player.setupVideoWidget(self.miniView?.renderView, insert: 0)
        //: self.videoManager.smallRenderView = self.miniView?.renderView
        self.videoManager.smallRenderView = self.miniView?.renderView
        //: self.videoManager.enterSmallRenderMode()
        self.videoManager.lineImage()
        //: self.miniView?.tapGestureBlock = { [weak self] in
        self.miniView?.tapGestureBlock = { [weak self] in // 还原回通话界面
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.videoManager.exitSmallRenderMode()
            self.videoManager.asCurrentMode()
            //: if self.chatModel?.renderPostion == .selfOnBg {
            if self.chatModel?.renderPostion == .selfOnBg {
                //: self.player?.player.setupVideoWidget(self.windowView.renderView, insert: 0)
                self.player?.player.setupVideoWidget(self.windowView.renderView, insert: 0)
                //: } else if self.chatModel?.renderPostion == .SelfOnWindow {
            } else if self.chatModel?.renderPostion == .SelfOnWindow {
                //: self.player?.player.setupVideoWidget(self.interactionView, insert: 0)
                self.player?.player.setupVideoWidget(self.interactionView, insert: 0)
            }
            //: self.videoManager.changeRenderView()
            self.videoManager.changeBlock()
            //: self.isFromMiniView = true
            self.isFromMiniView = true
            //: self.currentViewController()?.navigationController?.pushViewController(self, animated: true)
            self.infoController()?.navigationController?.pushViewController(self, animated: true)
        }
        //: popCurrentViewController()
        modelAnimated()
    }
}

// MARK: - Layout

//: extension TalkingVideoInitivCallVC {
extension BulgeOutViewController {
    /// 添加视图
    //: private func setupSubviews() {
    private func pointSubviews() {
        //: self.view.layer.masksToBounds = true
        self.view.layer.masksToBounds = true
        //: self.view.addSubview(interactionView)
        self.view.addSubview(interactionView)
        //: self.interactionView.addWindowView(view: self.windowView)
        self.interactionView.imageStatus(view: self.windowView)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func setupThroughConstraint() {
        //: interactionView.snp.makeConstraints { make in
        interactionView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
    }
}
