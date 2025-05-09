
//: Declare String Begin

/*: "PHPSESSID" :*/
fileprivate let str_picName:String = "phpsessid"

/*: "UID" :*/
fileprivate let str_availableTitle:String = "resultID"

/*: "Any" :*/
fileprivate let str_upUseValue:String = "Anylabel than model let container"

/*: "UserBasicInfoSetting/userTag.json" :*/
fileprivate let str_readName:[UInt8] = [0x6e,0x6f,0x73,0x6a,0x2e,0x67,0x61,0x54,0x72,0x65,0x73,0x75,0x2f,0x67,0x6e,0x69,0x74,0x74,0x65,0x53,0x6f,0x66,0x6e,0x49,0x63,0x69,0x73,0x61,0x42,0x72,0x65,0x73,0x55]

/*: "获取数据" :*/
fileprivate let str_phoneData:String = "获\u{53d6}\u{6570}据"

/*: "json 解析失败" :*/
fileprivate let str_textName:String = "json case to self empty coin"
fileprivate let str_pathValue:String = "解析失\u{8d25}"

/*: "request_HasInit" :*/
fileprivate let str_viewName:[Character] = ["r","e","q","u","e","s","t","_","H","a"]
fileprivate let str_tipUntilContent:String = "bottom name viewsInit"

/*: "Reachable via WiFi" :*/
fileprivate let str_belowReplyData:String = "add makeReachabl"
fileprivate let str_upValue:String = "name group key fill makee via "

/*: "Reachable via Cellular" :*/
fileprivate let str_sumData:[Character] = ["R","e","a","c","h","a","b","l","e"," ","v","i"]
fileprivate let str_infoValue:[Character] = ["a"," "]
fileprivate let str_appTitle:[Character] = ["C","e","l","l","u","l","a","r"]

/*: "Network not reachable" :*/
fileprivate let str_playerTitle:[Character] = ["N","e","t","w","o","r","k"," ","n","o","t"," "]
fileprivate let str_viewData:String = "REACHABLE"

/*: "Not reachable" :*/
fileprivate let str_videoName:String = "Not file to to make"
fileprivate let str_myTopValue:[Character] = ["e"]

