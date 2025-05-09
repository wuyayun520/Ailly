
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_labelData:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "icon_video_bd" :*/
fileprivate let str_addTitle:String = "itextn"
fileprivate let str_roomName:String = "eo_bdpush beauty"

/*: "btn_video_drop_nor" :*/
fileprivate let str_positionName:[Character] = ["b","t","n","_","v","i","d","e","o","_","d","r","o","p"]
fileprivate let str_pageEnableValue:String = "_nordrop text cell play view"

/*: "get json error" :*/
fileprivate let str_pressTitle:String = "self manager regionget j"
fileprivate let str_resultTitle:String = "insideinsideoinside"

/*: s" :*/
fileprivate let str_videoValue:[Character] = ["s"]

/*: "icon_videocall_topView" :*/
fileprivate let str_giftValue:String = "icoprofile"
fileprivate let str_stopData:String = "caexplain"
fileprivate let str_equalText:[Character] = ["_","t","o","p","V","i","e","w"]

/*: "Video Call" :*/
fileprivate let str_stopToItemValue:[Character] = ["V","i","d","e","o"]
fileprivate let str_succeedValue:String = " Callresult super info row"

/*: "icon_videocall_initerv_topView" :*/
fileprivate let str_deviceData:String = "icoto"
fileprivate let str_norData:String = "esharedcal"
fileprivate let str_serverName:String = "let cloudterv_to"
fileprivate let str_systemValue:[Character] = ["p","V","i","e","w"]

/*: "Free" :*/
fileprivate let str_imageValue:String = "Freeapp cell to model"

/*: "You've been barred from receiving calls" :*/
fileprivate let str_arrayData:[UInt8] = [0x7e,0x48,0x52,0x0,0x51,0x42,0x7,0x45,0x42,0x42,0x49,0x7,0x45,0x46,0x55,0x55,0x42,0x43,0x7,0x41,0x55,0x48,0x4a,0x7,0x55,0x42,0x44,0x42,0x4e,0x51,0x4e,0x49,0x40,0x7,0x44,0x46,0x4b,0x4b,0x54]

private func backWhite(child num: UInt8) -> UInt8 {
    return num ^ 39
}

/*: "&type=6" :*/
fileprivate let str_coinData:String = "let street click let in&type=6"

/*: "#864EFF" :*/
fileprivate let str_countData:String = "comment make#864EFF"

