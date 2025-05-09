
//: Declare String Begin

/*: "position.x" :*/
fileprivate let str_meModelName:String = "powhitet"

/*: "slideIn" :*/
fileprivate let str_titleText:String = "slideInmake normal height"

/*: "slideOut" :*/
fileprivate let str_fatalContent:String = "slideOutinfo add array type"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ZapReactiveCompatible.swift
//  BotanicBreeze
//
//  Created by DouXiu on 2024/11/25.
//

//: import UIKit
import UIKit

//: class GiftFloatViewManager: NSObject {
class ZapReactiveCompatible: NSObject {
    //: static let shared = GiftFloatViewManager()
    static let shared = ZapReactiveCompatible()
    //: private var giftArr = [SocialBroadcastModel]()
    private var giftArr = [PlayerBroadcastModel]()
    //: private var isShow = false
    private var isShow = false // 是否正在展示
    //: private var needStop = false
    private var needStop = false // 是否需要停止

    // MARK: - Lazy Load

    //: private lazy var giftView: GiftFloatView = {
    private lazy var giftView: ProgressThen = {
        //: let v = GiftFloatView()
        let v = ProgressThen()
        //: MacroDefine.getWindow().addSubview(v)
        UserMacroDefine.toUp().addSubview(v)
        //: return v
        return v
        //: }()
    }()
}

// MARK: - Event

//: extension GiftFloatViewManager {
extension ZapReactiveCompatible {
    /// 添加礼物
    //: private func addGift(gift: SocialBroadcastModel) {
    private func equalTime(gift: PlayerBroadcastModel) {
        //: self.synchronized(self) {
        self.digitiserSynchronized(self) {
            //: self.giftArr.append(gift)
            self.giftArr.append(gift)
            //: self.showNextGift(index: 0)
            self.statusShow(index: 0)
        }
    }

    //: public func synchronized<T>(_ lock: AnyObject, _ body: () throws -> T) rethrows -> T {
    public func digitiserSynchronized<T>(_ lock: AnyObject, _ body: () throws -> T) rethrows -> T {
        //: objc_sync_enter(lock)
        objc_sync_enter(lock)
        //: defer { objc_sync_exit(lock) }
        defer { objc_sync_exit(lock) }
        //: return try body()
        return try body()
    }

    /// 展示礼物
    //: private func showNextGift(index: Int) {
    private func statusShow(index: Int) {
        //: if index >= self.giftArr.count { return }
        if index >= self.giftArr.count { return }
        // 在home_tab展示
        //: guard let vc = currentViewController(), vc is TalkingSocialViewController else { return }
        guard let vc = infoController(), vc is IndexViewController else { return }
        //: if self.isShow || self.needStop { return }
        if self.isShow || self.needStop { return }

        //: self.startAnimation(self.giftArr[index])
        self.showAnimation(self.giftArr[index])
    }

    /// 开始动效
    //: private func startAnimation(_ model: SocialBroadcastModel) {
    private func showAnimation(_ model: PlayerBroadcastModel) {
        //: self.isShow = true
        self.isShow = true
        //: self.giftView.refreshGift(model)
        self.giftView.nameWith(model)
        // 1. 计算视图的中心位置
        //: let viewWidth = self.giftView.frame.width
        let viewWidth = self.giftView.frame.width
        //: let centerX = viewWidth / 2
        let centerX = viewWidth / 2

        // 2. 根据语言方向设置起始和结束位置
        //: let isRTL = LanguageManager.shared.direction == .rightToLeft
        let isRTL = FileReactiveCompatible.shared.direction == .rightToLeft
        // 起始位置：屏幕外
        //: let startCenterX = isRTL ? -centerX : ScreenWidth + centerX
        let startCenterX = isRTL ? -centerX : kLet_cameraValue + centerX
        // 目标位置：屏幕中间
        //: let targetCenterX = ScreenWidth / 2
        let targetCenterX = kLet_cameraValue / 2
        // 结束位置：屏幕另一侧
        //: let endCenterX = isRTL ? ScreenWidth + centerX : -centerX
        let endCenterX = isRTL ? kLet_cameraValue + centerX : -centerX

        // 3. 设置初始位置
        //: self.giftView.center.x = startCenterX
        self.giftView.center.x = startCenterX

        // 4. 进入动画
        //: let slideIn = CABasicAnimation(keyPath: "position.x")
        let slideIn = CABasicAnimation(keyPath: (str_meModelName.replacingOccurrences(of: "white", with: "si") + "ion.x"))
        //: slideIn.fromValue = startCenterX
        slideIn.fromValue = startCenterX
        //: slideIn.toValue = targetCenterX
        slideIn.toValue = targetCenterX
        //: slideIn.duration = 0.5
        slideIn.duration = 0.5
        //: slideIn.timingFunction = CAMediaTimingFunction(name: .easeOut)
        slideIn.timingFunction = CAMediaTimingFunction(name: .easeOut)
        //: slideIn.fillMode = .forwards
        slideIn.fillMode = .forwards
        //: slideIn.isRemovedOnCompletion = false
        slideIn.isRemovedOnCompletion = false

        //: self.giftView.layer.add(slideIn, forKey: "slideIn")
        self.giftView.layer.add(slideIn, forKey: (String(str_titleText.prefix(7))))
        //: self.giftView.center.x = targetCenterX
        self.giftView.center.x = targetCenterX

        // 5. 延迟退出
        //: DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) { [weak self] in
        DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }

