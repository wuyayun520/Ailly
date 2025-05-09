
//: Declare String Begin

/*: "bg_shouye_misanguang_default" :*/
fileprivate let str_formatName:String = "bg_shleft count"
fileprivate let str_managerCalledName:String = "mcurrenta"
fileprivate let str_scaleContent:String = "line self else countng_d"

/*: "#777777" :*/
fileprivate let str_editValue:String = "#cardcardcardcard"
fileprivate let str_itemValue:[Character] = ["7","7"]

/*: "#333333" :*/
fileprivate let str_modelText:[Character] = ["#","3"]
fileprivate let str_contentValue:String = "appapp3"

/*: "Party" :*/
fileprivate let str_cellData:String = "table dataParty"

/*: "Popular" :*/
fileprivate let str_actualValueName:String = "Popularlabel in"

/*: "Nearby" :*/
fileprivate let str_objectName:[Character] = ["N","e","a","r","b","y"]

/*: "New" :*/
fileprivate let str_videoData:String = "Newasset guard any"

/*: "btn_popular_search_nor" :*/
fileprivate let str_sharedLeadingData:[Character] = ["b","t","n","_","p","o","p","u","l"]
fileprivate let str_textName:String = "type frame depth date hiddenar_"
fileprivate let str_viewValue:String = "searhide"

/*: "icon_live_nor" :*/
fileprivate let str_popularShowName:String = "icconversation"
fileprivate let str_makeImageData:[Character] = ["o","r"]

/*: "btn_popular_ranking_nor" :*/
fileprivate let str_viewName:String = "btn_pmake var user class"
fileprivate let str_cellCloseName:String = "online to_ranki"
fileprivate let str_equalLikeData:String = "ng_norshow string self"

/*: "Congratulation on your chance to join the Star Plan !" :*/
fileprivate let str_topValue:[UInt8] = [0x4d,0x61,0x60,0x69,0x7c,0x6f,0x7a,0x7b,0x62,0x6f,0x7a,0x67,0x61,0x60,0x2e,0x61,0x60,0x2e,0x77,0x61,0x7b,0x7c,0x2e,0x6d,0x66,0x6f,0x60,0x6d,0x6b,0x2e,0x7a,0x61,0x2e,0x64,0x61,0x67,0x60,0x2e,0x7a,0x66,0x6b,0x2e,0x5d,0x7a,0x6f,0x7c,0x2e,0x5e,0x62,0x6f,0x60,0x2e,0x2f]

private func glassesVideo(effect num: UInt8) -> UInt8 {
    return num ^ 14
}

/*: "No, thanks" :*/
fileprivate let str_eventValue:String = "No, frame cell cell"
fileprivate let str_itemName:String = "sex"

/*: "Find out more" :*/
fileprivate let str_roomValue:[Character] = ["F","i","n","d"," ","o","u","t"," ","m","o","r","e"]

/*: "clickStarProjectpop-upsCancel" :*/
fileprivate let str_miniData:[Character] = ["c","l","i","c","k","S","t","a","r","P","r","o","j","e","c"]
fileprivate let str_showReloadContent:String = "tpmodep"
fileprivate let str_upDefineElseTitle:String = "anctol"

/*: "clickStarProjectpop-upsFindoutmore" :*/
fileprivate let str_iconValue:[UInt8] = [0xf4,0xfd,0xfa,0xf4,0xfc,0xe4,0x5,0xf2,0x3,0xe1,0x3,0x0,0xfb,0xf6,0xf4,0x5,0x1,0x0,0x1,0xbe,0x6,0x1,0x4,0xd7,0xfa,0xff,0xf5,0x0,0x6,0x5,0xfe,0x0,0x3,0xf6]