/*: "#F79AFF" :*/
fileprivate let str_toCalendarValue:[Character] = ["#","F","7","9","A","F","F"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  NameFreeView.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/11/6.
//

//: import UIKit
import UIKit

//: class TalkingVideoCallPopUpView: UIView {
class NameFreeView: UIView {
    //: var popView: TalkingPopView?
    var popView: NameThen?
    //: private var countdownTimer: Timer?
    private var countdownTimer: Timer?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.renderSubviews()
        //: self.setupSubViewsConstraint()
        self.slow()
        //: self.bindInteraction()
        self.modelStatus()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_labelData.reversed(), encoding: .utf8)!)
    }

    //: deinit {
    deinit {
        //: player?.stopPlay()
        player?.viewMake()
        //: player?.removeVideoWidget()
        player?.moment()
        //: player = nil
        player = nil
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    // MARK: - Lazy Load

    //: private lazy var contentView: UIView = {
    private lazy var contentView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: view.isUserInteractionEnabled = true
        view.isUserInteractionEnabled = true
        //: return view
        return view
        //: }()
    }()

    //: private lazy var playerView: UIImageView = {
    private lazy var playerView: UIImageView = {
        //: let view = UIImageView.init()
        let view = UIImageView()
        //: view.contentMode = .scaleAspectFill
        view.contentMode = .scaleAspectFill
        //: view.isUserInteractionEnabled = true
        view.isUserInteractionEnabled = true
        //: view.layer.cornerRadius = 8
        view.layer.cornerRadius = 8
        //: view.layer.masksToBounds = true
        view.layer.masksToBounds = true
        //: return view
        return view
        //: }()
    }()

    //: private lazy var topIcon: UIImageView = {
    private lazy var topIcon: UIImageView = {
        //: let iamg = UIImageView.init()
        let iamg = UIImageView()
        //: iamg.contentMode = .scaleAspectFill
        iamg.contentMode = .scaleAspectFill
        //: return iamg
        return iamg
        //: }()
    }()

    //: private lazy var topBtn: TalkingButton = {
    private lazy var topBtn: ProgressTalkingButton = {
        //: let btn = TalkingButton.init(type: .custom)
        let btn = ProgressTalkingButton(type: .custom)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Medium, fontSize: 17)
        btn.titleLabel?.font = UIFont.pingfang(type: .Medium, fontSize: 17)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.setImage(UIImage.eponymUp(name: "icon_video_bd"), for: .normal)
        btn.setImage(UIImage.eponymUp(name: (str_addTitle.replacingOccurrences(of: "text", with: "co") + "_vid" + String(str_roomName.prefix(5)))), for: .normal)
        //: btn.spaceBetweenTitleAndImage = 4
        btn.spaceBetweenTitleAndImage = 4
        //: btn.imageView?.contentMode = .scaleAspectFill
        btn.imageView?.contentMode = .scaleAspectFill
        //: btn.isUserInteractionEnabled = false
        btn.isUserInteractionEnabled = false
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var finishBtn: UIButton = {
    private lazy var finishBtn: UIButton = {
        //: let btn = UIButton.init(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.backgroundColor = .clear
        btn.backgroundColor = .clear
        //: btn.addTarget(self, action: #selector(finishBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(cameraClick), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var closeBtn: UIButton = {
    private lazy var closeBtn: UIButton = {
        //: let btn = UIButton.init(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setImage(UIImage.eponymUp(name: "btn_video_drop_nor"), for: .normal)
        btn.setImage(UIImage.eponymUp(name: (String(str_positionName) + String(str_pageEnableValue.prefix(4)))), for: .normal)
        //: btn.addTarget(self, action: #selector(closeBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(dataConverterClick), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var countDownLb: UILabel = {
    private lazy var countDownLb: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.textColor = .white
        lb.textColor = .white
        //: lb.font = UIFont.pingfangWithDiameter(fontSize: 10)
        lb.font = UIFont.pingfangWithDiameter(fontSize: 10)
        //: lb.isHidden = true
        lb.isHidden = true
        //: return lb
        return lb
        //: }()
    }()

    // 懒加载初始化
    //: private lazy var player: TalkingVideoPlayerManager? = {
    private lazy var player: SendPlayListener? = {
        //: let  player = TalkingVideoPlayerManager.init()
        let player = SendPlayListener()
        //: player.setMute(bEnable: false)
        player.wreak(bEnable: false)
        //: return player
        return player
        //: }()
    }()

    //: private lazy var svgaPlayer: SVGAPlayer = {
    private lazy var svgaPlayer: SVGAPlayer = {
        //: let player = SVGAPlayer.init()
        let player = SVGAPlayer()
        //: player.loops = 0
        player.loops = 0
        //: player.clearsAfterStop = false
        player.clearsAfterStop = false
        //: player.isUserInteractionEnabled = false
        player.isUserInteractionEnabled = false
        //: player.contentMode = .scaleAspectFill
        player.contentMode = .scaleAspectFill

        //: let url = SVGAEffectTool.default.getZipEffectPath(type: .Videocall_initiver)
        let url = ToEffectTool.default.alongError(type: .Videocall_initiver)
        //: do {
        do {
            //: let data = try Data(contentsOf: url)
            let data = try Data(contentsOf: url)
            //: let parser = SVGAParser.init()
            let parser = SVGAParser()
            //: parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
            parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: player.videoItem = videoItem
                player.videoItem = videoItem
                //: player.startAnimation()
                player.startAnimation()
            }
            //: } catch {
        } catch {
            //: printLog(message: "get json error")
            printLog(message: (String(str_pressTitle.suffix(5)) + "son e" + str_resultTitle.replacingOccurrences(of: "inside", with: "r")))
        }
        //: return player
        return player
        //: }()
    }()
}

