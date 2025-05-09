
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_makeValue:[UInt8] = [0x90,0x95,0x90,0x9b,0x4f,0x8a,0x96,0x8b,0x8c,0x99,0x61,0x50,0x47,0x8f,0x88,0x9a,0x47,0x95,0x96,0x9b,0x47,0x89,0x8c,0x8c,0x95,0x47,0x90,0x94,0x97,0x93,0x8c,0x94,0x8c,0x95,0x9b,0x8c,0x8b]

fileprivate func equalInfo(button num: UInt8) -> UInt8 {
    let value = Int(num) - 39
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "  " :*/
fileprivate let str_pathValue:[Character] = [" "," "]

/*: "Say something...     " :*/
fileprivate let str_playerData:[Character] = ["S"]
fileprivate let str_rangeAppValue:[Character] = ["a","y"," ","s","o","m","e","t","h","i","n","g",".",".","."," "," "," "," "," "]

/*: "btn_video_gift_nor" :*/
fileprivate let str_textData:String = "btn_vicount report count float translate"
fileprivate let str_imageTitle:[Character] = ["d","e","o","_","g","i","f","t","_","n","o","r"]

/*: "btn_live_gd_nor" :*/
fileprivate let str_noTitle:[Character] = ["b","t","n","_","l","i","v","e"]
fileprivate let str_hiddenName:[Character] = ["_","g","d","_","n","o","r"]

/*: "btn_live_gd_pre" :*/
fileprivate let str_tallyName:String = "btn_share color model"
fileprivate let str_replacementTitle:String = "to gift track tablelive_"

/*: "btn_live_sx_nor" :*/
fileprivate let str_videoText:String = "imaget"
fileprivate let str_mValue:String = "color ton_live"

/*: "btn_live_sx_pre" :*/
fileprivate let str_sizeValue:String = "make list receivebtn_liv"
fileprivate let str_locationValue:String = "data activity edit height lete_sx"

/*: "#FF2348" :*/
fileprivate let str_pointName:String = "#FF23let add frame tar"
fileprivate let str_talkText:String = "48"

/*: "btn_live_yx_nor" :*/
fileprivate let str_beginTitle:String = "btn_livwith make background"
fileprivate let str_textValue:[Character] = ["e","_","y","x","_","n","o","r"]

/*: "btn_live_yx_pre" :*/
fileprivate let str_statusResultData:[Character] = ["b","t","n","_","l","i","v","e","_","y"]
fileprivate let str_backgroundText:String = "event drop icon true endx_pre"

/*: "toUid" :*/
fileprivate let str_rowData:[Character] = ["t","o","U","i","d"]

/*: "giftId" :*/
fileprivate let str_directTitle:String = "title call bottomgiftId"

/*: "giftNum" :*/
fileprivate let str_finishValue:String = "GI"
fileprivate let str_countTitle:String = "head progress disk from typeftNum"

/*: "pkgItemsetId" :*/
fileprivate let str_titleValue:String = "remove"
fileprivate let str_textName:[Character] = ["k","g","I","t","e","m","s","e","t","I","d"]

/*: "totalMfCoin" :*/
fileprivate let str_buttonName:String = "totmake"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ContentThen.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/7/7.
//

//: import UIKit
import UIKit

//: @objc protocol TalkingLiveRoomBottomViewDelegate: NSObjectProtocol {
@objc protocol AtObjectProtocol: NSObjectProtocol {
    //: func func__commentBtnClick()
    func obscure()
}

//: class TalkingLiveRoomBottomView: UIView {
class ContentThen: UIView {
    //: var toUid: String?
    var toUid: String? /// 送给谁

    //: open weak var delegate: TalkingLiveRoomBottomViewDelegate?
    open weak var delegate: AtObjectProtocol?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        sectionSubviews()
        //: setupSubViewsConstraint()
        chemicalElement()
        //: TalkingConversationListener.shared.func__addDelegate(self)
        TalkingConversationListener.shared.handle(self)
        //: refreshRedCountStatus()
        userSelect()
    }

    //: @available(*, unavailable)
    @available(*, unavailable)
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_makeValue.map{equalInfo(button: $0)}, encoding: .utf8)!)
    }

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    // MARK: - Lazy Load

    //: private lazy var contentView: UIView = {
    private lazy var contentView: UIView = {
        //: let view = UIView()
        let view = UIView()
        //: view.backgroundColor = UIColor.clear
        view.backgroundColor = UIColor.clear
        //: return view
        return view
        //: }()
    }()

    //: private lazy var commentBtn: UIButton = {
    private lazy var commentBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setTitle("  " + "Say something...     ".localized, for: .normal)
        btn.setTitle("  " + (String(str_playerData) + String(str_rangeAppValue)).localized, for: .normal)
        //: btn.setTitleColor(UIColor(red: 255/255.0, green: 255/255.0, blue: 255/255.0, alpha: 0.8), for: .normal)
        btn.setTitleColor(UIColor(red: 255 / 255.0, green: 255 / 255.0, blue: 255 / 255.0, alpha: 0.8), for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Regular, fontSize: 14)
        btn.titleLabel?.font = UIFont.pingfang(type: .Regular, fontSize: 14)
        //: btn.setBackgroundColor(color: UIColor(red: 0/255.0, green: 0/255.0, blue: 0/255.0, alpha: 0.25), forState: .normal)
        btn.likeness(color: UIColor(red: 0 / 255.0, green: 0 / 255.0, blue: 0 / 255.0, alpha: 0.25), forState: .normal)
        //: btn.layer.cornerRadius = 17
        btn.layer.cornerRadius = 17
        //: if LanguageManager.shared.direction == .rightToLeft {
        if FileReactiveCompatible.shared.direction == .rightToLeft {
            //: btn.contentHorizontalAlignment = .right
            btn.contentHorizontalAlignment = .right
            //: } else {
        } else {
            //: btn.contentHorizontalAlignment = .left
            btn.contentHorizontalAlignment = .left
        }
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.addTarget(self, action: #selector(commentBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(put), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var stackView: UIStackView = {
    private lazy var stackView: UIStackView = {
        //: let v = UIStackView()
        let v = UIStackView()
        //: v.axis = .horizontal
        v.axis = .horizontal
        //: v.alignment = .leading
        v.alignment = .leading
        //: v.distribution = .equalSpacing
        v.distribution = .equalSpacing
        //: v.spacing = 10
        v.spacing = 10
        //: return v
        return v
        //: }()
    }()

    //: private lazy var giftBtn: UIButton = {
    private lazy var giftBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.eponymUp(name: "btn_video_gift_nor"), for: .normal)
        btn.setImage(UIImage.eponymUp(name: (String(str_textData.prefix(6)) + String(str_imageTitle))), for: .normal)
        //: btn.setImage(UIImage.eponymUp(name: "btn_video_gift_nor"), for: .selected)
        btn.setImage(UIImage.eponymUp(name: (String(str_textData.prefix(6)) + String(str_imageTitle))), for: .selected)
        //: btn.addTarget(self, action: #selector(giftBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(walk), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var moreBtn: UIButton = {
    private lazy var moreBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.eponymUp(name: "btn_live_gd_nor"), for: .normal)
        btn.setImage(UIImage.eponymUp(name: (String(str_noTitle) + String(str_hiddenName))), for: .normal)
        //: btn.setImage(UIImage.eponymUp(name: "btn_live_gd_pre"), for: .highlighted)
        btn.setImage(UIImage.eponymUp(name: (String(str_tallyName.prefix(4)) + String(str_replacementTitle.suffix(5)) + "gd_pre")), for: .highlighted)
        //: btn.addTarget(self, action: #selector(moreBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(electClick), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var chatBtn: UIButton = {
    private lazy var chatBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.eponymUp(name: "btn_live_sx_nor"), for: .normal)
        btn.setImage(UIImage.eponymUp(name: (str_videoText.replacingOccurrences(of: "image", with: "b") + String(str_mValue.suffix(6)) + "_sx_nor")), for: .normal)
        //: btn.setImage(UIImage.eponymUp(name: "btn_live_sx_pre"), for: .highlighted)
        btn.setImage(UIImage.eponymUp(name: (String(str_sizeValue.suffix(7)) + String(str_locationValue.suffix(4)) + "_pre")), for: .highlighted)
        //: btn.addTarget(self, action: #selector(chatBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(countClick), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var redCountLab: UILabel = {
    private lazy var redCountLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.backgroundColor = UIColor(hex: "#FF2348")
        lab.backgroundColor = UIColor(hex: (String(str_pointName.prefix(5)) + str_talkText.capitalized))
        //: lab.layer.cornerRadius = 3.5
        lab.layer.cornerRadius = 3.5
        //: lab.layer.masksToBounds = true
        lab.layer.masksToBounds = true
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var gameBtn: UIButton = {
    private lazy var gameBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.eponymUp(name: "btn_live_yx_nor"), for: .normal)
        btn.setImage(UIImage.eponymUp(name: (String(str_beginTitle.prefix(7)) + String(str_textValue))), for: .normal)
        //: btn.setImage(UIImage.eponymUp(name: "btn_live_yx_pre"), for: .highlighted)
        btn.setImage(UIImage.eponymUp(name: (String(str_statusResultData) + String(str_backgroundText.suffix(5)))), for: .highlighted)
        //: btn.addTarget(self, action: #selector(gameBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(clickDoing), for: .touchUpInside)
        //: btn.isHidden = true
        btn.isHidden = true
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var giftView: TalkingChatGiftView = {
    private lazy var giftView: CustomTitleGiftView = {
        //: let giftV = TalkingChatGiftView(style: .live)
        let giftV = CustomTitleGiftView(style: .live)
        //: giftV.frame = CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight)
        giftV.frame = CGRect(x: 0, y: 0, width: kLet_cameraValue, height: kLet_clickData)
        //: return giftV
        return giftV
        //: }()
    }()

    //: private lazy var moreView: TalkingLiveRoomMoreView = {
    private lazy var moreView: AtMoreView = {
        //: let v = TalkingLiveRoomMoreView()
        let v = AtMoreView()
        //: return v
        return v
        //: }()
    }()

    //: private lazy var gamesView: TalkingLiveRoomGamesView = {
    private lazy var gamesView: TargetTitleGamesView = {
        //: let v = TalkingLiveRoomGamesView()
        let v = TargetTitleGamesView()
        //: return v
        return v
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingLiveRoomBottomView {
extension ContentThen {
    /// 拉起弹幕评论
    //: @objc private func commentBtnClick() {
    @objc private func put() {
        //: delegate?.func__commentBtnClick()
        delegate?.obscure()
    }

    /// 送礼
    //: @objc private func giftBtnClick() {
    @objc private func walk() {
        //: func__sendGift()
        contrive()
    }

    /// 聊天列表
    //: @objc private func chatBtnClick() {
    @objc private func countClick() {
        //: EditTextThen.share.func__pushToChatListVC(isHalfView: true)
        EditTextThen.share.chatMake(isHalfView: true)
    }

    /// 更多
    //: @objc private func moreBtnClick() {
    @objc private func electClick() {
        //: moreView.showView()
        moreView.switchline()
    }

    /// 游戏
    //: @objc private func gameBtnClick() {
    @objc private func clickDoing() {
        //: gamesView.showView(from: .LiveRoom)
        gamesView.colorKind(from: .LiveRoom)
    }
}

// MARK: - ManagerDelegate【刷新私信红点状态】

//: extension TalkingLiveRoomBottomView: IMManagerDelegate {
extension ContentThen: ManagerDelegate {
    //: func onUnreadMsgCountChanged(count: Int) {
    func tally(count _: Int) {
        //: refreshRedCountStatus()
        userSelect()
    }

    /// 刷新消息未读数状态
    //: func refreshRedCountStatus() {
    func userSelect() {
        //: var msgCount = 0
        var msgCount = 0
        //: let convLists = [TalkingConversationListener.shared.topConvList, TalkingConversationListener.shared.norConvList]
        let convLists = [TalkingConversationListener.shared.topConvList, TalkingConversationListener.shared.norConvList]
        //: for list in convLists {
        for list in convLists {
            //: if let model = list.first(where: { $0.chatType == .private && $0.unreadCount > 0 }) {
            if let model = list.first(where: { $0.chatType == .private && $0.unreadCount > 0 }) {
                //: msgCount += Int(model.unreadCount)
                msgCount += Int(model.unreadCount)
                //: break
                break // 找到第一个未读消息后退出，不需要全部计算，只要有未读数就展示红点
            }
        }
        //: redCountLab.isHidden = (msgCount == 0)
        redCountLab.isHidden = (msgCount == 0)
    }
}

// MARK: - 送礼

//: extension TalkingLiveRoomBottomView {
extension ContentThen {
    //: func func__sendGift() {
    func contrive() {
        //: TalkingChatGiftManager.share.func__sendGiftEvent(type: .live, completion: {
        AstatineThen.share.viewSend(type: .live, completion: {
            //: self.func__showGiftChoiceView()
            self.greetTalk()
            //: })
        })
    }

    //: func func__showGiftChoiceView() {
    func greetTalk() {
        //: giftView.updateGiftInfo(needReload: true, mf_coin: EqualThen.share.loginUserMode.mf_coin)
        giftView.refresh(needReload: true, mf_coin: EqualThen.share.loginUserMode.mf_coin)
        //: currentViewController()?.view.addSubview(giftView)
        infoController()?.view.addSubview(giftView)
        //: giftView.showView()
        giftView.pointSource()

        //: giftView.sendActionBlock = { [weak self] (_ giftModel: TalkingRoomGiftModel, _ num: String) in
        giftView.sendActionBlock = { [weak self] (_ giftModel: VaporBathHandyJSON, _ num: String) in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.func__sendGiftMsg(giftModel: giftModel, giftNum: num)
            self.enrichNum(giftModel: giftModel, giftNum: num)
        }
    }

    //: func func__sendGiftMsg(giftModel: TalkingRoomGiftModel, giftNum: String) {
    func enrichNum(giftModel: VaporBathHandyJSON, giftNum: String) {
        //: let reachability = try? Reachability()
        let reachability = try? Reachability()
        //: if reachability?.connection == .unavailable {
        if reachability?.connection == .unavailable {
            //: func__showStatusBarErrorMsg(showMsg: kNetErrorMsg)
            oversight(showMsg: kLet_errorData)
            //: return
            return
        }
        //: var params: [String: Any] = [:]
        var params: [String: Any] = [:]
        //: if toUid != nil {
        if toUid != nil {
            //: params["toUid"] = toUid
            params[(String(str_rowData))] = toUid
        }
        //: params["giftId"] = giftModel.gid
        params[(String(str_directTitle.suffix(6)))] = giftModel.gid
        //: params["giftNum"] = giftNum
        params[(str_finishValue.lowercased() + String(str_countTitle.suffix(5)))] = giftNum
        //: if giftModel.pkgItemsetId != nil {
        if giftModel.pkgItemsetId != nil {
            //: params["pkgItemsetId"] = giftModel.pkgItemsetId
            params[(str_titleValue.replacingOccurrences(of: "remove", with: "p") + String(str_textName))] = giftModel.pkgItemsetId
        }

        //: PostulationReactiveCompatible.req_SendGiftLive(param: params, completion: { succeed, result, errorModel in
        PostulationReactiveCompatible.addMake(param: params, completion: { succeed, result, errorModel in
            //: guard succeed else {
            guard succeed else {
                //: self.dealSendMsgError(errorCode: errorModel!.errorCode, errorStr: errorModel!.errorMsg, isGift: true, isResend: false)
                self.cellCover(errorCode: errorModel!.errorCode, errorStr: errorModel!.errorMsg, isGift: true, isResend: false)
                //: return
                return
            }

            // 更新本地礼物背包
            //: if giftModel.pkgItemsetId != nil {
            if giftModel.pkgItemsetId != nil {
                //: self.giftView.bags_removeGiftPackage(pkgItemsetId: giftModel.pkgItemsetId!, num: Int(giftNum) ?? 0)
                self.giftView.blockPop(pkgItemsetId: giftModel.pkgItemsetId!, num: Int(giftNum) ?? 0)
            }
            //: self.func__insertGiftMessageWithExtral(extral: result as! [String: Any])
            self.dataInput(extral: result as! [String: Any])
            //: })
        })
    }

    //: func func__insertGiftMessageWithExtral(extral: [String: Any]) {
    func dataInput(extral: [String: Any]) {
        //: let extralInfo = extral
        let extralInfo = extral

        //: if extralInfo.keys.contains("totalMfCoin") {
        if extralInfo.keys.contains((str_buttonName.replacingOccurrences(of: "make", with: "a") + "lMfCoin")) {
            //: let totalMfCoin: NSNumber = extralInfo["totalMfCoin"] as! NSNumber
            let totalMfCoin: NSNumber = extralInfo[(str_buttonName.replacingOccurrences(of: "make", with: "a") + "lMfCoin")] as! NSNumber
            //: EqualThen.share.loginUserMode.mf_coin = totalMfCoin.stringValue
            EqualThen.share.loginUserMode.mf_coin = totalMfCoin.stringValue
        }
        //: giftView.updateGiftInfo(needReload: false, mf_coin: EqualThen.share.loginUserMode.mf_coin)
        giftView.refresh(needReload: false, mf_coin: EqualThen.share.loginUserMode.mf_coin)
    }

    //: func dealSendMsgError(errorCode: Int, errorStr: String, isGift: Bool, isResend: Bool) {
    func cellCover(errorCode: Int, errorStr: String, isGift _: Bool, isResend _: Bool) {
        //: if errorCode == 50203 {
        if errorCode == 50203 {
            //: guard EqualThen.share.loginUserMode.status != 1 else {
            guard EqualThen.share.loginUserMode.status != 1 else {
                //: if !errorStr.isEmptyString {
                if !errorStr.isEmptyString {
                    //: func__showStatusBarErrorMsg(showMsg: errorStr)
                    oversight(showMsg: errorStr)
                }
                //: return
                return
            }
            //: EditTextThen.share.func__jumpToWebRecharge(clickEvent: clickSendingiftsButton, sufficient: false)
            EditTextThen.share.activityParams(clickEvent: kLet_statusData, sufficient: false)
            //: giftView.dismissView()
            giftView.matchArray()
            //: } else if errorCode == 10888 {
        } else if errorCode == 10888 {
            //: let view = TalkingLiveVipSubscribePopView(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight))
            let view = SubscribeThen(frame: CGRect(x: 0, y: 0, width: kLet_cameraValue, height: kLet_clickData))
            //: view.show()
            view.constraintShow()
            //: } else {
        } else {
            //: if !errorStr.isEmptyString {
            if !errorStr.isEmptyString {
                //: func__showStatusBarErrorMsg(showMsg: errorStr)
                oversight(showMsg: errorStr)
            }
        }
    }
}

// MARK: - Layout

//: extension TalkingLiveRoomBottomView {
extension ContentThen {
    /// 刷新底部视图
    //: func refreshBottomView(_ liveModel: TalkingLiveRoomModel) {
    func playerByView(_ liveModel: UpwardlyTransformable) {
        //: toUid = String(liveModel.streamerInfo.uid)
        toUid = String(liveModel.streamerInfo.uid)
        // 非主播没有更多按钮
        //: let isAnchor = (String(liveModel.streamerInfo.uid) == EqualThen.share.loginUid)
        let isAnchor = (String(liveModel.streamerInfo.uid) == EqualThen.share.loginUid)
        //: if isAnchor == false {
        if isAnchor == false {
            //: stackView.removeArrangedSubview(moreBtn)
            stackView.removeArrangedSubview(moreBtn)
            //: moreBtn.isHidden = true
            moreBtn.isHidden = true
        }

        // 非审核模式 && 有游戏
        //: if EqualThen.share.appStatus != AppSkinStatus.special.rawValue,
        if EqualThen.share.appStatus != PhaseOfTheMoonPropertyProtocol.special.rawValue,
           //: liveModel.gameList.count > 0
           liveModel.gameList.count > 0
        {
            //: gameBtn.isHidden = false
            gameBtn.isHidden = false
            //: } else {
        } else {
            //: stackView.removeArrangedSubview(gameBtn)
            stackView.removeArrangedSubview(gameBtn)
            //: gameBtn.isHidden = true
            gameBtn.isHidden = true
        }
    }

    //: func setupSubviews() {
    func sectionSubviews() {
        //: addSubview(contentView)
        addSubview(contentView)
        //: contentView.addSubview(commentBtn)
        contentView.addSubview(commentBtn)
        //: contentView.addSubview(stackView)
        contentView.addSubview(stackView)
        //: stackView.addArrangedSubview(gameBtn)
        stackView.addArrangedSubview(gameBtn)
        //: stackView.addArrangedSubview(chatBtn)
        stackView.addArrangedSubview(chatBtn)
        //: chatBtn.addSubview(redCountLab)
        chatBtn.addSubview(redCountLab)
        //: stackView.addArrangedSubview(moreBtn)
        stackView.addArrangedSubview(moreBtn)
        //: stackView.addArrangedSubview(giftBtn)
        stackView.addArrangedSubview(giftBtn)
    }

    //: func setupSubViewsConstraint() {
    func chemicalElement() {
        //: contentView.snp.makeConstraints { make in
        contentView.snp.makeConstraints { make in
            //: make.top.leading.trailing.bottom.equalTo(self)
            make.top.leading.trailing.bottom.equalTo(self)
        }
        //: commentBtn.snp.makeConstraints { make in
        commentBtn.snp.makeConstraints { make in
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.leading.equalTo(10)
            make.leading.equalTo(10)
            //: make.height.equalTo(actualWidth(w: 33))
            make.height.equalTo(actualWidth(w: 33))
            //: make.width.equalTo(actualWidth(w: 157))
            make.width.equalTo(actualWidth(w: 157))
        }

        //: stackView.snp.makeConstraints { make in
        stackView.snp.makeConstraints { make in
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.trailing.equalTo(-10)
            make.trailing.equalTo(-10)
        }

        //: giftBtn.snp.makeConstraints { make in
        giftBtn.snp.makeConstraints { make in
            //: make.width.height.equalTo(33)
            make.width.height.equalTo(33)
        }
        //: moreBtn.snp.makeConstraints { make in
        moreBtn.snp.makeConstraints { make in
            //: make.width.height.equalTo(giftBtn)
            make.width.height.equalTo(giftBtn)
        }
        //: chatBtn.snp.makeConstraints { make in
        chatBtn.snp.makeConstraints { make in
            //: make.width.height.equalTo(giftBtn)
            make.width.height.equalTo(giftBtn)
        }
        //: redCountLab.snp.makeConstraints { make in
        redCountLab.snp.makeConstraints { make in
            //: make.top.equalTo(7)
            make.top.equalTo(7)
            //: make.trailing.equalTo(-5)
            make.trailing.equalTo(-5)
            //: make.width.height.equalTo(7)
            make.width.height.equalTo(7)
        }
        //: gameBtn.snp.makeConstraints { make in
        gameBtn.snp.makeConstraints { make in
            //: make.width.height.equalTo(giftBtn)
            make.width.height.equalTo(giftBtn)
        }
    }
}
