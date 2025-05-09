
//: Declare String Begin

/*: "%02hhx" :*/
fileprivate let str_phoneTitle:String = "level section let%02hhx"

/*: "APNS Token =  :*/
fileprivate let str_sourceData:String = "voicePNS"
fileprivate let str_originalValue:String = "model truen = "

/*: "APNS Token Error:  :*/
fileprivate let str_kitDateValue:String = "APNto"
fileprivate let str_jumpName:String = " Errocount image data if content"
fileprivate let str_layerName:[Character] = ["r",":"," "]

/*: ." :*/
fileprivate let str_firstValue:[Character] = ["."]

/*: "token =  :*/
fileprivate let str_styleData:[Character] = ["t","o","k","e","n"," ","="," "]

/*: "extra" :*/
fileprivate let str_touchData:[Character] = ["e","x","t","r","a"]

/*: "Unable to register for remote notifications: :*/
fileprivate let str_keyData:[UInt8] = [0x0,0x3b,0x34,0x37,0x39,0x30,0x75,0x21,0x3a,0x75,0x27,0x30,0x32,0x3c,0x26,0x21,0x30,0x27,0x75,0x33,0x3a,0x27,0x75,0x27,0x30,0x38,0x3a,0x21,0x30,0x75,0x3b,0x3a,0x21,0x3c,0x33,0x3c,0x36,0x34,0x21,0x3c,0x3a,0x3b,0x26,0x6f]

/*: "token" :*/
fileprivate let str_nameData:[UInt8] = [0x37,0x2c,0x28,0x26,0x2d]

private func naturalLanguage(to num: UInt8) -> UInt8 {
    return num ^ 67
}

/*: "FCMToken" :*/
fileprivate let str_changeErrorName:String = "cell action with self varFCMTok"
fileprivate let str_someoneUserName:String = "hiddenn"

/*: _LocalPush" :*/
fileprivate let str_askValue:String = "_Locblock back number"
fileprivate let str_languageValue:String = "nameh"

/*: "identifier" :*/
fileprivate let str_addValue:String = "idpatht"

/*: "fcm_options" :*/
fileprivate let str_leadingText:[Character] = ["f","c","m","_","o","p"]
fileprivate let str_imageName:String = "tpartyns"

/*: "image" :*/
fileprivate let str_nameSendTitle:[UInt8] = [0x2f,0x2b,0x27,0x21,0x23]

/*: "本地推送通知 -- 用户未授权(.notDetermined)" :*/
fileprivate let str_managerName:[UInt8] = [0xb6,0xcc,0xfc,0xb5,0xcc,0xe0,0xb6,0xde,0xf8,0xb9,0xd0,0xd1,0xb9,0xd0,0xca,0xb7,0xcf,0xf5,0x70,0x7d,0x7d,0x70,0xb7,0xc4,0xf8,0xb6,0xd8,0xe7,0xb6,0xcc,0xfa,0xb6,0xde,0xd8,0xb6,0xcd,0xd3,0x78,0x7e,0x3e,0x3f,0x24,0x14,0x35,0x24,0x35,0x22,0x3d,0x39,0x3e,0x35,0x34,0x79]

private func makeParty(name num: UInt8) -> UInt8 {
    return num ^ 80
}

/*: "本地推送通知 -- 用户未授权(.denied)" :*/
fileprivate let str_topContent:[Character] = ["本","地","\u{63a8}","送"]
fileprivate let str_userLabText:String = "\u{901a}\u{77e5} -- "
fileprivate let str_listText:String = "view tool else.denied)"

/*: "本地推送通知 -- 用户未授权(.ephemeral)" :*/
fileprivate let str_shareTitle:String = "本地\u{63a8}送通知"
fileprivate let str_cellData:String = " -- back"
fileprivate let str_modeData:String = "gift guard label room tohemeral)"

/*: "本地推送通知 -- 用户未授权" :*/
fileprivate let str_ageData:String = "本地\u{63a8}送\u{901a}知"
fileprivate let str_textInfoRootTitle:String = "未授\u{6743}"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  MakeDelegateHelper+APNS.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/9/23.
//

//: import Foundation
import Foundation

//: import FirebaseCore
import FirebaseCore

//: import FirebaseMessaging
import FirebaseMessaging

//: import UserNotifications
import UserNotifications

//: public extension AppDelegateHelper {
public extension MakeDelegateHelper {
    /// 成功的回调
    //: class func application(didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
    class func goAwayEdit(didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
        //: let deviceStr = deviceToken.map { String(format: "%02hhx", $0) }.joined()
        let deviceStr = deviceToken.map { String(format: "%02hhx", $0) }.joined()
        //: Messaging.messaging().apnsToken = deviceToken
        Messaging.messaging().apnsToken = deviceToken
        //: printLog(message: "APNS Token = \(deviceStr)")
        printLog(message: (str_sourceData.replacingOccurrences(of: "voice", with: "A") + " Toke" + String(str_originalValue.suffix(4))) + "\(deviceStr)")
        //: Messaging.messaging().token { token, error in
        Messaging.messaging().token { token, error in
            //: if let error = error {
            if let error = error {
                //: DeepKeyTamperReactiveCompatible.indexView(msg: "APNS Token Error: \(error).")
                DeepKeyTamperReactiveCompatible.indexView(msg: (str_kitDateValue.replacingOccurrences(of: "to", with: "S") + " Token" + String(str_jumpName.prefix(5)) + String(str_layerName)) + "\(error).")
                //: } else if let token = token {
            } else if let token = token {
                //: printLog(message: "token = \(token)")
                printLog(message: (String(str_styleData)) + "\(token)")
            }
        }
    }