fileprivate func tableConnection(it num: UInt8) -> UInt8 {
    let value = Int(num) + 111
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "Allow %@ to send you notifications?" :*/
fileprivate let str_modeVideoData:[UInt8] = [0x1b,0x36,0x36,0x35,0x2d,0x7a,0x7f,0x1a,0x7a,0x2e,0x35,0x7a,0x29,0x3f,0x34,0x3e,0x7a,0x23,0x35,0x2f,0x7a,0x34,0x35,0x2e,0x33,0x3c,0x33,0x39,0x3b,0x2e,0x33,0x35,0x34,0x29,0x65]

private func mLet(transform num: UInt8) -> UInt8 {
    return num ^ 90
}

/*: "Cancel" :*/
fileprivate let str_streamValue:String = "string tagCancel"

/*: "Settings" :*/
fileprivate let str_mediumTitle:String = "var height notice voiceSettings"

/*: _ :*/
fileprivate let str_accelerateValue:String = "_"

/*: "male" :*/
fileprivate let str_blockTitle:[UInt8] = [0x71,0x7d,0x70,0x79]

private func toRow(status num: UInt8) -> UInt8 {
    return num ^ 28
}

/*: "female" :*/
fileprivate let str_lastData:String = "all"
fileprivate let str_colorRowData:String = "smals"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  IndexViewController.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/1/20.
//

//: import UIKit
import UIKit

//: import JXSegmentedView
import JXSegmentedView

//: import JXPagingView
import JXPagingView

//: class TalkingSocialViewController: TalkingBaseViewController {
class IndexViewController: SeamViewController {
    //: private let segmentedDataSource = JXSegmentedTitleDataSource()
    private let segmentedDataSource = JXSegmentedTitleDataSource()
    //: private var  isNearbyShow = false
    private var isNearbyShow = false
    //: var  seleteIndex = 1
    var seleteIndex = 1
    //: private var liveTipsTimer: Timer?
    private var liveTipsTimer: Timer? /// 头像动画timer

    //: override func viewDidAppear(_ animated: Bool) {
    override func viewDidAppear(_ animated: Bool) {
        //: super.viewDidAppear(animated)
        super.viewDidAppear(animated)
        //: GiftFloatViewManager.shared.activeWhenShow()
        ZapReactiveCompatible.shared.toIndex()
    }

    //: override func viewDidDisappear(_ animated: Bool) {
    override func viewDidDisappear(_ animated: Bool) {
        //: super.viewDidDisappear(animated)
        super.viewDidDisappear(animated)
        //: GiftFloatViewManager.shared.stopWhenDismiss()
        ZapReactiveCompatible.shared.halogen()
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.hideNavi = true
        self.hideNavi = true
        //: self.setupSubviews()
        self.subviewsView()
        //: self.setupSubViewsConstraint()
        self.circumferenceConstraint()
        //: self.addNotification()
        self.addToInput()
        //: self.func__checkStarPlanNeedShow()
        self.presentShow()
        //: self.func__turnOnSystemNotification()
        self.metronymicActionNotification()
        //: self.pushIsClubVideo()
        self.club()
    }

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
        //: stop_liveTipsTimer()
        tipsRow()
    }

    // MARK: - Lazy load

    //: private lazy var bottomImgView: UIImageView = {
    private lazy var bottomImgView: UIImageView = {
        //: let imgV = UIImageView(image: UIImage.eponymUp(name: "bg_shouye_misanguang_default"))
        let imgV = UIImageView(image: UIImage.eponymUp(name: (String(str_formatName.prefix(5)) + "ouye_" + str_managerCalledName.replacingOccurrences(of: "current", with: "is") + "ngua" + String(str_scaleContent.suffix(4)) + "efault")))
        //: imgV.isUserInteractionEnabled = false
        imgV.isUserInteractionEnabled = false
        //: return imgV
        return imgV
        //: }()
    }()

    //: private lazy var categoryView: JXSegmentedView = {
    private lazy var categoryView: JXSegmentedView = {
        //: let segmentedView = JXSegmentedView.init(frame: CGRect.init(x: 0, y: StatusBarHeight, width: ScreenWidth, height: NavigationBarHeight))
        let segmentedView = JXSegmentedView(frame: CGRect(x: 0, y: kLet_timeSenseValue, width: kLet_cameraValue, height: kLet_deviceRecordValue))
        //: segmentedDataSource.itemSpacing = 18
        segmentedDataSource.itemSpacing = 18
        //: segmentedDataSource.titles = titleArray
        segmentedDataSource.titles = titleArray
        //: segmentedDataSource.isTitleMaskEnabled = false
        segmentedDataSource.isTitleMaskEnabled = false
        //: segmentedDataSource.isItemSpacingAverageEnabled = false
        segmentedDataSource.isItemSpacingAverageEnabled = false
        //: segmentedDataSource.isSelectedAnimable = false
        segmentedDataSource.isSelectedAnimable = false
        //: segmentedDataSource.titleNormalColor = UIColor.init(hex: "#777777")!
        segmentedDataSource.titleNormalColor = UIColor(hex: (str_editValue.replacingOccurrences(of: "card", with: "7") + String(str_itemValue)))!
        //: segmentedDataSource.titleSelectedColor = UIColor.init(hex: "#333333")!
        segmentedDataSource.titleSelectedColor = UIColor(hex: (String(str_modelText) + str_contentValue.replacingOccurrences(of: "app", with: "33")))!
        //: segmentedDataSource.titleNormalFont = .pingfangFont(type: .Medium, fontSize: 16)
        segmentedDataSource.titleNormalFont = .pingfang(type: .Medium, fontSize: 16)
        //: segmentedDataSource.titleSelectedFont = .pingfangFont(type: .Medium, fontSize: 18)
        segmentedDataSource.titleSelectedFont = .pingfang(type: .Medium, fontSize: 18)
//        segmentedDataSource.itemWidthIncrement = 0
        //: let indicator = JXSegmentedIndicatorLineView()
        let indicator = JXSegmentedIndicatorLineView()
        //: indicator.indicatorWidth = 12
        indicator.indicatorWidth = 12
        //: indicator.indicatorHeight = 4
        indicator.indicatorHeight = 4
        //: indicator.verticalOffset = 4
        indicator.verticalOffset = 4
        //: indicator.lineStyle = .normal
        indicator.lineStyle = .normal
        //: indicator.indicatorColor = UIColor.init(hex: "#333333")!
        indicator.indicatorColor = UIColor(hex: (String(str_modelText) + str_contentValue.replacingOccurrences(of: "app", with: "33")))!
        //: segmentedView.dataSource = segmentedDataSource
        segmentedView.dataSource = segmentedDataSource
        //: segmentedView.indicators = [indicator]
        segmentedView.indicators = [indicator]
        //: segmentedView.delegate = self
        segmentedView.delegate = self
        //: segmentedView.contentScrollView = pagerView.listContainerView.scrollView
        segmentedView.contentScrollView = pagerView.listContainerView.scrollView
        //: segmentedView.defaultSelectedIndex = 1
        segmentedView.defaultSelectedIndex = 1
//        segmentedView.backgroundColor = .clear
        //: if LanguageManager.shared.direction == .rightToLeft {
        if FileReactiveCompatible.shared.direction == .rightToLeft {
            //: segmentedView.transform = CGAffineTransform(scaleX: -1, y: 1)
            segmentedView.transform = CGAffineTransform(scaleX: -1, y: 1)
        }
        //: return segmentedView
        return segmentedView
        //: }()
    }()

    //: private lazy var pagerView: JXPagingListRefreshView = {
    private lazy var pagerView: JXPagingListRefreshView = {
        //: let view = JXPagingListRefreshView.init(delegate: self, listContainerType: JXPagingListContainerType.scrollView)
        let view = JXPagingListRefreshView(delegate: self, listContainerType: JXPagingListContainerType.scrollView)
        //: view.frame = CGRect.init(x: 0, y: StatusBarHeight, width: ScreenWidth, height: ScreenHeight-TabBarViewHeight-StatusBarHeight)
        view.frame = CGRect(x: 0, y: kLet_timeSenseValue, width: kLet_cameraValue, height: kLet_clickData - kLet_viewDepthText - kLet_timeSenseValue)
//        view.pinSectionHeaderVerticalOffset = 20
        //: view.defaultSelectedIndex = 1
        view.defaultSelectedIndex = 1
        //: view.mainTableView.backgroundColor = .clear
        view.mainTableView.backgroundColor = .clear
        //: if LanguageManager.shared.direction == .rightToLeft {
        if FileReactiveCompatible.shared.direction == .rightToLeft {
            //: view.transform = CGAffineTransform(scaleX: -1, y: 1)
            view.transform = CGAffineTransform(scaleX: -1, y: 1)
        }
        //: return view
        return view
        //: }()
    }()

    //: private lazy var titleArray: [String] = {
    private lazy var titleArray: [String] = {
        //: var array = [String]()
        var array = [String]()

        //: array.append("Party".localized)
        array.append((String(str_cellData.suffix(5))).localized)
        //: array.append("Popular".localized)
        array.append((String(str_actualValueName.prefix(7))).localized)
        //: array.append("Nearby".localized)
        array.append((String(str_objectName)).localized)
        //: array.append("New".localized)
        array.append((String(str_videoData.prefix(3))).localized)
        //: return array
        return array
        //: }()
    }()

    //: lazy var dataVC: [UIViewController] = {
    lazy var dataVC: [UIViewController] = {
        //: var array = [UIViewController]()
        var array = [UIViewController]()
        //: for i in titleArray {
        for i in titleArray {
            //: if i == "Party".localized {
            if i == (String(str_cellData.suffix(5))).localized {
                //: let partyVC = PartyListViewController.init()
                let partyVC = PlayerDataSource()
                //: array.append(partyVC)
                array.append(partyVC)
                //: }else{
            } else {
                //: let popularVC = SocialPopularViewController.init()
                let popularVC = DeviceSocialViewController()
                //: if i == "Popular".localized {
                if i == (String(str_actualValueName.prefix(7))).localized {
                    //: popularVC.tabType = .hot
                    popularVC.tabType = .hot
                    //: } else if i == "Nearby".localized {
                } else if i == (String(str_objectName)).localized {
                    //: popularVC.tabType = .nearby
                    popularVC.tabType = .nearby
                    //: } else if i == "New".localized {
                } else if i == (String(str_videoData.prefix(3))).localized {
                    //: popularVC.tabType = .new
                    popularVC.tabType = .new
                }
                //: array.append(popularVC)
                array.append(popularVC)
            }
        }
        //: return array
        return array
        //: }()
    }()

    //: private lazy var searchBtn: UIButton = {
    private lazy var searchBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.eponymUp(name: "btn_popular_search_nor"), for: .normal)
        btn.setImage(UIImage.eponymUp(name: (String(str_sharedLeadingData) + String(str_textName.suffix(3)) + str_viewValue.replacingOccurrences(of: "hide", with: "ch") + "_nor")), for: .normal)
        //: btn.addTarget(self, action: #selector(searchButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(map), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var liveBtn: UIButton = {
    private lazy var liveBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.eponymUp(name: "icon_live_nor"), for: .normal)
        btn.setImage(UIImage.eponymUp(name: (str_popularShowName.replacingOccurrences(of: "conversation", with: "on") + "_live_n" + String(str_makeImageData))), for: .normal)
        //: btn.addTarget(self, action: #selector(liveBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(pure), for: .touchUpInside)
        //: btn.isHidden = !(EqualThen.share.appStatus == AppSkinStatus.special.rawValue && EqualThen.share.loginUserMode.sex == Gender.female.rawValue)
        btn.isHidden = !(EqualThen.share.appStatus == PhaseOfTheMoonPropertyProtocol.special.rawValue && EqualThen.share.loginUserMode.sex == RunReplaceableCollection.female.rawValue)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var rankBtn: UIButton = {
    private lazy var rankBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.eponymUp(name: "btn_popular_ranking_nor"), for: .normal)
        btn.setImage(UIImage.eponymUp(name: (String(str_viewName.prefix(5)) + "opular" + String(str_cellCloseName.suffix(6)) + String(str_equalLikeData.prefix(6)))), for: .normal)
        //: btn.addTarget(self, action: #selector(rankButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(notFill), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - 开播提醒弹窗定时器

