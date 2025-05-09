
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_nameValue:[UInt8] = [0x74,0x73,0x74,0x69,0x35,0x7e,0x72,0x79,0x78,0x6f,0x27,0x34,0x3d,0x75,0x7c,0x6e,0x3d,0x73,0x72,0x69,0x3d,0x7f,0x78,0x78,0x73,0x3d,0x74,0x70,0x6d,0x71,0x78,0x70,0x78,0x73,0x69,0x78,0x79]

private func addEmpty(make num: UInt8) -> UInt8 {
    return num ^ 29
}

/*: "  " :*/
fileprivate let str_textData:[Character] = [" "," "]

/*: "Say something...     " :*/
fileprivate let str_modelLengthValue:String = "Say suser make height become"
fileprivate let str_nameTitle:String = "...layerlayerlayerlayerlayer"

/*: "party_bottom_mic_open" :*/
fileprivate let str_selectedContent:String = "ptot"
fileprivate let str_labStatusTitle:String = "m_micpath phone back to"

/*: "party_bottom_mic_close" :*/
fileprivate let str_nextName:String = "kind let gift screen actionparty_"
fileprivate let str_modelTitle:String = "blastttlastm"
fileprivate let str_colorData:String = "_mic_cdetail make of"

/*: "btn_video_gift_nor" :*/
fileprivate let str_viewName:[Character] = ["b"]
fileprivate let str_shareCellValue:String = "table corner view labtn_vi"
fileprivate let str_coinGiftName:String = "ift_norself screen"

/*: "btn_live_sx_nor" :*/
fileprivate let str_resultValue:[Character] = ["b","t","n","_","l"]
fileprivate let str_fitName:[Character] = ["i","v","e","_","s"]
fileprivate let str_emptyValue:[Character] = ["x","_","n","o","r"]

/*: "btn_live_sx_pre" :*/
fileprivate let str_centerText:String = "name cell gift array viewbtn_"
fileprivate let str_maxTitle:String = "from self bottom of_sx_pre"

/*: "#FF2348" :*/
fileprivate let str_mainText:String = "make frame text shared#FF2348"

/*: "Please contact the host to turn on the mic" :*/
fileprivate let str_tableContent:[UInt8] = [0x76,0x4a,0x43,0x47,0x55,0x43,0x6,0x45,0x49,0x48,0x52,0x47,0x45,0x52,0x6,0x52,0x4e,0x43,0x6,0x4e,0x49,0x55,0x52,0x6,0x52,0x49,0x6,0x52,0x53,0x54,0x48,0x6,0x49,0x48,0x6,0x52,0x4e,0x43,0x6,0x4b,0x4f,0x45]

private func latissimusDorsi(image num: UInt8) -> UInt8 {
    return num ^ 38
}

/*: ", :*/
fileprivate let str_cellData:String = "color"

/*: "Please select an object" :*/
fileprivate let str_ofName:String = "Plealet actual"
fileprivate let str_modelData:String = "execute view letelect "
fileprivate let str_imageValue:[Character] = ["a","n"," ","o","b","j","e","c","t"]

/*: "toUid" :*/
fileprivate let str_photoName:String = "add model backgroundtoUid"

/*: "giftId" :*/
fileprivate let str_labValue:[Character] = ["g"]
fileprivate let str_contextName:String = "var if manager dataiftId"

/*: "giftNum" :*/
fileprivate let str_frameTitle:[Character] = ["g","i","f","t","N","u"]
fileprivate let str_labelData:String = "file"

/*: "roomId" :*/
fileprivate let str_officialText:String = "roomIreturn equal let memory"
fileprivate let str_liveTitle:String = "color"

/*: "pkgItemsetId" :*/
fileprivate let str_arrayTitle:String = "make stringpkgIte"
fileprivate let str_mTitle:[Character] = ["m","s","e","t","I","d"]

