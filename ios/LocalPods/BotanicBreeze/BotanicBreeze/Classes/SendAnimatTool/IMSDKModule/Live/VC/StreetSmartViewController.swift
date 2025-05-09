
//: Declare String Begin

/*: "uid" :*/
fileprivate let str_sizeText:[Character] = ["u","i","d"]

/*: "floatingScreen" :*/
fileprivate let str_buttonData:String = "pictureloati"
fileprivate let str_makeTitle:String = "erecord"

/*: "MF:LiveChatMsg" :*/
fileprivate let str_numberValue:String = "award view effect extension inMF:L"
fileprivate let str_cropCoinValue:String = "self varhatMsg"

/*: "MF:LiveChatMentionMsg" :*/
fileprivate let str_giftName:String = "view let button blind elseMF:L"
fileprivate let str_boyText:String = "title model size ifhatMe"

/*: "MF:LiveChatGiftMsg" :*/
fileprivate let str_contentValue:[Character] = ["M","F",":","L","i","v","e","C","h","a","t","G","i","f","t","M","s","g"]

/*: "LiveGift_ :*/
fileprivate let str_youNameValue:String = "LiveGift_self month"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  StreetSmartViewController.swift
//  AbroadTalking
//
//  Created by young on 2023/6/19.
//

//: import UIKit
import UIKit

//: class TalkingLiveBeautifyViewController: TalkingBaseViewController {
class StreetSmartViewController: SeamViewController {
    //: private let disposeBag = DisposeBag()
    private let disposeBag = DisposeBag()

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.hideNavi = true
        self.hideNavi = true
        //: setupSubviews()
        skirtSubviews()
        //: setupSubViewsConstraint()
        sample()
        //: initNotifacation()
        showHandle()
        //: TalkingDanmuManager.shared().delegate = self
        UserListBankManagerReactiveCompatible.willSize().delegate = self
    }

    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
        //: initCachEffectData()
        allData()
    }

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    // MARK: - Lazy Load

    // 视频渲染视图
    //: lazy var renderView: UIView = {
    lazy var renderView: UIView = {
        //: let view = UIView()
        let view = UIView()
        //: view.backgroundColor = .white
        view.backgroundColor = .white
        //: return view
        return view
        //: }()
    }()

    //: private lazy var bottomView: TalkingLiveRoomBottomView = {
    private lazy var bottomView: ContentThen = {
        //: let view = TalkingLiveRoomBottomView(frame: .zero)
        let view = ContentThen(frame: .zero)
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

    //: lazy var topView: TalkingLiveRoomTopView = {
    lazy var topView: HeadView = {
        //: let view = TalkingLiveRoomTopView()
        let view = HeadView()
        //: view.weakVC = self
        view.weakVC = self
        //: view.rightBtnBlock = { [weak self] in
        view.rightBtnBlock = { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.commInputView.inputTextView.resignFirstResponder()
            self.commInputView.inputTextView.resignFirstResponder()
        }
        //: return view
        return view
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

// 通知
//: extension TalkingLiveBeautifyViewController {
extension StreetSmartViewController {
    //: func initNotifacation() {
    func showHandle() {
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(danmuMoveTop),
                                               selector: #selector(whenUp),
                                               //: name: LIVE_HALF_VIEW_SHOW,
                                               name: kLet_requestValue,
                                               //: object: nil)
                                               object: nil)

        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(danmuMoveBottom),
                                               selector: #selector(withBottom),
                                               //: name: LIVE_HALF_VIEW_DISMISS,
                                               name: kLet_contentData,
                                               //: object: nil)
                                               object: nil)

        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(blockUserExitRoom(notification:)),
                                               selector: #selector(tableFor(notification:)),
                                               //: name: LIVE_BLOCK_USER_NOTIFICATION,
                                               name: kLet_giftRecordText,
                                               //: object: nil)
                                               object: nil)
        // 飘屏
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(showFloatScreen(notification:)),
                                               selector: #selector(outspokenPush(notification:)),
                                               //: name: LIVE_RECIVE_FLOATSCREEN_NOTIFICATION,
                                               name: kLet_messageBottomTitle,
                                               //: object: nil)
                                               object: nil)
    }

    //: @objc func danmuMoveTop() {
    @objc func whenUp() {
        //: danmuView.snp.updateConstraints { make in
        danmuView.snp.updateConstraints { make in
            //: make.bottom.equalTo(bottomView.snp.top).offset(-(ScreenHeight-HalfViewTopMargin-bottomView.height-kDeviceSafeBottomHeight))
            make.bottom.equalTo(bottomView.snp.top).offset(-(kLet_clickData - kLet_profileTitle - bottomView.height - kLet_nextData))
        }
    }

    //: @objc func danmuMoveBottom() {
    @objc func withBottom() {
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

    /// 拉黑用户踢出房间
    //: @objc func blockUserExitRoom(notification: NSNotification) -> Void {
    @objc func tableFor(notification: NSNotification) {
        //: let userinfo = notification.userInfo as![String: AnyObject]
        let userinfo = notification.userInfo as! [String: AnyObject]
        //: let uid = userinfo["uid"] as? String
        let uid = userinfo[(String(str_sizeText))] as? String

        //: if String(TalkingLiveManager.shared().liveRoomModel.streamerInfo.uid) == EqualThen.share.loginUserMode.userID {
        if String(UserPushListener.sexApp().liveRoomModel.streamerInfo.uid) == EqualThen.share.loginUserMode.userID {
            //: V2TIMManager.sharedInstance().muteGroupMember(TalkingLiveManager.shared().liveRoomModel.chatGroupId, member: uid, muteTime: 1) {
            V2TIMManager.sharedInstance().muteGroupMember(UserPushListener.sexApp().liveRoomModel.chatGroupId, member: uid, muteTime: 1) {
                //: } fail: { code, decstr in
            } fail: { _, _ in
            }
        }
    }

    /// 展示飘屏内容
    //: @objc private func showFloatScreen(notification: NSNotification) {
    @objc private func outspokenPush(notification: NSNotification) {
        //: let userinfo = notification.userInfo as! [String: AnyObject]
        let userinfo = notification.userInfo as! [String: AnyObject]
        //: let dict = userinfo["floatingScreen"]
        let dict = userinfo[(str_buttonData.replacingOccurrences(of: "picture", with: "f") + "ngScre" + str_makeTitle.replacingOccurrences(of: "record", with: "n"))]
        //: if let model = TalkingFloatingScreenModel.deserialize(from: dict as? Dictionary) {
        if let model = ScreenHandyJSON.deserialize(from: dict as? Dictionary) {
            //: self.floatScreenView.didReceive(model)
            self.floatScreenView.premiumFrom(model)
        }
    }
}