//: extension TalkingSocialViewController {
extension IndexViewController {
    /// 跳转随机匹配
    //: private func pushIsClubVideo() {
    private func club() {
        //: if EqualThen.share.loginUserMode.jumpType == 1 && EqualThen.share.loginUserMode.sex == Gender.male.rawValue && EqualThen.share.appStatus == AppSkinStatus.normal.rawValue {
        if EqualThen.share.loginUserMode.jumpType == 1, EqualThen.share.loginUserMode.sex == RunReplaceableCollection.male.rawValue, EqualThen.share.appStatus == PhaseOfTheMoonPropertyProtocol.normal.rawValue {
            //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.5) {
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.5) {
                //: EditTextThen.share.func__pushToRandomVideoVC(isBeginRand: false)
                EditTextThen.share.equalLine(isBeginRand: false)
            }
        }
    }

    /// 排行榜按钮点击事件
    //: @objc private func rankButtonClick() {
    @objc private func notFill() {
        //: let rankVC = SocialRankTabVC()
        let rankVC = ModelViewController()
        //: self.navigationController?.pushViewController(rankVC, animated: true)
        self.navigationController?.pushViewController(rankVC, animated: true)
        //: uploadRecord.uploadRecordEvent(eventID: ClickRankIngButton)
        kLet_textData.historicalPaper(eventID: kLet_deviceNoValue)
    }

    /// "mf/index/getConfig"请求成功后创建定时器
    //: @objc func setliveTipsTimer() {
    @objc func nearLine() {
        //: if EqualThen.share.appUserConfigMode.liveDialogInterval > 0 &&
        if EqualThen.share.appUserConfigMode.liveDialogInterval > 0,
           //: EqualThen.share.loginUserMode.sex == Gender.female.rawValue &&
           EqualThen.share.loginUserMode.sex == RunReplaceableCollection.female.rawValue,
           //: EqualThen.share.appStatus != AppSkinStatus.special.rawValue {
           EqualThen.share.appStatus != PhaseOfTheMoonPropertyProtocol.special.rawValue
        {
            //: initLiveTipsTimer()
            instanceTimer()
            //: liveTipsTimer?.fireDate = Date.init(timeIntervalSinceNow: TimeInterval(EqualThen.share.appUserConfigMode.liveDialogInterval))
            liveTipsTimer?.fireDate = Date(timeIntervalSinceNow: TimeInterval(EqualThen.share.appUserConfigMode.liveDialogInterval))
        }
    }

    /// 展示开闭提醒弹窗
    //: @objc func setLiveTipsPopView() {
    @objc func wire() {
        // 模态出来的webView不展示直播提醒弹窗
        //: if let currentVC = self.currentViewController() {
        if let currentVC = self.infoController() {
            //: if currentVC.isKind(of: TalkingWebViewController.self) &&
            if currentVC.isKind(of: IgnitionKeyViewController.self),
               //: (currentVC as! TalkingWebViewController).isModal == true {
               (currentVC as! IgnitionKeyViewController).isModal == true
            {
                //: return
                return
            }
        }

        //: if EqualThen.share.appUserConfigMode.enableLive &&
        if EqualThen.share.appUserConfigMode.enableLive,
           //: !TalkingLiveManager.shared().isLive &&
           !UserPushListener.sexApp().isLive,
           //: !TalkingSocketManager.shared.isTalking &&
           !DeviceSocketDelegate.shared.isTalking,
           //: !TalkingSocketManager.shared.isCalling {
           !DeviceSocketDelegate.shared.isCalling
        {
            //: TalkingPopupWindowManager.shared.startLivePopUpWindow()
            PlayerWindowManager.shared.upHouse()
        }
    }

    /// 初始化定时器
    //: func initLiveTipsTimer() {
    func instanceTimer() {
        //: let timeInterval = TimeInterval(EqualThen.share.appUserConfigMode.liveDialogInterval)
        let timeInterval = TimeInterval(EqualThen.share.appUserConfigMode.liveDialogInterval)
        //: liveTipsTimer = Timer.scheduledTimer(timeInterval: timeInterval, target: self, selector: #selector(setLiveTipsPopView), userInfo: nil, repeats: true)
        liveTipsTimer = Timer.scheduledTimer(timeInterval: timeInterval, target: self, selector: #selector(wire), userInfo: nil, repeats: true)
        //: RunLoop.current.add(liveTipsTimer!, forMode: RunLoop.Mode.common)
        RunLoop.current.add(liveTipsTimer!, forMode: RunLoop.Mode.common)
    }

    /// 停止定时器
    //: @objc func stop_liveTipsTimer() {
    @objc func tipsRow() {
        //: if self.liveTipsTimer != nil {
        if self.liveTipsTimer != nil {
            //: self.liveTipsTimer?.invalidate()
            self.liveTipsTimer?.invalidate()
            //: self.liveTipsTimer?.fire()
            self.liveTipsTimer?.fire()
            //: self.liveTipsTimer = nil
            self.liveTipsTimer = nil
        }
    }

    /// 开启直播按钮点击事件
    //: @objc func liveBtnClick() {
    @objc func pure() {
        //: NotificationCenter.default.post(name: LIVE_NEED_OPEN_NOTIFICATION, object: nil)
        NotificationCenter.default.post(name: kLet_messageValue, object: nil)
    }
}

