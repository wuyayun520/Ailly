
//: Declare String Begin

/*: "bg_message_top" :*/
fileprivate let str_pastTitle:[Character] = ["b","g","_","m","e","s","s","a","g"]
fileprivate let str_tipContent:String = "e_topcomponent manager image actual shape"

/*: "777777" :*/
fileprivate let str_cornerName:[Character] = ["7","7","7","7","7","7"]

/*: "I Like" :*/
fileprivate let str_readyToSexTitle:String = "else typeI Like"

/*: "#FF2348" :*/
fileprivate let str_equalIndexStatusValue:String = "value reply#F"
fileprivate let str_titleValue:String = "current2348"

/*: "Current network unavailable" :*/
fileprivate let str_premiumTitle:String = "Currenview all select of name"
fileprivate let str_managerName:[Character] = ["t"," ","n","e","t","w","o","r","k"," ","u","n","a","v","a","i","l","a","b","l","e"]

/*: "icon_yidu_pre" :*/
fileprivate let str_indexData:[Character] = ["i","c","o","n","_","y"]
fileprivate let str_viewText:[Character] = ["i","d","u","_","p","r","e"]

/*: "99+" :*/
fileprivate let str_modelData:[Character] = ["9","9","+"]

/*: "transform.rotation" :*/
fileprivate let str_timeTitle:String = "giftrans"
fileprivate let str_politicWrapContent:[Character] = ["f","o","r","m",".","r","o","t","a","t","i","o","n"]

/*: "transform.scale" :*/
fileprivate let str_shareUserText:[Character] = ["t","r","a","n","s","f","o","r","m",".","s"]
fileprivate let str_viewSocialData:[Character] = ["c","a","l","e"]

/*: "zoom&shake" :*/
fileprivate let str_pleaseWorldText:[Character] = ["z","o","o","m"]
fileprivate let str_maxData:String = "&shakeup corner equal"

/*: "yyyy-MM-dd" :*/
fileprivate let str_viewName:[Character] = ["y","y","y","y","-"]
fileprivate let str_contentTitle:String = "MM-ddkey return"

/*: "Allow %@ to send you notifications?" :*/
fileprivate let str_pathGestureTitle:[UInt8] = [0x4a,0x67,0x67,0x64,0x7c,0x2b,0x2e,0x4b,0x2b,0x7f,0x64,0x2b,0x78,0x6e,0x65,0x6f,0x2b,0x72,0x64,0x7e,0x2b,0x65,0x64,0x7f,0x62,0x6d,0x62,0x68,0x6a,0x7f,0x62,0x64,0x65,0x78,0x34]

private func toTable(lab num: UInt8) -> UInt8 {
    return num ^ 11
}

/*: "Cancel" :*/
fileprivate let str_shareTitle:String = "Cancellet white effect"

/*: "Settings" :*/
fileprivate let str_withData:[Character] = ["S","e","t","t","i","n"]
fileprivate let str_tableData:String = "gframe"

/*: "badNumber" :*/
fileprivate let str_appName:String = "target birth string ifbadN"
fileprivate let str_textData:String = "umbcenter"

/*: "Who like me" :*/
fileprivate let str_pathValue:[Character] = ["W","h","o"," ","l","i","k","e"," ","m","e"]

/*: "Messages" :*/
fileprivate let str_callContent:String = "Messageslet if return session period"

/*: "isConnection" :*/
fileprivate let str_cameraText:[Character] = ["i","s","C","o","n","n","e"]
fileprivate let str_backgroundValue:[Character] = ["c","t","i","o","n"]

/*: "networkStatus" :*/
fileprivate let str_makeValue:[Character] = ["n","e","t","w","o","r","k","S","t","a","t","u","s"]

/*: "unreadMessageNum" :*/
fileprivate let str_noticeData:[Character] = ["u","n","r","e","a","d","M","e","s","s"]
fileprivate let str_equalTitle:[Character] = ["a","g","e","N","u","m"]

/*: "Do you want to mark all messages as read?" :*/
fileprivate let str_statusText:[UInt8] = [0x50,0x7b,0x34,0x6d,0x7b,0x61,0x34,0x63,0x75,0x7a,0x60,0x34,0x60,0x7b,0x34,0x79,0x75,0x66,0x7f,0x34,0x75,0x78,0x78,0x34,0x79,0x71,0x67,0x67,0x75,0x73,0x71,0x67,0x34,0x75,0x67,0x34,0x66,0x71,0x75,0x70,0x2b]

