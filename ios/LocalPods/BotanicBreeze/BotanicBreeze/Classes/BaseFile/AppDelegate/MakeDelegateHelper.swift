
//: Declare String Begin

/*: "www.apple.com" :*/
fileprivate let str_intimateName:[Character] = ["w","w","w",".","a","p","p","l","e",".","c","o","m"]

/*: "后台播放音乐模式异常:  :*/
fileprivate let str_pointCommentValue:String = "后台播\u{653e}音乐模"
fileprivate let str_labRoomTouchValue:[Character] = ["\u{5f0f}","异","常",":"," "]

/*: ." :*/
fileprivate let str_directValue:[Character] = ["."]

/*: "key_uid" :*/
fileprivate let str_modeValue:String = "key_uiview label in status"
fileprivate let str_indexText:String = "data"

/*: "Reachable via WiFi" :*/
fileprivate let str_managerName:String = "for size to contentReach"
fileprivate let str_coverTitle:String = "value"
fileprivate let str_makeValue:String = "label mode make heightle v"

/*: "Reachable via Cellular" :*/
fileprivate let str_toCleanName:[Character] = ["R","e","a","c","h","a","b","l","e"," ","v","i","a"," ","C"]
fileprivate let str_mediaUpgradeValue:String = "ellulmodel"

/*: "Current network unavailable" :*/
fileprivate let str_managerStyleData:String = "Currlet to else send data"
fileprivate let str_colorTitle:String = "emessageor"
fileprivate let str_userValue:String = "avaipathble"

/*: "Network none" :*/
fileprivate let str_gestureText:String = "Networktab make"
fileprivate let str_rangeName:String = "profile import back make none"

/*: "call_response_bgm" :*/
fileprivate let str_withData:String = "call_repop first"
fileprivate let str_frameData:String = "smessagense"

/*: "Error playing BMG audio:  :*/
fileprivate let str_centerName:[Character] = ["E","r","r","o","r"," ","p","l","a","y","i","n","g"," ","B","M","G"," ","a","u","d","i","o",":"," "]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  MakeDelegateHelper.swift
//  AbroadTalking
//
//  Created by DouXiu on 2024/5/30.
//

//: import UIKit
import UIKit

//: import WebKit
import WebKit

//: import AVFAudio
import AVFAudio

//: import FirebaseCrashlytics
import FirebaseCrashlytics

//: public class AppDelegateHelper: NSObject {
public class MakeDelegateHelper: NSObject {
    // 后台下载
    //: var backgroundSessionCompletionHandler: (() -> Void)?
    var backgroundSessionCompletionHandler: (() -> Void)?
    //: private var window: UIWindow?
    private var window: UIWindow?
    //: private let disposeBag = DisposeBag()
    private let disposeBag = DisposeBag()
    //: private let networkManager = NetworkReachabilityManager(host: "www.apple.com")
    private let networkManager = NetworkReachabilityManager(host: (String(str_intimateName)))
    //: private var backTaskIdentifier = UIBackgroundTaskIdentifier.invalid
    private var backTaskIdentifier = UIBackgroundTaskIdentifier.invalid // 后台任务名称
    //: private var bgmPlayer: AVAudioPlayer?
    private var bgmPlayer: AVAudioPlayer? // 音视频通话后台播放音频
    //: private var currApplication: UIApplication?
    private var currApplication: UIApplication? // 当前application
    // singleton
    //: static let shared = AppDelegateHelper()
    static let shared = MakeDelegateHelper()
    //: override private init() {
    override private init() {
        //: super.init()
        super.init()
        //: self.window?.rootViewController = NormalWaitingController()
        self.window?.rootViewController = FlushcyIndexDoWaitingController()
        //: self.window?.makeKeyAndVisible()
        self.window?.makeKeyAndVisible()
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(initRootController),
                                               selector: #selector(decompress),
                                               //: name: UPDATE_APP_GETCONFIG_NOTIFICATION,
                                               name: kLet_netName,
                                               //: object: nil)
                                               object: nil)
    }
}