// MARK: - Tool

//: extension TalkingVideoCallPopUpView {
extension NameFreeView {
    /// 获取权限
    //: private func getServercePermission() {
    private func comeTotalo() {
        // 是否开启摄像头
        //: TalkingPermissionTool.func__openCaptureDeviceServiceWithBlock(false) { isOpen in
        RubricThen.toBackMap(false) { isOpen in
            //: guard isOpen == true else {
            guard isOpen == true else {
                //: return
                return
            }
            // 麦克风权限
            //: TalkingPermissionTool.func__openRecordServiceWithBlock(false) { [weak self] isOpen in
            RubricThen.valueClose(false) { [weak self] isOpen in
                //: guard let self = self else {
                guard let self = self else {
                    //: return
                    return
                }
                //: guard isOpen == true else {
                guard isOpen == true else {
                    //: return
                    return
                }
                //: self.countDownLb.isHidden = false
                self.countDownLb.isHidden = false
                //: self.topBtn.snp.remakeConstraints { make in
                self.topBtn.snp.remakeConstraints { make in
                    //: make.centerX.equalToSuperview()
                    make.centerX.equalToSuperview()
                    //: make.centerY.equalToSuperview().offset(-10)
                    make.centerY.equalToSuperview().offset(-10)
                    //: make.height.equalTo(18)
                    make.height.equalTo(18)
                }
                //: self.countDownLb.snp.remakeConstraints { make in
                self.countDownLb.snp.remakeConstraints { make in
                    //: make.top.equalTo(self.topBtn.snp.bottom).offset(7)
                    make.top.equalTo(self.topBtn.snp.bottom).offset(7)
                    //: make.centerX.equalToSuperview()
                    make.centerX.equalToSuperview()
                    //: make.height.equalTo(10)
                    make.height.equalTo(10)
                }
                // 5s倒计时主动接通
                //: var time = TalkingVideoInitivCallManager.shared.videoCallModel.winCountdown
                var time = PlayerCallManager.shared.videoCallModel.winCountdown
                //: self.countdownTimer = Timer.scheduledTimer(withTimeInterval: 1.0, block: { [weak self] timer in
                self.countdownTimer = Timer.scheduledTimer(withTimeInterval: 1.0, block: { [weak self] _ in
                    //: guard let self = self else { return }
                    guard let self = self else { return }
                    //: guard time > 0 else {
                    guard time > 0 else { // 结束倒计时
                        //: self.destroyTimer()
                        self.theModel()
                        //: self.dismiss()
                        self.startTag()
                        //: switch EqualThen.share.appUserConfigMode.popupCallAcceptEvent {
                        switch EqualThen.share.appUserConfigMode.popupCallAcceptEvent {
                        //: case 1:
                        case 1:
                            //: pushWebRechargeView()
                            titleView()
                        //: case 2:
                        case 2:
                            //: pushWebSubscriptionView()
                            userCreate()
                        //: case 3:
                        case 3:
                            //: self.putThrough()
                            self.stratifyControlThrough()
                        //: default:
                        default:
                            //: break
                            break
                        }
                        //: return
                        return
                    }
                    //: self.countDownLb.text = "\(time)s"
                    self.countDownLb.text = "\(time)s"
                    //: time -= 1
                    time -= 1
                    //: }, repeats: true)
                }, repeats: true)
                //: self.countdownTimer?.fire()
                self.countdownTimer?.fire()
                //: RunLoop.current.add(self.countdownTimer!, forMode: .common)
                RunLoop.current.add(self.countdownTimer!, forMode: .common)
            }
        }
        //: if self.countDownLb.isHidden {
        if self.countDownLb.isHidden {
            //: self.topBtn.snp.remakeConstraints { make in
            self.topBtn.snp.remakeConstraints { make in
                //: make.center.equalToSuperview()
                make.center.equalToSuperview()
                //: make.height.equalTo(18)
                make.height.equalTo(18)
            }
        }
    }