// MARK: - Request

//: extension TalkingLiveBeautifyViewController {
extension StreetSmartViewController {
    /// 停止直播
    //: private func req_stopLive() {
    private func userAdd() {
        //: TalkingLiveManager.req_liveStop(type: 1) { succeed, result, errorModel in
        UserPushListener.variantSize(type: 1) { succeed, _, _ in
            //: guard succeed else { return }
            guard succeed else { return }
            // 关播成功
            //: TalkingLiveManager.shared().live_releaseAllResource()
            UserPushListener.sexApp().viewLodge()
        }
    }
}

// MARK: - 底部按钮代理

//: extension TalkingLiveBeautifyViewController: TalkingLiveRoomBottomViewDelegate {
extension StreetSmartViewController: AtObjectProtocol {
    //: func func__commentBtnClick() {
    func obscure() {
        /// 拉起弹幕评论
        //: commInputView.updatePlaceholder()
        commInputView.placeholder()
    }
}

// MARK: - UpManagerDelegate

//: extension TalkingLiveBeautifyViewController: TalkingDanmuManagerDelegate {
extension StreetSmartViewController: UpManagerDelegate {
    //: func func__giftRecvNewModel(Msg: TalkingLiveRoomDanmuModel) {
    func handleOpen(Msg: ModeDanmuModel) {
        //: addGiftEffectModelArr(Msg: Msg)
        noMsg(Msg: Msg)
    }

    //: func func__DanmuRecvNewModel(Msg: TalkingLiveRoomDanmuModel) {
    func modelTo(Msg: ModeDanmuModel) {
        //: danmuView.addNewMsg(msgModel: Msg)
        danmuView.modelFollow(msgModel: Msg)
        // 展示未读消息提醒标识(文本、@、礼物)
        //: if Msg.MsgExtension == "MF:LiveChatMsg" ||
        if Msg.MsgExtension == (String(str_numberValue.suffix(4)) + "iveC" + String(str_cropCoinValue.suffix(6))) ||
            //: Msg.MsgExtension == "MF:LiveChatMentionMsg" ||
            Msg.MsgExtension == (String(str_giftName.suffix(4)) + "iveC" + String(str_boyText.suffix(5)) + "ntionMsg") ||
            //: Msg.MsgExtension == "MF:LiveChatGiftMsg" {
            Msg.MsgExtension == (String(str_contentValue))
        {
            //: TalkingLiveManager.shared().updateUnredMessageCount()
            UserPushListener.sexApp().empty()
        }
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
        //: commInputView.callUserText(toUid: atUid ?? "", nickName: nickName)
        commInputView.digitiserUp(toUid: atUid ?? "", nickName: nickName)
    }

    //: func func__userLogin() {}
    func bottomLogin() {}

    //: func func__userLogout() {}
    func ask() {}
}

// MARK: - AggregationViewDelegate 资料卡