            // 6. 退出动画
            //: let slideOut = CABasicAnimation(keyPath: "position.x")
            let slideOut = CABasicAnimation(keyPath: (str_meModelName.replacingOccurrences(of: "white", with: "si") + "ion.x"))
            //: slideOut.fromValue = targetCenterX
            slideOut.fromValue = targetCenterX
            //: slideOut.toValue = endCenterX
            slideOut.toValue = endCenterX
            //: slideOut.duration = 0.5
            slideOut.duration = 0.5
            //: slideOut.timingFunction = CAMediaTimingFunction(name: .easeIn)
            slideOut.timingFunction = CAMediaTimingFunction(name: .easeIn)
            //: slideOut.fillMode = .forwards
            slideOut.fillMode = .forwards
            //: slideOut.isRemovedOnCompletion = false
            slideOut.isRemovedOnCompletion = false

            //: self.giftView.layer.add(slideOut, forKey: "slideOut")
            self.giftView.layer.add(slideOut, forKey: (String(str_fatalContent.prefix(8))))
            //: self.giftView.center.x = endCenterX
            self.giftView.center.x = endCenterX

            // 7. 动画完成后清理
            //: DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) { [weak self] in
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) { [weak self] in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: self.isShow = false
                self.isShow = false
                //: if self.giftArr.count > 0 {
                if self.giftArr.count > 0 {
                    //: self.giftArr.remove(at: 0)
                    self.giftArr.remove(at: 0)
                }
                //: self.showNextGift(index: 0)
                self.statusShow(index: 0)
            }
        }
    }

    /// 停止动效
    //: func stopWhenDismiss() {
    func halogen() {
        //: self.needStop = true
        self.needStop = true
    }

    /// 展示动效
    //: func activeWhenShow() {
    func toIndex() {
        //: self.needStop = false
        self.needStop = false
        //: self.showNextGift(index: 0)
        self.statusShow(index: 0)
    }
}

// MARK: - Notifications

//: extension GiftFloatViewManager {
extension ZapReactiveCompatible {
    /// 添加通知
    //: func addNotifications() {
    func addUpChoice() {
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(self.recievedNewGift(noti:)),
                                               selector: #selector(self.makePlace(noti:)),
                                               //: name: USER_RECIEVED_GIFT_NOTIFICATION,
                                               name: kLet_marginValue,
                                               //: object: nil)
                                               object: nil)

        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(self.enterBackground),
                                               selector: #selector(self.statusJump),
                                               //: name: UIApplication.didEnterBackgroundNotification,
                                               name: UIApplication.didEnterBackgroundNotification,
                                               //: object: nil)
                                               object: nil)

        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(self.enterForeground),
                                               selector: #selector(self.intervalrudeDoingTap),
                                               //: name: UIApplication.willEnterForegroundNotification,
                                               name: UIApplication.willEnterForegroundNotification,
                                               //: object: nil)
                                               object: nil)

        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(self.loginout),
                                               selector: #selector(self.theCell),
                                               //: name: DID_LOGIN_OUT_SUCCESS_NOTIFICATION,
                                               name: kLet_useName,
                                               //: object: nil)
                                               object: nil)
    }

    /// 收到礼物通知
    //: @objc private func recievedNewGift(noti: Notification) {
    @objc private func makePlace(noti: Notification) {
        //: guard let data = noti.object,
        guard let data = noti.object,
              //: let gift = JSONDeserializer<SocialBroadcastModel>.deserializeFrom(dict: data as? [String: Any], designatedPath: nil),
              let gift = JSONDeserializer<PlayerBroadcastModel>.deserializeFrom(dict: data as? [String: Any], designatedPath: nil),
              //: gift.broadType != BroadcastType.Unknow.rawValue
              gift.broadType != SomeoneDefaultsSerializable.Unknow.rawValue
        //: else {
        else {
            //: return
            return
        }
        //: let currUserType = EqualThen.share.appUserConfigMode.userType
        let currUserType = EqualThen.share.appUserConfigMode.userType
        // 过滤接口异常
        //: if currUserType < 0 { return }
        if currUserType < 0 { return }
        // 特殊用户 不展示 S/A级用户礼物
        //: if currUserType == 0, gift.userType == 1 || gift.userType == 2 {
        if currUserType == 0, gift.userType == 1 || gift.userType == 2 {
            //: return
            return
        }
        // S/A级用户 不展示 特殊用户礼物
        //: if currUserType == 1 || currUserType == 2, gift.userType == 0 {
        if currUserType == 1 || currUserType == 2, gift.userType == 0 {
            //: return
            return
        }
        // 非特殊用户 不展示 不同地区用户礼物
        //: if currUserType != 0, gift.userCountryType != EqualThen.share.appUserConfigMode.userCountryType {
        if currUserType != 0, gift.userCountryType != EqualThen.share.appUserConfigMode.userCountryType {
            //: return
            return
        }

        //: self.addGift(gift: gift)
        self.equalTime(gift: gift)
    }

    /// 应用退到后台
    //: @objc private func enterBackground() {
    @objc private func statusJump() {
        //: self.stopWhenDismiss()
        self.halogen()
    }

    /// 应用进入前台
    //: @objc private func enterForeground() {
    @objc private func intervalrudeDoingTap() {
        //: self.activeWhenShow()
        self.toIndex()
    }

    /// 退出登录
    //: @objc private func loginout() {
    @objc private func theCell() {
        //: self.giftArr.removeAll()
        self.giftArr.removeAll()
        //: self.stopWhenDismiss()
        self.halogen()
    }
}