// MARK: - 系统API

//: public extension AppDelegateHelper {
public extension MakeDelegateHelper {
    //: class func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?, window: UIWindow?) -> Bool {
    class func launching(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?, window: UIWindow?) -> Bool {
        //: AppDelegateHelper.shared.window = window
        MakeDelegateHelper.shared.window = window
        //: AppDelegateHelper.shared.initLinkedME(launchOptions: launchOptions)
        MakeDelegateHelper.shared.feedback(launchOptions: launchOptions)
        //: TalkingRequestAddrTool.share.func__setAppCookies()
        SendUpReactiveCompatible.share.matter()
        //: AppDelegateHelper.shared.installNotificationObservers()
        MakeDelegateHelper.shared.observers()
        //: AppDelegateHelper.shared.initGetCache()
        MakeDelegateHelper.shared.bottomTime()
        //: TalkingRequestAddrTool.share.checkServerUrl()
        SendUpReactiveCompatible.share.textQueryUrl()
        //: AppDelegateHelper.shared.currApplication = application
        MakeDelegateHelper.shared.currApplication = application
        // 支持后台播放音乐
        //: do {
        do {
            //: try AVAudioSession.sharedInstance().setCategory(.playback)
            try AVAudioSession.sharedInstance().setCategory(.playback)
            //: try AVAudioSession.sharedInstance().setActive(true)
            try AVAudioSession.sharedInstance().setActive(true)
            //: } catch {
        } catch {
            //: DeepKeyTamperReactiveCompatible.indexView(msg: "后台播放音乐模式异常: \(error).")
            DeepKeyTamperReactiveCompatible.indexView(msg: (str_pointCommentValue + String(str_labRoomTouchValue)) + "\(error).")
        }

        //: if #available(iOS 15.0, *) {
        if #available(iOS 15.0, *) {
            //: UITableView.appearance().sectionHeaderTopPadding = 0
            UITableView.appearance().sectionHeaderTopPadding = 0
        }
        //: return true
        return true
    }

    //: class func applicationDidEnterBackground(_ application: UIApplication) {
    class func pastVoice(_: UIApplication) {
        // 开启后台任务，增加app后台运行时间
        //: AppDelegateHelper.shared.startBackgroundTask()
        MakeDelegateHelper.shared.noMedia()
    }

    //: class func applicationWillEnterForeground(_ application: UIApplication) {
    class func lessName(_: UIApplication) {
        //: AppDelegateHelper.shared.stopPlayBGM()
        MakeDelegateHelper.shared.conk()
        // 进入前台，结束后台任务
        //: AppDelegateHelper.shared.checkAndEndBackgroundTask()
        MakeDelegateHelper.shared.studyAllOverTask()
    }

    //: class func applicationWillResignActive(_ application: UIApplication) {
    class func utilisationActive(_ application: UIApplication) {
        //: let unreadMsgCount = EqualThen.share.unreadMessageNum
        let unreadMsgCount = EqualThen.share.unreadMessageNum
        //: application.applicationIconBadgeNumber = unreadMsgCount
        application.applicationIconBadgeNumber = unreadMsgCount
    }

    //: class func applicationDidReceiveMemoryWarning(_ application: UIApplication) {
    class func valid(_: UIApplication) {
        //: URLCache.shared.removeAllCachedResponses()
        URLCache.shared.removeAllCachedResponses()
        //: URLCache.shared.diskCapacity = 0
        URLCache.shared.diskCapacity = 0
        //: URLCache.shared.memoryCapacity = 0
        URLCache.shared.memoryCapacity = 0
        //: let typeSet: Set<String> = [WKWebsiteDataTypeLocalStorage, WKWebsiteDataTypeDiskCache]
        let typeSet: Set<String> = [WKWebsiteDataTypeLocalStorage, WKWebsiteDataTypeDiskCache]
        //: WKWebsiteDataStore.default().removeData(ofTypes: typeSet, modifiedSince: Date(timeIntervalSince1970: 0)) {}
        WKWebsiteDataStore.default().removeData(ofTypes: typeSet, modifiedSince: Date(timeIntervalSince1970: 0)) {}
    }

    //: class func application(_ application: UIApplication, handleEventsForBackgroundURLSession identifier: String, completionHandler: @escaping () -> Void) {
    class func hack(_: UIApplication, handleEventsForBackgroundURLSession _: String, completionHandler: @escaping () -> Void) {
        //: AppDelegateHelper.shared.backgroundSessionCompletionHandler = completionHandler
        MakeDelegateHelper.shared.backgroundSessionCompletionHandler = completionHandler
    }
}