    //: private func seTypeView() {
    private func fun() {
        //: switch EqualThen.share.appUserConfigMode.popupCallAcceptEvent {
        switch EqualThen.share.appUserConfigMode.popupCallAcceptEvent {
        //: case 1, 2:
        case 1, 2:
            //: topIcon.image = UIImage.eponymUp(name: "icon_videocall_topView")
            topIcon.image = UIImage.eponymUp(name: (str_giftValue.replacingOccurrences(of: "profile", with: "n") + "_video" + str_stopData.replacingOccurrences(of: "explain", with: "ll") + String(str_equalText)))
            //: topBtn.setTitle("Video Call".localized, for: .normal)
            topBtn.setTitle((String(str_stopToItemValue) + String(str_succeedValue.prefix(5))).localized, for: .normal)
        //: case 3:
        case 3:
            //: topIcon.image = UIImage.eponymUp(name: "icon_videocall_initerv_topView")
            topIcon.image = UIImage.eponymUp(name: (str_deviceData.replacingOccurrences(of: "to", with: "n") + "_vid" + str_norData.replacingOccurrences(of: "shared", with: "o") + "l_ini" + String(str_serverName.suffix(7)) + String(str_systemValue)))
            //: topBtn.setTitle("Free".localized, for: .normal)
            topBtn.setTitle((String(str_imageValue.prefix(4))).localized, for: .normal)
        //: default:
        default:
            //: break
            break
        }
    }

    /// 播放视频或封面
    //: private func beginPlayer() {
    private func lessShow() {
        //: if TalkingVideoInitivCallManager.shared.videoCallModel.winUrlType == 2 {
        if PlayerCallManager.shared.videoCallModel.winUrlType == 2 {
            //: self.player?.playerWithUrlAndVideoView(url: TalkingVideoInitivCallManager.shared.videoCallModel.winVideoUrl, view: playerView)
            self.player?.requestView(url: PlayerCallManager.shared.videoCallModel.winVideoUrl, view: playerView)
            //: } else {
        } else {
            //: self.playerView.setUrlImage(urlStr: TalkingVideoInitivCallManager.shared.videoCallModel.winVideoUrl)
            self.playerView.direct(urlStr: PlayerCallManager.shared.videoCallModel.winVideoUrl)
        }
    }

    /// 销毁倒计时
    //: private func destroyTimer() {
    private func theModel() {
        //: if countdownTimer != nil {
        if countdownTimer != nil {
            //: countdownTimer?.invalidate()
            countdownTimer?.invalidate()
            //: countdownTimer = nil
            countdownTimer = nil
        }
    }

