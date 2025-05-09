
//: Declare String Begin

/*: "RSA加密失败，str:  :*/
fileprivate let str_pathPointName:String = "RSA\u{52a0}"
fileprivate let str_succeedValueName:String = "str: bag point bar like"

/*: ." :*/
fileprivate let str_windowValue:String = "top"

/*: "weixin://" :*/
fileprivate let str_packageValue:String = "toeixi"

/*: "dingtalk://" :*/
fileprivate let str_viewData:[Character] = ["d","i"]
fileprivate let str_frameSizeName:String = "ngequall"

/*: "lark://" :*/
fileprivate let str_cookieName:String = "input label sharelark://"

/*: "wxwork://" :*/
fileprivate let str_aboveRoomReturnValue:String = "videowo"

/*: "p1" :*/
fileprivate let str_indexLayerName:[UInt8] = [0xc5,0x84]

private func errorPathEqual(collection num: UInt8) -> UInt8 {
    return num ^ 181
}

/*: "p2" :*/
fileprivate let str_popName:[UInt8] = [0x8b,0xc9]

private func asColor(lab num: UInt8) -> UInt8 {
    return num ^ 251
}

/*: "p3" :*/
fileprivate let str_positionContent:[UInt8] = [0x24,0xe7]

fileprivate func modelPlain(size num: UInt8) -> UInt8 {
    let value = Int(num) - 180
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "p4" :*/
fileprivate let str_sexName:[UInt8] = [0x3c,0x78]

/*: "p5" :*/
fileprivate let str_bottomText:[UInt8] = [0xa1,0xe4]

/*: "p7" :*/
fileprivate let str_makeModelValue:[UInt8] = [0xfb,0xbc]

private func viewHistorical(label num: UInt8) -> UInt8 {
    return num ^ 139
}

/*: "deviceId" :*/
fileprivate let str_logVoiceData:[UInt8] = [0x5d,0x5c,0x4f,0x50,0x5a,0x5c,0x70,0x5d]

/*: "p0" :*/
fileprivate let str_noTableName:[UInt8] = [0x8c,0x4c]

fileprivate func modelButton(output num: UInt8) -> UInt8 {
    let value = Int(num) + 228
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "weixin" :*/
fileprivate let str_valueName:String = "weimediumi"
fileprivate let str_panelValue:String = "will"

/*: "wxwork" :*/
fileprivate let str_sizeValue:String = "back"
fileprivate let str_atName:String = "xstarork"

/*: "dingtalk" :*/
fileprivate let str_shareFileValue:String = "diprogressg"

/*: "lark" :*/
fileprivate let str_cellWhiteData:String = "LARK"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  DeviceExtension.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/9/5.
//

//: import UIKit
import UIKit

//: import AdSupport
import AdSupport

//: import AppTrackingTransparency
import AppTrackingTransparency

//: import CoreTelephony
import CoreTelephony

//: import Adjust
import Adjust

//: extension UIDevice{
extension UIDevice {
    //: class func getDeviceDeviceIdentifier ( IdentifierBlock: @escaping (_ str: String) -> Void ) {
    class func textBlock(IdentifierBlock: @escaping (_ str: String) -> Void) {
        //: if #available(iOS 14.0, *) {
        if #available(iOS 14.0, *) {
            //: ATTrackingManager.requestTrackingAuthorization(completionHandler: { status in
            ATTrackingManager.requestTrackingAuthorization(completionHandler: { status in
                //: if status == .authorized {
                if status == .authorized {
                    //: IdentifierBlock(UIDevice.getDeviceRawAdvertisingId())
                    IdentifierBlock(UIDevice.unprocessed())
                    //: } else {
                } else {
                    //: IdentifierBlock("")
                    IdentifierBlock("")
                }
                //: })
            })
            //: } else {
        } else {
            //: if ASIdentifierManager.shared().isAdvertisingTrackingEnabled {
            if ASIdentifierManager.shared().isAdvertisingTrackingEnabled {
                //: IdentifierBlock(UIDevice.getDeviceRawAdvertisingId())
                IdentifierBlock(UIDevice.unprocessed())
                //: } else {
            } else {
                //: IdentifierBlock("")
                IdentifierBlock("")
            }
        }
    }

    //: class func getDeviceRawAdvertisingId() -> String {
    class func unprocessed() -> String {
        //: var deviceIdentifier = ""
        var deviceIdentifier = ""
        //: let adIdentifier =  ASIdentifierManager.shared().advertisingIdentifier
        let adIdentifier = ASIdentifierManager.shared().advertisingIdentifier
        //: if !adIdentifier.uuidString.isEmptyString {
        if !adIdentifier.uuidString.isEmptyString {
            //: deviceIdentifier = adIdentifier.uuidString
            deviceIdentifier = adIdentifier.uuidString
        }
        //: return deviceIdentifier
        return deviceIdentifier
    }

    //: class func getDeviceSimInfo() -> (Array<String>) {
    class func countimateInfo() -> ([String]) {
        //: let info = CTTelephonyNetworkInfo.init()
        let info = CTTelephonyNetworkInfo()

        //: var tempArr = Array<String>()
        var tempArr = [String]()
        //: if #available(iOS 12.0, *) {
        if #available(iOS 12.0, *) {
            //: let carrierDic = info.serviceSubscriberCellularProviders
            let carrierDic = info.serviceSubscriberCellularProviders
            //: if !carrierDic!.isEmpty {
            if !carrierDic!.isEmpty {
                //: for carrier in carrierDic!.values {
                for carrier in carrierDic!.values { // 双卡命中处理
                    //: let iso = carrier.isoCountryCode ?? ""    // ISO国家代码
                    let iso = carrier.isoCountryCode ?? "" // ISO国家代码
                    //: tempArr.append(iso)
                    tempArr.append(iso)
                }
            }
            //: } else {
        } else {
            //: let carrier = info.subscriberCellularProvider
            let carrier = info.subscriberCellularProvider
//            let use = carrier?.allowsVOIP
//            let name = carrier?.carrierName     //运营商名字
//            let mobile = carrier?.mobileCountryCode  //移动国家代码
//            let mnc = carrier?.mobileNetworkCode  //移动网络代码
            //: let iso = carrier?.isoCountryCode ?? ""  //ISO国家代码
            let iso = carrier?.isoCountryCode ?? "" // ISO国家代码
            //: tempArr.append(iso)
            tempArr.append(iso)
        }

        //: return tempArr
        return tempArr
    }

    /// RSA加密字符串
    /// - Parameter str: 字符串
    /// - Returns: 加密结果
    //: static func rsa_encrypted(str: String) -> String {
    static func robTitle(str: String) -> String {
        //: var encryptedStr = ""
        var encryptedStr = ""
        //: do {
        do {
            //: let rsa_publicKey = try PublicKey(pemEncoded: LoginRsaPublicKey)
            let rsa_publicKey = try PublicKey(pemEncoded: kLet_transformText)
            //: let newStr = str.count > 0 ? str : "-"
            let newStr = str.count > 0 ? str : "-"
            //: encryptedStr = try ClearMessage(string: newStr, using: .utf8).encrypted(with: rsa_publicKey, padding: .PKCS1).base64String
            encryptedStr = try ClearMessage(string: newStr, using: .utf8).encrypted(with: rsa_publicKey, padding: .PKCS1).base64String
            //: } catch {
        } catch {
            //: printLog(message: "RSA加密失败，str: \(str).")
            printLog(message: (str_pathPointName + "密失败\u{ff0c}" + String(str_succeedValueName.prefix(5))) + "\(str).")
        }
        //: return encryptedStr
        return encryptedStr
    }
}