// MARK: - 控制器初始化方法

//: extension AppDelegateHelper {
extension MakeDelegateHelper {
    /// 获取config和userinfo缓存
    //: private func initGetCache() {
    private func bottomTime() {
        //: EqualThen.share.func__checkAppConfigModeNeedUpdate()
        EqualThen.share.streetwiseTheme()
        //: EqualThen.share.func__loadCurrentLoginInfoData()
        EqualThen.share.objectData()
    }

    //: @objc private func initRootController() {
    @objc private func decompress() {
        // 延后初始化三方sdk, 防止首次安装时无网络初始化失败
        //: if currApplication != nil {
        if currApplication != nil {
            //: AppDelegateHelper.shared.initThirdPartySetup(currApplication!)
            MakeDelegateHelper.shared.actionShowTip(currApplication!)
        }
        //: EqualThen.share.func__listenRequestHasInit()
        EqualThen.share.modelListenInit()
        //: window = UIWindow(frame: UIScreen.main.bounds)
        window = UIWindow(frame: UIScreen.main.bounds)
        //: window?.backgroundColor = .white
        window?.backgroundColor = .white
        //: window?.makeKeyAndVisible()
        window?.makeKeyAndVisible()

        //: let uid = (Defaults.string(forKey: TalkingLoginUidCacheKey)) ?? ""
        let uid = (kLet_turnPartyValue.string(forKey: kLet_bottomNextText)) ?? ""
        //: if !uid.isEmptyString, Int(uid)! > 0 {
        if !uid.isEmptyString, Int(uid)! > 0 { // 登录状态
            //: func__setupTakingViewController()
            stub()

            // 统计崩溃用户Id
            //: Crashlytics.crashlytics().setUserID(EqualThen.share.loginUid)
            Crashlytics.crashlytics().setUserID(EqualThen.share.loginUid)
            //: Crashlytics.crashlytics().setCustomValue(EqualThen.share.loginUid, forKey: "key_uid")
            Crashlytics.crashlytics().setCustomValue(EqualThen.share.loginUid, forKey: (String(str_modeValue.prefix(6)) + str_indexText.replacingOccurrences(of: "data", with: "d")))
            // 检查是否有未完成的支付订单
            //: AppleIAPManager.shared.iap_checkUnfinishedTransactions()
            AtThen.shared.response()
            //: EqualThen.share.request_HasInit = false
            EqualThen.share.request_HasInit = false
            // 清除礼物缓存
            //: TalkingChatGiftManager.share.gift_clearMemoryCache(showRed: false)
            AstatineThen.share.screenMemoryEqual(showRed: false)
            // firebase上报token
            //: AppManagerRequest.func__reportFCMID()
            GiftManagerRequest.scaleParty()
            //: } else {
        } else {
            //: if EqualThen.share.loginSessionId.count > 0 {
            if EqualThen.share.loginSessionId.count > 0 {
                //: TalkingLoginRequestTool.req_loginOut { _ in
                LoginRequestTool.atCompletion { _ in
                }
                //: EqualThen.share.func__cleanPrevLoginData()
                EqualThen.share.withRequest()
            }
            //: func__setupLoginViewController()
            alongFunc()
            //: EqualThen.share.request_HasInit = true
            EqualThen.share.request_HasInit = true
        }
    }