private func appMake(bar num: UInt8) -> UInt8 {
    return num ^ 20
}

/*: "OK" :*/
fileprivate let str_leadingToName:[Character] = ["O","K"]

/*: "消息列表一键已读失败：code: :*/
fileprivate let str_ofData:[Character] = ["消","息","列","表","\u{4e00}","键","已","读","失","败","：","c","o","d","e",":"]

/*: , desc: :*/
fileprivate let str_sizeText:[Character] = [","," ","d","e","s"]
fileprivate let str_modelValue:String = "c:make succeed"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  EventEditViewController.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/1/20.
//

//: import UIKit
import UIKit

//: class TalkingMessageViewController: TalkingBaseViewController {
class EventEditViewController: SeamViewController {
    //: var isNoChangeTop = false
    var isNoChangeTop = false
    //: private let disposeBag = DisposeBag()
    private let disposeBag = DisposeBag()
    //: private var seleteIndex = 0
    private var seleteIndex = 0

    //: override func viewDidAppear(_ animated: Bool) {
    override func viewDidAppear(_ animated: Bool) {
        //: super.viewDidAppear(animated)
        super.viewDidAppear(animated)
        //: setIsShowCleanAmimat()
        amimat()
    }

    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.hideNavi = true
        self.hideNavi = true
        //: createUI()
        said()
        //: bindInteraction()
        viewColor()
        //: func__turnOnSystemNotification()
        substructure()
    }

    // MARK: - Lazy load

    // 背景
    //: private lazy var colorImageView: UIImageView = {
    private lazy var colorImageView: UIImageView = {
        //: let colorV = UIImageView.init(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: 100+StatusBarNavigationBarHeight))
        let colorV = UIImageView(frame: CGRect(x: 0, y: 0, width: kLet_cameraValue, height: 100 + kLet_detailNameText))
        //: colorV.image = UIImage.eponymUp(name: "bg_message_top")
        colorV.image = UIImage.eponymUp(name: (String(str_pastTitle) + String(str_tipContent.prefix(5))))
        //: colorV.contentMode = .scaleAspectFill
        colorV.contentMode = .scaleAspectFill
        //: return colorV
        return colorV
        //: }()
    }()

    //: private lazy var noticeView: TalkingNoticeTipView = {
    private lazy var noticeView: NameTipView = {
        //: let V = TalkingNoticeTipView()
        let V = NameTipView()
        //: V.isHidden = true
        V.isHidden = true
        //: return V
        return V
        //: }()
    }()

    //: private lazy var slideVC: QYSlideNavigationViewController = {
    private lazy var slideVC: DoingViewDelegate = {
        //: let vc = QYSlideNavigationViewController()
        let vc = DoingViewDelegate()
        //: vc.topDistance = 0
        vc.topDistance = 0
        //: vc.controllerItems = controllerItems
        vc.controllerItems = controllerItems
        //: vc.titleItems = titleItems
        vc.titleItems = titleItems
        //: vc.rightSpace = 60
        vc.rightSpace = 60
        //: vc.titleViewBackgroundColor = .clear
        vc.titleViewBackgroundColor = .clear
        //: vc.titleFont = .pingfangFont(type: .Medium, fontSize: 16)
        vc.titleFont = .pingfang(type: .Medium, fontSize: 16)
        //: vc.selectTitleFont = .pingfangFont(type: .Medium, fontSize: 18)
        vc.selectTitleFont = .pingfang(type: .Medium, fontSize: 18)
        //: vc.normalColor = UIColor(hex: "777777")!
        vc.normalColor = UIColor(hex: (String(str_cornerName)))!
        //: vc.selectedColor = UIColor.appTitleColor()
        vc.selectedColor = UIColor.executeTo()
        //: vc.hasBttomTabBar = true
        vc.hasBttomTabBar = true
        //: vc.delegate = self
        vc.delegate = self
        //: vc.scrollEnabled = false
        vc.scrollEnabled = false
        //: vc.isHidenBottomLine = true
        vc.isHidenBottomLine = true
        //: return vc
        return vc
        //: }()
    }()

    //: private lazy var controllerItems: [TalkingBaseViewController] = {
    private lazy var controllerItems: [SeamViewController] = //        var arr = [self.chatListVC, BeautyDataSource()]
