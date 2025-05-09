
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_appearText:[UInt8] = [0x6,0x1,0x6,0x1b,0x47,0xc,0x0,0xb,0xa,0x1d,0x55,0x46,0x4f,0x7,0xe,0x1c,0x4f,0x1,0x0,0x1b,0x4f,0xd,0xa,0xa,0x1,0x4f,0x6,0x2,0x1f,0x3,0xa,0x2,0xa,0x1,0x1b,0xa,0xb]

/*: "bth_me_videocall_nor" :*/
fileprivate let str_liveData:[Character] = ["b","t","h","_","m","e","_","v","i","d","e","o","c","a","l","l","_","n","o"]
fileprivate let str_addValue:String = "title"

/*: "icon_videocall_nor" :*/
fileprivate let str_statusToTitle:String = "icon_edge block touch top"
fileprivate let str_layerValue:String = "gift snap var appall_n"
fileprivate let str_frameData:String = "groupr"

/*: "Video Call" :*/
fileprivate let str_sizeImageNameData:String = "return false shareVideo Ca"
fileprivate let str_atModelData:[Character] = ["l","l"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  AtViewController.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/11/7.
//

//: import UIKit
import UIKit

//: class TalkingMomentVideoVC: TalkingBaseViewController {
class AtViewController: SeamViewController {
    //: var videoCallBlock: (() -> Void)?
    var videoCallBlock: (() -> Void)? // 音视频通话回调
    //: var isHideBotton = true
    var isHideBotton = true
    //: var uid = ""
    var uid = ""
    //: private var videoPath = ""
    private var videoPath = ""
    //: private let disposeBag = DisposeBag()
    private let disposeBag = DisposeBag()
    //: private var duraction = 0.0
    private var duraction = 0.0

    //: init() {
    init() {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_appearText.map{$0^111}, encoding: .utf8)!)
    }

    //: init(videoPath: String) {
    init(videoPath: String) {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
        //: self.videoPath = videoPath
        self.videoPath = videoPath
    }

    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
        //: self.player.resume()
        self.player.backAddStarResume()
    }

    //: override func viewDidAppear(_ animated: Bool) {
    override func viewDidAppear(_ animated: Bool) {
        //: super.viewDidAppear(animated)
        super.viewDidAppear(animated)
    }

    //: override func viewWillDisappear(_ animated: Bool) {
    override func viewWillDisappear(_ animated: Bool) {
        //: super.viewWillDisappear(animated)
        super.viewWillDisappear(animated)
        //: self.player.pause()
        self.player.showLock()
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.setupSubviews()
        self.titleLocal()
        //: self.setupSubViewsConstraint()
        self.setupLikeSwaddlingClothes()
        //: self.bindInteraction()
        self.quantityeraction()
        //: self.player.playerWithUrlAndVideoView(url: self.videoPath, view: bgView)
        self.player.requestView(url: self.videoPath, view: bgView)
    }

    //: override func loadView() {
    override func loadView() {
        //: if #available(iOS 13.2, *) {
        if #available(iOS 13.2, *) {
            //: if EqualThen.share.appConfigMode.disableShootScreen {
            if EqualThen.share.appConfigMode.disableShootScreen {
                //: super.loadView()
                super.loadView()
                //: } else {
            } else {
                //: let bgView = MAScreenShieldView(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight))
                let bgView = CellDataReactiveCompatible(frame: CGRect(x: 0, y: 0, width: kLet_cameraValue, height: kLet_clickData))
                //: self.view = bgView
                self.view = bgView
            }
            //: } else {
        } else {
            //: super.loadView()
            super.loadView()
        }
    }

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
        //: self.player.stopPlay()
        self.player.viewMake()
        //: self.player.removeVideoWidget()
        self.player.moment()
        //: self.player.videoUrl = ""
        self.player.videoUrl = ""
        //: self.player = TalkingVideoPlayerManager.init()
        self.player = SendPlayListener()
    }

    // MARK: - Lazy Load

    //: private lazy var bgView: UIView = {
    private lazy var bgView: UIView = {
        //: let  view = UIView.init()
        let view = UIView()
        //: view.backgroundColor = .black
        view.backgroundColor = .black
        //: return view
        return view
        //: }()
    }()

    //: private lazy var player: TalkingVideoPlayerManager = {
    private lazy var player: SendPlayListener = {
        //: let  player = TalkingVideoPlayerManager.init()
        let player = SendPlayListener()
        //: player.delegate = self
        player.delegate = self
        //: player.setMute(bEnable: false)
        player.wreak(bEnable: false)
        //: return player
        return player
        //: }()
    }()

    //: private lazy var topView: TalkingMomentPhotosTopView = {
    private lazy var topView: ToView = {
        //: let view = TalkingMomentPhotosTopView(frame: CGRect.zero, type: .normal)
        let view = ToView(frame: CGRect.zero, type: .normal)
        //: return view
        return view
        //: }()
    }()

    //: private lazy var bottomView: TalkingMomentPhotosBottomView = {
    private lazy var bottomView: MakePlayerDelegate = {
        //: let view = TalkingMomentPhotosBottomView.init()
        let view = MakePlayerDelegate()
        //: view.isHidden = isHideBotton
        view.isHidden = isHideBotton
        //: view.modelUid = uid
        view.modelUid = uid
        //: return view
        return view
        //: }()
    }()

    //: private lazy var interactionView: TalkingVideoPlayerInteractionView = {
    private lazy var interactionView: TitleGenerateReactiveCompatible = {
        //: let view = TalkingVideoPlayerInteractionView.init()
        let view = TitleGenerateReactiveCompatible()
        //: view.delegate = self
        view.delegate = self
        //: return view
        return view
        //: }()
    }()

    //: private lazy var videoBottomView: UIView = {
    private lazy var videoBottomView: UIView = {
        //: let v = UIView()
        let v = UIView()
        //: v.backgroundColor = .appTitleColor()
        v.backgroundColor = .executeTo()

        //: let imgV = TalkingButton()
        let imgV = ProgressTalkingButton()
        //: imgV.setBackgroundImage(UIImage.eponymUp(name: "bth_me_videocall_nor"), for: .normal)
        imgV.setBackgroundImage(UIImage.eponymUp(name: (String(str_liveData) + str_addValue.replacingOccurrences(of: "title", with: "r"))), for: .normal)
        //: imgV.setImage(UIImage.eponymUp(name: "icon_videocall_nor"), for: .normal)
        imgV.setImage(UIImage.eponymUp(name: (String(str_statusToTitle.prefix(5)) + "videoc" + String(str_layerValue.suffix(5)) + str_frameData.replacingOccurrences(of: "group", with: "o"))), for: .normal)
        //: imgV.setTitle("Video Call".localized, for: .normal)
        imgV.setTitle((String(str_sizeImageNameData.suffix(8)) + String(str_atModelData)).localized, for: .normal)
        //: imgV.titleLabel?.font = UIFont.pingfangWithDiameter(fontSize: 16)
        imgV.titleLabel?.font = UIFont.pingfangWithDiameter(fontSize: 16)
        //: imgV.setTitleColor(.white, for: .normal)
        imgV.setTitleColor(.white, for: .normal)
        //: imgV.addTarget(self, action: #selector(videoButtonClick), for: .touchUpInside)
        imgV.addTarget(self, action: #selector(workIn), for: .touchUpInside)
        //: v.addSubview(imgV)
        v.addSubview(imgV)
        //: imgV.snp.makeConstraints { make in
        imgV.snp.makeConstraints { make in
            //: make.top.equalTo(12)
            make.top.equalTo(12)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.size.equalTo(CGSize(width: 178, height: 36))
            make.size.equalTo(CGSize(width: 178, height: 36))
        }
        //: v.isHidden = (videoCallBlock == nil) || (EqualThen.share.appStatus == AppSkinStatus.special.rawValue)
        v.isHidden = (videoCallBlock == nil) || (EqualThen.share.appStatus == PhaseOfTheMoonPropertyProtocol.special.rawValue)
        //: return v
        return v
        //: }()
    }()
}