//: public extension UIDevice {
public extension UIDevice {
    //: static var modelName: String {
    static var modelName: String {
        //: var systemInfo = utsname()
        var systemInfo = utsname()
        //: uname(&systemInfo)
        uname(&systemInfo)
        //: let machineMirror = Mirror(reflecting: systemInfo.machine)
        let machineMirror = Mirror(reflecting: systemInfo.machine)
        //: let identifier = machineMirror.children.reduce("") { identifier, element in
        let identifier = machineMirror.children.reduce("") { identifier, element in
            //: guard let value = element.value as? Int8, value != 0 else { return identifier }
            guard let value = element.value as? Int8, value != 0 else { return identifier }
            //: return identifier + String(UnicodeScalar(UInt8(value)))
            return identifier + String(UnicodeScalar(UInt8(value)))
        }
        //: return identifier
        return identifier
    }

    /// 获取当前系统时区
    //: static var timeZone: String {
    static var timeZone: String {
        //: let currentTimeZone = NSTimeZone.system
        let currentTimeZone = NSTimeZone.system
        //: print("当前时区：\(currentTimeZone.identifier)")
        //: return currentTimeZone.identifier
        return currentTimeZone.identifier
    }

    /// 获取当前系统语言
    //: static var langCode: String {
    static var langCode: String {
        //: let language = Locale.preferredLanguages.first
        let language = Locale.preferredLanguages.first
        //: return language ?? ""
        return language ?? ""
    }