/*: "Unable to start notifier" :*/
fileprivate let str_nameData:String = "Unablesource online lack"
fileprivate let str_actionTitle:String = "any signtart n"
fileprivate let str_arrayTransformData:[Character] = ["i","e","r"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  EqualThen.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/1/26.
//

//: import UIKit
import UIKit

//: public class EqualThen: NSObject {
public class EqualThen: NSObject {
    //: @objc static public let share = EqualThen()
    @objc public static let share = EqualThen()
    //: private override init() {}
    override private init() {}

    //: @objc public var loginUserMode = LoginUserModel()
    @objc public var loginUserMode = RunUserModel() // 用户登录的信息
    //: @objc public var appUserConfigMode = AppUserConfigModel()
    @objc public var appUserConfigMode = ShadowTransformable() // App 用户配置信息
    //: var showWindow = false
    var showWindow = false // 是否需要展示巨星邀请引导弹窗【只在注册更新资料流程中才返回】
    //: var userFillInfoMode = UserFillInfoModel.init()
    var userFillInfoMode = BullInfoModel() // 用户完善资料缓存
    //: var appConfigMode = AppConfigModel()
    var appConfigMode = AddModelType() // App 配置信息
    //: var reachability: Reachability?
    var reachability: Reachability? // 网络监听
    //: @objc public dynamic var networkStatus: AppNetworkStatus = .Unavailable
    @objc public dynamic var networkStatus: BringValueConvertible = .Unavailable // 网络状态

    //: @objc public dynamic var request_HasInit: Bool = false
    @objc public dynamic var request_HasInit: Bool = false

    //: @objc public var appStatus: Int {
    @objc public var appStatus: Int { // 审核状态
        //: if loginUserMode.status == 0, appConfigMode.status == 0 {
        if loginUserMode.status == 0, appConfigMode.status == 0 {
            //: return AppSkinStatus.normal.rawValue
            return PhaseOfTheMoonPropertyProtocol.normal.rawValue
            //: } else {
        } else {
            //: return AppSkinStatus.special.rawValue
            return PhaseOfTheMoonPropertyProtocol.special.rawValue
        }
    }

    //: @objc public dynamic var unreadMessageNum: Int = 0
    @objc public dynamic var unreadMessageNum: Int = 0

    //: private let disposeBag = DisposeBag()
    private let disposeBag = DisposeBag()

    //: var loginSessionId: String {
    var loginSessionId: String {
        //: let url = URL.init(string: TalkingRequestAddrTool.share.serverUrlStr)!
        let url = URL(string: SendUpReactiveCompatible.share.serverUrlStr)!
        //: let cookieArr: Array<HTTPCookie> = HTTPCookieStorage.shared.cookies(for: url)!
        let cookieArr: [HTTPCookie] = HTTPCookieStorage.shared.cookies(for: url)!
        //: for cookie in cookieArr {
        for cookie in cookieArr {
            //: if cookie.name.uppercased() == "PHPSESSID" {
            if cookie.name.uppercased() == (str_picName.uppercased()) {
                //: return cookie.value
                return cookie.value
            }
        }
        //: return ""
        return ""
    }

    //: var loginUid: String {
    var loginUid: String {
        //: let url = URL.init(string: TalkingRequestAddrTool.share.serverUrlStr)!
        let url = URL(string: SendUpReactiveCompatible.share.serverUrlStr)!
        //: let cookieArr: Array<HTTPCookie> = HTTPCookieStorage.shared.cookies(for: url)!
        let cookieArr: [HTTPCookie] = HTTPCookieStorage.shared.cookies(for: url)!
        //: for cookie in cookieArr {
        for cookie in cookieArr {
            //: if cookie.name.uppercased() == "UID" {
            if cookie.name.uppercased() == (str_availableTitle.replacingOccurrences(of: "result", with: "U")) {
                //: return cookie.value
                return cookie.value
            }
        }
        //: return ""
        return ""
    }

    // 重置参数
    //: func func__reSet() {
    func atPing() {
        //: loginUserMode = LoginUserModel.init()
        loginUserMode = RunUserModel()
        // 首页列表筛选条件
        //: SEARCH_AGE = "Any".localized
        kLet_tabScreenDeviceValue = (String(str_upUseValue.prefix(3))).localized
        //: SEARCH_VIDEOCOVER = "Any".localized
        kLet_keyIconTitle = (String(str_upUseValue.prefix(3))).localized
    }
}

//: extension EqualThen {
extension EqualThen {
    /// 更改用户登录状态
    /// - Parameter isLogin: 是否登录
    //: func func__UserLoginChanged(isLogin: Bool) {
    func dataConverterFile(isLogin: Bool) {
        //: if isLogin {
        if isLogin {
            //: Defaults.set(EqualThen.share.loginUserMode.userID, forKey: TalkingLoginUidCacheKey)
            kLet_turnPartyValue.set(EqualThen.share.loginUserMode.userID, forKey: kLet_bottomNextText)
            //: } else {
        } else {
            //: TalkingConversationListener.shared.func__LogingOut()
            TalkingConversationListener.shared.playApp()
            //: Defaults.removeObject(forKey: TalkingLoginUidCacheKey)
            kLet_turnPartyValue.removeObject(forKey: kLet_bottomNextText)
            //: func__cleanPrevLoginData()
            withRequest()
//            SendUpReactiveCompatible.share.func__removeAllCookies()
            // 清除礼物缓存
            //: TalkingChatGiftManager.share.gift_clearMemoryCache(showRed: false)
            AstatineThen.share.screenMemoryEqual(showRed: false)
        }
    }

    //: func func__checkAppConfigModeNeedUpdate() {
    func streetwiseTheme() {
        //: let configInfo = Defaults.dictionary(forKey: TalkingAppConfigKey)
        let configInfo = kLet_turnPartyValue.dictionary(forKey: kLet_rateMaxName)
        //: if let configModel = JSONDeserializer<AppConfigModel>.deserializeFrom(dict: configInfo, designatedPath: nil) {
        if let configModel = JSONDeserializer<AddModelType>.deserializeFrom(dict: configInfo, designatedPath: nil) {
            //: EqualThen.share.appConfigMode = configModel
            EqualThen.share.appConfigMode = configModel
        }
        //: if let status = EqualThen.share.reachability?.connection, status != .unavailable {
        if let status = EqualThen.share.reachability?.connection, status != .unavailable {
            //: func__loadAppConfigData()
            sinceQuery()
            //: } else {
        } else {
            //: NotificationCenter.default.addObserver(self, selector: #selector(reachabilityChanged(note:)), name: .reachabilityChanged, object: nil)
            NotificationCenter.default.addObserver(self, selector: #selector(titleNote(note:)), name: .reachabilityChanged, object: nil)
        }
    }

    //: func func__loadAppConfigData() {
    func sinceQuery() {
        //: AppManagerRequest.requestAppConfig { succeed, result, errorModel in
        GiftManagerRequest.server { succeed, _, _ in
            //: if succeed {
            if succeed {
                //: NotificationCenter.default.removeObserver(self, name: .reachabilityChanged, object: nil)
                NotificationCenter.default.removeObserver(self, name: .reachabilityChanged, object: nil)
            }
        }
    }

    //: func func__loadCurrentLoginInfoData() {
    func objectData() {
        //: let userInfo = Defaults.dictionary(forKey: TalkingLoginUserInfoCacheKey)
        let userInfo = kLet_turnPartyValue.dictionary(forKey: kLet_buildText)
        //: if let userModel = JSONDeserializer<LoginUserModel>.deserializeFrom(dict: userInfo, designatedPath: nil) {
        if let userModel = JSONDeserializer<RunUserModel>.deserializeFrom(dict: userInfo, designatedPath: nil) {
            //: loginUserMode = userModel
            loginUserMode = userModel
        }
    }

    //: func func__cleanPrevLoginData() {
    func withRequest() {
        //: func__reSet()
        atPing()
        //: Defaults.removeObject(forKey: TalkingLoginUserInfoCacheKey)
        kLet_turnPartyValue.removeObject(forKey: kLet_buildText)
//        let oldServerUrl: String = SendUpReactiveCompatible.share.serverUrlStr
//        if oldServerUrl.count > 0 {
//            let oldCookies: [HTTPCookie] = HTTPCookieStorage.shared.cookies(for: URL.init(string: oldServerUrl)!)!
//            for cookies in oldCookies {
//                if cookies.name.uppercased() == "PHPSESSID" {
//                    HTTPCookieStorage.shared.deleteCookie(cookies)
//                } else if(cookies.name.uppercased() == "UID") {
//                    HTTPCookieStorage.shared.deleteCookie(cookies)
//                }
//            }
//        }
    }

    //: func func__loadUserTagCacheData() -> Any? {
    func jumpTime() -> Any? {
        // MARK: 数据的读取

        //: let jsonPath = FileManager.CachesDirectory()+"UserBasicInfoSetting/userTag.json"
        let jsonPath = FileManager.noLog() + String(bytes: str_readName.reversed(), encoding: .utf8)!
        //: if FileManager.judgeFileOrFolderExists(filePath: jsonPath) {
        if FileManager.umpire(filePath: jsonPath) {
            //: let dataInfo = FileManager.default.contents(atPath: jsonPath)
            let dataInfo = FileManager.default.contents(atPath: jsonPath)
            //: let readStr = String.init(data: dataInfo!, encoding: .utf8)
            let readStr = String(data: dataInfo!, encoding: .utf8)
            //: if let tagModel = JSONDeserializer<UserTagModel>.deserializeFrom(json: readStr) {
            if let tagModel = JSONDeserializer<TagModel>.deserializeFrom(json: readStr) {
                //: printLog(message: "获取数据")
                printLog(message: (str_phoneData))
                //: return tagModel
                return tagModel
                //: } else {
            } else {
                //: printLog(message: "json 解析失败")
                printLog(message: (String(str_textName.prefix(5)) + str_pathValue))
            }
        }
        //: return nil
        return nil
    }

    //: func func__listenRequestHasInit() {
    func modelListenInit() {
        //: self.rx.observeWeakly(Bool.self, "request_HasInit")
        self.rx.observeWeakly(Bool.self, (String(str_viewName) + String(str_tipUntilContent.suffix(5))))
            //: .subscribe(onNext: { (value) in
            .subscribe(onNext: { value in
                //: let valueBool = value ?? false
                let valueBool = value ?? false
                //: if valueBool {
                if valueBool {
                    //: } else {
                } else {
                    //: AppManagerRequest.func__initAppRequest()
                    GiftManagerRequest.infoIn()
                }
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)
    }

    /// 网络状态监测
    //: func startNotifierNetwork() {
    func startOut() {
        //: if self.reachability == nil {
        if self.reachability == nil {
            //: guard let reachability = try? Reachability() else { return }
            guard let reachability = try? Reachability() else { return }
            //: self.reachability = reachability
            self.reachability = reachability
            //: reachability.whenReachable = { reach in
            reachability.whenReachable = { reach in
                //: switch reach.connection {
                switch reach.connection {
                //: case .wifi:
                case .wifi:
                    //: self.networkStatus = .Wifi
                    self.networkStatus = .Wifi
                    //: printLog(message: "Reachable via WiFi")
                    printLog(message: (String(str_belowReplyData.suffix(8)) + String(str_upValue.suffix(6)) + "WiFi"))
                //: case .cellular:
                case .cellular:
                    //: self.networkStatus = .Cellular
                    self.networkStatus = .Cellular
                    //: printLog(message: "Reachable via Cellular")
                    printLog(message: (String(str_sumData) + String(str_infoValue) + String(str_appTitle)))
                //: default:
                default:
                    //: self.networkStatus = .Unavailable
                    self.networkStatus = .Unavailable
                    //: printLog(message: "Network not reachable")
                    printLog(message: (String(str_playerTitle) + str_viewData.lowercased()))
                }
            }
            //: reachability.whenUnreachable = { _ in
            reachability.whenUnreachable = { _ in
                //: self.networkStatus = .Unavailable
                self.networkStatus = .Unavailable
                //: printLog(message: "Not reachable")
                printLog(message: (String(str_videoName.prefix(4)) + "reachabl" + String(str_myTopValue)))
            }

            //: do {
            do {
                //: try reachability.startNotifier()
                try reachability.startNotifier()
                //: } catch {
            } catch {
                //: printLog(message: "Unable to start notifier")
                printLog(message: (String(str_nameData.prefix(6)) + " to s" + String(str_actionTitle.suffix(6)) + "otif" + String(str_arrayTransformData)))
            }
        }
    }

    //: @objc func reachabilityChanged(note: Notification) {
    @objc func titleNote(note: Notification) {
        //: let reachability = note.object as? Reachability
        let reachability = note.object as? Reachability
        //: if reachability?.connection != .unavailable {
        if reachability?.connection != .unavailable {
            //: func__loadAppConfigData()
            sinceQuery()
        }
    }
}