// MARK: - Public Event

//: extension TalkingSocialViewController {
extension IndexViewController {
    /// 检测巨星计划弹窗是否需要弹出
    //: private func func__checkStarPlanNeedShow() {
    private func presentShow() {
        //: guard EqualThen.share.showWindow == true else { return }
        guard EqualThen.share.showWindow == true else { return }
        //: EqualThen.share.showWindow = false
        EqualThen.share.showWindow = false

        // 加入巨星计划弹窗
        //: TalkingAlertShow.alert(title: nil,
        MotilityThen.viewConfig(title: nil,
                                    //: message: "Congratulation on your chance to join the Star Plan !",
                                    message: String(bytes: str_topValue.map{glassesVideo(effect: $0)}, encoding: .utf8)!,
                                    //: leftBtnTitle: "No, thanks",
                                    leftBtnTitle: (String(str_eventValue.prefix(4)) + "thank" + str_itemName.replacingOccurrences(of: "sex", with: "s")),
                                    //: rightBtnTitle: "Find out more") {
                                    rightBtnTitle: (String(str_roomValue)))
        {
            //: TalkingAlertShow.hideAlert()
            MotilityThen.afterward()
            // 统计点击首页巨星邀请弹窗中“no,thanks”的次数
            //: TalkingAdjustManager.share.addEvent(key: "clickStarProjectpop-upsCancel")
            AdministratorThen.share.duringAdd(key: (String(str_miniData) + str_showReloadContent.replacingOccurrences(of: "mode", with: "o") + "-upsC" + str_upDefineElseTitle.replacingOccurrences(of: "to", with: "e")))

            //: } rightBlock: {
        } rightBlock: {
            //: TalkingAlertShow.hideAlert()
            MotilityThen.afterward()
            // 跳转巨星计划页
            //: EditTextThen.share.func__pushToWebVC(webViewType: .StarPlanIndex)
            EditTextThen.share.hailType(webViewType: .StarPlanIndex)

            // 统计点击首页巨星邀请弹窗中“Find out more”的次数
            //: TalkingAdjustManager.share.addEvent(key: "clickStarProjectpop-upsFindoutmore")
            AdministratorThen.share.duringAdd(key: String(bytes: str_iconValue.map{tableConnection(it: $0)}, encoding: .utf8)!)
        }
    }