/*: "totalMfCoin" :*/
fileprivate let str_headContent:[Character] = ["t","o","t","a","l","M","f","C","o","i","n"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  PlayView.swift
//  BotanicBreeze
//
//  Created by DouXiu on 2024/9/25.
//

//: import UIKit
import UIKit

//: @objc protocol TalkingVoiceRoomBottomViewDelegate: NSObjectProtocol {
@objc protocol DemonstrateObjectProtocol: NSObjectProtocol {
    /// 发布弹幕按钮点击事件
    //: func bottom_commentBtnClick()
    func fleet()
}

//: class TalkingVoiceRoomBottomView: UIView {
class PlayView: UIView {
    //: open weak var delegate: TalkingVoiceRoomBottomViewDelegate?
    open weak var delegate: DemonstrateObjectProtocol?
    //: private let disposeBag = DisposeBag()
    private let disposeBag = DisposeBag()

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        subEqual()
        //: setupSubViewsConstraint()
        upSub()
        //: TalkingConversationListener.shared.func__addDelegate(self)
        TalkingConversationListener.shared.handle(self)
        //: refreshRedCountStatus()
        streetSmartStatus()
    }

    //: @available(*, unavailable)
    @available(*, unavailable)
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_nameValue.map{addEmpty(make: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var commentBtn: UIButton = {
    private lazy var commentBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setTitle("  " + "Say something...     ".localized, for: .normal)
        btn.setTitle("  " + (String(str_modelLengthValue.prefix(5)) + "omething" + str_nameTitle.replacingOccurrences(of: "layer", with: " ")).localized, for: .normal)
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
        btn.addTarget(self, action: #selector(choice), for: .touchUpInside)
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
        //: v.alignment = .trailing
        v.alignment = .trailing
        //: v.distribution = .equalSpacing
        v.distribution = .equalSpacing
        //: v.spacing = 10
        v.spacing = 10
        //: return v
        return v
        //: }()
    }()

    //: private lazy var micBtn: UIButton = {
    private lazy var micBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.eponymUp(name: "party_bottom_mic_open"), for: .normal)
        btn.setImage(UIImage.eponymUp(name: (str_selectedContent.replacingOccurrences(of: "to", with: "ar") + "y_botto" + String(str_labStatusTitle.prefix(5)) + "_open")), for: .normal)
        //: btn.setImage(UIImage.eponymUp(name: "party_bottom_mic_close"), for: .selected)
        btn.setImage(UIImage.eponymUp(name: (String(str_nextName.suffix(6)) + str_modelTitle.replacingOccurrences(of: "last", with: "o") + String(str_colorData.prefix(6)) + "lose")), for: .selected)
        //: btn.addTarget(self, action: #selector(micBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(clickTo), for: .touchUpInside)
        //: btn.isHidden = true
        btn.isHidden = true
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var giftBtn: UIButton = {
    private lazy var giftBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.eponymUp(name: "btn_video_gift_nor"), for: .normal)
        btn.setImage(UIImage.eponymUp(name: (String(str_viewName) + String(str_shareCellValue.suffix(5)) + "deo_g" + String(str_coinGiftName.prefix(7)))), for: .normal)
        //: btn.setImage(UIImage.eponymUp(name: "btn_video_gift_nor"), for: .selected)
        btn.setImage(UIImage.eponymUp(name: (String(str_viewName) + String(str_shareCellValue.suffix(5)) + "deo_g" + String(str_coinGiftName.prefix(7)))), for: .selected)
        //: btn.addTarget(self, action: #selector(giftBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(utterMake), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var chatBtn: UIButton = {
    private lazy var chatBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.eponymUp(name: "btn_live_sx_nor"), for: .normal)
        btn.setImage(UIImage.eponymUp(name: (String(str_resultValue) + String(str_fitName) + String(str_emptyValue))), for: .normal)
        //: btn.setImage(UIImage.eponymUp(name: "btn_live_sx_pre"), for: .highlighted)
        btn.setImage(UIImage.eponymUp(name: (String(str_centerText.suffix(4)) + "live" + String(str_maxTitle.suffix(7)))), for: .highlighted)
        //: btn.addTarget(self, action: #selector(chatBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(doinglineLoad), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var redCountLab: UILabel = {
    private lazy var redCountLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.backgroundColor = UIColor(hex: "#FF2348")
        lab.backgroundColor = UIColor(hex: (String(str_mainText.suffix(7))))
        //: lab.layer.cornerRadius = 3.5
        lab.layer.cornerRadius = 3.5
        //: lab.layer.masksToBounds = true
        lab.layer.masksToBounds = true
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var giftView: TalkingChatGiftView = {
    private lazy var giftView: CustomTitleGiftView = {
        //: let giftV = TalkingChatGiftView(style: .party)
        let giftV = CustomTitleGiftView(style: .party)
        //: giftV.frame = CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight)
        giftV.frame = CGRect(x: 0, y: 0, width: kLet_cameraValue, height: kLet_clickData)
        //: return giftV
        return giftV
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingVoiceRoomBottomView {
extension PlayView {
    /// 刷新底部视图麦克风状态
    //: func refreshBottomMicStatus() {
    func cameraTo() {
        //: guard let itemModel = TalkingVoiceRoomManager.shared().getMikePosition(key: TalkingVoiceRoomManager.shared().partyModel.position) else {
        guard let itemModel = ViewRoomManager.astatine().followThrough(key: ViewRoomManager.astatine().partyModel.position) else {
            //: micBtn.isHidden = true
            micBtn.isHidden = true
            //: return
            return
        }
        //: micBtn.isHidden = false
        micBtn.isHidden = false
        //: micBtn.isSelected = (itemModel.mikeStatus != 2)
        micBtn.isSelected = (itemModel.mikeStatus != 2)
    }

    /// 刷新礼物面板上麦头像
    //: func refreshGiftIcon() {
    func accentuation() {
        //: giftView.partyIconView.refreshIconView()
        giftView.partyIconView.boxView()
    }

    /// 拉起弹幕评论按钮点击事件
    //: @objc private func commentBtnClick() {
    @objc private func choice() {
        //: delegate?.bottom_commentBtnClick()
        delegate?.fleet()
    }

    /// 麦克风按钮点击事件
    //: @objc private func micBtnClick() {
    @objc private func clickTo() {
        // 切换麦克风状态
        //: guard let itemModel = TalkingVoiceRoomManager.shared().getMikePosition(key: TalkingVoiceRoomManager.shared().partyModel.position) else {
        guard let itemModel = ViewRoomManager.astatine().followThrough(key: ViewRoomManager.astatine().partyModel.position) else {
            //: return
            return
        }
        //: switch itemModel.mikeStatus {
        switch itemModel.mikeStatus {
        //: case 0:
        case 0: // 闭麦
            //: TalkingVoiceRoomManager.shared().voiceRoom_reqChangeMike(type: 4, position: TalkingVoiceRoomManager.shared().partyModel.position)
            ViewRoomManager.astatine().endPosition(type: 4, position: ViewRoomManager.astatine().partyModel.position)

        //: case 1:
        case 1: // 房主闭麦
            //: func__showStatusBarErrorMsg(showMsg: "Please contact the host to turn on the mic".localized)
            oversight(showMsg: String(bytes: str_tableContent.map{latissimusDorsi(image: $0)}, encoding: .utf8)!.localized)

        //: case 2:
        case 2: // 开麦
            //: TalkingVoiceRoomManager.shared().voiceRoom_reqChangeMike(type: 5, position: TalkingVoiceRoomManager.shared().partyModel.position)
            ViewRoomManager.astatine().endPosition(type: 5, position: ViewRoomManager.astatine().partyModel.position)

        //: default:
        default:
            //: break
            break
        }
    }

    /// 聊天列表按钮点击事件
    //: @objc private func chatBtnClick() {
    @objc private func doinglineLoad() {
        //: EditTextThen.share.func__pushToChatListVC(isHalfView: true)
        EditTextThen.share.chatMake(isHalfView: true)
    }

    /// 送礼按钮点击事件
    //: @objc private func giftBtnClick() {
    @objc private func utterMake() {
        //: func__sendGift()
        drown()
    }
}

// MARK: - 送礼

//: extension TalkingVoiceRoomBottomView {
extension PlayView {
    /// 展示礼物面板
    //: func func__sendGift(selectedUid: String? = nil) {
    func drown(selectedUid: String? = nil) {
        //: TalkingChatGiftManager.share.func__sendGiftEvent(type: .party, completion: {
        AstatineThen.share.viewSend(type: .party, completion: {
            //: self.func__showGiftChoiceView(selectedUid: selectedUid)
            self.funcToElite(selectedUid: selectedUid)
            //: })
        })
    }

    //: func func__showGiftChoiceView(selectedUid: String? = nil) {
    func funcToElite(selectedUid: String? = nil) {
        //: giftView.updateGiftInfo(needReload: true, mf_coin: EqualThen.share.loginUserMode.mf_coin)
        giftView.refresh(needReload: true, mf_coin: EqualThen.share.loginUserMode.mf_coin)
        //: currentViewController()?.view.addSubview(giftView)
        infoController()?.view.addSubview(giftView)
        //: if selectedUid != nil {
        if selectedUid != nil { // 选中单个用户
            //: giftView.partyIconView.refreshAllIcon(allSelected: false, selectedUid: selectedUid)
            giftView.partyIconView.rubricShow(allSelected: false, selectedUid: selectedUid)
            //: } else {
        } else { // 全部选中
            //: giftView.partyIconView.refreshAllIcon(allSelected: true)
            giftView.partyIconView.rubricShow(allSelected: true)
        }
        //: giftView.showView()
        giftView.pointSource()
        //: giftView.sendActionBlock = { [weak self] (_ giftModel: TalkingRoomGiftModel, _ num: String) in
        giftView.sendActionBlock = { [weak self] (_ giftModel: VaporBathHandyJSON, _ num: String) in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.func__sendGiftMsg(giftModel: giftModel, giftNum: num)
            self.colorSearched(giftModel: giftModel, giftNum: num)
        }
    }

    /// 送礼
    //: func func__sendGiftMsg(giftModel: TalkingRoomGiftModel, giftNum: String) {
    func colorSearched(giftModel: VaporBathHandyJSON, giftNum: String) {
        //: let reachability = try? Reachability()
        let reachability = try? Reachability()
        //: if reachability?.connection == .unavailable {
        if reachability?.connection == .unavailable {
            //: func__showStatusBarErrorMsg(showMsg: kNetErrorMsg)
            oversight(showMsg: kLet_errorData)
            //: return
            return
        }

        // 拼接需要送礼的Uid
        //: var toUid = ""
        var toUid = ""
        //: TalkingVoiceRoomManager.shared().getAllMikePositions().forEach { _, model in
        for (_, model) in ViewRoomManager.astatine().valuePositions() {
            //: if model.uid > 0, String(model.uid) != EqualThen.share.loginUid, model.needGift == true {
            if model.uid > 0, String(model.uid) != EqualThen.share.loginUid, model.needGift == true {
                //: if toUid.count > 0 {
                if toUid.count > 0 {
                    //: toUid.append(",\(model.uid)")
                    toUid.append(",\(model.uid)")
                    //: } else {
                } else {
                    //: toUid.append("\(model.uid)")
                    toUid.append("\(model.uid)")
                }
            }
        }
        //: guard toUid.count > 0 else {
        guard toUid.count > 0 else {
            //: func__showStatusBarErrorMsg(showMsg: "Please select an object".localized)
            oversight(showMsg: (String(str_ofName.prefix(4)) + "se s" + String(str_modelData.suffix(6)) + String(str_imageValue)).localized)
            //: return
            return
        }

        //: var params: [String: Any] = [:]
        var params: [String: Any] = [:]
        //: params["toUid"] = toUid
        params[(String(str_photoName.suffix(5)))] = toUid
        //: params["giftId"] = giftModel.gid
        params[(String(str_labValue) + String(str_contextName.suffix(5)))] = giftModel.gid
        //: params["giftNum"] = giftNum
        params[(String(str_frameTitle) + str_labelData.replacingOccurrences(of: "file", with: "m"))] = giftNum
        //: params["roomId"] = TalkingVoiceRoomManager.shared().partyModel.roomId
        params[(String(str_officialText.prefix(5)) + str_liveTitle.replacingOccurrences(of: "color", with: "d"))] = ViewRoomManager.astatine().partyModel.roomId
        //: if giftModel.pkgItemsetId != nil {
        if giftModel.pkgItemsetId != nil {
            //: params["pkgItemsetId"] = giftModel.pkgItemsetId
            params[(String(str_arrayTitle.suffix(6)) + String(str_mTitle))] = giftModel.pkgItemsetId
        }

        //: PostulationReactiveCompatible.req_sendPartyGift(param: params, completion: { succeed, result, errorModel in
        PostulationReactiveCompatible.clickFrom(param: params, completion: { succeed, result, errorModel in
            //: guard succeed else {
            guard succeed else {
                //: self.dealSendMsgError(errorCode: errorModel!.errorCode, errorStr: errorModel!.errorMsg, isGift: true, isResend: false)
                self.dowryResend(errorCode: errorModel!.errorCode, errorStr: errorModel!.errorMsg, isGift: true, isResend: false)
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
            self.smartStageCallExtralRadiogramInputFinancialAidDelay(extral: result as! [String: Any])
            //: })
        })
    }

    //: func func__insertGiftMessageWithExtral(extral: [String: Any]) {
    func smartStageCallExtralRadiogramInputFinancialAidDelay(extral: [String: Any]) {
        //: let extralInfo = extral
        let extralInfo = extral
        //: if extralInfo.keys.contains("totalMfCoin") {
        if extralInfo.keys.contains((String(str_headContent))) {
            //: let totalMfCoin: NSNumber = extralInfo["totalMfCoin"] as! NSNumber
            let totalMfCoin: NSNumber = extralInfo[(String(str_headContent))] as! NSNumber
            //: EqualThen.share.loginUserMode.mf_coin = totalMfCoin.stringValue
            EqualThen.share.loginUserMode.mf_coin = totalMfCoin.stringValue
        }
        //: giftView.updateGiftInfo(needReload: false, mf_coin: EqualThen.share.loginUserMode.mf_coin)
        giftView.refresh(needReload: false, mf_coin: EqualThen.share.loginUserMode.mf_coin)
    }

    //: func dealSendMsgError(errorCode: Int, errorStr: String, isGift: Bool, isResend: Bool) {
    func dowryResend(errorCode: Int, errorStr: String, isGift _: Bool, isResend _: Bool) {
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

// MARK: - ManagerDelegate【刷新私信红点状态】

//: extension TalkingVoiceRoomBottomView: IMManagerDelegate {
extension PlayView: ManagerDelegate {
    //: func onUnreadMsgCountChanged(count: Int) {
    func tally(count _: Int) {
        //: refreshRedCountStatus()
        streetSmartStatus()
    }

    /// 刷新消息未读数状态
    //: func refreshRedCountStatus() {
    func streetSmartStatus() {
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

// MARK: - Layout

//: extension TalkingVoiceRoomBottomView {
extension PlayView {
    /// 添加视图
    //: private func setupSubviews() {
    private func subEqual() {
        //: addSubview(commentBtn)
        addSubview(commentBtn)
        //: addSubview(stackView)
        addSubview(stackView)
        //: stackView.addArrangedSubview(micBtn)
        stackView.addArrangedSubview(micBtn)
        //: stackView.addArrangedSubview(chatBtn)
        stackView.addArrangedSubview(chatBtn)
        //: chatBtn.addSubview(redCountLab)
        chatBtn.addSubview(redCountLab)
        //: stackView.addArrangedSubview(giftBtn)
        stackView.addArrangedSubview(giftBtn)
    }

    /// 更新布局
    //: private func setupSubViewsConstraint() {
    private func upSub() {
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
        //: micBtn.snp.makeConstraints { make in
        micBtn.snp.makeConstraints { make in
            //: make.width.height.equalTo(33)
            make.width.height.equalTo(33)
        }
        //: giftBtn.snp.makeConstraints { make in
        giftBtn.snp.makeConstraints { make in
            //: make.width.height.equalTo(micBtn)
            make.width.height.equalTo(micBtn)
        }
        //: chatBtn.snp.makeConstraints { make in
        chatBtn.snp.makeConstraints { make in
            //: make.width.height.equalTo(micBtn)
            make.width.height.equalTo(micBtn)
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
    }
}