    /// 接通电话
    //: private func putThrough() {
    private func stratifyControlThrough() {
        //: uploadRecord.uploadRecordEvent(eventID: clickVideoAcceptButton)
        kLet_textData.historicalPaper(eventID: kLet_inputErrName)
        //: initVideoCallTime()
        totalrySendPage()
        /// 视频通话被禁用
        //: guard TalkingVideoInitivCallManager.shared.videoCallModel.isBan == 0 else {
        guard PlayerCallManager.shared.videoCallModel.isBan == 0 else {
            //: self.func__showStatusBarErrorMsg(showMsg: "You've been barred from receiving calls".localized)
            self.oversight(showMsg: String(bytes: str_arrayData.map{backWhite(child: $0)}, encoding: .utf8)!.localized)
            //: return
            return
        }
        //: TalkingVideoInitivCallManager.shared.req_userOperation(type: 1) { succeed, result, errorModel in
        PlayerCallManager.shared.fileBy(type: 1) { succeed, _, _ in
            //: guard succeed == true else {
            guard succeed == true else {
                //: return
                return
            }
            //: if self.currentViewController()?.presentingViewController != nil {
            if self.infoController()?.presentingViewController != nil {
                // 如果有present, 先dismiss
                //: self.currentViewController()?.dismiss(animated: false)
                self.infoController()?.dismiss(animated: false)
            }
            //: DispatchQueue.main.asyncAfter(deadline: .now()+0.5) {
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                //: let vc = TalkingVideoInitivCallVC()
                let vc = BulgeOutViewController()
                //: self.currentViewController()?.navigationController?.pushViewController(vc, animated: true)
                self.infoController()?.navigationController?.pushViewController(vc, animated: true)
            }
        }
    }

    /// 上报行为
    //: private func uploadRepord(type: Int) {
    private func thumb(type: Int) {
        //: TalkingVideoInitivCallManager.shared.req_userOperation(type: type) { succeed, result, errorModel in
        PlayerCallManager.shared.fileBy(type: type) { _, _, _ in
        }
    }

    /// 开启下次弹窗倒计时
    //: private func initVideoCallTime() {
    private func totalrySendPage() {
        //: TalkingVideoInitivCallManager.shared.initVideoCallTimer()
        PlayerCallManager.shared.dubTimer()
    }
}

// MARK: - Event

//: extension TalkingVideoCallPopUpView {
extension NameFreeView {
    //: @objc private func finishBtnClick() {
    @objc private func cameraClick() {
        //: self.dismiss()
        self.startTag()
        //: switch EqualThen.share.appUserConfigMode.popupCallAcceptEvent {
        switch EqualThen.share.appUserConfigMode.popupCallAcceptEvent {
        //: case 1:
        case 1:
            //: pushWebRechargeView()
            titleView()
        //: case 2:
        case 2:
            //: pushWebSubscriptionView()
            userCreate()
        //: case 3:
        case 3:
            //: TalkingPermissionTool.checkCameraAndMicrophone { [weak self] isOpen in
            RubricThen.andThen { [weak self] isOpen in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: guard isOpen == true else { return }
                guard isOpen == true else { return }
                //: self.putThrough()
                self.stratifyControlThrough()
            }
        //: default:
        default:
            //: break
            break
        }
    }

    /// 充值
    //: private func pushWebRechargeView() {
    private func titleView() {
        //: initVideoCallTime()
        totalrySendPage()
        //: EditTextThen.share.func__pushToHalfWebVC(webViewType: .RechargeToVideoInitivHalfPage)
        EditTextThen.share.plumage(webViewType: .RechargeToVideoInitivHalfPage)
        //: if currentViewController()?.isKind(of: TalkingWebViewController.self) == true {
        if infoController()?.isKind(of: IgnitionKeyViewController.self) == true {
            //: let vc = currentViewController() as! TalkingWebViewController
            let vc = infoController() as! IgnitionKeyViewController
            //: vc.isVideoCallRechargeHalfPage = true
            vc.isVideoCallRechargeHalfPage = true
            //: vc.isRechargeOrSubscribeChangeMatch = true
            vc.isRechargeOrSubscribeChangeMatch = true
        }
    }

    /// 订阅
    //: private func pushWebSubscriptionView() {
    private func userCreate() {
        //: initVideoCallTime()
        totalrySendPage()
        //: EditTextThen.share.func__pushToSubscribeAlert(appendParams: "&type=6")
        EditTextThen.share.addShowParams(appendParams: (String(str_coinData.suffix(7))))
        //: if currentViewController()?.isKind(of: TalkingWebViewController.self) == true {
        if infoController()?.isKind(of: IgnitionKeyViewController.self) == true {
            //: let vc = currentViewController() as! TalkingWebViewController
            let vc = infoController() as! IgnitionKeyViewController
            //: vc.isVideoCallRechargeHalfPage = true
            vc.isVideoCallRechargeHalfPage = true
            //: vc.isRechargeOrSubscribeChangeMatch = true
            vc.isRechargeOrSubscribeChangeMatch = true
        }
    }