    /// 检查系统通知是否开启
    //: private func func__turnOnSystemNotification() {
    private func metronymicActionNotification() {
        // 有随机视频，不弹出开启推送弹窗
        //: if EqualThen.share.loginUserMode.jumpType == 1 &&
        if EqualThen.share.loginUserMode.jumpType == 1,
           //: EqualThen.share.loginUserMode.sex == Gender.male.rawValue &&
           EqualThen.share.loginUserMode.sex == RunReplaceableCollection.male.rawValue,
           //: EqualThen.share.appStatus == AppSkinStatus.normal.rawValue {
           EqualThen.share.appStatus == PhaseOfTheMoonPropertyProtocol.normal.rawValue
        {
            //: return
            return
        }

        //: let isShow = Defaults.bool(forKey: TalkingHomeTabTurnOnNotificationsKey)
        let isShow = kLet_turnPartyValue.bool(forKey: kLet_positionPopData)
        //: guard isShow == false else { return }
        guard isShow == false else { return }

        //: TalkingPermissionTool.checkPushNotification { isEnable in
        RubricThen.sectionOn { isEnable in
            //: guard isEnable == false else { return }
            guard isEnable == false else { return }
            //: DispatchQueue.main.sync {
            DispatchQueue.main.sync {
                //: Defaults.set(true, forKey: TalkingHomeTabTurnOnNotificationsKey)
                kLet_turnPartyValue.set(true, forKey: kLet_positionPopData)
                //: TalkingAlertShow.alert(title: nil,
                MotilityThen.viewConfig(title: nil,
                                            //: message: "Allow %@ to send you notifications?".localizedArguments(AppName),
                                            message: String(bytes: str_modeVideoData.map{mLet(transform: $0)}, encoding: .utf8)!.localizedArguments(kLet_managerData),
                                            //: leftBtnTitle: "Cancel".localized,
                                            leftBtnTitle: (String(str_streamValue.suffix(6))).localized,
                                            //: rightBtnTitle: "Settings".localized) {
                                            rightBtnTitle: (String(str_mediumTitle.suffix(8))).localized)
                {
                    //: TalkingAlertShow.hideAlert()
                    MotilityThen.afterward()
                    //: return
                    //: } rightBlock: {
                } rightBlock: {
                    //: if let settingsUrl = URL(string: UIApplication.openSettingsURLString) {
                    if let settingsUrl = URL(string: UIApplication.openSettingsURLString) {
                        //: UIApplication.shared.open(settingsUrl)
                        UIApplication.shared.open(settingsUrl)
                    }
                }
            }
        }
    }