    /// 收到远程推送（kill app）
    //: class func application(didReceiveRemoteNotification userInfo: [AnyHashable: Any]) {
    class func withEqualNotification(didReceiveRemoteNotification userInfo: [AnyHashable: Any]) {
        //: Messaging.messaging().appDidReceiveMessage(userInfo)
        Messaging.messaging().appDidReceiveMessage(userInfo)
        //: if UIApplication.shared.applicationState != .active {
        if UIApplication.shared.applicationState != .active {
            //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1) {
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1) {
                //: if userInfo.keys.contains("extra") {
                if userInfo.keys.contains((String(str_touchData))) {
                    //: let extraStr = userInfo["extra"] as? String ?? ""
                    let extraStr = userInfo[(String(str_touchData))] as? String ?? ""
                    //: TalkingAPNSManager.share.APNSUserInfoStr = extraStr
                    UnrestrictedReactiveCompatible.share.APNSUserInfoStr = extraStr
                    //: TalkingAPNSManager.share.launchFromApns = true
                    UnrestrictedReactiveCompatible.share.launchFromApns = true
                }
            }
        }
    }

    /// 失败的回调
    //: class func application(didFailToRegisterForRemoteNotificationsWithError error: Error) {
    class func approximation(didFailToRegisterForRemoteNotificationsWithError error: Error) {
        //: printLog(message: "Unable to register for remote notifications:\(error.localizedDescription)")
        printLog(message: String(bytes: str_keyData.map{$0^85}, encoding: .utf8)! + "\(error.localizedDescription)")
    }

    /// 点击消息（app运行中）
    //: class func userNotificationCenter(didReceive response: UNNotificationResponse, withCompletionHandler completionHandler: @escaping () -> Void) {
    class func tipHandler(didReceive response: UNNotificationResponse, withCompletionHandler completionHandler: @escaping () -> Void) {
        //: if UIApplication.shared.applicationState == .active {
        if UIApplication.shared.applicationState == .active {
            //: TalkingAPNSManager.share.APNSUserInfoStr = ""
            UnrestrictedReactiveCompatible.share.APNSUserInfoStr = ""
            //: TalkingAPNSManager.share.launchFromApns = false
            UnrestrictedReactiveCompatible.share.launchFromApns = false

            //: } else {
        } else {
            //: let userInfo = response.notification.request.content.userInfo
            let userInfo = response.notification.request.content.userInfo
            //: if userInfo.keys.contains("extra") {
            if userInfo.keys.contains((String(str_touchData))) {
                //: let extraStr = userInfo["extra"] as? String ?? ""
                let extraStr = userInfo[(String(str_touchData))] as? String ?? ""
                //: TalkingAPNSManager.share.APNSUserInfoStr = extraStr
                UnrestrictedReactiveCompatible.share.APNSUserInfoStr = extraStr
                //: TalkingAPNSManager.share.launchFromApns = true
                UnrestrictedReactiveCompatible.share.launchFromApns = true
            }
        }

        //: completionHandler()
        completionHandler()
    }

    /// MessagingDelegate
    //: class func messaging(didReceiveRegistrationToken fcmToken: String?) {
    class func compare(didReceiveRegistrationToken fcmToken: String?) {
        //: let dataDict: [String: String] = ["token": fcmToken ?? ""]
        let dataDict: [String: String] = [String(bytes: str_nameData.map{naturalLanguage(to: $0)}, encoding: .utf8)!: fcmToken ?? ""]
        //: NotificationCenter.default.post(
        NotificationCenter.default.post(
            //: name: Notification.Name("FCMToken"),
            name: Notification.Name((String(str_changeErrorName.suffix(6)) + str_someoneUserName.replacingOccurrences(of: "hidden", with: "e"))),
            //: object: nil,
            object: nil,
            //: userInfo: dataDict
            userInfo: dataDict
        )
    }
}

// MARK: - 本地推送

