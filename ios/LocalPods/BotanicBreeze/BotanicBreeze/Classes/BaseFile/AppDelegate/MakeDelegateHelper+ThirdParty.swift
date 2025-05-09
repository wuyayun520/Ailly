
//: Declare String Begin

/*: "app_marsxlog" :*/
fileprivate let str_indexText:String = "app_equal false name"
fileprivate let str_okData:String = "marsxtheng"

/*: "Install" :*/
fileprivate let str_viewContent:[Character] = ["I","n","s","t","a","l","l"]

/*: "LinkedME finished init with params(params.description)" :*/
fileprivate let str_voiceBackName:[UInt8] = [0x47,0x62,0x65,0x60,0x6e,0x6f,0x46,0x4e,0x2b,0x6d,0x62,0x65,0x62,0x78,0x63,0x6e,0x6f,0x2b,0x62,0x65,0x62,0x7f,0x2b,0x7c,0x62,0x7f,0x63,0x2b,0x7b,0x6a,0x79,0x6a,0x66,0x78,0x23,0x7b,0x6a,0x79,0x6a,0x66,0x78,0x25,0x6f,0x6e,0x78,0x68,0x79,0x62,0x7b,0x7f,0x62,0x64,0x65,0x22]

private func imageTable(local num: UInt8) -> UInt8 {
    return num ^ 11
}

/*: "$control" :*/
fileprivate let str_playMatchTitle:[Character] = ["$","c","o","n","t","r","o","l"]

/*: "inviteCode" :*/
fileprivate let str_managerTitle:String = "third makeinviteC"
fileprivate let str_centerDayData:String = "odgreet"

/*: "TXUGCBase初始化：result:  :*/
fileprivate let str_rowThirdText:String = "modelUG"
fileprivate let str_lineValue:String = "content hideCBase"
fileprivate let str_positionName:String = "commentesu"

/*: , reason:  :*/
fileprivate let str_timeName:[Character] = [","," ","r","e","a","s","o","n",":"," "]

/*: ." :*/
fileprivate let str_atData:[Character] = ["."]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  MakeDelegateHelper+ThirdParty.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/11/3.
//

//: import Adjust
import Adjust

//: import Foundation
import Foundation

//: import TXLiteAVSDK_Professional
import TXLiteAVSDK_Professional

//: import UIKit
import UIKit

//: import DXMarsXlog
import DXMarsXlog

// MARK: - Public Event

//: extension AppDelegateHelper {
extension MakeDelegateHelper {
    /// 第三方sdk初始化
    /// - Parameter application: application
    //: func initThirdPartySetup(_ application: UIApplication) {
    func actionShowTip(_: UIApplication) {
        // 程序启动就实例化进行监听（处理自动续订的情况）
        //: _ = AppleIAPManager.shared
        _ = AtThen.shared

        //: createMsgVoicePath()
        createMsgVoicePath()

        //: DXMarsXLogger.shared().initWithNamePrefix("app_marsxlog")
        DXMarsXLogger.shared().initWithNamePrefix((String(str_indexText.prefix(4)) + str_okData.replacingOccurrences(of: "then", with: "lo")))

        //: TalkingConversationListener.shared.func__TXSDKInit()
        TalkingConversationListener.shared.northeast()

        //: initADjust()
        labStartDjust()
        // 首次打开埋点【只记录一次】
        //: TalkingAdjustManager.share.addOnceEvent(key: "Install")
        AdministratorThen.share.keyAddEventEnablece(key: (String(str_viewContent)))
        //: setupTXLive()
        liveSearch()
        //: setupTXUGC()
        txugc()

        //: guard SenseTime_Use == true else { return }
        guard kLet_infoData == true else { return }
        //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 3) {
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 3) {
            //: if STLicHelper.share.checkLicense() == false {
            if STLicHelper.share.checkLicense() == false {
                //: SenseTime_Use = false
                kLet_infoData = false
                //: STLicHelper.share.checkRemoteLicInfoWith { succeed in
                STLicHelper.share.checkRemoteLicInfoWith { succeed in
                    // 更新商汤美颜是否可用
                    //: SenseTime_Use = succeed
                    kLet_infoData = succeed
                }
            }
        }
    }

    /// LinkedME初始化
    //: func initLinkedME(launchOptions: [UIApplication.LaunchOptionsKey: Any]?) {
    func feedback(launchOptions _: [UIApplication.LaunchOptionsKey: Any]?) {
        //: let linkedme = LinkedME.getInstance()
        let linkedme = LinkedME.getInstance()
        // 解析深度链获取参数
        //: linkedme?.initSession(andRegisterDeepLinkHandler: { params, error in if error == nil {
        linkedme?.initSession(andRegisterDeepLinkHandler: { params, error in if error == nil {
            //: printLog(message: "LinkedME finished init with params(params.description)")
            printLog(message: String(bytes: str_voiceBackName.map{imageTable(local: $0)}, encoding: .utf8)!)

            //: let inviteCode = UserDefaults.standard.string(forKey: SaveInviteCodeKey)
            let inviteCode = UserDefaults.standard.string(forKey: kLet_tabData)
            //: guard inviteCode == nil else {
            guard inviteCode == nil else {
                //: return
                return
            }
            //: let dic = params?["$control"] as? [String: Any]
            let dic = params?[(String(str_playMatchTitle))] as? [String: Any]
            //: let code = dic?["inviteCode"] as? String
            let code = dic?[(String(str_managerTitle.suffix(7)) + str_centerDayData.replacingOccurrences(of: "greet", with: "e"))] as? String
            //: if code != nil, code?.count ?? 0 > 1 {
            if code != nil, code?.count ?? 0 > 1 {
                //: UserDefaults.standard.set(code, forKey: SaveInviteCodeKey)
                UserDefaults.standard.set(code, forKey: kLet_tabData)
            }

            //: } else {
        } else {
            //: printLog(message: error as Any)
            printLog(message: error as Any)
        }

        //: })
        })
    }
}

