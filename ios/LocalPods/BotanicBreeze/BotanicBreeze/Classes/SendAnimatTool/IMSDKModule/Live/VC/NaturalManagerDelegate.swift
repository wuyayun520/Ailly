
//: Declare String Begin

/*: "live_ended" :*/
fileprivate let str_monthToEqualValue:[Character] = ["l","i","v","e","_","e"]
fileprivate let str_feeName:[Character] = ["n","d","e","d"]

/*: "The live broadcast has ended" :*/
fileprivate let str_layerName:String = "The file face case return result"
fileprivate let str_progressValue:String = "var to bro"
fileprivate let str_sizeName:String = "has endedall you equal"

/*: "bth_live_male_phone_nor" :*/
fileprivate let str_layerTitle:String = "bth_lilabel point type"
fileprivate let str_clearData:String = "e_phone_nload the any section text"
fileprivate let str_indexTitle:String = "userr"

/*: "floatingScreen" :*/
fileprivate let str_pathName:[Character] = ["f","l","o","a","t","i","n","g","S","c","r","e","e","n"]

/*: "You have been muted" :*/
fileprivate let str_appText:String = "You hsend route country break live"
fileprivate let str_backEqualFireData:String = "equal gift image selfeen "
fileprivate let str_numberValue:[Character] = ["m","u","t","e","d"]

/*: "You have entered the other party's blacklist" :*/
fileprivate let str_colorValue:[UInt8] = [0xc3,0xf5,0xef,0xba,0xf2,0xfb,0xec,0xff,0xba,0xff,0xf4,0xee,0xff,0xe8,0xff,0xfe,0xba,0xee,0xf2,0xff,0xba,0xf5,0xee,0xf2,0xff,0xe8,0xba,0xea,0xfb,0xe8,0xee,0xe3,0xbd,0xe9,0xba,0xf8,0xf6,0xfb,0xf9,0xf1,0xf6,0xf3,0xe9,0xee]

/*: "Live room exception, please return to retry, if multiple failures please contact the staff" :*/
fileprivate let str_succeedData:[UInt8] = [0xf1,0xe,0x1b,0xa,0xc5,0x17,0x14,0x14,0x12,0xc5,0xa,0x1d,0x8,0xa,0x15,0x19,0xe,0x14,0x13,0xd1,0xc5,0x15,0x11,0xa,0x6,0x18,0xa,0xc5,0x17,0xa,0x19,0x1a,0x17,0x13,0xc5,0x19,0x14,0xc5,0x17,0xa,0x19,0x17,0x1e,0xd1,0xc5,0xe,0xb,0xc5,0x12,0x1a,0x11,0x19,0xe,0x15,0x11,0xa,0xc5,0xb,0x6,0xe,0x11,0x1a,0x17,0xa,0x18,0xc5,0x15,0x11,0xa,0x6,0x18,0xa,0xc5,0x8,0x14,0x13,0x19,0x6,0x8,0x19,0xc5,0x19,0xd,0xa,0xc5,0x18,0x19,0x6,0xb,0xb]