//: extension TalkingLiveBeautifyViewController: TalkingLiveUserCardViewDelegate {
extension StreetSmartViewController: AggregationViewDelegate {
    //: func func__atUserClick(uid: String, nickname: String) {
    func appGroup(uid: String, nickname: String) {
        //: commInputView.callUserText(toUid: uid, nickName: nickname)
        commInputView.digitiserUp(toUid: uid, nickName: nickname)
    }
}

// MARK: - 礼物动效

//: extension TalkingLiveBeautifyViewController {
extension StreetSmartViewController {
    /// 加载之前动画
    //: func initCachEffectData() {
    func allData() {
        //: let toUid = "LiveGift_\(TalkingLiveManager.shared().liveRoomModel.streamerInfo.uid)"
        let toUid = (String(str_youNameValue.prefix(9))) + "\(UserPushListener.sexApp().liveRoomModel.streamerInfo.uid)"
        //: giftEffectView.initCachAnimatData(tagetID: toUid)
        giftEffectView.vocalismCellGroup(tagetID: toUid)
    }

    /// 收到礼物消息展示
    //: func addGiftEffectModelArr(Msg: TalkingLiveRoomDanmuModel) {
    func noMsg(Msg: ModeDanmuModel) {
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
//: extension TalkingLiveBeautifyViewController {
extension StreetSmartViewController {
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

//: extension TalkingLiveBeautifyViewController: TalkingLiveRoomInputViewDelegate {
extension StreetSmartViewController: AccumulationViewDelegate {
    //: @objc func dismissClick() {
    @objc func recordPremium() {
        //: commInputView.inputTextView.text = ""
        commInputView.inputTextView.text = ""
        //: commInputView.resignkeyBoard()
        commInputView.resignkey()
    }

    //: func func__sendTextMsg(msgStr: String, atUid: String?) {
    func installment(msgStr: String, atUid: String?) {
        //: sendToTextMsg(msgStr: msgStr, toUid: atUid)
        glide(msgStr: msgStr, toUid: atUid)
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
    func glide(msgStr: String, toUid: String?) {
        //: TalkingDanmuManager.uploadToTextMsg(groupId: TalkingLiveManager.shared().liveRoomModel.chatGroupId, message: msgStr, toUid: toUid) { succeed, result, errorModel in
        UserListBankManagerReactiveCompatible.toCurrent(groupId: UserPushListener.sexApp().liveRoomModel.chatGroupId, message: msgStr, toUid: toUid) { succeed, _, _ in
            //: if succeed {
            if succeed {}
        }
    }
}

// MARK: - Event

//: extension TalkingLiveBeautifyViewController {
extension StreetSmartViewController {
    /// 开播成功，刷新直播间
    //: func refreshLiveRoomView() {
    func holdFast() {
        //: topView.refreshTopView(TalkingLiveManager.shared().liveRoomModel)
        topView.authorSName(UserPushListener.sexApp().liveRoomModel)
        //: bottomView.refreshBottomView(TalkingLiveManager.shared().liveRoomModel)
        bottomView.playerByView(UserPushListener.sexApp().liveRoomModel)
    }

    /// 将当前视图从栈中移除
    //: func popCurrentViewController(animated: Bool = true) {
    func upPop(animated: Bool = true) {
        //: self.topView.stopTimer()
        self.topView.subsequently()
        //: guard let currentVC = currentViewController() else { return }
        guard let currentVC = infoController() else { return }
        //: guard currentVC.presentingViewController == nil else {
        guard currentVC.presentingViewController == nil else {
            // 如果直播视图上面有present, 先dismiss
            //: currentVC.dismiss(animated: false) {
            currentVC.dismiss(animated: false) {
                //: self.popCurrentViewController()
                self.upPop()
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
}

// MARK: - Layout

//: extension TalkingLiveBeautifyViewController {
extension StreetSmartViewController {
    /// 添加视图
    //: private func setupSubviews() {
    private func skirtSubviews() {
        //: view.addSubview(renderView)
        view.addSubview(renderView)
        //: view.addSubview(bottomView)
        view.addSubview(bottomView)
        //: view.addSubview(danmuView)
        view.addSubview(danmuView)
        //: view.addSubview(commInputView)
        view.addSubview(commInputView)
        //: view.addSubview(topView)
        view.addSubview(topView)
        //: view.addSubview(floatScreenView)
        view.addSubview(floatScreenView)
        //: view.addSubview(giftTrackView)
        view.addSubview(giftTrackView)
        //: view.addSubview(giftEffectView)
        view.addSubview(giftEffectView)
        //: view.addSubview(topView.svgaView)
        view.addSubview(topView.svgaView)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func sample() {
        //: renderView.snp.makeConstraints { make in
        renderView.snp.makeConstraints { make in
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
            //: make.bottom.equalTo(bottomView.snp.top)
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
}
