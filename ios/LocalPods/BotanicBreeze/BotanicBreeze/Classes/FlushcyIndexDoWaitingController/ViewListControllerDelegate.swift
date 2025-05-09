
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_transformData:[UInt8] = [0xfb,0xfc,0xfb,0xe6,0xba,0xf1,0xfd,0xf6,0xf7,0xe0,0xa8,0xbb,0xb2,0xfa,0xf3,0xe1,0xb2,0xfc,0xfd,0xe6,0xb2,0xf0,0xf7,0xf7,0xfc,0xb2,0xfb,0xff,0xe2,0xfe,0xf7,0xff,0xf7,0xfc,0xe6,0xf7,0xf6]

/*: "#EEEEEE" :*/
fileprivate let str_constraintData:String = "note margin view#EEEEEE"

/*: "tabBar" :*/
fileprivate let str_toName:String = "tabBaview view mode"
fileprivate let str_viewValue:[Character] = ["r"]

/*: "user" :*/
fileprivate let str_rawName:String = "usizer"

/*: "icon" :*/
fileprivate let str_indexPathData:String = "icnormal"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ViewListControllerDelegate.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/1/20.
//

//: import UIKit
import UIKit

//: class TalkingTabBarViewController: UITabBarController, UITabBarControllerDelegate {
class ViewListControllerDelegate: UITabBarController, UITabBarControllerDelegate {
    //: var tabBarVCType: TarBarControllerViewType?
    var tabBarVCType: ViewType?
    //: var tabBarView = TalkingTabBar()
    var tabBarView = BulgeThen()
    //: var lastEventTime = 0.0
    var lastEventTime = 0.0
    //: init(tabBarType: TarBarControllerViewType) {
    init(tabBarType: ViewType) {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
        //: self.delegate = self
        self.delegate = self
        //: self.tabBarVCType = tabBarType
        self.tabBarVCType = tabBarType
        //: if tabBarType == .Taking {
        if tabBarType == .Taking {
            //: setupTabBar()
            attentionStart()
            //: ProgressHUD.show()
            ModelReactiveCompatible.fromTarget()
            //: AppManagerRequest.func__requestUserInfo { succeed, result, errorModel in
            GiftManagerRequest.makeEnable { succeed, _, _ in
                //: ProgressHUD.dismiss()
                ModelReactiveCompatible.dataConverterCan()
                //: TalkingConversationListener.shared.func__addDelegate(self)
                TalkingConversationListener.shared.handle(self)
                //: let tarItemTypes = self.tabBarConentTypes()
                let tarItemTypes = self.dosage()
                //: self.tabBarView.setupItemsWithArr(itemTypes: tarItemTypes as! Array<TabBarItemType>)
                self.tabBarView.engraft(itemTypes: tarItemTypes as! [DeepEquatable])
                //: self.func__setupControllersWith(itemTypes: tarItemTypes)
                self.quickTypes(itemTypes: tarItemTypes)
                //: if EqualThen.share.loginUserMode.sex == Gender.male.rawValue && EqualThen.share.appStatus == AppSkinStatus.normal.rawValue {
                if EqualThen.share.loginUserMode.sex == RunReplaceableCollection.male.rawValue && EqualThen.share.appStatus == PhaseOfTheMoonPropertyProtocol.normal.rawValue {
                    //: self.selectTabbar(type: 0)
                    self.playType(type: 0)
                    //: self.lastEventTime = Date().timeIntervalSince1970
                    self.lastEventTime = Date().timeIntervalSince1970
                }
                //: self.func__configViewDidLoad()
                self.infoLoad()

                //: if succeed && EqualThen.share.loginUserMode.remindBindEmail == true {
                if succeed && EqualThen.share.loginUserMode.remindBindEmail == true { // 需要绑定邮箱
                    //: DispatchQueue.main.asyncAfter(deadline: .now()+0.5) {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                        //: EditTextThen.share.func__pushToLockUserEmailVC(isShowBack: false)
                        EditTextThen.share.actionTo(isShowBack: false)
                    }
                }
            }
            //: } else {
        } else {
            //: func__setupControllersWith(itemTypes: self.tabBarConentTypes())
            quickTypes(itemTypes: self.dosage())
        }
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_transformData.map{$0^146}, encoding: .utf8)!)
    }

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        /// H5刷新index/getConfig配置信息接口
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(func__getLoginUserConfig),
                                               selector: #selector(addPosition),
                                               //: name: REFRESH_INDEX_GETCONFIG_NOTIFICATION,
                                               name: kLet_senseTitle,
                                               //: object: nil)
                                               object: nil)

        /// 直播状态变更通知
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(switchLiveTabBarImage),
                                               selector: #selector(queryVoice),
                                               //: name: LIVE_STATUS_CHANGE_NOTIFICATION,
                                               name: kLet_screenText,
                                               //: object: nil)
                                               object: nil)

        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(openLive),
                                               selector: #selector(noComponent),
                                               //: name: LIVE_NEED_OPEN_NOTIFICATION,
                                               name: kLet_messageValue,
                                               //: object: nil)
                                               object: nil)

        /// 语聊房状态变更通知
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(switchLiveTabBarImage),
                                               selector: #selector(queryVoice),
                                               //: name: PARTY_STATUS_CHANGE_NOTIFICATION,
                                               name: kLet_messageData,
                                               //: object: nil)
                                               object: nil)

        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(switchTabbarHomeParty),
                                               selector: #selector(constraintGift),
                                               //: name: SWITCH_TABBAR_HOME_PARTY_NOTIFICATION,
                                               name: kLet_videoAgeHeightData,
                                               //: object: nil)
                                               object: nil)
    }

    //: override func viewDidLayoutSubviews() {
    override func viewDidLayoutSubviews() {
        //: super.viewDidLayoutSubviews()
        super.viewDidLayoutSubviews()
        //: tabBar.frame = CGRect(origin: CGPoint(x: 0, y: ScreenHeight-TabBarViewHeight), size: CGSize(width: ScreenWidth, height: TabBarViewHeight))
        tabBar.frame = CGRect(origin: CGPoint(x: 0, y: kLet_clickData - kLet_viewDepthText), size: CGSize(width: kLet_cameraValue, height: kLet_viewDepthText))
    }

    /// 初始化tabbar
    //: func setupTabBar() {
    func attentionStart() {
        //: tabBarView.frame = CGRect(origin: CGPoint(x: 0, y: ScreenHeight-TabBarViewHeight), size: CGSize(width: ScreenWidth, height: TabBarViewHeight))
        tabBarView.frame = CGRect(origin: CGPoint(x: 0, y: kLet_clickData - kLet_viewDepthText), size: CGSize(width: kLet_cameraValue, height: kLet_viewDepthText))
        //: tabBarView.backgroundColor = .white
        tabBarView.backgroundColor = .white
        //: let backgroundImage = UIImage.imageFillColor(color: .white, size: CGSize(width: ScreenWidth, height: TabBarViewHeight))
        let backgroundImage = UIImage.impressionDataSize(color: .white, size: CGSize(width: kLet_cameraValue, height: kLet_viewDepthText))
        //: tabBarView.backgroundImage = backgroundImage
        tabBarView.backgroundImage = backgroundImage

        //: let shadowImage = UIImage.imageFillColor(color: UIColor(hex: "#EEEEEE")!, size: CGSize(width: ScreenWidth, height: 0.5))
        let shadowImage = UIImage.impressionDataSize(color: UIColor(hex: (String(str_constraintData.suffix(7))))!, size: CGSize(width: kLet_cameraValue, height: 0.5))
        //: tabBarView.shadowImage = shadowImage
        tabBarView.shadowImage = shadowImage

        //: if #available(iOS 13.0, *) {
        if #available(iOS 13.0, *) {
            //: let tabBarAppearance = UITabBarAppearance()
            let tabBarAppearance = UITabBarAppearance()
            //: tabBarAppearance.backgroundColor = .white
            tabBarAppearance.backgroundColor = .white
            //: tabBarAppearance.backgroundEffect = nil
            tabBarAppearance.backgroundEffect = nil
            //: tabBarAppearance.shadowColor = UIColor.separatorLineColor()
            tabBarAppearance.shadowColor = UIColor.showColor()
            //: tabBarView.standardAppearance = tabBarAppearance
            tabBarView.standardAppearance = tabBarAppearance
        }
        //: setValue(tabBarView, forKey: "tabBar")
        setValue(tabBarView, forKey: (String(str_toName.prefix(5)) + String(str_viewValue)))
    }

    //: func tabBarConentTypes() -> NSArray {
    func dosage() -> NSArray {
        //: if tabBarVCType == TarBarControllerViewType.Login {
        if tabBarVCType == ViewType.Login {
            //: return [TabBarItemType.Login]
            return [DeepEquatable.Login]
            //: } else {
        } else {
//            if EqualThen.share.appStatus == PhaseOfTheMoonPropertyProtocol.special.rawValue {
//                return [DeepEquatable.Social,
//                        DeepEquatable.Moment,
//                        DeepEquatable.Message,
//                        DeepEquatable.Account]
//            } else {
//                if EqualThen.share.loginUserMode.sex == RunReplaceableCollection.female.rawValue { // 女性
//                    return [DeepEquatable.Social,
//                            DeepEquatable.Moment,
//                            DeepEquatable.Live,
//                            DeepEquatable.Message,
//                            DeepEquatable.Account]
//                } else { // 男性
//                    return [DeepEquatable.Social,
//                            DeepEquatable.Moment,
//                            DeepEquatable.Randow,
//                            DeepEquatable.Message,
//                            DeepEquatable.Account]
//                }
//            }
            //: return [TabBarItemType.Social,
            return [DeepEquatable.Social,
                    //: TabBarItemType.Moment,
                    DeepEquatable.Moment,
                    //: TabBarItemType.Message,
                    DeepEquatable.Message,
                    //: TabBarItemType.Account]
                    DeepEquatable.Account]
        }
    }

    //: func func__setupControllersWith(itemTypes: NSArray) {
    func quickTypes(itemTypes: NSArray) {
        //: let tmp = NSMutableArray()
        let tmp = NSMutableArray()
        //: for itemType in itemTypes {
        for itemType in itemTypes {
            //: let VC = rootViewControllerFor(itemType: itemType as! TabBarItemType)
            let VC = thenSex(itemType: itemType as! DeepEquatable)
            //: let navVC = TalkingNavigationController(rootViewController: VC)
            let navVC = LengthArrayControllerDelegate(rootViewController: VC)
            //: navVC.tabBarType = (itemType as! TabBarItemType)
            navVC.tabBarType = (itemType as! DeepEquatable)
            //: tmp.add(navVC)
            tmp.add(navVC)
        }
        //: setViewControllers(tmp as? [UIViewController], animated: true)
        setViewControllers(tmp as? [UIViewController], animated: true)
    }

    //: func rootViewControllerFor(itemType: TabBarItemType) -> UIViewController {
    func thenSex(itemType: DeepEquatable) -> UIViewController {
        //: let ret: UIViewController
        let ret: UIViewController
        //: switch itemType {
        switch itemType {
        //: case .Social:
        case .Social:
//            ret = IndexViewController()
            //: ret = TalkingClubVC()
            ret = EqualModelViewDelegate()
        //: case .Moment:
        case .Moment:
//            ret = BottomViewController()
            //: ret = TalkingLikeVC()
            ret = AddDataSource()

        //: case .FreeMoment:
        case .FreeMoment:
            //: ret = UIViewController()
            ret = UIViewController()
            /// 使用view，会导致VC的viewDidLoad调用，避免别的控制器没显示时，就调用viewDidLoad
            /// 虚拟的VC根据tag，正常的VC可以根据class判断

        //: case .Live:
        case .Live:
            //: ret = UIViewController()
            ret = UIViewController()

        //: case .Message:
        case .Message:
            //: ret = TalkingMessageViewController()
            ret = EventEditViewController()

        //: case .Account:
        case .Account:
            //: ret = TalkingMaleMeController()
            ret = ViewCustomDataSource()

        //: case .Login:
        case .Login:
            //: ret = TalkingLoginMainViewController()
            ret = EqualRecognizerDelegate()
            //: ret.hidesBottomBarWhenPushed = true
            ret.hidesBottomBarWhenPushed = true

        //: case .Randow:
        case .Randow:
            //: ret = TalkingMaleStaticRandomVideoVC()
            ret = NameViewController()

        //: case .meet:
        case .meet:
            //: ret = UIViewController()
            ret = UIViewController()
        }

        //: ret.view.tag = itemType.rawValue
        ret.view.tag = itemType.rawValue
        //: return ret
        return ret
    }

    //: override var selectedViewController: UIViewController? {
    override var selectedViewController: UIViewController? {
        //: willSet {
        willSet {
            //: let nav = newValue as! TalkingNavigationController
            let nav = newValue as! LengthArrayControllerDelegate
            //: tabBarView.setSelectedTabItem(itemType: nav.tabBarType!)
            tabBarView.vantage(itemType: nav.tabBarType!)
        }
    }
}