    //: private func func__setupTakingViewController() {
    private func stub() {
        //: func__setupRootViewController(type: .Taking)
        controllerGenerate(type: .Taking)
    }

    //: private func func__setupLoginViewController() {
    private func alongFunc() {
        //: func__setupRootViewController(type: .Login)
        controllerGenerate(type: .Login)
    }

    //: private func func__setupRootViewController(type: TarBarControllerViewType) {
    private func controllerGenerate(type: ViewType) {
        //: if Thread.current.isMainThread {
        if Thread.current.isMainThread {
            //: func__setWindowRootViewController(type: type)
            beforeFinish(type: type)
            //: } else {
        } else {
            //: DispatchQueue.main.async {
            DispatchQueue.main.async {
                //: self.func__setWindowRootViewController(type: type)
                self.beforeFinish(type: type)
            }
        }
    }

    //: private func func__setWindowRootViewController(type: TarBarControllerViewType) {
    private func beforeFinish(type: ViewType) {
        //: if checkRootTarBarController(type: type) {
        if anima(type: type) {
            //: return
            return
                //: } else {
        } else {
            //: let tabbar = TalkingTabBarViewController(tabBarType: type)
            let tabbar = ViewListControllerDelegate(tabBarType: type)
            //: window?.rootViewController = tabbar
            window?.rootViewController = tabbar
        }
    }

    //: private func checkRootTarBarController(type: TarBarControllerViewType) -> Bool {
    private func anima(type: ViewType) -> Bool {
        //: let rootVC = window?.rootViewController
        let rootVC = window?.rootViewController
        //: if rootVC is TalkingTabBarViewController {
        if rootVC is ViewListControllerDelegate {
            //: if let rootVC1 = rootVC as? TalkingTabBarViewController {
            if let rootVC1 = rootVC as? ViewListControllerDelegate {
                //: if rootVC1.tabBarVCType == type {
                if rootVC1.tabBarVCType == type {
                    //: return true
                    return true
                }
            }
        }
        //: return false
        return false
    }
}

// MARK: - 通知监听

