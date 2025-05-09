
//: Declare String Begin

/*: "#201E50" :*/
fileprivate let str_tempName:String = "#201E50room value"

/*: "#1F1624" :*/
fileprivate let str_equalName:String = "leading view button to view#1F162"
fileprivate let str_allLayerTitle:[Character] = ["4"]

/*: "quick_video_topview" :*/
fileprivate let str_imageValue:String = "qtextick"
fileprivate let str_reasonListValue:String = "let hidden month_topview"

/*: "btn_back_white" :*/
fileprivate let str_sectionData:[Character] = ["b","t","n","_","b","a","c","k","_","w"]
fileprivate let str_databaseTitle:String = "withite"

/*: "Random Video" :*/
fileprivate let str_toText:String = "Randself shared"

/*: "icon_rank_coin" :*/
fileprivate let str_modelValue:[Character] = ["i","c","o","n","_"]
fileprivate let str_inputData:[Character] = ["r","a","n","k","_","c","o","i","n"]

/*: "btn_quick_back_nor" :*/
fileprivate let str_dataName:String = "btn_item model user hidden"
fileprivate let str_topName:[Character] = ["q","u","i","c","k","_","b","a","c","k","_","n","o","r"]

/*: "icon_video_skip" :*/
fileprivate let str_succeedName:String = "iindexn"
fileprivate let str_modelTitle:String = "if let leteo_skip"

/*: "#9610FF" :*/
fileprivate let str_menuValue:[Character] = ["#","9","6","1","0","F","F"]

/*: "#8566FF" :*/
fileprivate let str_regularContent:String = "#8"
fileprivate let str_lastTitle:[Character] = ["5","6","6","F","F"]

/*: "icon_coin_match_line" :*/
fileprivate let str_shadowValue:[Character] = ["i","c","o","n","_","c","o","i","n","_"]
fileprivate let str_playerValue:String = "mdevice"
fileprivate let str_addTitle:String = "add user equal if iftch_"

/*: "matchId" :*/
fileprivate let str_titleText:[UInt8] = [0x98,0x94,0x81,0x96,0x9d,0xbc,0x91]

private func toOver(model num: UInt8) -> UInt8 {
    return num ^ 245
}

/*: "source" :*/
fileprivate let str_viewContent:[UInt8] = [0xa6,0xba,0xa0,0xa7,0xb6,0xb0]

private func recordApp(tool num: UInt8) -> UInt8 {
    return num ^ 213
}

/*: "type" :*/
fileprivate let str_blockValue:[UInt8] = [0x65,0x70,0x79,0x74]

/*: "uid" :*/
fileprivate let str_equalText:[Character] = ["u","i","d"]

/*: "fromFreeCall" :*/
fileprivate let str_ofModelTitleData:[Character] = ["f","r","o","m","F","r"]
fileprivate let str_fatalContent:[Character] = ["e","e","C","a","l","l"]

/*: "cmd" :*/
fileprivate let str_tempData:[UInt8] = [0x6e,0x60,0x69]

private func modelMake(home num: UInt8) -> UInt8 {
    return num ^ 13
}

/*: "requestCall" :*/
fileprivate let str_styleText:String = "rcenteru"
fileprivate let str_firstName:String = "price"

/*: "data" :*/
fileprivate let str_coverName:[UInt8] = [0x97,0x92,0x87,0x92]

private func extensionOutsideRoom(effect num: UInt8) -> UInt8 {
    return num ^ 243
}

/*: "onRequestCall" :*/
fileprivate let str_beginPremiumValue:String = "quick index toonReq"
fileprivate let str_alongText:String = "Callview phone"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  GiftMatchDelegate.swift
//  AbroadTalking
//
//  Created by young on 2022/11/7.
//

//: import UIKit
import UIKit