// MARK: - Event

//: extension TalkingTabBarViewController {
extension ViewListControllerDelegate {
    /// 切换到tab-party
    //: @objc func switchTabbarHomeParty() {
    @objc func constraintGift() {
        //: getNavigationController()?.popToRootViewController(animated: false)
        getApp()?.popToRootViewController(animated: false)
        //: selectTabbar(type: 0)
        playType(type: 0)
        //: if let vc = currentViewController(), vc is TalkingSocialViewController {
        if let vc = infoController(), vc is IndexViewController {
            //: (vc as! TalkingSocialViewController).switchParty()
            (vc as! IndexViewController).containerParty()
        }
    }

    /// tabbar直播按钮点击事件
    //: @objc private func liveButtonClick() {
    @objc private func muscleQuantityo() {
        //: guard TalkingVoiceRoomManager.shared().isParty == false else {
        guard ViewRoomManager.astatine().isParty == false else { // 语聊房
            //: if String(TalkingVoiceRoomManager.shared().partyModel.streamerInfo.uid) == EqualThen.share.loginUid {
            if String(ViewRoomManager.astatine().partyModel.streamerInfo.uid) == EqualThen.share.loginUid {
                //: TalkingVoiceRoomManager.shared().voiceRoom_goback()
                ViewRoomManager.astatine().titleEqual()
                //: } else {
            } else {
                //: func__showStatusBarErrorMsg(showMsg: kMessage_party_limit)
                oversight(showMsg: kLet_succeedName)
            }
            //: return
            return
        }
        //: guard TalkingLiveManager.shared().isLive == false else {
        guard UserPushListener.sexApp().isLive == false else { // 直播间
            //: func__showStatusBarErrorMsg(showMsg: kMessage_live_limit)
            oversight(showMsg: kLet_domainData)
            //: return
            return
        }
        //: let tabView = TalkingTabLiveView()
        let tabView = InhabitReactiveCompatible()
        //: tabView.show()
        tabView.equalShow()
    }