// MARK: - Public Event

//: extension TalkingMomentVideoVC {
extension AtViewController {
    //: @objc func enterBackgroundNotification() {
    @objc func listOf() {
        //: if self.player.isPlaying {
        if self.player.isPlaying {
            //: self.player.setMute(bEnable: false)
            self.player.wreak(bEnable: false)
            //: self.player.delegate = self
            self.player.delegate = self
            //: self.player.pause()
            self.player.showLock()
        }
    }

    //: @objc func enterForegroundNotification() {
    @objc func executeName() {}

    /// video
    //: @objc func videoButtonClick() {
    @objc func workIn() {
        //: self.player.pause()
        self.player.showLock()
        //: if videoCallBlock != nil {
        if videoCallBlock != nil {
            //: videoCallBlock!()
            videoCallBlock!()
        }
    }
}

// MARK: - SOCKET_VIDEOCHAT_REQUESTCALL_NOTIFICATION【收到音视频通话通知】

//: extension TalkingMomentVideoVC {
extension AtViewController {
    /// 开始音视频通话
    //: @objc private func startTalking() {
    @objc private func constraintTo() {
        //: self.player.setMute(bEnable: true)
        self.player.wreak(bEnable: true)
    }
}

// MARK: - Delegate

//: extension TalkingMomentVideoVC: TalkingVideoPlayerDelegate, InteractionViewDelegate {
extension AtViewController: CameraReactiveCompatible, PokingViewDelegate {
    //: func func__interactionViewStatus(view: TalkingVideoPlayerInteractionView, status: InteractionViewStatus) {
    func stickOut(view _: TitleGenerateReactiveCompatible, status: ModelViewStatus) {
        //: switch status {
        switch status {
        //: case .StartPlay:
        case .StartPlay:
            //: self.player.resume()
            self.player.backAddStarResume()
        //: break
        //: case .StopPlay:
        case .StopPlay:
            //: self.player.pause()
            self.player.showLock()
        //: break
        //: default:
        default:
            //: break
            break
        }
    }