//: extension AppDelegateHelper {
extension MakeDelegateHelper {
    /// 初始化通知监听
    //: private func installNotificationObservers() {
    private func observers() {
        // 网络状态监听
        //: EqualThen.share.startNotifierNetwork()
        EqualThen.share.startOut()

        //: NotificationCenter.default.addObserver(self, selector: #selector(reachabilityChanged(note:)), name: .reachabilityChanged, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(smartNote(note:)), name: .reachabilityChanged, object: nil)

        // 登录成功通知
        //: NotificationCenter.default.rx
        NotificationCenter.default.rx
            //: .notification(DID_LOGIN_SUCCESS_NOTIFICATION)
            .notification(kLet_popText)
            //: .take(until: rx.deallocated)
            .take(until: rx.deallocated)
            //: .subscribe(onNext: { _ in
            .subscribe(onNext: { _ in

                /// 重新打开数据库
                //: WCDBManager.shared.connectDatabase()
                ViewManager.shared.connectFromSubdataBase()
                //: self.func__setupTakingViewController()
                self.stub()
                //: EqualThen.share.func__UserLoginChanged(isLogin: true)
                EqualThen.share.dataConverterFile(isLogin: true)

                // 统计崩溃用户Id
                //: Crashlytics.crashlytics().setUserID(EqualThen.share.loginUid)
                Crashlytics.crashlytics().setUserID(EqualThen.share.loginUid)
                //: Crashlytics.crashlytics().setCustomValue(EqualThen.share.loginUid, forKey: "key_uid")
                Crashlytics.crashlytics().setCustomValue(EqualThen.share.loginUid, forKey: (String(str_modeValue.prefix(6)) + str_indexText.replacingOccurrences(of: "data", with: "d")))
                // 检查是否有末完成的支付订单
                //: AppleIAPManager.shared.iap_checkUnfinishedTransactions()
                AtThen.shared.response()
                //: if !EqualThen.share.request_HasInit {
                if !EqualThen.share.request_HasInit {
                    //: EqualThen.share.request_HasInit = true
                    EqualThen.share.request_HasInit = true
                }
                // firebase上报token
                //: AppManagerRequest.func__reportFCMID()
                GiftManagerRequest.scaleParty()
                //: }).disposed(by: disposeBag)
            }).disposed(by: disposeBag)

        // 退出登录通知
        //: NotificationCenter.default.rx
        NotificationCenter.default.rx
            //: .notification(DID_LOGIN_OUT_SUCCESS_NOTIFICATION)
            .notification(kLet_useName)
            //: .take(until: rx.deallocated)
            .take(until: rx.deallocated)
            //: .subscribe(onNext: { _ in
            .subscribe(onNext: { _ in
                //: EqualThen.share.func__UserLoginChanged(isLogin: false)
                EqualThen.share.dataConverterFile(isLogin: false)
                //: TalkingSocketManager.shared.closeWebSocket(userLoginOut: true)
                DeviceSocketDelegate.shared.circumferentOut(userLoginOut: true)
                //: TalkingLocationManager.destroy()
                PopEventThen.iconDestroy()
                //: self.func__setupLoginViewController()
                self.alongFunc()
                //: (TalkingApplication.shared as! TalkingApplication).destroy()
                (CellTalkingApplication.shared as! CellTalkingApplication).onArt()

                //: }).disposed(by: disposeBag)
            }).disposed(by: disposeBag)

        // 刷新个人资料
        //: NotificationCenter.default.rx.notification(UPDATE_USER_GETMYINFO_NOTIFICATION)
        NotificationCenter.default.rx.notification(kLet_postVersionScreenContent)
            //: .take(until: rx.deallocated)
            .take(until: rx.deallocated)
            //: .subscribe(onNext: { _ in
            .subscribe(onNext: { _ in
                //: AppManagerRequest.func__requestUserInfo { succeed, _, _ in
                GiftManagerRequest.makeEnable { succeed, _, _ in
                    //: guard succeed else { return }
                    guard succeed else { return }
                    // 个人信息请求成功发送通知
                    //: NotificationCenter.default.post(name: USER_GETMYINFO_SUCCEED_NOTIFICATION, object: nil)
                    NotificationCenter.default.post(name: kLet_viewValue, object: nil)
                }
                //: }).disposed(by: disposeBag)
            }).disposed(by: disposeBag)
    }

    //: @objc private func reachabilityChanged(note: Notification) {
    @objc private func smartNote(note: Notification) {
        //: let reachability = note.object as! Reachability
        let reachability = note.object as! Reachability
        //: switch reachability.connection {
        switch reachability.connection {
        //: case .wifi:
        case .wifi:
            //: printLog(message: "Reachable via WiFi")
            printLog(message: (String(str_managerName.suffix(5)) + str_coverTitle.replacingOccurrences(of: "value", with: "ab") + String(str_makeValue.suffix(4)) + "ia WiFi"))
        //: case .cellular:
        case .cellular:
            //: printLog(message: "Reachable via Cellular")
            printLog(message: (String(str_toCleanName) + str_mediaUpgradeValue.replacingOccurrences(of: "model", with: "ar")))
        //: case .unavailable:
        case .unavailable:
            // 网络不可用，全局提示用户
            //: func__showStatusBarErrorMsg(showMsg: "Current network unavailable".localized)
            oversight(showMsg: (String(str_managerStyleData.prefix(4)) + "ent n" + str_colorTitle.replacingOccurrences(of: "message", with: "tw") + "k un" + str_userValue.replacingOccurrences(of: "path", with: "la")).localized)
        //: case .none:
        case .none:
            //: printLog(message: "Network none")
            printLog(message: (String(str_gestureText.prefix(7)) + String(str_rangeName.suffix(5))))
        }
    }
}