// MARK: - Private Event

//: extension AppDelegateHelper {
extension MakeDelegateHelper {
    //: private func setupTXLive() {
    private func liveSearch() {
        // 腾讯SDK 6.4版本之后，推流功能需要license验证SDK，
        //: if TXLIVE_LICENSE_URL.count > 0 {
        if kLet_homeText.count > 0 {
            //: TXLiveBase.setLicenceURL(TXLIVE_LICENSE_URL, key: TXLIVE_LICENSE_KEY)
            TXLiveBase.setLicenceURL(kLet_homeText, key: kLet_movieData)
            //: TXLiveBase.setLogLevel(.LOGLEVEL_VERBOSE)
            TXLiveBase.setLogLevel(.LOGLEVEL_VERBOSE)
        }
    }

    // 短视频license
    //: private func setupTXUGC() {
    private func txugc() {
        //: TXUGCBase.setLicenceURL(TXLIVE_LICENSE_URL, key: TXLIVE_LICENSE_KEY)
        TXUGCBase.setLicenceURL(kLet_homeText, key: kLet_movieData)
        //: TXUGCBase.sharedInstance().delegate = self
        TXUGCBase.sharedInstance().delegate = self
    }

    /// adjust事件买点统计
    //: private func initADjust() {
    private func labStartDjust() {
        //: var environment = ""
        var environment = ""
        //: if !Environment_Formal {
        if !kLet_recordErrName {
            //: environment = ADJEnvironmentSandbox
            environment = ADJEnvironmentSandbox
            //: } else {
        } else {
            //: environment = ADJEnvironmentProduction
            environment = ADJEnvironmentProduction
        }
        //: let yourAppToken = AdjustKey
        let yourAppToken = kLet_partyData
        //: let adjustConfig = ADJConfig(appToken: yourAppToken, environment: environment)
        let adjustConfig = ADJConfig(appToken: yourAppToken, environment: environment)
        //: adjustConfig?.logLevel = ADJLogLevelWarn
        adjustConfig?.logLevel = ADJLogLevelWarn
        //: Adjust.appDidLaunch(adjustConfig)
        Adjust.appDidLaunch(adjustConfig)
    }
}

// MARK: - TXUGCBaseDelegate【短视频压缩、上传】

//: extension AppDelegateHelper: TXUGCBaseDelegate {
extension MakeDelegateHelper: TXUGCBaseDelegate {
    //: public func onLicenceLoaded(_ result: Int32, reason: String!) {
    public func onLicenceLoaded(_ result: Int32, reason: String!) {
        //: DeepKeyTamperReactiveCompatible.indexView(msg: "TXUGCBase初始化：result: \(result), reason: \(String(describing: reason)).")
        DeepKeyTamperReactiveCompatible.indexView(msg: (str_rowThirdText.replacingOccurrences(of: "model", with: "TX") + String(str_lineValue.suffix(5)) + "初始\u{5316}：" + str_positionName.replacingOccurrences(of: "comment", with: "r") + "lt: ") + "\(result)" + (String(str_timeName)) + "\(String(describing: reason)).")
    }
}