    /// 获取当前系统地区
    //: static var countryCode: String {
    static var countryCode: String {
        //: let locale = Locale.current
        let locale = Locale.current
        //: let countryCode = locale.regionCode
        let countryCode = locale.regionCode
        //: print("当前地区：\(String(describing: countryCode))")
        //: return countryCode ?? ""
        return countryCode ?? ""
    }

    /// 是否安装微信
    //: static var isOpenWX: Bool {
    static var isOpenWX: Bool {
        //: let appSchema = "weixin://"
        let appSchema = (str_packageValue.replacingOccurrences(of: "to", with: "w") + "n://")
        //: let appUrl = URL(string: appSchema)!
        let appUrl = URL(string: appSchema)!
        //: if UIApplication.shared.canOpenURL(appUrl) {
        if UIApplication.shared.canOpenURL(appUrl) {
            // 对应的 app 已经安装
            //: print("\(appSchema)已安装")
            //: return true
            return true
        }
        //: return false
        return false
    }

    /// 是否安装钉钉
    //: static var isOpenDD: Bool {
    static var isOpenDD: Bool {
        //: let appSchema = "dingtalk://"
        let appSchema = (String(str_viewData) + str_frameSizeName.replacingOccurrences(of: "equal", with: "ta") + "k://")
        //: let appUrl = URL(string: appSchema)!
        let appUrl = URL(string: appSchema)!
        //: if UIApplication.shared.canOpenURL(appUrl) {
        if UIApplication.shared.canOpenURL(appUrl) {
            // 对应的 app 已经安装
            //: print("\(appSchema)已安装")
            //: return true
            return true
        }
        //: return false
        return false
    }

    /// 是否安装飞书
    //: static var isOpenFS: Bool {
    static var isOpenFS: Bool {
        //: let appSchema = "lark://"
        let appSchema = (String(str_cookieName.suffix(7)))
        //: let appUrl = URL(string: appSchema)!
        let appUrl = URL(string: appSchema)!
        //: if UIApplication.shared.canOpenURL(appUrl) {
        if UIApplication.shared.canOpenURL(appUrl) {
            // 对应的 app 已经安装
            //: print("\(appSchema)已安装")
            //: return true
            return true
        }
        //: return false
        return false
    }

    /// 是否安装企微
    //: static var isOpenWXWork: Bool {
    static var isOpenWXWork: Bool {
        //: let appSchema = "wxwork://"
        let appSchema = (str_aboveRoomReturnValue.replacingOccurrences(of: "video", with: "wx") + "rk://")
        //: let appUrl = URL(string: appSchema)!
        let appUrl = URL(string: appSchema)!
        //: if UIApplication.shared.canOpenURL(appUrl) {
        if UIApplication.shared.canOpenURL(appUrl) {
            // 对应的 app 已经安装
            //: print("\(appSchema)已安装")
            //: return true
            return true
        }
        //: return false
        return false
    }