//        if EqualThen.share.loginUserMode.callTabSwitch == 1 {
//            arr.insert(AddViewDelegate(), at: arr.count-1)
//        }
//        return arr
        //: return [self.chatListVC]
        [self.chatListVC]
    //: }()

    //: private lazy var chatListVC: TalkingChatListViewController = {
    private lazy var chatListVC: PopViewDelegate = {
        //: let vc = TalkingChatListViewController()
        let vc = PopViewDelegate()
        //: vc.iLikeBlock = { [weak self] isShow in
        vc.iLikeBlock = { [weak self] isShow in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: let showText = isShow ? "I Like":""
            let showText = isShow ? (String(str_readyToSexTitle.suffix(6))) : ""
            //: self.slideVC.selectedBtn?.setTitle(showText, for: .normal)
            self.slideVC.selectedBtn?.setTitle(showText, for: .normal)
        }
        //: return vc
        return vc
        //: }()
    }()

    //: private lazy var titleItems: [String] = {
    private lazy var titleItems: [String] = //        var arr = ["Messages".localized, "Who like me".localized]
//        if EqualThen.share.loginUserMode.callTabSwitch == 1 {
//            arr.insert("Call".localized, at: arr.count-1)
//        }
//        return arr
        //: return ["I Like"]
        [(String(str_readyToSexTitle.suffix(6)))]
    //: }()

    // 断网提醒
    //: private lazy var netTipLabel: UILabel = {
    private lazy var netTipLabel: UILabel = {
        //: let tipView = UILabel.init(frame: CGRect(x: 0, y: StatusBarNavigationBarHeight, width: ScreenWidth, height: 30))
        let tipView = UILabel(frame: CGRect(x: 0, y: kLet_detailNameText, width: kLet_cameraValue, height: 30))
        //: tipView.font = UIFont.outsideAllSize(fontSize: 14)
        tipView.font = UIFont.outsideAllSize(fontSize: 14)
        //: tipView.textColor = .white
        tipView.textColor = .white
        //: tipView.backgroundColor = UIColor.init(hex: "#FF2348")?.withAlphaComponent(0.8)
        tipView.backgroundColor = UIColor(hex: (String(str_equalIndexStatusValue.suffix(2)) + str_titleValue.replacingOccurrences(of: "current", with: "F")))?.withAlphaComponent(0.8)
        //: tipView.textAlignment = .center
        tipView.textAlignment = .center
        //: tipView.text = "Current network unavailable".localized
        tipView.text = (String(str_premiumTitle.prefix(6)) + String(str_managerName)).localized
        //: tipView.isHidden = true
        tipView.isHidden = true
        //: return tipView
        return tipView
        //: }()
    }()

    // message红点角标
    //: private lazy var msgNumLabel: BadgeLab = {
    private lazy var msgNumLabel: StreetwiseReactiveCompatible = {
        //: let numbLabel = BadgeLab()
        let numbLabel = StreetwiseReactiveCompatible()
        //: numbLabel.isHidden = true
        numbLabel.isHidden = true
        //: return numbLabel
        return numbLabel
        //: }()
    }()

    // whoLikeMe红点角标
    //: private lazy var badgLB: BadgeLab = {
    private lazy var badgLB: StreetwiseReactiveCompatible = {
        //: let numbLabel = BadgeLab()
        let numbLabel = StreetwiseReactiveCompatible()
        //: numbLabel.isHidden = true
        numbLabel.isHidden = true
        //: return numbLabel
        return numbLabel
        //: }()
    }()

    // 一键清除
    //: private lazy var cleanBtn: UIButton = {
    private lazy var cleanBtn: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.backgroundColor = .clear
        btn.backgroundColor = .clear
        //: btn.setImage(UIImage.eponymUp(name: "icon_yidu_pre"), for: .normal)
        btn.setImage(UIImage.eponymUp(name: (String(str_indexData) + String(str_viewText))), for: .normal)
        //: btn.setImage(UIImage.eponymUp(name: "icon_yidu_pre"), for: .highlighted)
        btn.setImage(UIImage.eponymUp(name: (String(str_indexData) + String(str_viewText))), for: .highlighted)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - AccumulationNavigationDelegate