    //: @objc private func closeBtnClick() {
    @objc private func dataConverterClick() {
        //: uploadRecord.uploadRecordEvent(eventID: clickVideoRejectButton)
        kLet_textData.historicalPaper(eventID: kLet_environmentValue)
        //: initVideoCallTime()
        totalrySendPage()
        //: uploadRepord(type: 3)
        thumb(type: 3)
        //: dismiss()
        startTag()
    }

    //: func show() {
    func voiceFor() {
        //: popView = TalkingPopView.init(frame: UIScreen.main.bounds)
        popView = NameThen(frame: UIScreen.main.bounds)
        //: popView?.initWithView(view: self)
        popView?.observe(view: self)
        //: popView?.showInView(view: MacroDefine.getWindow())
        popView?.shackUp(view: UserMacroDefine.toUp())
        //: popView?.isRemoveTapGes = true
        popView?.isRemoveTapGes = true
    }

    //: @objc func dismiss() {
    @objc func startTag() {
        //: popView?.dismissView()
        popView?.big()
        //: popView = nil
        popView = nil
        //: destroyTimer()
        theModel()
    }
}

// MARK: - Layout

//: extension TalkingVideoCallPopUpView {
extension NameFreeView {
    /// 添加视图
    //: private func setupSubviews() {
    private func renderSubviews() {
        //: self.addSubview(contentView)
        self.addSubview(contentView)
        //: contentView.addSubview(playerView)
        contentView.addSubview(playerView)
        //: contentView.addSubview(topIcon)
        contentView.addSubview(topIcon)
        //: contentView.insertSubview(topIcon, aboveSubview: playerView)
        contentView.insertSubview(topIcon, aboveSubview: playerView)
        //: contentView.addSubview(closeBtn)
        contentView.addSubview(closeBtn)
        //: contentView.addSubview(svgaPlayer)
        contentView.addSubview(svgaPlayer)
        //: contentView.insertSubview(finishBtn, aboveSubview: svgaPlayer)
        contentView.insertSubview(finishBtn, aboveSubview: svgaPlayer)
        //: finishBtn.addSubview(topBtn)
        finishBtn.addSubview(topBtn)
        //: finishBtn.addSubview(countDownLb)
        finishBtn.addSubview(countDownLb)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func slow() {
        //: contentView.snp.makeConstraints { make in
        contentView.snp.makeConstraints { make in
            //: make.center.equalToSuperview()
            make.center.equalToSuperview()
            //: make.size.equalTo(CGSize.init(width: actualWidth(w: 295), height: actualWidth(w: 419)))
            make.size.equalTo(CGSize(width: actualWidth(w: 295), height: actualWidth(w: 419)))
        }
        //: playerView.snp.makeConstraints { make in
        playerView.snp.makeConstraints { make in
            //: make.leading.top.equalTo(4)
            make.leading.top.equalTo(4)
            //: make.trailing.bottom.equalTo(-4)
            make.trailing.bottom.equalTo(-4)
        }

        //: topIcon.snp.makeConstraints { make in
        topIcon.snp.makeConstraints { make in
            //: make.leading.equalTo(-12)
            make.leading.equalTo(-12)
            //: make.top.equalTo(-23)
            make.top.equalTo(-23)
            //: make.size.equalTo(CGSize.init(width: actualWidth(w: 121), height: actualWidth(w: 52)))
            make.size.equalTo(CGSize(width: actualWidth(w: 121), height: actualWidth(w: 52)))
        }

        //: closeBtn.snp.makeConstraints { make in
        closeBtn.snp.makeConstraints { make in
            //: make.bottom.equalTo(-20)
            make.bottom.equalTo(-20)
            //: make.leading.equalTo(22)
            make.leading.equalTo(22)
            //: make.size.equalTo(42)
            make.size.equalTo(42)
        }

        //: svgaPlayer.snp.makeConstraints { make in
        svgaPlayer.snp.makeConstraints { make in
            //: make.leading.equalTo(closeBtn.snp.trailing).offset(1)
            make.leading.equalTo(closeBtn.snp.trailing).offset(1)
            //: make.centerY.equalTo(closeBtn)
            make.centerY.equalTo(closeBtn)
            //: make.trailing.equalTo(-5)
            make.trailing.equalTo(-5)
        }
        //: finishBtn.snp.makeConstraints { make in
        finishBtn.snp.makeConstraints { make in
            //: make.top.leading.equalTo(svgaPlayer).offset(6)
            make.top.leading.equalTo(svgaPlayer).offset(6)
            //: make.trailing.bottom.equalTo(svgaPlayer).offset(-6)
            make.trailing.bottom.equalTo(svgaPlayer).offset(-6)
        }
    }

    /// 事件绑定
    //: private func bindInteraction() {
    private func modelStatus() {
        //: addGradientLayerWithCorner(cornerRadius: 10, lineWidth: 4, colors: [UIColor.init(hex: "#864EFF")!.cgColor, UIColor.init(hex: "#F79AFF")!.cgColor])
        writeData(cornerRadius: 10, lineWidth: 4, colors: [UIColor(hex: (String(str_countData.suffix(7))))!.cgColor, UIColor(hex: (String(str_toCalendarValue)))!.cgColor])
        //: self.getServercePermission()
        self.comeTotalo()
        //: self.seTypeView()
        self.fun()
        //: self.beginPlayer()
        self.lessShow()
        //: NotificationCenter.default.post(name: VIDEOCALL_INITIV_NOTIFICATION, object: nil)
        NotificationCenter.default.post(name: kLet_recordHomeClickTitle, object: nil)
    }

    //: private func addGradientLayerWithCorner(cornerRadius: CGFloat, lineWidth: CGFloat, colors: [CGColor]) {
    private func writeData(cornerRadius: CGFloat, lineWidth: CGFloat, colors: [CGColor]) {
        //: self.layoutIfNeeded()
        self.layoutIfNeeded()
        //: let gradientLayer = CAGradientLayer()
        let gradientLayer = CAGradientLayer()
        //: gradientLayer.frame = contentView.bounds
        gradientLayer.frame = contentView.bounds
        //: gradientLayer.colors = colors
        gradientLayer.colors = colors
        //: gradientLayer.cornerRadius = cornerRadius
        gradientLayer.cornerRadius = cornerRadius

        //: let maskLayer = CAShapeLayer()
        let maskLayer = CAShapeLayer()
        //: maskLayer.lineWidth = lineWidth
        maskLayer.lineWidth = lineWidth
        //: maskLayer.path = UIBezierPath(roundedRect: CGRect(x: lineWidth / 2, y: lineWidth / 2, width: contentView.width - lineWidth, height: contentView.height - lineWidth), cornerRadius: cornerRadius).cgPath
        maskLayer.path = UIBezierPath(roundedRect: CGRect(x: lineWidth / 2, y: lineWidth / 2, width: contentView.width - lineWidth, height: contentView.height - lineWidth), cornerRadius: cornerRadius).cgPath
        //: maskLayer.fillColor = UIColor.clear.cgColor
        maskLayer.fillColor = UIColor.clear.cgColor
        //: maskLayer.strokeColor = UIColor.black.cgColor
        maskLayer.strokeColor = UIColor.black.cgColor

        //: gradientLayer.mask = maskLayer
        gradientLayer.mask = maskLayer
        //: contentView.layer.insertSublayer(gradientLayer, at: 0)
        contentView.layer.insertSublayer(gradientLayer, at: 0)
    }
}