    /// 搜索按钮点击事件
    //: @objc private func searchButtonClick() {
    @objc private func map() {
        //: let searchVC = TalkingSearchTabViewController()
        let searchVC = GrantSendViewDelegate()
        //: self.navigationController?.pushViewController(searchVC, animated: true)
        self.navigationController?.pushViewController(searchVC, animated: true)
        //: uploadRecord.uploadRecordEvent(eventID: ClickSearchButton)
        kLet_textData.historicalPaper(eventID: kLet_minTitle)
    }

    /// 切换到party
    //: func switchParty() {
    func containerParty() {
        //: categoryView.defaultSelectedIndex = 0
        categoryView.defaultSelectedIndex = 0
        //: categoryView.reloadData()
        categoryView.reloadData()
        //: pagerView.defaultSelectedIndex = 0
        pagerView.defaultSelectedIndex = 0
        //: pagerView.reloadData()
        pagerView.reloadData()
    }
}

// MARK: - NotificationCenter

//: extension TalkingSocialViewController {
extension IndexViewController {
    /// 添加通知
    //: private func addNotification() {
    private func addToInput() {
        // 礼物首页飘屏
        //: GiftFloatViewManager.shared.addNotifications()
        ZapReactiveCompatible.shared.addUpChoice()

        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(setliveTipsTimer),
                                               selector: #selector(nearLine),
                                               //: name: UPDATE_INDEX_GETCONFIG_NOTIFICATION,
                                               name: kLet_turnName,
                                               //: object: nil)
                                               object: nil)

        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(stop_liveTipsTimer),
                                               selector: #selector(tipsRow),
                                               //: name: DID_LOGIN_OUT_SUCCESS_NOTIFICATION,
                                               name: kLet_useName,
                                               //: object: nil)
                                               object: nil)
    }
}