//: extension TalkingMessageViewController: QYSlideNavigationDelegate {
extension EventEditViewController: AccumulationNavigationDelegate {
    //: func selectedViewController(_ viewController: UIViewController, index: Int) {
    func paintTheLilyWill(_ viewController: UIViewController, index: Int) {
        //: self.seleteIndex = Int(index)
        self.seleteIndex = Int(index)
        //: if viewController.isKind(of: TalkingChatListViewController.self) {
        if viewController.isKind(of: PopViewDelegate.self) {
            //: self.cleanBtn.isHidden = false
            self.cleanBtn.isHidden = false
            //: setIsShowCleanAmimat()
            amimat()

            //: } else if viewController.isKind(of: TalkingWhoLikeViewController.self) {
        } else if viewController.isKind(of: BeautyDataSource.self) {
            //: self.cleanBtn.isHidden = true
            self.cleanBtn.isHidden = true
            //: uploadRecord.uploadRecordEvent(eventID: ClickWLikeMeTabNoP)
            kLet_textData.historicalPaper(eventID: kLet_deviceGiftData)
        }
    }
}

// MARK: - Event

//: extension TalkingMessageViewController {
extension EventEditViewController {
    //: func setIsTopAll() {
    func everyLast() {
        /// 默认选中all
        //: if seleteIndex == 0 {
        if seleteIndex == 0 {
            //: let vc = slideVC.controllerItems.first as? TalkingChatListViewController
            let vc = slideVC.controllerItems.first as? PopViewDelegate
            //: vc?.resetToTopItemView()
            vc?.actionCap()
            // 刷新在线状态
            //: vc?.refreshOnlineStatus(isFirst: true)
            vc?.indexFirst(isFirst: true)
        }
    }

    /// 无网络提示
    //: func func__checkNetTipState() {
    func deformGesture() {
        //: if EqualThen.share.networkStatus != .Unavailable && TalkingConversationListener.shared.isConnection {
        if EqualThen.share.networkStatus != .Unavailable, TalkingConversationListener.shared.isConnection {
            //: netTipLabel.isHidden = true
            netTipLabel.isHidden = true
            //: } else {
        } else {
            //: netTipLabel.isHidden = false
            netTipLabel.isHidden = false
        }
    }

    /// message红点
    //: func func__messagebadgLBState(num: Int) {
    func atomicMagnitude85(num: Int) {
        //: if num > 0 {
        if num > 0 {
            //: msgNumLabel.isHidden = false
            msgNumLabel.isHidden = false
            //: if num > 99 {
            if num > 99 {
                //: msgNumLabel.text = "99+"
                msgNumLabel.text = "99+"
                //: } else {
            } else {
                //: msgNumLabel.text = String(num)
                msgNumLabel.text = String(num)
            }
            //: } else {
        } else {
            //: msgNumLabel.isHidden = true
            msgNumLabel.isHidden = true
        }
    }

    /// 一键清除动画
    //: func setIsShowCleanAmimat() {
    func amimat() {
        //: let unreadMsgCount = EqualThen.share.unreadMessageNum
        let unreadMsgCount = EqualThen.share.unreadMessageNum
        //: let isClean: Bool = UserDefaults.standard.object(forKey: isShowCleanAnimatCacheKey) as? Bool ?? false
        let isClean: Bool = UserDefaults.standard.object(forKey: kLet_endData) as? Bool ?? false
        //: if unreadMsgCount >= 10 && !isClean {
        if unreadMsgCount >= 10, !isClean {
            //: self.cleanBtnBtnAnimat()
            self.clickPage()
        }
    }