fileprivate func equalClick(make num: UInt8) -> UInt8 {
    let value = Int(num) + 91
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "isCalling" :*/
fileprivate let str_fieldTitle:String = "view segment upisCalli"
fileprivate let str_modeTitle:String = "color"

/*: "isTalking" :*/
fileprivate let str_gestureName:String = "icon backisT"
fileprivate let str_styleTitle:[Character] = ["a","l","k","i","n","g"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  NaturalManagerDelegate.swift
//  AbroadTalking
//
//  Created by young on 2023/6/19.
//

//: import UIKit
import UIKit

//: import TXLiteAVSDK_Professional
import TXLiteAVSDK_Professional

//: enum LiveEnterType {
enum TextEnterType {
    //: case unknown
    case unknown // 默认，无需埋点统计
    //: case userDetail
    case userDetail // 个人资料
    //: case match
    case match // 速配
}

//: class TalkingLivePullStreamsViewController: TalkingBaseViewController {
class NaturalManagerDelegate: SeamViewController {
    //: var type = LiveEnterType.userDetail
    var type = TextEnterType.userDetail // 入口
    //: var isShowKeyboard = false
    var isShowKeyboard = false // 键盘是否在显示
    //: private let disposeBag = DisposeBag()
    private let disposeBag = DisposeBag()
    //: private var needReconnect = false
    private var needReconnect = false // 恢复网络是否需要重连

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: UIApplication.shared.isIdleTimerDisabled = true
        UIApplication.shared.isIdleTimerDisabled = true // 防止息屏
        //: hideNavi = true
        hideNavi = true
        //: setupSubviews()
        onLine()
        //: setupSubViewsConstraint()
        vanguardWithoutConfinement()
        //: bindInteraction()
        reciprocationAdd()
        //: playLiveVideo()
        goldfishBowlVideo()
        //: req_enterRoomInfo()
        practice()
        //: TalkingDanmuManager.shared().delegate = self
        UserListBankManagerReactiveCompatible.willSize().delegate = self
        //: V2TIMManager.sharedInstance().addGroupListener(listener: self)
        V2TIMManager.sharedInstance().addGroupListener(listener: self)
    }

    //: deinit {
    deinit {
        //: UIApplication.shared.isIdleTimerDisabled = false
        UIApplication.shared.isIdleTimerDisabled = false // 恢复息屏
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    // MARK: - Lazy Load

    //: private lazy var player: TXLivePlayer = {
    private lazy var player: TXLivePlayer = {
        //: var player = TXLivePlayer()
        var player = TXLivePlayer()
        //: player.delegate = self
        player.delegate = self
        //: player.setRenderMode(.RENDER_MODE_FILL_SCREEN)
        player.setRenderMode(.RENDER_MODE_FILL_SCREEN)
        //: return player
        return player
        //: }()
    }()

    //: private lazy var videoCallManager: TalkingCallMenuManager = {
    private lazy var videoCallManager: NameMenuManager = {
        //: let m = TalkingCallMenuManager()
        let m = NameMenuManager()
        //: m.uid = String(TalkingLiveManager.shared().liveRoomModel.streamerInfo.uid)
        m.uid = String(UserPushListener.sexApp().liveRoomModel.streamerInfo.uid)
        //: return m
        return m
        //: }()
    }()

    //: private lazy var stopLiveBgView: UIView = {
    private lazy var stopLiveBgView: UIView = {
        //: let bg = UIView()
        let bg = UIView()
        //: bg.backgroundColor = UIColor.black.withAlphaComponent(0.6)
        bg.backgroundColor = UIColor.black.withAlphaComponent(0.6)
        //: bg.isHidden = true
        bg.isHidden = true
        // icon
        //: let icon = UIImageView(image: UIImage.eponymUp(name: "live_ended"))
        let icon = UIImageView(image: UIImage.eponymUp(name: (String(str_monthToEqualValue) + String(str_feeName))))
        //: bg.addSubview(icon)
        bg.addSubview(icon)
        //: icon.snp.makeConstraints { make in
        icon.snp.makeConstraints { make in
            //: make.top.equalTo(StatusBarHeight+actualWidth(w: 205))
            make.top.equalTo(kLet_timeSenseValue + actualWidth(w: 205))
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.width.height.equalTo(actualWidth(w: 52))
            make.width.height.equalTo(actualWidth(w: 52))
        }
        // title
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = UIColor.white.withAlphaComponent(0.8)
        lab.textColor = UIColor.white.withAlphaComponent(0.8)
        //: lab.font = UIFont.pingfangWithDiameter(fontSize: 15)
        lab.font = UIFont.pingfangWithDiameter(fontSize: 15)
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.text = "The live broadcast has ended".localized
        lab.text = (String(str_layerName.prefix(4)) + "live" + String(str_progressValue.suffix(4)) + "adcast " + String(str_sizeName.prefix(9))).localized
        //: bg.addSubview(lab)
        bg.addSubview(lab)
        //: lab.snp.makeConstraints { make in
        lab.snp.makeConstraints { make in
            //: make.top.equalTo(icon.snp.bottom).offset(30)
            make.top.equalTo(icon.snp.bottom).offset(30)
            //: make.centerX.width.equalToSuperview()
            make.centerX.width.equalToSuperview()
        }
        //: return bg
        return bg
        //: }()
    }()

    //: private lazy var bottomView: TalkingLiveRoomBottomView = {
    private lazy var bottomView: ContentThen = {
        //: let view = TalkingLiveRoomBottomView(frame: .zero)
        let view = ContentThen(frame: .zero)
        //: view.refreshBottomView(TalkingLiveManager.shared().liveRoomModel)
        view.playerByView(UserPushListener.sexApp().liveRoomModel)
        //: view.delegate = self
        view.delegate = self
        //: return view
        return view
        //: }()
    }()

    //: private lazy var commInputView: TalkingLiveRoomInputView = {
    private lazy var commInputView: LiveInputView = {
        //: let text = TalkingLiveRoomInputView.init()
        let text = LiveInputView()
        //: text.delegate = self
        text.delegate = self
        //: text.isHidden = true
        text.isHidden = true
        //: return text
        return text
        //: }()
    }()

    //: private lazy var danmuView: TalkingDanmuMsgListTableView = {
    private lazy var danmuView: ArrayContentsTableView = {
        //: let view = TalkingDanmuMsgListTableView.init()
        let view = ArrayContentsTableView()
        //: return view
        return view
        //: }()
    }()

    //: private lazy var callBtn: UIButton = {
    private lazy var callBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.eponymUp(name: "bth_live_male_phone_nor"), for: .normal)
        btn.setImage(UIImage.eponymUp(name: (String(str_layerTitle.prefix(6)) + "ve_mal" + String(str_clearData.prefix(9)) + str_indexTitle.replacingOccurrences(of: "user", with: "o"))), for: .normal)
        //: btn.addTarget(self, action: #selector(callButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(nicknameClick), for: .touchUpInside)
        //: if EqualThen.share.loginUserMode.sex == Gender.male.rawValue &&
        if EqualThen.share.loginUserMode.sex == RunReplaceableCollection.male.rawValue &&
            //: EqualThen.share.appStatus != AppSkinStatus.special.rawValue {
            EqualThen.share.appStatus != PhaseOfTheMoonPropertyProtocol.special.rawValue
        {
            //: btn.isHidden = false
            btn.isHidden = false
            //: } else {
        } else {
            //: btn.isHidden = true
            btn.isHidden = true
        }
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var giftEffectView: TalkingPrivateChatAnimatView = {
    private lazy var giftEffectView: OfReactiveCompatible = {
        //: let effectView = TalkingPrivateChatAnimatView.init()
        let effectView = OfReactiveCompatible()
        //: effectView.contentMode = .scaleAspectFill
        effectView.contentMode = .scaleAspectFill
        //: return effectView
        return effectView
        //: }()
    }()

    //: private lazy var giftTrackView: TalkingGiftTrackView = {
    private lazy var giftTrackView: AddThen = {
        //: let trackView = TalkingGiftTrackView.init()
        let trackView = AddThen()
        //: trackView.isUserInteractionEnabled = false
        trackView.isUserInteractionEnabled = false
        //: return trackView
        return trackView
        //: }()
    }()

    //: private lazy var topView: TalkingLiveRoomTopView = {
    private lazy var topView: HeadView = {
        //: let v = TalkingLiveRoomTopView()
        let v = HeadView()
        //: v.weakVC = self
        v.weakVC = self
        //: v.refreshTopView(TalkingLiveManager.shared().liveRoomModel)
        v.authorSName(UserPushListener.sexApp().liveRoomModel)
        //: v.rightBtnBlock = { [weak self] in
        v.rightBtnBlock = { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.commInputView.inputTextView.resignFirstResponder()
            self.commInputView.inputTextView.resignFirstResponder()
            //: self.popCurrentViewController()
            self.partyAnimated()
        }
        //: return v
        return v
        //: }()
    }()

    //: private lazy var floatScreenView: TalkingFloatScreenView = {
    private lazy var floatScreenView: GiftScreenView = { // 飘屏
        //: let v = TalkingFloatScreenView()
        let v = GiftScreenView()
        //: v.isHidden = (EqualThen.share.appStatus == AppSkinStatus.special.rawValue)
        v.isHidden = (EqualThen.share.appStatus == PhaseOfTheMoonPropertyProtocol.special.rawValue)
        //: return v
        return v
        //: }()
    }()
}

// MARK: - Load Data

//: extension TalkingLivePullStreamsViewController {
extension NaturalManagerDelegate {
    /// 播放直播内容
    //: @objc private func playLiveVideo() {
    @objc private func goldfishBowlVideo() {
        //: needReconnect = false
        needReconnect = false
        //: stopLiveBgView.isHidden = true
        stopLiveBgView.isHidden = true
        //: self.player.startLivePlay(TalkingLiveManager.shared().liveRoomModel.livePlayUrl, type: TX_Enum_PlayType.PLAY_TYPE_LIVE_FLV)
        self.player.startLivePlay(UserPushListener.sexApp().liveRoomModel.livePlayUrl, type: TX_Enum_PlayType.PLAY_TYPE_LIVE_FLV)
    }

    /// 加入弹幕
    //: func req_enterRoomInfo() {
    func practice() {
        //: TalkingDanmuManager.joinLiveRoomDanmu(groupId: TalkingLiveManager.shared().liveRoomModel.chatGroupId, announcementMsg: TalkingLiveManager.shared().liveRoomModel.notification)
        UserListBankManagerReactiveCompatible.pathCell(groupId: UserPushListener.sexApp().liveRoomModel.chatGroupId, announcementMsg: UserPushListener.sexApp().liveRoomModel.notification)

        //: self.bottomView.toUid = String(TalkingLiveManager.shared().liveRoomModel.streamerInfo.uid)
        self.bottomView.toUid = String(UserPushListener.sexApp().liveRoomModel.streamerInfo.uid)
    }

    /// 退出房间
    //: func req_quitGroup() {
    func selfGoverning() {
        /// 退出弹幕房间
        //: V2TIMManager.sharedInstance().quitGroup(TalkingLiveManager.shared().liveRoomModel.chatGroupId, succ: {
        V2TIMManager.sharedInstance().quitGroup(UserPushListener.sexApp().liveRoomModel.chatGroupId, succ: {
            //: }, fail: { code, str in
        }, fail: { _, _ in
            //: })
        })
    }
}

// MARK: - 弹幕通知事件

//: extension TalkingLivePullStreamsViewController {
extension NaturalManagerDelegate {
    //: @objc func danmuMoveTop() {
    @objc func bringUp() {
        //: danmuView.snp.updateConstraints { make in
        danmuView.snp.updateConstraints { make in
            //: make.bottom.equalTo(bottomView.snp.top).offset(-(ScreenHeight-HalfViewTopMargin-bottomView.height-kDeviceSafeBottomHeight))
            make.bottom.equalTo(bottomView.snp.top).offset(-(kLet_clickData - kLet_profileTitle - bottomView.height - kLet_nextData))
        }
    }

    //: @objc func danmuMoveBottom() {
    @objc func danmu() {
        //: var ishave = 0
        var ishave = 0
        //: for vc in self.children {
        for vc in self.children {
            //: if vc.isKind(of: TalkingPrivateChatController.self) || vc.isKind(of: TalkingChatListViewController.self) {
            if vc.isKind(of: SendReactiveCompatible.self) || vc.isKind(of: PopViewDelegate.self) {
                //: ishave += 1
                ishave += 1
            }
        }
        //: if ishave == 0 {
        if ishave == 0 {
            //: danmuView.snp.updateConstraints { make in
            danmuView.snp.updateConstraints { make in
                //: make.bottom.equalTo(bottomView.snp.top)
                make.bottom.equalTo(bottomView.snp.top)
            }
        }
    }
}

// MARK: - Event

//: extension TalkingLivePullStreamsViewController {
extension NaturalManagerDelegate {
    /// 拨打音视频通话
    //: @objc private func callButtonClick() {
    @objc private func nicknameClick() {
        //: var videoStr = TalkingLiveManager.shared().liveRoomModel.videoPrice
        var videoStr = UserPushListener.sexApp().liveRoomModel.videoPrice
        //: var voiceStr = TalkingLiveManager.shared().liveRoomModel.voicePrice
        var voiceStr = UserPushListener.sexApp().liveRoomModel.voicePrice
        //: if EqualThen.share.loginUserMode.loungePlus {
        if EqualThen.share.loginUserMode.loungePlus {
            //: videoStr = TalkingLiveManager.shared().liveRoomModel.videoVIPPrice
            videoStr = UserPushListener.sexApp().liveRoomModel.videoVIPPrice
            //: voiceStr = TalkingLiveManager.shared().liveRoomModel.voiceVIPPrice
            voiceStr = UserPushListener.sexApp().liveRoomModel.voiceVIPPrice
        }
        //: videoCallManager.showVideoCallMenu(videoPrice: "\(videoStr)", voicePrice: "\(voiceStr)")
        videoCallManager.upHandle(videoPrice: "\(videoStr)", voicePrice: "\(voiceStr)")

        // 埋点
        //: switch self.type {
        switch self.type {
        //: case .match:
        case .match:
            //: uploadRecord.uploadRecordEvent(eventID: ClickMatchLiveCallNoP, toUid: String(TalkingLiveManager.shared().liveRoomModel.streamerInfo.uid))
            kLet_textData.historicalPaper(eventID: kLet_errorLimitValue, toUid: String(UserPushListener.sexApp().liveRoomModel.streamerInfo.uid))

        //: case .userDetail:
        case .userDetail:
            //: uploadRecord.uploadRecordEvent(eventID: ClickProfileLiveCallNoP, toUid: String(TalkingLiveManager.shared().liveRoomModel.streamerInfo.uid))
            kLet_textData.historicalPaper(eventID: kLet_clickValue, toUid: String(UserPushListener.sexApp().liveRoomModel.streamerInfo.uid))

        //: case .unknown: break
        case .unknown: break
        }
    }

    /// 将当前视图从栈中移除
    //: func popCurrentViewController(animated: Bool = true) {
    func partyAnimated(animated: Bool = true) {
        //: self.topView.stopTimer()
        self.topView.subsequently()
        //: req_quitGroup()
        selfGoverning() // 退出群聊
        //: TalkingLiveManager.destroy()
        UserPushListener.animateBeing() // 销毁单例
        //: TalkingDanmuManager.shared().delegate = nil
        UserListBankManagerReactiveCompatible.willSize().delegate = nil
        //: self.player.stopPlay()
        self.player.stopPlay()
        //: self.player.removeVideoWidget()
        self.player.removeVideoWidget()

        //: guard let currentVC = currentViewController() else { return }
        guard let currentVC = infoController() else { return }
        //: guard currentVC.presentingViewController == nil else {
        guard currentVC.presentingViewController == nil else {
            // 如果直播视图上面有present, 先dismiss
            //: currentVC.dismiss(animated: false) {
            currentVC.dismiss(animated: false) {
                //: self.popCurrentViewController()
                self.partyAnimated()
            }
            //: return
            return
        }

        //: if currentVC.navigationController?.topViewController == self {
        if currentVC.navigationController?.topViewController == self {
            //: self.navigationController?.popViewController(animated: animated)
            self.navigationController?.popViewController(animated: animated)
            //: } else {
        } else {
            //: if var vcArr = currentVC.navigationController?.viewControllers {
            if var vcArr = currentVC.navigationController?.viewControllers {
                //: if let index = vcArr.firstIndex(of: self) {
                if let index = vcArr.firstIndex(of: self) {
                    //: vcArr.remove(at: index)
                    vcArr.remove(at: index)
                    //: currentVC.navigationController?.setViewControllers(vcArr, animated: true)
                    currentVC.navigationController?.setViewControllers(vcArr, animated: true)
                }
            }
        }
    }

    /// 展示飘屏内容
    //: @objc private func showFloatScreen(notification: NSNotification) {
    @objc private func phosphoresce(notification: NSNotification) {
        //: let userinfo = notification.userInfo as! [String: AnyObject]
        let userinfo = notification.userInfo as! [String: AnyObject]
        //: let dict = userinfo["floatingScreen"]
        let dict = userinfo[(String(str_pathName))]
        //: if let model = TalkingFloatingScreenModel.deserialize(from: dict as? Dictionary) {
        if let model = ScreenHandyJSON.deserialize(from: dict as? Dictionary) {
            //: self.floatScreenView.didReceive(model)
            self.floatScreenView.premiumFrom(model)
        }
    }
}

// MARK: - 底部按钮代理

//: extension TalkingLivePullStreamsViewController: TalkingLiveRoomBottomViewDelegate {
extension NaturalManagerDelegate: AtObjectProtocol {
    //: func func__commentBtnClick() {
    func obscure() {
        //: if Int(Date().timeIntervalSince1970) < TalkingLiveManager.shared().liveRoomModel.muteExpireAt {
        if Int(Date().timeIntervalSince1970) < UserPushListener.sexApp().liveRoomModel.muteExpireAt {
            //: self.func__showStatusBarErrorMsg(showMsg: "You have been muted".localized)
            self.oversight(showMsg: (String(str_appText.prefix(5)) + "ave b" + String(str_backEqualFireData.suffix(4)) + String(str_numberValue)).localized)
            //: return
            return
        }
        /// 拉起弹幕评论
        //: commInputView.updatePlaceholder()
        commInputView.placeholder()
    }
}

// MARK: - UpManagerDelegate

//: extension TalkingLivePullStreamsViewController: TalkingDanmuManagerDelegate {
extension NaturalManagerDelegate: UpManagerDelegate {
    //: func func__giftRecvNewModel(Msg: TalkingLiveRoomDanmuModel) {
    func handleOpen(Msg: ModeDanmuModel) {
        //: addGiftEffectModelArr(Msg: Msg)
        scale(Msg: Msg)
    }

    //: func func__DanmuRecvNewModel(Msg: TalkingLiveRoomDanmuModel) {
    func modelTo(Msg: ModeDanmuModel) {
        //: danmuView.addNewMsg(msgModel: Msg)
        danmuView.modelFollow(msgModel: Msg)
    }

    //: func func__actionUserNewModel(pushUid: String?) {
    func unused(pushUid: String?) {
        //: commInputView.inputTextView.resignFirstResponder()
        commInputView.inputTextView.resignFirstResponder()
        //: let view = TalkingLiveUserCardView.init(frame: self.view.frame, uid: pushUid ?? "")
        let view = TitleCardView(frame: self.view.frame, uid: pushUid ?? "")
        //: view.delegate = self
        view.delegate = self
        //: view.show()
        view.party()
    }

    //: func func__longTouchUserNewModel(nickName: String, atUid: String?) {
    func readOut(nickName: String, atUid: String?) {
        //: guard !isShowKeyboard else {
        guard !isShowKeyboard else {
            //: return
            return
        }
        //: commInputView.callUserText(toUid: atUid ?? "", nickName: nickName)
        commInputView.digitiserUp(toUid: atUid ?? "", nickName: nickName)
    }

    //: func func__userLogin() {}
    func bottomLogin() {}

    //: func func__userLogout() {}
    func ask() {}
}

// MARK: - AggregationViewDelegate 资料卡

//: extension TalkingLivePullStreamsViewController: TalkingLiveUserCardViewDelegate {
extension NaturalManagerDelegate: AggregationViewDelegate {
    //: func func__atUserClick(uid: String, nickname: String) {
    func appGroup(uid: String, nickname: String) {
        //: commInputView.callUserText(toUid: uid, nickName: nickname)
        commInputView.digitiserUp(toUid: uid, nickName: nickname)
    }
}

// MARK: - 礼物动效

//: extension TalkingLivePullStreamsViewController {
extension NaturalManagerDelegate {
    /// 收到礼物消息展示
    //: func addGiftEffectModelArr(Msg: TalkingLiveRoomDanmuModel) {
    func scale(Msg: ModeDanmuModel) {
        //: if giftTrackView.giftSendItem.count == 0 {
        if giftTrackView.giftSendItem.count == 0 {
            //: let arrM = NSMutableArray.init()
            let arrM = NSMutableArray()
            //: for model in TalkingChatGiftManager.share.getSendingItems() {
            for model in AstatineThen.share.changeItems() {
                //: arrM.add(model)
                arrM.add(model)
            }
            //: giftTrackView.giftSendItem = arrM as! [TalkingGiftNumArrModel]
            giftTrackView.giftSendItem = arrM as! [SkinArrModel]
        }
        //: let giftModel = Msg.gift
        let giftModel = Msg.gift
        //: if giftModel != nil {
        if giftModel != nil {
            //: giftTrackView.func__didReceiveGiftMsgModel(model: giftModel!)
            giftTrackView.lineEffect(model: giftModel!)
            //: giftEffectView.addGiftAnimatModelArr(modelArr: [giftModel!])
            giftEffectView.doingGoingKey(modelArr: [giftModel!])
        }
    }
}

/// 屏幕点击事件
//: extension TalkingLivePullStreamsViewController {
extension NaturalManagerDelegate {
    //: override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    override func touchesBegan(_ touches: Set<UITouch>, with _: UIEvent?) {
        //: let touch = touches.first!
        let touch = touches.first!
        //: var point = touch.location(in: self.view)
        var point = touch.location(in: self.view)
        //: point = commInputView.layer.convert(point, from: self.view.layer)
        point = commInputView.layer.convert(point, from: self.view.layer)
        //: if !commInputView.layer.contains(point) {
        if !commInputView.layer.contains(point) {
            //: commInputView.inputTextView.resignFirstResponder()
            commInputView.inputTextView.resignFirstResponder()
        }
    }
}

// MARK: - 发表弹幕代理

//: extension TalkingLivePullStreamsViewController: TalkingLiveRoomInputViewDelegate {
extension NaturalManagerDelegate: AccumulationViewDelegate {
    //: @objc func dismissClick() {
    @objc func verbalize() {
        //: commInputView.inputTextView.text = ""
        commInputView.inputTextView.text = ""
        //: commInputView.resignkeyBoard()
        commInputView.resignkey()
    }

    //: func func__sendTextMsg(msgStr: String, atUid: String?) {
    func installment(msgStr: String, atUid: String?) {
        //: sendToTextMsg(msgStr: msgStr, toUid: atUid)
        equalBlow(msgStr: msgStr, toUid: atUid)
    }

    //: func heightToBottomChanged(heightToBottom: CGFloat) {
    func atCut(heightToBottom: CGFloat) {
        /// 半屏页打开时，不改变弹幕位置
        //: for vc in self.children {
        for vc in self.children {
            //: if vc.isKind(of: TalkingPrivateChatController.self) || vc.isKind(of: TalkingChatListViewController.self) {
            if vc.isKind(of: SendReactiveCompatible.self) || vc.isKind(of: PopViewDelegate.self) {
                //: return
                return
            }
        }
        //: isShowKeyboard = heightToBottom != 0 ? true : false
        isShowKeyboard = heightToBottom != 0 ? true : false
        //: commInputView.snp.updateConstraints { make in
        commInputView.snp.updateConstraints { make in
            //: make.bottom.equalTo(self.view).offset(-heightToBottom)
            make.bottom.equalTo(self.view).offset(-heightToBottom)
        }
        //: danmuView.snp.updateConstraints { make in
        danmuView.snp.updateConstraints { make in
            //: let height = heightToBottom == 0 ? 0 : -(heightToBottom-bottomView.height+commInputView.height-kDeviceSafeBottomHeight)
            let height = heightToBottom == 0 ? 0 : -(heightToBottom - bottomView.height + commInputView.height - kLet_nextData)
            //: make.bottom.equalTo(bottomView.snp.top).offset(height)
            make.bottom.equalTo(bottomView.snp.top).offset(height)
        }
    }

    //: func inputViewHeightChanged(height: CGFloat) {
    func horn(height: CGFloat) {
        //: commInputView.snp.updateConstraints { make in
        commInputView.snp.updateConstraints { make in
            //: make.height.equalTo(height)
            make.height.equalTo(height)
        }
        //: self.view.needsUpdateConstraints()
        self.view.needsUpdateConstraints()
        //: self.view.updateConstraintsIfNeeded()
        self.view.updateConstraintsIfNeeded()
        //: UIView.animate(withDuration: 0.3, animations: {
        UIView.animate(withDuration: 0.3, animations: {
            //: self.view.layoutIfNeeded()
            self.view.layoutIfNeeded()
            //: })
        })
    }

    /// 发送文本消息
    //: func sendToTextMsg(msgStr: String, toUid: String?) {
    func equalBlow(msgStr: String, toUid: String?) {
        //: TalkingDanmuManager.uploadToTextMsg(groupId: TalkingLiveManager.shared().liveRoomModel.chatGroupId, message: msgStr, toUid: toUid) { succeed, result, errorModel in
        UserListBankManagerReactiveCompatible.toCurrent(groupId: UserPushListener.sexApp().liveRoomModel.chatGroupId, message: msgStr, toUid: toUid) { succeed, _, _ in
            //: if succeed {
            if succeed {}
        }
    }
}

///  V2TIMGroupListener 弹幕房间
//: extension TalkingLivePullStreamsViewController: V2TIMGroupListener {
extension NaturalManagerDelegate: V2TIMGroupListener {
    /// 被主播拉黑后，禁言退出房间
    //: func onMemberInfoChanged(_ groupID: String!, changeInfoList: [V2TIMGroupMemberChangeInfo]!) {
    func onMemberInfoChanged(_: String!, changeInfoList: [V2TIMGroupMemberChangeInfo]!) {
        //: if changeInfoList.first?.userID == EqualThen.share.loginUserMode.userID {
        if changeInfoList.first?.userID == EqualThen.share.loginUserMode.userID {
            //: let toastStr = "You have entered the other party's blacklist".localized
            let toastStr = String(bytes: str_colorValue.map{$0^154}, encoding: .utf8)!.localized
            //: ProgressHUD.toast(toastStr)
            ModelReactiveCompatible.doMake(toastStr)
            //: popCurrentViewController()
            partyAnimated()
        }
    }
}

// MARK: - SOCKET_VIDEOCHAT_REQUESTCALL_NOTIFICATION【收到音视频通话通知】

//: extension TalkingLivePullStreamsViewController {
extension NaturalManagerDelegate {
    /// 开始音视频通话
    //: @objc private func startTalking() {
    @objc private func material() {
        //: self.player.setMute(true)
        self.player.setMute(true)
    }
}

// MARK: - 网络监听通知

//: extension TalkingLivePullStreamsViewController {
extension NaturalManagerDelegate {
    /// 网络监听通知
    //: @objc func reachabilityChanged(note: Notification) {
    @objc func clickNote(note: Notification) {
        //: guard needReconnect == true else { return }
        guard needReconnect == true else { return }
        //: let reachability = note.object as? Reachability
        let reachability = note.object as? Reachability
        //: if reachability?.connection != .unavailable {
        if reachability?.connection != .unavailable {
            //: playLiveVideo()
            goldfishBowlVideo()
        }
    }
}

// MARK: - TXLivePlayListener【直播拉流监听】

//: extension TalkingLivePullStreamsViewController: TXLivePlayListener {
extension NaturalManagerDelegate: TXLivePlayListener {
    //: func onPlayEvent(_ evtID: Int32, withParam param: [AnyHashable: Any]!) {
    func onPlayEvent(_ evtID: Int32, withParam _: [AnyHashable: Any]!) {
        //: if evtID == PLAY_EVT_PLAY_END.rawValue {
        if evtID == PLAY_EVT_PLAY_END.rawValue { // 播放结束
            //: stopLiveBgView.isHidden = false
            stopLiveBgView.isHidden = false

            //: } else if evtID == PLAY_ERR_NET_DISCONNECT.rawValue {
        } else if evtID == PLAY_ERR_NET_DISCONNECT.rawValue { // 经过三次重试并且未能重连成功
            //: if EqualThen.share.networkStatus == .Unavailable {
            if EqualThen.share.networkStatus == .Unavailable {
                //: needReconnect = true
                needReconnect = true
                //: } else {
            } else {
                //: stopLiveBgView.isHidden = false
                stopLiveBgView.isHidden = false
            }

            //: } else if evtID == PLAY_ERR_GET_RTMP_ACC_URL_FAIL.rawValue ||
        } else if evtID == PLAY_ERR_GET_RTMP_ACC_URL_FAIL.rawValue ||
            //: evtID == PLAY_ERR_HEVC_DECODE_FAIL.rawValue ||
            evtID == PLAY_ERR_HEVC_DECODE_FAIL.rawValue ||
            //: evtID == PLAY_ERR_STREAM_SWITCH_FAIL.rawValue ||
            evtID == PLAY_ERR_STREAM_SWITCH_FAIL.rawValue ||
            //: evtID == PLAY_ERR_STREAM_SERVER_REFUSED.rawValue {
            evtID == PLAY_ERR_STREAM_SERVER_REFUSED.rawValue
        { // 观众侧拉流失败，退出直播间
            //: self.func__showStatusBarErrorMsg(showMsg: "Live room exception, please return to retry, if multiple failures please contact the staff".localized)
            self.oversight(showMsg: String(bytes: str_succeedData.map{equalClick(make: $0)}, encoding: .utf8)!.localized)
            //: popCurrentViewController()
            partyAnimated()
        }
    }

    //: func onNetStatus(_ param: [AnyHashable: Any]!) {}
    func onNetStatus(_: [AnyHashable: Any]!) {}
}

// MARK: - Layout

//: extension TalkingLivePullStreamsViewController {
extension NaturalManagerDelegate {
    /// 添加视图
    //: private func setupSubviews() {
    private func onLine() {
        //: self.view.backgroundColor = .appTitleColor()
        self.view.backgroundColor = .executeTo()
        //: self.player.setupVideoWidget(self.view.bounds, contain: self.view, insert: 0)
        self.player.setupVideoWidget(self.view.bounds, contain: self.view, insert: 0)

        //: view.addSubview(stopLiveBgView)
        view.addSubview(stopLiveBgView)
        //: view.addSubview(bottomView)
        view.addSubview(bottomView)
        //: view.addSubview(danmuView)
        view.addSubview(danmuView)
        //: view.addSubview(commInputView)
        view.addSubview(commInputView)
        //: view.addSubview(callBtn)
        view.addSubview(callBtn)
        //: view.addSubview(topView)
        view.addSubview(topView)
        //: view.addSubview(floatScreenView)
        view.addSubview(floatScreenView)
        //: view.addSubview(giftTrackView)
        view.addSubview(giftTrackView)
        //: view.addSubview(giftEffectView)
        view.addSubview(giftEffectView)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func vanguardWithoutConfinement() {
        //: stopLiveBgView.snp.makeConstraints { make in
        stopLiveBgView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
        //: commInputView.snp.makeConstraints { make in
        commInputView.snp.makeConstraints { make in
            //: make.bottom.equalTo(self.view)
            make.bottom.equalTo(self.view)
            //: make.leading.trailing.equalTo(0)
            make.leading.trailing.equalTo(0)
            //: make.height.equalTo(actualWidth(w: 55))
            make.height.equalTo(actualWidth(w: 55))
        }
        //: bottomView.snp.makeConstraints { make in
        bottomView.snp.makeConstraints { make in
            //: make.bottom.equalToSuperview().offset(-(kDeviceSafeBottomHeight + 10))
            make.bottom.equalToSuperview().offset(-(kLet_nextData + 10))
            //: make.leading.trailing.equalToSuperview()
            make.leading.trailing.equalToSuperview()
            //: make.height.equalTo(actualWidth(w: 50))
            make.height.equalTo(actualWidth(w: 50))
        }
        //: danmuView.snp.makeConstraints { make in
        danmuView.snp.makeConstraints { make in
            //: make.bottom.equalTo(bottomView.snp.top )
            make.bottom.equalTo(bottomView.snp.top)
            //: make.leading.equalTo(10)
            make.leading.equalTo(10)
            //: make.height.equalTo(MsgTableViewHeight)
            make.height.equalTo(kLet_errValue)
            //: make.width.equalTo(MsgTableViewWidth)
            make.width.equalTo(kLet_listValue)
        }
        //: floatScreenView.snp.makeConstraints { make in
        floatScreenView.snp.makeConstraints { make in
            //: make.top.equalTo(topView.snp.bottom).offset(-20)
            make.top.equalTo(topView.snp.bottom).offset(-20)
            //: make.leading.trailing.equalToSuperview()
            make.leading.trailing.equalToSuperview()
            //: make.height.equalTo(90)
            make.height.equalTo(90)
        }
        //: callBtn.snp.makeConstraints { make in
        callBtn.snp.makeConstraints { make in
            //: make.trailing.equalTo(-15)
            make.trailing.equalTo(-15)
            //: make.bottom.equalTo(bottomView.snp.top).offset(-20)
            make.bottom.equalTo(bottomView.snp.top).offset(-20)
            //: make.width.height.equalTo(actualWidth(w: 67))
            make.width.height.equalTo(actualWidth(w: 67))
        }
        //: giftEffectView.snp.makeConstraints { make in
        giftEffectView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
        //: giftTrackView.snp.makeConstraints { make in
        giftTrackView.snp.makeConstraints { make in
            //: make.leading.equalTo(self.view)
            make.leading.equalTo(self.view)
            //: make.height.equalTo(180)
            make.height.equalTo(180)
            //: make.bottom.equalTo(bottomView.snp.top).offset(-MsgTableViewHeight)
            make.bottom.equalTo(bottomView.snp.top).offset(-kLet_errValue)
        }
    }

    /// 事件绑定
    //: func bindInteraction() {
    func reciprocationAdd() {
        // 网络状态监听
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(reachabilityChanged(note:)),
                                               selector: #selector(clickNote(note:)),
                                               //: name: .reachabilityChanged,
                                               name: .reachabilityChanged,
                                               //: object: nil)
                                               object: nil)

        // 添加接收到音视频通话通知
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(startTalking),
                                               selector: #selector(material),
                                               //: name: SOCKET_VIDEOCHAT_REQUESTCALL_NOTIFICATION,
                                               name: kLet_packageErrorMarginData,
                                               //: object: nil)
                                               object: nil)

        // 主播开播通知
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(playLiveVideo),
                                               selector: #selector(goldfishBowlVideo),
                                               //: name: LIVE_RECIVE_STARTLIVE_NOTIFICATION,
                                               name: kLet_licenseData,
                                               //: object: nil)
                                               object: nil)

        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(danmuMoveTop),
                                               selector: #selector(bringUp),
                                               //: name: LIVE_HALF_VIEW_SHOW,
                                               name: kLet_requestValue,
                                               //: object: nil)
                                               object: nil)

        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(danmuMoveBottom),
                                               selector: #selector(danmu),
                                               //: name: LIVE_HALF_VIEW_DISMISS,
                                               name: kLet_contentData,
                                               //: object: nil)
                                               object: nil)
        // 飘屏
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(showFloatScreen(notification:)),
                                               selector: #selector(phosphoresce(notification:)),
                                               //: name: LIVE_RECIVE_FLOATSCREEN_NOTIFICATION,
                                               name: kLet_messageBottomTitle,
                                               //: object: nil)
                                               object: nil)

        // 音视频呼叫时，直播间静音
        //: TalkingSocketManager.shared.rx
        DeviceSocketDelegate.shared.rx
            //: .observeWeakly(Bool.self, "isCalling")
            .observeWeakly(Bool.self, (String(str_fieldTitle.suffix(7)) + str_modeTitle.replacingOccurrences(of: "color", with: "ng")))
            //: .subscribe(onNext: { [weak self] (value) in
            .subscribe(onNext: { [weak self] value in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: if value == true {
                if value == true {
                    //: self.player.setMute(true)
                    self.player.setMute(true)
                }
                //: }).disposed(by: disposeBag)
            }).disposed(by: disposeBag)

        // 音视频通话时，直播间静音
        //: TalkingSocketManager.shared.rx
        DeviceSocketDelegate.shared.rx
            //: .observeWeakly(Bool.self, "isTalking")
            .observeWeakly(Bool.self, (String(str_gestureName.suffix(3)) + String(str_styleTitle)))
            //: .subscribe(onNext: { [weak self] (value) in
            .subscribe(onNext: { [weak self] value in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: self.player.setMute(value ?? false)
                self.player.setMute(value ?? false)
                //: }).disposed(by: disposeBag)
            }).disposed(by: disposeBag)
    }
}