// MARK: - JXPagerViewDelegate

//: extension TalkingSocialViewController: JXSegmentedViewDelegate {
extension IndexViewController: JXSegmentedViewDelegate {
    // 点击item或滑动时【点击标题和滑动视图都会调用】
    //: func segmentedView(_ segmentedView: JXSegmentedView, didSelectedItemAt index: Int) {
    func segmentedView(_: JXSegmentedView, didSelectedItemAt index: Int) {
        //: if seleteIndex == index {
        if seleteIndex == index {
            //: return
            return
        }
        //: seleteIndex = index
        seleteIndex = index
        //: if index == 0 {
        if index == 0 {
            //: uploadRecord.uploadRecordEvent(eventID:"\(click_HomePartyTab)_\(EqualThen.share.loginUserMode.sex == Gender.male.rawValue ? "male":"female")")
            kLet_textData.historicalPaper(eventID: "\(kLet_captureValue)_\(EqualThen.share.loginUserMode.sex == RunReplaceableCollection.male.rawValue ? String(bytes: str_blockTitle.map{toRow(status: $0)}, encoding: .utf8)! : (str_lastData.replacingOccurrences(of: "all", with: "f") + str_colorRowData.replacingOccurrences(of: "s", with: "e")))")
            //: }else if index == 1 {
        } else if index == 1 {
            //: let popularVC = dataVC[index] as? SocialPopularViewController
            let popularVC = dataVC[index] as? DeviceSocialViewController
            //: popularVC?.showSettingsAlertView()
            popularVC?.choppingBlock() // 展示定位设置弹窗
            //: uploadRecord.uploadRecordEvent(eventID: DisplayNearbyListNoP)
            kLet_textData.historicalPaper(eventID: kLet_frameKeyName)
            //: } else if index == 2 {
        } else if index == 2 {
            //: uploadRecord.uploadRecordEvent(eventID: DisplayNewListNoP)
            kLet_textData.historicalPaper(eventID: kLet_intervalValue)
        }
    }

    // 添加该方法是为了防止首次进入应用，直接点击nearby无法初始化页面的情况 【该方法只会在点击标题时调用】
    //: func segmentedView(_ segmentedView: JXSegmentedView, didClickSelectedItemAt index: Int) {
    func segmentedView(_: JXSegmentedView, didClickSelectedItemAt index: Int) {
        // 初始点击item时，创建vc

        //: if index == 1 && !isNearbyShow {
        if index == 1 && !isNearbyShow {
            //: isNearbyShow = true
            isNearbyShow = true
        }

        //: pagerView.listContainerView.defaultSelectedIndex = index
        pagerView.listContainerView.defaultSelectedIndex = index
        //: pagerView.listContainerView.reloadData()
        pagerView.listContainerView.reloadData()
    }