    //: func cleanBtnBtnAnimat() {
    func clickPage() {
        //: let degreesToRadians = 180.0 * .pi
        let degreesToRadians = 180.0 * .pi
        //: let angle1 = 0 / degreesToRadians
        let angle1 = 0 / degreesToRadians
        //: let angle2 = 100 / degreesToRadians
        let angle2 = 100 / degreesToRadians
        //: let angle3 = -100 / degreesToRadians
        let angle3 = -100 / degreesToRadians
        //: let angle4 = 100 / degreesToRadians
        let angle4 = 100 / degreesToRadians
        //: let angle5 = -100 / degreesToRadians
        let angle5 = -100 / degreesToRadians
        //: let angle6 = 0 / degreesToRadians
        let angle6 = 0 / degreesToRadians

        //: let du1: NSNumber = 0
        let du1: NSNumber = 0
        //: let du2: NSNumber = 0.13
        let du2: NSNumber = 0.13
        //: let du3: NSNumber = 0.3
        let du3: NSNumber = 0.3
        //: let du4: NSNumber = 0.47
        let du4: NSNumber = 0.47
        //: let du5: NSNumber = 0.8
        let du5: NSNumber = 0.8
        //: let du6: NSNumber = 1.0
        let du6: NSNumber = 1.0

        // 旋转
        //: let roate = CAKeyframeAnimation.init(keyPath: "transform.rotation")
        let roate = CAKeyframeAnimation(keyPath: (str_timeTitle.replacingOccurrences(of: "gift", with: "t") + String(str_politicWrapContent)))
        //: roate.values = [(angle1), (angle2), (angle3), (angle4), (angle5), (angle6)]
        roate.values = [angle1, angle2, angle3, angle4, angle5, angle6]
        //: roate.keyTimes = [(du1), (du2), (du3), (du4), (du5), (du6)]
        roate.keyTimes = [du1, du2, du3, du4, du5, du6]

        // 缩放
        //: let zoom = CAKeyframeAnimation.init(keyPath: "transform.scale")
        let zoom = CAKeyframeAnimation(keyPath: (String(str_shareUserText) + String(str_viewSocialData)))
        //: zoom.values = [(1.0), (1.2), (1.0)]
        zoom.values = [1.0, 1.2, 1.0]
        //: zoom.keyTimes = [(0), (0.5), (1.0)]
        zoom.keyTimes = [0, 0.5, 1.0]

        //
        //: let groupAnnimation = CAAnimationGroup.init()
        let groupAnnimation = CAAnimationGroup()
        //: groupAnnimation.autoreverses = false
        groupAnnimation.autoreverses = false
        //: groupAnnimation.animations = [roate, zoom]
        groupAnnimation.animations = [roate, zoom]
        //: groupAnnimation.duration = 1.0
        groupAnnimation.duration = 1.0
        //: groupAnnimation.repeatCount = 2
        groupAnnimation.repeatCount = 2
        //: groupAnnimation.isRemovedOnCompletion = false
        groupAnnimation.isRemovedOnCompletion = false
        //: groupAnnimation.fillMode = .forwards
        groupAnnimation.fillMode = .forwards
        //: cleanBtn.layer.add(groupAnnimation, forKey: "zoom&shake")
        cleanBtn.layer.add(groupAnnimation, forKey: (String(str_pleaseWorldText) + String(str_maxData.prefix(6))))
    }