    //: func func__interactionViewSlideValue(view: TalkingVideoPlayerInteractionView, value: CGFloat) {
    func mode(view _: TitleGenerateReactiveCompatible, value: CGFloat) {
        //: let dragedSeconds = floorf(Float(value * self.duraction))
        let dragedSeconds = floorf(Float(value * self.duraction))
        //: self.player.seek(time: dragedSeconds)
        self.player.outsidePath(time: dragedSeconds)
    }

    //: func func__playerStatus(player: TalkingVideoPlayerManager, status: VideoPlayerStatus) {
    func titleCell(player _: SendPlayListener, status: TitleerPlayerStatus) {
        //: self.interactionView.interactionStatus(status: status)
        self.interactionView.infoStatus(status: status)
        //: if status == .Playing {
        if status == .Playing {
            //: self.player.setRenderMode(renderMode: .FILL_EDGE)
            self.player.giftMode(renderMode: .FILL_EDGE)
        }
    }

    //: func func__playerDuration(player: TalkingVideoPlayerManager, duration: Int, currentTime: Int) {
    func playTable(player _: SendPlayListener, duration: Int, currentTime: Int) {
        //: self.duraction = Double(duration)
        self.duraction = Double(duration)
        //: self.interactionView.updateProgressDurationAndCurrentTime(duration: duration, currentTime: currentTime)
        self.interactionView.toTime(duration: duration, currentTime: currentTime)
    }