    //: func func__configViewDidLoad() {
    func infoLoad() {
        //: TalkingAPNSManager.share.func__listenAPNSInit()
        UnrestrictedReactiveCompatible.share.halfError()
        //: AppManagerRequest.func__reportDeviceID()
        GiftManagerRequest.dismissId()
        //: func__getLoginUserConfig(true)
        addPosition(true)
    }

    //: func selectTabbar(type: Int) {
    func playType(type: Int) {
        //: guard type < viewControllers?.count ?? 0 else { return }
        guard type < viewControllers?.count ?? 0 else { return }
        //: let vc = viewControllers?[type]
        let vc = viewControllers?[type]
        //: selectedIndex = type
        selectedIndex = type
        //: selectedViewController = vc
        selectedViewController = vc
    }

    /// 切换直播tabBar图标
    //: @objc private func switchLiveTabBarImage() {
    @objc private func queryVoice() {
        //: tabBarView.switchLiveTabBarImage()
        tabBarView.channel()
    }

    /// 唤起直播功能
    //: @objc private func openLive() {
    @objc private func noComponent() {
        //: guard TalkingPermissionTool.isLiveOrPartyActive() == false else { return }
        guard RubricThen.socialistPartyActive() == false else { return }

        // 展示说明页（如果展示过，则直接开播）
        //: let isShow = Defaults.bool(forKey: TalkingLiveTabExplainIsShow)
        let isShow = kLet_turnPartyValue.bool(forKey: kLet_videoSystemValue)
        //: guard isShow != true else {
        guard isShow != true else {
            //: TalkingLiveManager.shared().checkLiveAuthAndTurnOn()
            UserPushListener.sexApp().when()
            //: return
            return
        }
        //: Defaults.set(true, forKey: TalkingLiveTabExplainIsShow)
        kLet_turnPartyValue.set(true, forKey: kLet_videoSystemValue)
        //: let explainView = TalkingLiveExplainViewController()
        let explainView = DeviceAddReactiveCompatible()
        //: explainView.modalPresentationStyle = .fullScreen
        explainView.modalPresentationStyle = .fullScreen
        //: present(explainView, animated: true)
        present(explainView, animated: true)
    }