// MARK: - 后台任务

//: extension AppDelegateHelper {
extension MakeDelegateHelper {
    // 开启后台任务
    //: private func startBackgroundTask() {
    private func noMedia() {
        //: checkAndEndBackgroundTask()
        studyAllOverTask()
        //: if backTaskIdentifier == .invalid {
        if backTaskIdentifier == .invalid {
            //: backTaskIdentifier = UIApplication.shared.beginBackgroundTask {
            backTaskIdentifier = UIApplication.shared.beginBackgroundTask {
                //: self.checkAndEndBackgroundTask()
                self.studyAllOverTask()
            }
        }
    }

    /// 结束后台任务
    //: private func checkAndEndBackgroundTask() {
    private func studyAllOverTask() {
        //: if backTaskIdentifier != .invalid {
        if backTaskIdentifier != .invalid {
            //: UIApplication.shared.endBackgroundTask(backTaskIdentifier)
            UIApplication.shared.endBackgroundTask(backTaskIdentifier)
            //: backTaskIdentifier = .invalid
            backTaskIdentifier = .invalid
        }
    }

    /// 开始播放背景音乐
    //: func startPlayBGM() {
    func launchBackPlay() {
        //: let filePath = SVGAEffectTool.default.getMp3Path(name: "call_response_bgm")
        let filePath = ToEffectTool.default.perimeterList(name: (String(str_withData.prefix(7)) + str_frameData.replacingOccurrences(of: "message", with: "po") + "_bgm"))

        //: let fileURL = URL(fileURLWithPath: filePath)
        let fileURL = URL(fileURLWithPath: filePath)
        //: do {
        do {
            //: bgmPlayer = try AVAudioPlayer(contentsOf: fileURL)
            bgmPlayer = try AVAudioPlayer(contentsOf: fileURL)
            //: bgmPlayer?.play()
            bgmPlayer?.play()
            //: startSystemVibrate()
            startVibrate()
            //: } catch {
        } catch {
            //: printLog(message: "Error playing BMG audio: \(error.localizedDescription)")
            printLog(message: (String(str_centerName)) + "\(error.localizedDescription)")
        }
    }

    ///  停止播放背景音乐
    //: func stopPlayBGM() {
    func conk() {
        //: stopSystemVibrate()
        moveCountoVibrate()
        //: guard bgmPlayer != nil else { return }
        guard bgmPlayer != nil else { return }
        //: bgmPlayer?.stop()
        bgmPlayer?.stop()
        //: bgmPlayer = nil
        bgmPlayer = nil
    }

    /// 开始震动
    //: private func startSystemVibrate() {
    private func startVibrate() {
        //: AudioServicesAddSystemSoundCompletion(kSystemSoundID_Vibrate, nil, nil, { _, _ in
        AudioServicesAddSystemSoundCompletion(kSystemSoundID_Vibrate, nil, nil, { _, _ in
            //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1) {
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1) {
                //: AudioServicesPlaySystemSound(kSystemSoundID_Vibrate)
                AudioServicesPlaySystemSound(kSystemSoundID_Vibrate)
            }
            //: }, nil)
        }, nil)
        //: AudioServicesPlaySystemSound(kSystemSoundID_Vibrate)
        AudioServicesPlaySystemSound(kSystemSoundID_Vibrate)
    }

    /// 停止震动
    //: private func stopSystemVibrate() {
    private func moveCountoVibrate() {
        //: AudioServicesRemoveSystemSoundCompletion(kSystemSoundID_Vibrate)
        AudioServicesRemoveSystemSoundCompletion(kSystemSoundID_Vibrate)
        //: AudioServicesDisposeSystemSoundID(kSystemSoundID_Vibrate)
        AudioServicesDisposeSystemSoundID(kSystemSoundID_Vibrate)
    }
}