    //: func func__playerProgress(player: TalkingVideoPlayerManager, progress: CGFloat) {
    func dataScript(player _: SendPlayListener, progress: CGFloat) {
        //: self.interactionView.updateProgress(value: progress)
        self.interactionView.atModel(value: progress)
    }
}

// MARK: - Layout

//: extension TalkingMomentVideoVC {
extension AtViewController {
    // 添加视图
    //: private func setupSubviews() {
    private func titleLocal() {
        //: hideNavi = true
        hideNavi = true
        //: view.backgroundColor = UIColor.black
        view.backgroundColor = UIColor.black
        //: self.view.addSubview(bgView)
        self.view.addSubview(bgView)
        //: bgView.addSubview(topView)
        bgView.addSubview(topView)
        //: bgView.addSubview(bottomView)
        bgView.addSubview(bottomView)
        //: bgView.addSubview(videoBottomView)
        bgView.addSubview(videoBottomView)
        //: bgView.addSubview(interactionView)
        bgView.addSubview(interactionView)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func setupLikeSwaddlingClothes() {
        //: bgView.snp.makeConstraints { make in
        bgView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
        //: topView.snp.makeConstraints { make in
        topView.snp.makeConstraints { make in
            //: make.top.leading.trailing.equalTo(self.view)
            make.top.leading.trailing.equalTo(self.view)
            //: make.height.equalTo(StatusBarNavigationBarHeight+30)
            make.height.equalTo(kLet_detailNameText + 30)
        }
        //: bottomView.snp.makeConstraints { make in
        bottomView.snp.makeConstraints { make in
            //: make.bottom.leading.trailing.equalTo(self.view)
            make.bottom.leading.trailing.equalTo(self.view)
            //: make.height.equalTo(kDeviceSafeBottomHeight+64)
            make.height.equalTo(kLet_nextData + 64)
        }
        //: videoBottomView.snp.makeConstraints { make in
        videoBottomView.snp.makeConstraints { make in
            //: make.edges.equalTo(bottomView)
            make.edges.equalTo(bottomView)
        }
        //: interactionView.snp.makeConstraints { make in
        interactionView.snp.makeConstraints { make in
            //: make.leading.trailing.equalTo(self.view)
            make.leading.trailing.equalTo(self.view)
            //: make.top.equalTo(topView.snp.bottom).offset(0)
            make.top.equalTo(topView.snp.bottom).offset(0)
            //: make.bottom.equalTo(bottomView.snp.top).offset(0)
            make.bottom.equalTo(bottomView.snp.top).offset(0)
        }
    }

    // 添加事件
    //: private func bindInteraction() {
    private func quantityeraction() {
        //: topView.backBtn.rx.tap.subscribe(onNext: { [weak self] in
        topView.backBtn.rx.tap.subscribe(onNext: { [weak self] in
            //: if self?.presentingViewController != nil {
            if self?.presentingViewController != nil {
                //: self?.dismiss(animated: true)
                self?.dismiss(animated: true)
                //: } else {
            } else {
                //: self?.navigationController?.popViewController(animated: true)
                self?.navigationController?.popViewController(animated: true)
            }
            //: }).disposed(by: disposeBag)
        }).disposed(by: disposeBag)

        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(enterBackgroundNotification),
                                               selector: #selector(listOf),
                                               //: name: UIApplication.willResignActiveNotification,
                                               name: UIApplication.willResignActiveNotification,
                                               //: object: nil)
                                               object: nil)

        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(enterForegroundNotification),
                                               selector: #selector(executeName),
                                               //: name: UIApplication.didBecomeActiveNotification,
                                               name: UIApplication.didBecomeActiveNotification,
                                               //: object: nil)
                                               object: nil)

        // 添加接收到音视频通话通知
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(startTalking),
                                               selector: #selector(constraintTo),
                                               //: name: SOCKET_VIDEOCHAT_REQUESTCALL_NOTIFICATION,
                                               name: kLet_packageErrorMarginData,
                                               //: object: nil)
                                               object: nil)
    }
}