    /// 切换RandowtabBar图标
    //: @objc private func switchRandowTabBarImage(isHidde: Bool) {
    @objc private func viewDismissOf(isHidde: Bool) {
        //: tabBarView.switchRandowTabBarImage(isHidde: isHidde)
        tabBarView.iconHidde(isHidde: isHidde)
    }

    /// 连接socket
    //: private func linkWebCocket() {
    private func cellOf() {
        // 连接socket【放在这里是为了保证app/getConfig调用成功拿到ws信息】
        //: TalkingSocketManager.shared.updateWebSocket()
        DeviceSocketDelegate.shared.modelSize()
    }

    /// 切换tab时判断是否需要展示直播开播提醒弹窗
    /// - Returns: 是否展示结果
    //: @discardableResult
    @discardableResult
    //: private func needShowLiveAlertView(type: TabBarItemType = .Social) -> Bool {
    private func commentType(type: DeepEquatable = .Social) -> Bool {
        //: guard EqualThen.share.appStatus == AppSkinStatus.normal.rawValue else { return false }
        guard EqualThen.share.appStatus == PhaseOfTheMoonPropertyProtocol.normal.rawValue else { return false }
        //: guard EqualThen.share.loginUserMode.sex == Gender.female.rawValue else { return false }
        guard EqualThen.share.loginUserMode.sex == RunReplaceableCollection.female.rawValue else { return false }
        //: guard EqualThen.share.appUserConfigMode.userCountryType == 1 else { return false }
        guard EqualThen.share.appUserConfigMode.userCountryType == 1 else { return false }
        //: guard EqualThen.share.appUserConfigMode.popLiveTabArr.count > 0 else { return false }
        guard EqualThen.share.appUserConfigMode.popLiveTabArr.count > 0 else { return false }
        //: guard !TalkingVoiceRoomManager.shared().isParty,
        guard !ViewRoomManager.astatine().isParty,
              //: !TalkingLiveManager.shared().isLive,
              !UserPushListener.sexApp().isLive,
              //: !TalkingSocketManager.shared.isTalking,
              !DeviceSocketDelegate.shared.isTalking,
              //: !TalkingSocketManager.shared.isCalling else { return false }
              !DeviceSocketDelegate.shared.isCalling else { return false }
        //: let arr = EqualThen.share.appUserConfigMode.popLiveTabArr
        let arr = EqualThen.share.appUserConfigMode.popLiveTabArr
        //: let shouldShowPopup = (arr.contains("1") && type == .Social) ||
        let shouldShowPopup = (arr.contains("1") && type == .Social) ||
            //: (arr.contains("2") && type == .Moment) ||
            (arr.contains("2") && type == .Moment) ||
            //: (arr.contains("3") && type == .Message)
            (arr.contains("3") && type == .Message)
        //: if shouldShowPopup {
        if shouldShowPopup {
            //: TalkingPopupWindowManager.shared.startLivePopUpWindow()
            PlayerWindowManager.shared.upHouse()
            //: return true
            return true
        }

        //: return false
        return false
    }
}