//: extension AppDelegateHelper {
extension MakeDelegateHelper {
    /// 构建通知内容，发送本地通知
    /// - Parameters:
    ///   - uid: 用户Id（用于identifier）
    ///   - title: 标题
    ///   - body: 内容
    ///   - imageUrl: 图片地址
    //: class func pushLocalNotification(uid: String? = nil,
    class func magnitudeeractionUrl(uid: String? = nil,
                                    //: title: String? = nil,
                                    title: String? = nil,
                                    //: body: String,
                                    body: String,
                                    //: imageUrl: String? = nil) {
                                    imageUrl: String? = nil)
    {
        //: UNUserNotificationCenter.current().getNotificationSettings { settings in
        UNUserNotificationCenter.current().getNotificationSettings { settings in
            //: switch settings.authorizationStatus {
            switch settings.authorizationStatus {
            //: case .provisional, .authorized:
            case .provisional, .authorized: // 已授权，发送本地推送通知
                //: let content = UNMutableNotificationContent()
                let content = UNMutableNotificationContent()
                //: content.title = title ?? ""
                content.title = title ?? ""
                //: content.body = body
                content.body = body
                //: content.sound = UNNotificationSound.default
                content.sound = UNNotificationSound.default
                //: let identifier = (uid != nil) ? uid:"\(AppName)_LocalPush"
                let identifier = (uid != nil) ? uid : "\(kLet_managerData)" + (String(str_askValue.prefix(4)) + "alPu" + str_languageValue.replacingOccurrences(of: "name", with: "s"))
                //: let userInfo = ["identifier": identifier!] as [String: Any]
                let userInfo = [(str_addValue.replacingOccurrences(of: "path", with: "en") + "ifier"): identifier!] as [String: Any]
                //: content.userInfo = userInfo
                content.userInfo = userInfo
                //: guard let imgStr = imageUrl else {
                guard let imgStr = imageUrl else {
                    //: local_notificationPush(content)
                    willPush(content)
                    //: return
                    return
                }
                /// 带图片的本地通知
                //: let newStr = imgStr.replacingOccurrences(of: UrlDomin.urlAes256Decrypt(), with: ReplaceUrlDomain)
                let newStr = imgStr.replacingOccurrences(of: UrlDomin.urlAes256Decrypt(), with: kLet_deviceName)
                //: content.userInfo["fcm_options"] = ["image": newStr]
                content.userInfo[(String(str_leadingText) + str_imageName.replacingOccurrences(of: "party", with: "io"))] = [String(bytes: str_nameSendTitle.map{$0^70}, encoding: .utf8)!: newStr]
                //: FIRMessagingExtensionHelper().populateNotificationContent(content) { content in
                FIRMessagingExtensionHelper().populateNotificationContent(content) { content in
                    //: local_notificationPush(content)
                    willPush(content)
                }

            //: case .notDetermined:
            case .notDetermined:
                //: printLog(message: "本地推送通知 -- 用户未授权(.notDetermined)")
                printLog(message: String(bytes: str_managerName.map{makeParty(name: $0)}, encoding: .utf8)!)
            //: case .denied:
            case .denied:
                //: printLog(message: "本地推送通知 -- 用户未授权(.denied)")
                printLog(message: (String(str_topContent) + str_userLabText + "用户未授权(" + String(str_listText.suffix(8))))
            //: case .ephemeral:
            case .ephemeral:
                //: printLog(message: "本地推送通知 -- 用户未授权(.ephemeral)")
                printLog(message: (str_shareTitle + str_cellData.replacingOccurrences(of: "back", with: "用") + "\u{6237}未\u{6388}权(.ep" + String(str_modeData.suffix(8))))
            //: @unknown default:
            @unknown default:
                //: printLog(message: "本地推送通知 -- 用户未授权")
                printLog(message: (str_ageData + " -- 用户" + str_textInfoRootTitle))
            }
        }
    }

    /// 根据content发送本地通知
    /// - Parameter content: 通知内容
    //: private class func local_notificationPush(_ content: UNNotificationContent) {
    private class func willPush(_ content: UNNotificationContent) {
        //: let time = Date(timeIntervalSinceNow: 1).timeIntervalSinceNow
        let time = Date(timeIntervalSinceNow: 1).timeIntervalSinceNow
        //: let trigger = UNTimeIntervalNotificationTrigger(timeInterval: time, repeats: false)
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: time, repeats: false)
        //: if let identifier = content.userInfo["identifier"] as? String {
        if let identifier = content.userInfo[(str_addValue.replacingOccurrences(of: "path", with: "en") + "ifier")] as? String {
            //: let request = UNNotificationRequest(identifier: identifier, content: content, trigger: trigger)
            let request = UNNotificationRequest(identifier: identifier, content: content, trigger: trigger)
            //: UNUserNotificationCenter.current().add(request) { _ in
            UNUserNotificationCenter.current().add(request) { _ in
            }
        }
    }

    /// 移除已经展示的推送
    /// - Parameter identifier: 通知标识符（nil：移除所有）
    //: class func local_removeDeliveredNotification(identifier: String?) {
    class func addLab(identifier: String?) {
        //: guard let idf = identifier else {
        guard let idf = identifier else {
            //: UNUserNotificationCenter.current().removeAllDeliveredNotifications()
            UNUserNotificationCenter.current().removeAllDeliveredNotifications()
            //: return
            return
        }
        //: UNUserNotificationCenter.current().removeDeliveredNotifications(withIdentifiers: [idf])
        UNUserNotificationCenter.current().removeDeliveredNotifications(withIdentifiers: [idf])
    }
}