//: class TalkingMatchResultViewController: TalkingBaseViewController {
class GiftMatchDelegate: SeamViewController {
    //: private var currentModel = TalkingMatchResultModel()
    private var currentModel = IntervalerpretHandyJSON() // 当前展示的model

    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
        // 每次打开更新金额
        //: refreshCoin()
        behindReport()
    }

    //: override func viewWillDisappear(_ animated: Bool) {
    override func viewWillDisappear(_ animated: Bool) {
        //: super.viewWillDisappear(animated)
        super.viewWillDisappear(animated)
    }

    //: override func viewDidAppear(_ animated: Bool) {
    override func viewDidAppear(_ animated: Bool) {
        //: super.viewDidAppear(animated)
        super.viewDidAppear(animated)
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.hideNavi = true
        self.hideNavi = true

        //: setupSubviews()
        use()
        //: setupSubViewsConstraint()
        performOfConstraint()
        //: refreshUI()
        part()

        /// 添加刷新余额的通知
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(refreshCoin),
                                               selector: #selector(behindReport),
                                               //: name: UPDATE_USER_GETINFOCOLUMN_NOTIFICATION,
                                               name: kLet_freeValue,
                                               //: object: nil)
                                               object: nil)
    }

    //: deinit {
    deinit {
        //: TalkingSocketManager.shared.videoMatchDelegate = nil
        DeviceSocketDelegate.shared.videoMatchDelegate = nil
        //: TalkingSocketManager.shared.errorDelegate = nil
        DeviceSocketDelegate.shared.errorDelegate = nil
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    // MARK: - Lazy Load

    //: private lazy var backView: UIImageView = {
    private lazy var backView: UIImageView = {
        //: let view = UIImageView.init()
        let view = UIImageView()
        //: view.image = UIImage.imageGradientTopToBottonColor(colors: [UIColor.init(hex: "#201E50")!.cgColor, UIColor.init(hex: "#1F1624")!.cgColor], size: CGSize(width: ScreenWidth, height: ScreenHeight))
        view.image = UIImage.pathOfSize(colors: [UIColor(hex: (String(str_tempName.prefix(7))))!.cgColor, UIColor(hex: (String(str_equalName.suffix(6)) + String(str_allLayerTitle)))!.cgColor], size: CGSize(width: kLet_cameraValue, height: kLet_clickData))
        //: view.isUserInteractionEnabled = true
        view.isUserInteractionEnabled = true

        //: let topView = UIImageView.init()
        let topView = UIImageView()
        //: topView.image = UIImage.eponymUp(name: "quick_video_topview")
        topView.image = UIImage.eponymUp(name: (str_imageValue.replacingOccurrences(of: "text", with: "u") + "_video" + String(str_reasonListValue.suffix(8))))
        //: topView.isUserInteractionEnabled = true
        topView.isUserInteractionEnabled = true
        //: view.addSubview(topView)
        view.addSubview(topView)
        //: topView.snp.makeConstraints { make in
        topView.snp.makeConstraints { make in
            //: make.leading.top.equalTo(0)
            make.leading.top.equalTo(0)
            //: make.width.height.equalTo(actualWidth(w: 218))
            make.width.height.equalTo(actualWidth(w: 218))
        }
        //: return view
        return view
        //: }()
    }()

    //: private lazy var navView: UIView = {
    private lazy var navView: UIView = {
        //: let nav = UIView()
        let nav = UIView()
        //: nav.backgroundColor = .clear
        nav.backgroundColor = .clear
        // 返回
        //: let backBtn = UIButton(type: .custom)
        let backBtn = UIButton(type: .custom)
        //: backBtn.setImage(UIImage.eponymUp(name: "btn_back_white"), for: .normal)
        backBtn.setImage(UIImage.eponymUp(name: (String(str_sectionData) + str_databaseTitle.replacingOccurrences(of: "with", with: "h"))), for: .normal)
        //: backBtn.addTarget(self, action: #selector(clickBackButtonAction), for: .touchUpInside)
        backBtn.addTarget(self, action: #selector(pushRoom), for: .touchUpInside)
        //: nav.addSubview(backBtn)
        nav.addSubview(backBtn)
        //: backBtn.snp.makeConstraints { make in
        backBtn.snp.makeConstraints { make in
            //: make.leading.equalTo(20)
            make.leading.equalTo(20)
            //: make.width.equalTo(20)
            make.width.equalTo(20)
            //: make.height.equalTo(20)
            make.height.equalTo(20)
            //: make.top.equalTo(StatusBarHeight+12)
            make.top.equalTo(kLet_timeSenseValue + 12)
        }
        // 标题
        //: let titleLab = UILabel()
        let titleLab = UILabel()
        //: titleLab.font = UIFont.pingfangWithDiameter(fontSize: 17)
        titleLab.font = UIFont.pingfangWithDiameter(fontSize: 17)
        //: titleLab.textColor = UIColor.white
        titleLab.textColor = UIColor.white
        //: titleLab.textAlignment = .center
        titleLab.textAlignment = .center
        //: titleLab.text = "Random Video".localized
        titleLab.text = (String(str_toText.prefix(4)) + "om Video").localized
        //: nav.addSubview(titleLab)
        nav.addSubview(titleLab)
        //: titleLab.snp.makeConstraints { make in
        titleLab.snp.makeConstraints { make in
            //: make.centerY.equalTo(backBtn)
            make.centerY.equalTo(backBtn)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }
        // 余额
        //: let coinBtn = TalkingButton()
        let coinBtn = ProgressTalkingButton()
        //: coinBtn.tag = 1001
        coinBtn.tag = 1001
        //: coinBtn.setImage(UIImage.eponymUp(name: "icon_rank_coin"), for: .normal)
        coinBtn.setImage(UIImage.eponymUp(name: (String(str_modelValue) + String(str_inputData))), for: .normal)
        //: coinBtn.setImage(UIImage.eponymUp(name: "icon_rank_coin"), for: .disabled)
        coinBtn.setImage(UIImage.eponymUp(name: (String(str_modelValue) + String(str_inputData))), for: .disabled)
        //: coinBtn.isEnabled = false
        coinBtn.isEnabled = false
        //: coinBtn.setTitleColor(UIColor.appTitleColor(), for: .normal)
        coinBtn.setTitleColor(UIColor.executeTo(), for: .normal)
        //: coinBtn.setTitle("\(EqualThen.share.loginUserMode.mf_coin)", for: .normal)
        coinBtn.setTitle("\(EqualThen.share.loginUserMode.mf_coin)", for: .normal)
        //: coinBtn.titleLabel?.font = UIFont.pingfangFont(type: .Semibold, fontSize: 15)
        coinBtn.titleLabel?.font = UIFont.pingfang(type: .Semibold, fontSize: 15)
        //: coinBtn.backgroundColor = UIColor.white
        coinBtn.backgroundColor = UIColor.white
        //: coinBtn.layer.cornerRadius = 12
        coinBtn.layer.cornerRadius = 12
        //: coinBtn.imageAlignment = .left
        coinBtn.imageAlignment = .left
//        coinBtn.spaceBetweenTitleAndImage = 3
        //: nav.addSubview(coinBtn)
        nav.addSubview(coinBtn)
        //: coinBtn.snp.makeConstraints { make in
        coinBtn.snp.makeConstraints { make in
            //: make.trailing.equalTo(-19)
            make.trailing.equalTo(-19)
            //: make.centerY.equalTo(backBtn)
            make.centerY.equalTo(backBtn)
            //: make.height.equalTo(24)
            make.height.equalTo(24)
        }

        //: return nav
        return nav
        //: }()
    }()

    //: private lazy var picturesView: TalkingMatchResultPicturesView = {
    private lazy var picturesView: TalkingBannerDelegate = {
        //: let v = TalkingMatchResultPicturesView(frame: .zero)
        let v = TalkingBannerDelegate(frame: .zero)
        //: v.matchBackBlock = { [weak self] in
        v.matchBackBlock = { [weak self] in
            //: guard let self = self else {
            guard let self = self else {
                //: return
                return
            }
            //: self.clickBackButtonAction()
            self.pushRoom()
        }
        //: return v
        return v
        //: }()
    }()

    //: private lazy var showLastBtn: UIButton = {
    private lazy var showLastBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setBackgroundImage(UIImage.eponymUp(name: "btn_quick_back_nor"), for: .normal)
        btn.setBackgroundImage(UIImage.eponymUp(name: (String(str_dataName.prefix(4)) + String(str_topName))), for: .normal)
        //: btn.addTarget(self, action: #selector(showLastButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(backgroundSnap), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var skipBtn: UIButton = {
    private lazy var skipBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.eponymUp(name: "icon_video_skip"), for: .normal)
        btn.setImage(UIImage.eponymUp(name: (str_succeedName.replacingOccurrences(of: "index", with: "co") + "_vid" + String(str_modelTitle.suffix(7)))), for: .normal)
        //: btn.addTarget(self, action: #selector(clickBackButtonAction), for: .touchUpInside)
        btn.addTarget(self, action: #selector(pushRoom), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var callBtn: UIButton = {
    private lazy var callBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.addTarget(self, action: #selector(callButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(dataConverterMobile), for: .touchUpInside)
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: [UIColor.init(hex: "#9610FF")!.cgColor, UIColor.init(hex: "#8566FF")!.cgColor], size: CGSize(width: 140, height: 69)), for: .normal)
        btn.setBackgroundImage(UIImage.makeBackground(colors: [UIColor(hex: (String(str_menuValue)))!.cgColor, UIColor(hex: (str_regularContent.capitalized + String(str_lastTitle)))!.cgColor], size: CGSize(width: 140, height: 69)), for: .normal)
        //: btn.layer.cornerRadius = 69/2
        btn.layer.cornerRadius = 69 / 2
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.titleLabel?.numberOfLines = 2
        btn.titleLabel?.numberOfLines = 2

        //: return btn
        return btn
        //: }()
    }()

    //: lazy var showLastArr: [TalkingMatchResultModel] = {
    lazy var showLastArr: [IntervalerpretHandyJSON] = //: return Array<IntervalerpretHandyJSON>()
        .init()
    //: }()

    //: lazy var dzView: UIImageView = {
    lazy var dzView: UIImageView = {
        //: let view = UIImageView.init()
        let view = UIImageView()
        //: view.image = UIImage.eponymUp(name: "icon_coin_match_line")
        view.image = UIImage.eponymUp(name: (String(str_shadowValue) + str_playerValue.replacingOccurrences(of: "device", with: "a") + String(str_addTitle.suffix(4)) + "line"))
        //: view.isHidden = true
        view.isHidden = true
        //: return view
        return view
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingMatchResultViewController {
extension GiftMatchDelegate {
    /// 返回按钮
    //: @objc private func clickBackButtonAction() {
    @objc private func pushRoom() {
        //: if self.presentedViewController != nil {
        if self.presentedViewController != nil { // 可能有重置弹窗未消除的情况，许手动消除
            //: self.presentedViewController?.dismiss(animated: true)
            self.presentedViewController?.dismiss(animated: true)
        }
        //: self.navigationController?.popViewController(animated: true)
        self.navigationController?.popViewController(animated: true)
    }

    /// 拨打视频通话socket
    //: @objc private func callButtonClick() {
    @objc private func dataConverterMobile() {
        //: var data: [String: Any] = ["matchId": self.currentModel.matchId,
        var data: [String: Any] = [String(bytes: str_titleText.map{toOver(model: $0)}, encoding: .utf8)!: self.currentModel.matchId,
                                   //: "source": self.currentModel.source,
                                   String(bytes: str_viewContent.map{recordApp(tool: $0)}, encoding: .utf8)!: self.currentModel.source,
                                   //: "type": self.currentModel.type,
                                   String(bytes: str_blockValue.reversed(), encoding: .utf8)!: self.currentModel.type,
                                   //: "uid": self.currentModel.uid]
                                   (String(str_equalText)): self.currentModel.uid]
        //: if EqualThen.share.loginUserMode.freeCallTimes > 0 && EqualThen.share.loginUserMode.sex == Gender.male.rawValue {
        if EqualThen.share.loginUserMode.freeCallTimes > 0, EqualThen.share.loginUserMode.sex == RunReplaceableCollection.male.rawValue {
            //: data.updateValue(1, forKey: "fromFreeCall")
            data.updateValue(1, forKey: (String(str_ofModelTitleData) + String(str_fatalContent)))
        }
        //: let info: [String: Any] = ["cmd": "requestCall", "data": data]
        let info: [String: Any] = [String(bytes: str_tempData.map{modelMake(home: $0)}, encoding: .utf8)!: (str_styleText.replacingOccurrences(of: "center", with: "eq") + "estCa" + str_firstName.replacingOccurrences(of: "price", with: "ll")), String(bytes: str_coverName.map{extensionOutsideRoom(effect: $0)}, encoding: .utf8)!: data]
        //: TalkingSocketManager.shared.sendMessage(info: info)
        DeviceSocketDelegate.shared.noCurrent(info: info)
        //: TalkingSocketManager.shared.videoMatchDelegate = self
        DeviceSocketDelegate.shared.videoMatchDelegate = self
        //: TalkingSocketManager.shared.errorDelegate = self
        DeviceSocketDelegate.shared.errorDelegate = self
    }

    /// 通知刷新余额
    //: @objc private func refreshCoin() {
    @objc private func behindReport() {
        //: AppManagerRequest.func__getInfoColumn { succeed, result, errorModel in
        GiftManagerRequest.modelRow { succeed, _, _ in
            //: guard succeed == true else { return }
            guard succeed == true else { return }

            //: let coinBtn = self.navView.viewWithTag(1001) as! TalkingButton
            let coinBtn = self.navView.viewWithTag(1001) as! ProgressTalkingButton
            //: coinBtn.setTitle(EqualThen.share.loginUserMode.mf_coin, for: .normal)
            coinBtn.setTitle(EqualThen.share.loginUserMode.mf_coin, for: .normal)
        }
    }

    /// 展示上一个视频速配结果
    //: @objc private func showLastButtonClick() {
    @objc private func backgroundSnap() {
        //: showLastArr.removeLast()
        showLastArr.removeLast()
        //: refreshUI()
        part()
    }
}

// MARK: - SocketManagerMatchResultDelegate

//: extension TalkingMatchResultViewController: SocketManagerVideoMatchDelegate {
extension GiftMatchDelegate: ModelObjectProtocol {
    //: func socket_match_onVideoMatch(data: [String: Any]) {}
    func finishData(data _: [String: Any]) {}

    /// 匹配成功，可以拨打通话（此处跳转特殊处理）
    //: func socket_match_onRequestCall(data: [String: Any]) {
    func makeList(data: [String: Any]) {
        //: var arrM = self.navigationController!.viewControllers
        var arrM = self.navigationController!.viewControllers
        //: for (index, vc) in self.navigationController!.viewControllers.enumerated() {
        for (index, vc) in self.navigationController!.viewControllers.enumerated() {
            //: if vc.isKind(of: TalkingMatchResultViewController.self) {
            if vc.isKind(of: GiftMatchDelegate.self) {
                //: arrM.remove(at: index)
                arrM.remove(at: index)
                //: break
                break
            }
        }
        //: var newData = data
        var newData = data
        //: newData["uid"] = self.currentModel.uid
        newData[(String(str_equalText))] = self.currentModel.uid
        //: let vc = TalkingVideoChatViewController()
        let vc = MakeCallerDelegate()
        //: vc.chatModel = TalkingVideoChatModel.getVideoModel(info: newData, situation: .Start)
        vc.chatModel = ViewChatModel.sinceInsiderInformationSituation(info: newData, situation: .Start)

        //: vc.hidesBottomBarWhenPushed = true
        vc.hidesBottomBarWhenPushed = true
        //: arrM.append(vc)
        arrM.append(vc)
        //: self.navigationController?.setViewControllers(arrM, animated: true)
        self.navigationController?.setViewControllers(arrM, animated: true)
    }
}

// MARK: - FileCurrentErrorDelegate

//: extension TalkingMatchResultViewController: TalkingSocketManagerErrorDelegate {
extension GiftMatchDelegate: FileCurrentErrorDelegate {
    /// socket收到失败消息
    //: func socket_didRecieveError(errorNo: Int, cmd: String, msg: String, data: [String: Any]) {
    func constraintInsert(errorNo: Int, cmd: String, msg: String, data _: [String: Any]) {
        //: if cmd == "onRequestCall" {
        if cmd == (String(str_beginPremiumValue.suffix(5)) + "uest" + String(str_alongText.prefix(4))) {
            //: self.func__showStatusBarErrorMsg(showMsg: msg)
            self.oversight(showMsg: msg)
            //: if errorNo == VideoChatErrorCode.CallEnd.rawValue {
            if errorNo == MakePriorityTarget.CallEnd.rawValue {
                //: clickBackButtonAction()
                pushRoom()
                //: } else if errorNo == VideoChatErrorCode.MoneyLack.rawValue {
            } else if errorNo == MakePriorityTarget.MoneyLack.rawValue {
                //: guard EqualThen.share.appStatus == AppSkinStatus.normal.rawValue else { return }
                guard EqualThen.share.appStatus == PhaseOfTheMoonPropertyProtocol.normal.rawValue else { return }
                //: EditTextThen.share.func__jumpToWebRecharge(sufficient: false)
                EditTextThen.share.activityParams(sufficient: false)
            }
        }
    }
}

// MARK: - Layout

//: extension TalkingMatchResultViewController {
extension GiftMatchDelegate {
    /// 添加视图
    //: private func setupSubviews() {
    private func use() {
        //: self.view.addSubview(backView)
        self.view.addSubview(backView)
        //: backView.addSubview(navView)
        backView.addSubview(navView)
        //: backView.addSubview(picturesView)
        backView.addSubview(picturesView)
        //: backView.addSubview(showLastBtn)
        backView.addSubview(showLastBtn)
        //: backView.addSubview(skipBtn)
        backView.addSubview(skipBtn)
        //: backView.addSubview(callBtn)
        backView.addSubview(callBtn)
        //: callBtn.addSubview(dzView)
        callBtn.addSubview(dzView)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func performOfConstraint() {
        //: backView.snp.makeConstraints { make in
        backView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
        //: navView.snp.makeConstraints { make in
        navView.snp.makeConstraints { make in
            //: make.leading.top.width.equalToSuperview()
            make.leading.top.width.equalToSuperview()
            //: make.height.equalTo(StatusBarNavigationBarHeight)
            make.height.equalTo(kLet_detailNameText)
        }
        //: callBtn.snp.makeConstraints { make in
        callBtn.snp.makeConstraints { make in
            //: make.bottom.equalTo(-(kDeviceSafeBottomHeight+36))
            make.bottom.equalTo(-(kLet_nextData + 36))
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.height.equalTo(69)
            make.height.equalTo(69)
            //: make.width.equalTo(140)
            make.width.equalTo(140)
        }

        //: picturesView.snp.makeConstraints { make in
        picturesView.snp.makeConstraints { make in
            //: make.top.equalTo(navView.snp.bottom).offset(actualWidth(w: 17))
            make.top.equalTo(navView.snp.bottom).offset(actualWidth(w: 17))
            //: make.leading.equalTo(18)
            make.leading.equalTo(18)
            //: make.trailing.equalTo(-22)
            make.trailing.equalTo(-22)
            //: make.bottom.equalTo(callBtn.snp.top).offset(-32)
            make.bottom.equalTo(callBtn.snp.top).offset(-32)
        }
        //: showLastBtn.snp.makeConstraints { make in
        showLastBtn.snp.makeConstraints { make in
            //: make.trailing.equalTo(callBtn.snp.leading).offset(-20)
            make.trailing.equalTo(callBtn.snp.leading).offset(-20)
            //: make.centerY.equalTo(callBtn)
            make.centerY.equalTo(callBtn)
            //: make.size.equalTo(CGSize(width: 50, height: 50))
            make.size.equalTo(CGSize(width: 50, height: 50))
        }

        //: dzView.snp.makeConstraints { make in
        dzView.snp.makeConstraints { make in
            //: make.leading.equalTo(146)
            make.leading.equalTo(146)
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.height.equalTo(8)
            make.height.equalTo(8)
            //: make.width.equalTo(42)
            make.width.equalTo(42)
        }
        //: skipBtn.snp.makeConstraints { make in
        skipBtn.snp.makeConstraints { make in
            //: make.leading.equalTo(callBtn.snp.trailing).offset(21)
            make.leading.equalTo(callBtn.snp.trailing).offset(21)
            //: make.centerY.equalTo(callBtn)
            make.centerY.equalTo(callBtn)
            //: make.size.equalTo(50)
            make.size.equalTo(50)
        }
    }

    /// 刷新UI
    //: private func refreshUI() {
    private func part() {
        //: if showLastArr.count > 0 {
        if showLastArr.count > 0 { // 最后一个是最新数据
            //: currentModel = showLastArr.last!
            currentModel = showLastArr.last!
        }
        //: setPriceBtn()
        priceGroup()
        //: picturesView.updatePicturesView(model: currentModel)
        picturesView.viewStraddle(model: currentModel)
        //: picturesView.matchPlayVideoBlock = { [weak self] (videoUrl) in
        picturesView.matchPlayVideoBlock = { [weak self] videoUrl in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: let vc = TalkingMomentVideoVC.init(videoPath: videoUrl)
            let vc = AtViewController(videoPath: videoUrl)
            //: self.currentViewController()?.navigationController?.pushViewController(vc, animated: true)
            self.infoController()?.navigationController?.pushViewController(vc, animated: true)
        }

        //: showLastBtn.isHidden = (showLastArr.count >= 2) ? false:true
        showLastBtn.isHidden = (showLastArr.count >= 2) ? false : true

        // 审核模式隐藏金币
        //: if EqualThen.share.appStatus != AppSkinStatus.normal.rawValue {
        if EqualThen.share.appStatus != PhaseOfTheMoonPropertyProtocol.normal.rawValue {
            //: let coinBtn = self.navView.viewWithTag(1001) as! TalkingButton
            let coinBtn = self.navView.viewWithTag(1001) as! ProgressTalkingButton
            //: coinBtn.isHidden = true
            coinBtn.isHidden = true
            //: setPriceBtn()
            priceGroup()
        }
    }

    //: func setPriceBtn() {
    func priceGroup() {
        //: let attrString = String.setPriceStr(fee: currentModel.fee, originalFee: currentModel.originalFee, freeCallTimes: EqualThen.share.loginUserMode.freeCallTimes)
        let attrString = String.setPriceStr(fee: currentModel.fee, originalFee: currentModel.originalFee, freeCallTimes: EqualThen.share.loginUserMode.freeCallTimes)
        //: callBtn.isHidden = false
        callBtn.isHidden = false
        //: callBtn.setAttributedTitle(attrString, for: .normal)
        callBtn.setAttributedTitle(attrString, for: .normal)
    }
}