// MARK: - 通知事件

//: extension TalkingTabBarViewController {
extension ViewListControllerDelegate {
    /// 更新index/getConfig接口
    /// - Parameter showLiveToast: 是否展示live提示（只有创建Tab时展示）
    //: @objc func func__getLoginUserConfig(_ showLiveToast: Bool = false) {
    @objc func addPosition(_ showLiveToast: Bool = false) {
        //: AppManagerRequest.func__requestUserConfig { succeed, _, _ in
        GiftManagerRequest.photoImage { succeed, _, _ in
            //: if showLiveToast {
            if showLiveToast {
                // 连接socket
                //: self.linkWebCocket()
                self.cellOf()
                //: if EqualThen.share.appStatus == AppSkinStatus.normal.rawValue {
                if EqualThen.share.appStatus == PhaseOfTheMoonPropertyProtocol.normal.rawValue {
                    //: self.tabBarView.showFemaleLiveTurnOnToast()
                    self.tabBarView.toast()
                    //: self.needShowLiveAlertView()
                    self.commentType()
                    //: self.func__selectClubTabbar()
                    self.wiffleBaseballLeague()
                }
                //: if succeed {
                if succeed {
                    //: self.func__reqPopUpWindow()
                    self.listSizeWindow()
                }
            }
        }
    }