    /// 检查系统通知是否开启
    //: private func func__turnOnSystemNotification() {
    private func substructure() {
        //: TalkingPermissionTool.checkPushNotification { isEnable in
        RubricThen.sectionOn { isEnable in

            //: DispatchQueue.main.async {
            DispatchQueue.main.async {
                //: if isEnable {
                if isEnable {
                    //: self.noticeView.isHidden = true
                    self.noticeView.isHidden = true
                    //: self.func__hideNotificationTipView(hide: true)
                    self.notificationPause(hide: true)
                    //: }else{
                } else {
                    /// 页面顶部提示
                    //: let today = NSDate.getTimeString(date: Date(), dateFormat: "yyyy-MM-dd")
                    let today = NSDate.comeOut(date: Date(), dateFormat: (String(str_viewName) + String(str_contentTitle.prefix(5))))
                    //: if let closeDateStr = Defaults.string(forKey: TalkingMessageTabCloseNotificationsKey), today == closeDateStr {
                    if let closeDateStr = kLet_turnPartyValue.string(forKey: kLet_videoData), today == closeDateStr {
                        //: self.func__hideNotificationTipView(hide: true)
                        self.notificationPause(hide: true)
                        //: }else{
                    } else {
                        //: self.func__hideNotificationTipView(hide: false)
                        self.notificationPause(hide: false)
                    }
                    /// 弹框逻辑
                    //: let isShow = Defaults.bool(forKey: TalkingMessageTabTurnOnNotificationsKey)
                    let isShow = kLet_turnPartyValue.bool(forKey: kLet_userData)
                    //: if !isShow {
                    if !isShow {
                        //: Defaults.set(true, forKey: TalkingMessageTabTurnOnNotificationsKey)
                        kLet_turnPartyValue.set(true, forKey: kLet_userData)
                        //: TalkingAlertShow.alert(title: nil,
                        MotilityThen.viewConfig(title: nil,
                                                    //: message: "Allow %@ to send you notifications?".localizedArguments(AppName),
                                                    message: String(bytes: str_pathGestureTitle.map{toTable(lab: $0)}, encoding: .utf8)!.localizedArguments(kLet_managerData),
                                                    //: leftBtnTitle: "Cancel".localized,
                                                    leftBtnTitle: (String(str_shareTitle.prefix(6))).localized,
                                                    //: rightBtnTitle: "Settings".localized) {
                                                    rightBtnTitle: (String(str_withData) + str_tableData.replacingOccurrences(of: "frame", with: "s")).localized)
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
        }
    }

    //: private func func__hideNotificationTipView(hide: Bool) {
    private func notificationPause(hide: Bool) {
        //: DispatchQueue.main.async {
        DispatchQueue.main.async {
            //: if hide{
            if hide {
                //: self.noticeView.isHidden = true
                self.noticeView.isHidden = true
                //: self.slideVC.view.snp.updateConstraints { make in
                self.slideVC.view.snp.updateConstraints { make in
                    //: make.top.equalToSuperview().offset(StatusBarHeight)
                    make.top.equalToSuperview().offset(kLet_timeSenseValue)
                }
                //: self.slideVC.viewHeight = ScreenHeight - StatusBarHeight - TabBarViewHeight
                self.slideVC.viewHeight = kLet_clickData - kLet_timeSenseValue - kLet_viewDepthText
                //: }else{
            } else {
                //: self.noticeView.isHidden = false
                self.noticeView.isHidden = false
                //: self.slideVC.view.snp.updateConstraints { make in
                self.slideVC.view.snp.updateConstraints { make in
                    //: make.top.equalToSuperview().offset(StatusBarHeight + self.noticeView.viewHeight)
                    make.top.equalToSuperview().offset(kLet_timeSenseValue + self.noticeView.viewHeight)
                }
                //: self.slideVC.viewHeight = ScreenHeight - self.noticeView.bottom - TabBarViewHeight
                self.slideVC.viewHeight = kLet_clickData - self.noticeView.bottom - kLet_viewDepthText
            }
        }
    }
}

// MARK: - 通知

//: extension TalkingMessageViewController {
extension EventEditViewController {
    /// who like me 红点通知
    //: @objc func showbadgNumberNotif(notification: NSNotification) {
    @objc func notif(notification: NSNotification) {
        //: let userinfo = notification.userInfo as![String: AnyObject]
        let userinfo = notification.userInfo as! [String: AnyObject]
        //: let badNumber: Int  = userinfo["badNumber"] as! Int
        let badNumber: Int = userinfo[(String(str_appName.suffix(4)) + str_textData.replacingOccurrences(of: "center", with: "er"))] as! Int
        //: badgLB.isHidden = false
        badgLB.isHidden = false
        //: if badNumber > 99 {
        if badNumber > 99 {
            //: badgLB.text = "99+"
            badgLB.text = "99+"
            //: } else if badNumber<=0 {
        } else if badNumber <= 0 {
            //: badgLB.isHidden = true
            badgLB.isHidden = true
            //: badgLB.text = "0"
            badgLB.text = "0"
            //: } else {
        } else {
            //: badgLB.text = String(badNumber)
            badgLB.text = String(badNumber)
        }
    }
}

// MARK: - Layout

//: extension TalkingMessageViewController {
extension EventEditViewController {
    /// UI
    //: private func createUI() {
    private func said() {
        //: view.backgroundColor = .white
        view.backgroundColor = .white

        //: view.addSubview(colorImageView)
        view.addSubview(colorImageView)
        //: view.addSubview(noticeView)
        view.addSubview(noticeView)
        //: self.addChild(slideVC)
        self.addChild(slideVC)

        //: self.view.addSubview(slideVC.view)
        self.view.addSubview(slideVC.view)
        //: slideVC.view.backgroundColor = UIColor.clear
        slideVC.view.backgroundColor = UIColor.clear
        //: slideVC.view.snp.makeConstraints { make in
        slideVC.view.snp.makeConstraints { make in
            //: make.top.equalToSuperview().offset(StatusBarHeight)
            make.top.equalToSuperview().offset(kLet_timeSenseValue)
            //: make.leading.trailing.equalToSuperview()
            make.leading.trailing.equalToSuperview()
            //: make.bottom.equalToSuperview()
            make.bottom.equalToSuperview()
        }

        //: for btn in slideVC.allBtn {
        for btn in slideVC.allBtn {
            //: let curenbrn: UIButton = btn
            let curenbrn: UIButton = btn
            //: if curenbrn.titleLabel!.text == "Who like me".localized {
            if curenbrn.titleLabel!.text == (String(str_pathValue)).localized {
                //: (curenbrn as AnyObject).addSubview(badgLB)
                (curenbrn as AnyObject).addSubview(badgLB)
                //: badgLB.snp.makeConstraints { make in
                badgLB.snp.makeConstraints { make in
                    //: make.leading.equalTo(curenbrn.titleLabel!.snp.trailing).offset(-5)
                    make.leading.equalTo(curenbrn.titleLabel!.snp.trailing).offset(-5)
                    //: make.top.equalTo(curenbrn).offset(7)
                    make.top.equalTo(curenbrn).offset(7)
                    //: make.height.equalTo(16)
                    make.height.equalTo(16)
                    //: make.width.greaterThanOrEqualTo(16)
                    make.width.greaterThanOrEqualTo(16)
                }
                //: badgLB.isHidden = true
                badgLB.isHidden = true
                //: } else if (curenbrn.titleLabel!.text == "Messages".localized) {
            } else if curenbrn.titleLabel!.text == (String(str_callContent.prefix(8))).localized {
                //: (curenbrn as AnyObject).addSubview(msgNumLabel)
                (curenbrn as AnyObject).addSubview(msgNumLabel)
                //: msgNumLabel.snp.makeConstraints { make in
                msgNumLabel.snp.makeConstraints { make in
                    //: make.leading.equalTo(curenbrn.titleLabel!.snp.trailing).offset(-5)
                    make.leading.equalTo(curenbrn.titleLabel!.snp.trailing).offset(-5)
                    //: make.top.equalTo(curenbrn).offset(7)
                    make.top.equalTo(curenbrn).offset(7)
                    //: make.height.equalTo(16)
                    make.height.equalTo(16)
                    //: make.width.greaterThanOrEqualTo(16)
                    make.width.greaterThanOrEqualTo(16)
                }
            }
        }

        //: view.addSubview(cleanBtn)
        view.addSubview(cleanBtn)
        //: cleanBtn.snp.makeConstraints { make in
        cleanBtn.snp.makeConstraints { make in
            //: make.top.equalTo(slideVC.view.snp.top)
            make.top.equalTo(slideVC.view.snp.top)
            //: make.trailing.equalTo(-5)
            make.trailing.equalTo(-5)
            //: make.size.equalTo(CGSize(width: 44, height: 44))
            make.size.equalTo(CGSize(width: 44, height: 44))
        }

        //: view.addSubview(netTipLabel)
        view.addSubview(netTipLabel)
        //: netTipLabel.snp.makeConstraints { make in
        netTipLabel.snp.makeConstraints { make in
            //: make.top.equalTo(slideVC.view.snp.top).offset(44)
            make.top.equalTo(slideVC.view.snp.top).offset(44)
            //: make.leading.trailing.equalToSuperview()
            make.leading.trailing.equalToSuperview()
            //: make.height.equalTo(30)
            make.height.equalTo(30)
        }
    }

    /// 绑定事件
    //: private func bindInteraction() {
    private func viewColor() {
        //: TalkingConversationListener.shared.rx
        TalkingConversationListener.shared.rx
            //: .observeWeakly(Bool.self, "isConnection")
            .observeWeakly(Bool.self, (String(str_cameraText) + String(str_backgroundValue)))
            //: .subscribe(onNext: { [weak self] (value) in
            .subscribe(onNext: { [weak self] _ in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: self.func__checkNetTipState()
                self.deformGesture()
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)

        //: EqualThen.share.rx.observeWeakly(Int.self, "networkStatus")
        EqualThen.share.rx.observeWeakly(Int.self, (String(str_makeValue)))
            //: .subscribe(onNext: { [weak self]  (value) in
            .subscribe(onNext: { [weak self] _ in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: self.func__checkNetTipState()
                self.deformGesture()
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)

        // 展示全部红点
        //: EqualThen.share.rx.observeWeakly(Int.self, "unreadMessageNum")
        EqualThen.share.rx.observeWeakly(Int.self, (String(str_noticeData) + String(str_equalTitle)))
            //: .subscribe(onNext: { [weak self] (value) in
            .subscribe(onNext: { [weak self] value in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: let valueInt = value ?? 0
                let valueInt = value ?? 0
                //: self.func__messagebadgLBState(num: valueInt)
                self.atomicMagnitude85(num: valueInt)
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)

        //: cleanBtn.rx.controlEvent(.touchUpInside)
        cleanBtn.rx.controlEvent(.touchUpInside)
            //: .subscribe(onNext: {
            .subscribe(onNext: {
                //: let config = ShowAlertConfig()
                let config = AtAlertConfig()
                //: config.alignment = .center
                config.alignment = .center

                //: TalkingAlertShow.customAlert(message: "Do you want to mark all messages as read?".localized, leftBtnTitle: "Cancel".localized, rightBtnTitle: "OK".localized, leftBlock: {
                MotilityThen.customLabel(message: String(bytes: str_statusText.map{appMake(bar: $0)}, encoding: .utf8)!.localized, leftBtnTitle: (String(str_shareTitle.prefix(6))).localized, rightBtnTitle: "OK".localized, leftBlock: {
                    //: TalkingAlertShow.hideAlert()
                    MotilityThen.afterward()

                    //: }, rightBlock: {
                }, rightBlock: {
                    //: V2TIMManager.sharedInstance().markAllMessage {
                    V2TIMManager.sharedInstance().markAllMessage {
                        //: UserDefaults.standard.set(true, forKey: isShowCleanAnimatCacheKey)
                        UserDefaults.standard.set(true, forKey: kLet_endData)
                        //: } fail: { code, desc in
                    } fail: { code, desc in
                        //: DeepKeyTamperReactiveCompatible.indexView(msg: "消息列表一键已读失败：code:\(code), desc:\(String(describing: desc))")
                        DeepKeyTamperReactiveCompatible.indexView(msg: (String(str_ofData)) + "\(code)" + (String(str_sizeText) + String(str_modelValue.prefix(2))) + "\(String(describing: desc))")
                    }
                    //: }, config: config)
                }, config: config)

                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)

        // who like me 红点通知
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(showbadgNumberNotif(notification:)),
                                               selector: #selector(notif(notification:)),
                                               //: name: WHOLIKEME_BADGENUMBER_NOTIF,
                                               name: kLet_pathSenseData,
                                               //: object: nil)
                                               object: nil)

        //: noticeView.closeBtnBlock = { [weak self] ()  -> Void in
        noticeView.closeBtnBlock = { [weak self] () in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: let today = NSDate.getTimeString(date: Date(), dateFormat: "yyyy-MM-dd")
            let today = NSDate.comeOut(date: Date(), dateFormat: (String(str_viewName) + String(str_contentTitle.prefix(5))))
            //: Defaults.set(today, forKey: TalkingMessageTabCloseNotificationsKey)
            kLet_turnPartyValue.set(today, forKey: kLet_videoData)
            //: self.func__hideNotificationTipView(hide: true)
            self.notificationPause(hide: true)
        }

        //: NotificationCenter.default.rx.notification( UIApplication.willEnterForegroundNotification)
        NotificationCenter.default.rx.notification(UIApplication.willEnterForegroundNotification)
            //: .subscribe(onNext: { [weak self] (notification) in
            .subscribe(onNext: { [weak self] _ in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: self.func__turnOnSystemNotification()
                self.substructure()
                //: }).disposed(by: disposeBag)
            }).disposed(by: disposeBag)
    }
}