    //: static var customDeviceNum: String {
    static var customDeviceNum: String {
        //: let key = KeychainSwift()
        let key = KeychainSwift()
        //: if let value = key.get(PodspecName) {
        if let value = key.get(kLet_errData) {
            //: return value
            return value
            //: }else{
        } else {
            //: let value = NSUUID().uuidString
            let value = NSUUID().uuidString
            //: key.set(value, forKey: PodspecName)
            key.set(value, forKey: kLet_errData)
            //: return value
            return value
        }
    }

    //: static var deviceInfoDic: [String: Any] {
    static var deviceInfoDic: [String: Any] {
        //: let usedVpn = TalkingRequestAddrTool.isUsedProxy() || TalkingRequestAddrTool.isUsedVPN()
        let usedVpn = SendUpReactiveCompatible.frenchTelephoneProxy() || SendUpReactiveCompatible.startVpn()
        //: let params: [String: Any] = ["p1": UIDevice.langCode,
        let params: [String: Any] = ["p1": UIDevice.langCode,
                                     //: "p2": UIDevice.timeZone,
                                     "p2": UIDevice.timeZone,
                                     //: "p3": (UIDevice.getApps ?? ""),
                                     "p3": UIDevice.getApps ?? "",
                                     //: "p4": UIDevice.customDeviceNum,
                                     "p4": UIDevice.customDeviceNum,
                                     //: "p5": UIDevice.countryCode,
                                     "p5": UIDevice.countryCode,
                                     //: "p7": (usedVpn == true ? "1":"0")]
                                     "p7": usedVpn == true ? "1" : "0"]
        //: let data = try? JSONSerialization.data(withJSONObject: params, options: [])
        let data = try? JSONSerialization.data(withJSONObject: params, options: [])
        //: if let paramsStr = String(data: data!, encoding: String.Encoding.utf8) {
        if let paramsStr = String(data: data!, encoding: String.Encoding.utf8) {
            //: let adid = Adjust.adid() ?? ""
            let adid = Adjust.adid() ?? ""
            //: let deviceIdStr = rsa_encrypted(str: adid)
            let deviceIdStr = robTitle(str: adid)
            //: return ["deviceId": deviceIdStr,
            return [String(bytes: str_logVoiceData.map{$0^57}, encoding: .utf8)!: deviceIdStr,
                    //: "p0": paramsStr]
                    "p0": paramsStr]
        }
        //: return [:]
        return [:]
    }

    //: static var getApps: String? {
    static var getApps: String? {
        //: var appsArr: [String] = []
        var appsArr: [String] = []
        //: if UIDevice.isOpenWX {
        if UIDevice.isOpenWX {
            //: appsArr.append("weixin")
            appsArr.append((str_valueName.replacingOccurrences(of: "medium", with: "x") + str_panelValue.replacingOccurrences(of: "will", with: "n")))
        }
        //: if UIDevice.isOpenWXWork {
        if UIDevice.isOpenWXWork {
            //: appsArr.append("wxwork")
            appsArr.append((str_sizeValue.replacingOccurrences(of: "back", with: "w") + str_atName.replacingOccurrences(of: "star", with: "w")))
        }
        //: if UIDevice.isOpenDD {
        if UIDevice.isOpenDD {
            //: appsArr.append("dingtalk")
            appsArr.append((str_shareFileValue.replacingOccurrences(of: "progress", with: "n") + "talk"))
        }
        //: if UIDevice.isOpenFS {
        if UIDevice.isOpenFS {
            //: appsArr.append("lark")
            appsArr.append((str_cellWhiteData.lowercased()))
        }
        //: if appsArr.count > 0 {
        if appsArr.count > 0 {
            //: return appsArr.joined(separator: ",")
            return appsArr.joined(separator: ",")
        }

        //: return nil
        return nil
    }
}