    //: func func__selectClubTabbar() {
    func wiffleBaseballLeague() {
//        if EqualThen.share.loginUserMode.jumpType == 1 {
//            return
//        }
//        switchRandowTabBarImage(isHidde: true)
//        if EqualThen.share.loginUserMode.sex == RunReplaceableCollection.male.rawValue, EqualThen.share.appUserConfigMode.homeTab == "home" {
//            let type = 2
//            selectTabbar(type: type)
//            switchRandowTabBarImage(isHidde: false)
//        }
    }

    /// 弹窗
    //: func func__reqPopUpWindow() {
    func listSizeWindow() {
//        guard EqualThen.share.loginUserMode.updateInfo == true else {
//            return
//        }
//        let manager = PlayerWindowManager.shared
//        manager.setHomePopUpWindow()

        //: if EqualThen.share.loginUserMode.jumpType == 2, EqualThen.share.loginUserMode.sex == Gender.male.rawValue {
        if EqualThen.share.loginUserMode.jumpType == 2, EqualThen.share.loginUserMode.sex == RunReplaceableCollection.male.rawValue {
            /// 主动拨打视频弹窗
            //: TalkingVideoInitivCallManager.shared.setObserver()
            PlayerCallManager.shared.upObserver()
        }
    }
}

// MARK: - UITabBarControllerDelegate

//: extension TalkingTabBarViewController {
extension ViewListControllerDelegate {
    //: func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
    func tabBarController(_: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
        //: if EqualThen.share.appStatus == AppSkinStatus.special.rawValue {
        if EqualThen.share.appStatus == PhaseOfTheMoonPropertyProtocol.special.rawValue {
            //: return true
            return true
        }
        //: if let vc = viewController.children.first, let tabbarType = TabBarItemType(rawValue: vc.view.tag) {
        if let vc = viewController.children.first, let tabbarType = DeepEquatable(rawValue: vc.view.tag) {
            // 点击直播虚拟按钮，不切换tabbar
            //: if tabbarType == .Live {
            if tabbarType == .Live {
                //: liveButtonClick()
                muscleQuantityo()
                //: return false
                return false
            }
            //: switchRandowTabBarImage(isHidde: tabbarType != .Randow)
            viewDismissOf(isHidde: tabbarType != .Randow)
            // 展示直播开播提醒弹窗，不切换tabbar
            //: if needShowLiveAlertView(type: tabbarType) {
            if commentType(type: tabbarType) {
                //: return false
                return false
            }
        }

        //: return true
        return true
    }

    //: func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        //: if tabBarView.isHidden {
        if tabBarView.isHidden {
            //: tabBarView.isHidden = false
            tabBarView.isHidden = false
        }

        //: if EqualThen.share.appStatus == AppSkinStatus.special.rawValue {
        if EqualThen.share.appStatus == PhaseOfTheMoonPropertyProtocol.special.rawValue {
            //: return
            return
        }

        //: uploadTabSelete()
        receiveShow()