    //: func segmentedView(_ segmentedView: JXSegmentedView, didScrollSelectedItemAt index: Int) {
    func segmentedView(_: JXSegmentedView, didScrollSelectedItemAt _: Int) {}
}

// MARK: - JXPagerViewDelegate

//: extension TalkingSocialViewController: JXPagingViewDelegate {
extension IndexViewController: JXPagingViewDelegate {
    //: func pagingView(_ pagingView: JXPagingView, initListAtIndex index: Int) -> JXPagingViewListViewDelegate {
    func pagingView(_: JXPagingView, initListAtIndex index: Int) -> JXPagingViewListViewDelegate {
        //: var type = index
        var type = index
        //: if type < 0 { type = 0 }
        if type < 0 { type = 0 }
        //: if index == 1 {
        if index == 1 {
            //: isNearbyShow = true
            isNearbyShow = true
        }

        //: let popularVC = dataVC[type]
        let popularVC = dataVC[type]
        //: return popularVC as! any JXPagingViewListViewDelegate as JXPagingViewListViewDelegate
        return popularVC as! any JXPagingViewListViewDelegate as JXPagingViewListViewDelegate
    }

    //: func tableHeaderViewHeight(in pagingView: JXPagingView) -> Int {
    func tableHeaderViewHeight(in _: JXPagingView) -> Int {
        //: return 0
        return 0
    }

    //: func tableHeaderView(in pagingView: JXPagingView) -> UIView {
    func tableHeaderView(in _: JXPagingView) -> UIView {
        //: return UIView()
        return UIView()
    }

    //: func heightForPinSectionHeader(in pagingView: JXPagingView) -> Int {
    func heightForPinSectionHeader(in _: JXPagingView) -> Int {
        //: return Int(categoryView.frame.height)
        return Int(categoryView.frame.height)
    }

    //: func viewForPinSectionHeader(in pagingView: JXPagingView) -> UIView {
    func viewForPinSectionHeader(in _: JXPagingView) -> UIView {
        //: return categoryView
        return categoryView
    }

    //: func numberOfLists(in pagingView: JXPagingView) -> Int {
    func numberOfLists(in _: JXPagingView) -> Int {
        //: return titleArray.count
        return titleArray.count
    }
}

// MARK: - Layout

//: extension TalkingSocialViewController {
extension IndexViewController {
    /// 添加视图
    //: private func setupSubviews() {
    private func subviewsView() {
        // 导航底部渐变背景
        //: self.view.addSubview(pagerView)
        self.view.addSubview(pagerView)
        //: categoryView.addSubview(searchBtn)
        categoryView.addSubview(searchBtn)
        //: categoryView.addSubview(rankBtn)
        categoryView.addSubview(rankBtn)
        //: self.view.addSubview(bottomImgView)
        self.view.addSubview(bottomImgView)
        //: self.view.addSubview(liveBtn)
        self.view.addSubview(liveBtn)
        //: self.view.bringSubviewToFront(liveBtn)
        self.view.bringSubviewToFront(liveBtn)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func circumferenceConstraint() {
        //: searchBtn.snp.makeConstraints { make in
        searchBtn.snp.makeConstraints { make in
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.trailing.equalTo(-9)
            make.trailing.equalTo(-9)
            //: make.size.equalTo(30)
            make.size.equalTo(30)
        }
        //: rankBtn.snp.makeConstraints { make in
        rankBtn.snp.makeConstraints { make in
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.trailing.equalTo(searchBtn.snp.leading).offset(-10)
            make.trailing.equalTo(searchBtn.snp.leading).offset(-10)
            //: make.size.equalTo(30)
            make.size.equalTo(30)
        }

        //: bottomImgView.snp.makeConstraints { make in
        bottomImgView.snp.makeConstraints { make in
            //: make.leading.top.width.equalToSuperview()
            make.leading.top.width.equalToSuperview()
            //: make.height.equalTo(145+StatusBarHeight)
            make.height.equalTo(145 + kLet_timeSenseValue)
        }
        //: liveBtn.snp.makeConstraints { make in
        liveBtn.snp.makeConstraints { make in
            //: make.bottom.width.equalTo(-122)
            make.bottom.width.equalTo(-122)
            //: make.trailing.equalTo(-25)
            make.trailing.equalTo(-25)
            //: make.size.equalTo(56)
            make.size.equalTo(56)
        }
    }
}