        // 消息列表切换到Intimate时，再次切回要默认选中all
        //: if tabBarView.currentTabType == TabBarItemType.Message.rawValue {
        if tabBarView.currentTabType == DeepEquatable.Message.rawValue {
            //: let vc = viewController.children.first as? TalkingMessageViewController
            let vc = viewController.children.first as? EventEditViewController
            //: if vc?.isNoChangeTop == false {
            if vc?.isNoChangeTop == false {
                //: vc?.isNoChangeTop = true
                vc?.isNoChangeTop = true
                //: vc?.setIsTopAll()
                vc?.everyLast()
            }
            //: } else if tabBarView.currentTabType == TabBarItemType.Moment.rawValue {
        } else if tabBarView.currentTabType == DeepEquatable.Moment.rawValue {
            //: let vc = viewController.children.first as? TalkingLikeVC
            let vc = viewController.children.first as? AddDataSource
            //: vc?.reloadAllVCData()
            vc?.infoData()
            //: } else if tabBarView.currentTabType == TabBarItemType.Social.rawValue {
        } else if tabBarView.currentTabType == DeepEquatable.Social.rawValue {
            //: let vc = viewController.children.first as? TalkingClubVC
            let vc = viewController.children.first as? EqualModelViewDelegate
            //: let currenTime  = Int(Date().timeIntervalSince1970)
            let currenTime = Int(Date().timeIntervalSince1970)
            //: if currenTime - Int(lastEventTime) > 10*60 {
            if currenTime - Int(lastEventTime) > 10 * 60 {
                //: lastEventTime = Date().timeIntervalSince1970
                lastEventTime = Date().timeIntervalSince1970
                //: vc?.removeAllData()
                vc?.theErase()
                //: vc?.beginRequestData()
                vc?.assemblageApplicationBegin()
            }

            //: } else {
        } else {
            //: if let vcArrs = tabBarController.viewControllers {
            if let vcArrs = tabBarController.viewControllers {
                //: for vc in vcArrs {
                for vc in vcArrs {
                    //: if let firstVc = vc.children.first {
                    if let firstVc = vc.children.first {
                        //: if firstVc.isKind(of: TalkingMessageViewController.self) {
                        if firstVc.isKind(of: EventEditViewController.self) {
                            //: (firstVc as! TalkingMessageViewController).isNoChangeTop = false
                            (firstVc as! EventEditViewController).isNoChangeTop = false
                            //: break
                            break
                        }
                    }
                }
            }
        }
    }

    //: func uploadTabSelete() {
    func receiveShow() {
        //: switch tabBarView.currentTabType {
        switch tabBarView.currentTabType {
        //: case TabBarItemType.Social.rawValue:
        case DeepEquatable.Social.rawValue:
            //: uploadRecord.uploadRecordEvent(eventID: ClickHomeTabButton)
            kLet_textData.historicalPaper(eventID: kLet_useText)
        //: case TabBarItemType.Randow.rawValue: break
        case DeepEquatable.Randow.rawValue: break
//            uploadRecord.uploadRecordEvent(eventID: ClickMatchTabButton)
        //: case TabBarItemType.Moment.rawValue:
        case DeepEquatable.Moment.rawValue:
            //: uploadRecord.uploadRecordEvent(eventID: ClickMomentTabButton)
            kLet_textData.historicalPaper(eventID: kLet_videoValue)
        //: case TabBarItemType.Message.rawValue:
        case DeepEquatable.Message.rawValue:
            //: uploadRecord.uploadRecordEvent(eventID: ClickMassagesTabButton)
            kLet_textData.historicalPaper(eventID: kLet_buttonTitle)
        //: case TabBarItemType.Account.rawValue:
        case DeepEquatable.Account.rawValue:
            //: uploadRecord.uploadRecordEvent(eventID: ClickMeTabButton)
            kLet_textData.historicalPaper(eventID: kLet_tabName)
        //: default:
        default:
            //: break
            break
        }
    }
}

// MARK: - ManagerDelegate

//: extension TalkingTabBarViewController: IMManagerDelegate {
extension ViewListControllerDelegate: ManagerDelegate {
    //: func onUnreadMsgCountChanged(count: Int) {
    func tally(count _: Int) {
        //: refreshUnreadIMMessageCount()
        willChangeCount()
    }

    //: func onRecvNewMessage(msg: V2TIMMessage) {
    func count(msg: V2TIMMessage) {
        //: let extra = String(data: msg.customElem.data, encoding: .utf8)
        let extra = String(data: msg.customElem.data, encoding: .utf8)
        //: let json = JSON(parseJSON: extra!)
        let json = JSON(parseJSON: extra!)
        //: let userInfo = json["user"]
        let userInfo = json[(str_rawName.replacingOccurrences(of: "size", with: "se"))]
        //: let headUrlStr = userInfo["icon"].stringValue
        let headUrlStr = userInfo[(str_indexPathData.replacingOccurrences(of: "normal", with: "on"))].stringValue
        //: if headUrlStr.isEmptyString {
        if headUrlStr.isEmptyString {
            //: return
            return
        }

        //: tabBarView.showNewMessageUser(headPic: headUrlStr)
        tabBarView.presentTopStereoscopicPhotograph(headPic: headUrlStr)
    }

    //: func refreshUnreadIMMessageCount() {
    func willChangeCount() {
        //: if TalkingConversationListener.shared.isConnection {
        if TalkingConversationListener.shared.isConnection {
            //: let unreadMsgCount = EqualThen.share.unreadMessageNum
            let unreadMsgCount = EqualThen.share.unreadMessageNum
            //: tabBarView.refreshBadgeLayoutWith(unread: unreadMsgCount, barType: .Message)
            tabBarView.tableStreetwise(unread: unreadMsgCount, barType: .Message)
        }
    }
}
