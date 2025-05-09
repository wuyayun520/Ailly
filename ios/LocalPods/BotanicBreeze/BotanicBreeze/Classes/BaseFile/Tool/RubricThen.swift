
//: Declare String Begin

/*: "Please click 'Go' to allow access" :*/
fileprivate let str_transactionAppValue:[UInt8] = [0x68,0x54,0x5d,0x59,0x4b,0x5d,0x18,0x5b,0x54,0x51,0x5b,0x53,0x18,0x1f,0x7f,0x57,0x1f,0x18,0x4c,0x57,0x18,0x59,0x54,0x54,0x57,0x4f,0x18,0x59,0x5b,0x5b,0x5d,0x4b,0x4b]

/*: "Please allow '%@' to access your album in your iPhone's 'Settings-Privacy-Album' option" :*/
fileprivate let str_backTitle:[UInt8] = [0x7c,0x40,0x49,0x4d,0x5f,0x49,0xc,0x4d,0x40,0x40,0x43,0x5b,0xc,0xb,0x9,0x6c,0xb,0xc,0x58,0x43,0xc,0x4d,0x4f,0x4f,0x49,0x5f,0x5f,0xc,0x55,0x43,0x59,0x5e,0xc,0x4d,0x40,0x4e,0x59,0x41,0xc,0x45,0x42,0xc,0x55,0x43,0x59,0x5e,0xc,0x45,0x7c,0x44,0x43,0x42,0x49,0xb,0x5f,0xc,0xb,0x7f,0x49,0x58,0x58,0x45,0x42,0x4b,0x5f,0x1,0x7c,0x5e,0x45,0x5a,0x4d,0x4f,0x55,0x1,0x6d,0x40,0x4e,0x59,0x41,0xb,0xc,0x43,0x5c,0x58,0x45,0x43,0x42]

private func languageUnit(to num: UInt8) -> UInt8 {
    return num ^ 44
}

/*: "Please allow '%@' to access your location services in your iPhone's 'Settings-Privacy-Location Services' option" :*/
fileprivate let str_lastData:[UInt8] = [0x5f,0x63,0x6a,0x6e,0x7c,0x6a,0x2f,0x6e,0x63,0x63,0x60,0x78,0x2f,0x28,0x2a,0x4f,0x28,0x2f,0x7b,0x60,0x2f,0x6e,0x6c,0x6c,0x6a,0x7c,0x7c,0x2f,0x76,0x60,0x7a,0x7d,0x2f,0x63,0x60,0x6c,0x6e,0x7b,0x66,0x60,0x61,0x2f,0x7c,0x6a,0x7d,0x79,0x66,0x6c,0x6a,0x7c,0x2f,0x66,0x61,0x2f,0x76,0x60,0x7a,0x7d,0x2f,0x66,0x5f,0x67,0x60,0x61,0x6a,0x28,0x7c,0x2f,0x28,0x5c,0x6a,0x7b,0x7b,0x66,0x61,0x68,0x7c,0x22,0x5f,0x7d,0x66,0x79,0x6e,0x6c,0x76,0x22,0x43,0x60,0x6c,0x6e,0x7b,0x66,0x60,0x61,0x2f,0x5c,0x6a,0x7d,0x79,0x66,0x6c,0x6a,0x7c,0x28,0x2f,0x60,0x7f,0x7b,0x66,0x60,0x61]

private func rawStatus(push num: UInt8) -> UInt8 {
    return num ^ 15
}

/*: "Cancel" :*/
fileprivate let str_bottomText:[Character] = ["C","a","n","c","e","l"]

/*: "Go" :*/
fileprivate let str_postDepthData:String = "Gotable view"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  RubricThen.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/9/6.
//

//: import UIKit
import UIKit

//: import Photos
import Photos

//: import AssetsLibrary
import AssetsLibrary

//: import MediaPlayer
import MediaPlayer

//: import CoreTelephony
import CoreTelephony

//: import CoreLocation
import CoreLocation

//: import AVFoundation
import AVFoundation

//: enum TalkingPermissionsType {
enum RunPermissionsType {
    /// 相机
    //: case camera
    case camera
    /// 相册
    //: case photo
    case photo
    /// 位置
    //: case location
    case location
    /// 麦克风
    //: case microphone
    case microphone
    /// 推送
    //: case notification
    case notification
    /// 相机和麦克风（视频速配使用）
    //: case cameraAndMicrophone
    case cameraAndMicrophone
}

//: let object = NSObject()
let kLet_inputName = NSObject()
//: class TalkingPermissionTool: NSObject {
class RubricThen: NSObject {
    // MARK: - 检测是否开启定位

    /// 检测是否开启定位
    //: class func func__openLocationServiceWithBlock(_ isSet: Bool? = nil, _ action: @escaping ((Bool) -> Void)) {
    class func golfer(_ isSet: Bool? = nil, _ action: @escaping ((Bool) -> Void)) {
        //: var isOpen = false
        var isOpen = false
        //    if CLLocationManager.locationServicesEnabled() || CLLocationManager.authorizationStatus() != .denied {
        //        isOpen = true
        //    }
        //: if CLLocationManager.authorizationStatus() != .restricted && CLLocationManager.authorizationStatus() != .denied {
        if CLLocationManager.authorizationStatus() != .restricted && CLLocationManager.authorizationStatus() != .denied {
            //: isOpen = true
            isOpen = true
        }
        //: if isOpen == false && isSet == true {func__OpenURL(.location)}
        if isOpen == false && isSet == true { beforeAwake(.location) }
        //: action(isOpen)
        action(isOpen)
    }

    // MARK: - 检测是否开启摄像头

    /// 检测是否开启摄像头 (可用)
    //: class func func__openCaptureDeviceServiceWithBlock(_ isSet: Bool? = nil, _ action: @escaping ((Bool) -> Void)) {
    class func toBackMap(_ isSet: Bool? = nil, _ action: @escaping ((Bool) -> Void)) {
        //: let authStatus = AVCaptureDevice.authorizationStatus(for: AVMediaType.video)
        let authStatus = AVCaptureDevice.authorizationStatus(for: AVMediaType.video)
        //: if authStatus == AVAuthorizationStatus.notDetermined {
        if authStatus == AVAuthorizationStatus.notDetermined {
            //: AVCaptureDevice.requestAccess(for: AVMediaType.video) { (granted) in
            AVCaptureDevice.requestAccess(for: AVMediaType.video) { granted in
                //: DispatchQueue.main.async {
                DispatchQueue.main.async {
                    //: action(granted)
                    action(granted)
//                    if granted == false && isSet == true {self.func__OpenURL(.camera)}
                }
            }
            //: } else if authStatus == AVAuthorizationStatus.restricted || authStatus == AVAuthorizationStatus.denied {
        } else if authStatus == AVAuthorizationStatus.restricted || authStatus == AVAuthorizationStatus.denied {
            //: action(false)
            action(false)
            //: if isSet == true {showTostView(.camera)}
            if isSet == true { infoModel(.camera) }
            //: } else {
        } else {
            //: action(true)
            action(true)
        }
    }

    // MARK: - 检测是否开启相册

    //: class func func__openAlbumServiceWithBlock(_ isSet: Bool? = nil, _ action: @escaping ((Bool) -> Void)) {
    class func onError(_ isSet: Bool? = nil, _ action: @escaping ((Bool) -> Void)) {
        //: PHPhotoLibrary.requestAuthorization { authStatus in
        PHPhotoLibrary.requestAuthorization { authStatus in
            //: DispatchQueue.main.async {
            DispatchQueue.main.async {
                //: if(authStatus == .restricted || authStatus == .denied) {
                if authStatus == .restricted || authStatus == .denied {
                    //: action(false)
                    action(false)
                    //: if isSet == true {func__OpenURL(.photo)}
                    if isSet == true { beforeAwake(.photo) }
                    //: } else {
                } else {
                    //: action(true)
                    action(true)
                }
            }
        }
    }

    // MARK: - 检测是否开启麦克风

    /// 检测是否开启麦克风
    //: class func func__openRecordServiceWithBlock(_ isSet: Bool? = nil, _ action: @escaping ((Bool) -> Void)) {
    class func valueClose(_ isSet: Bool? = nil, _ action: @escaping ((Bool) -> Void)) {
        //: let permissionStatus = AVAudioSession.sharedInstance().recordPermission
        let permissionStatus = AVAudioSession.sharedInstance().recordPermission
        //: if permissionStatus == .undetermined {
        if permissionStatus == .undetermined {
            //: AVAudioSession.sharedInstance().requestRecordPermission { (granted) in
            AVAudioSession.sharedInstance().requestRecordPermission { granted in
                //: DispatchQueue.main.async {
                DispatchQueue.main.async {
                    //: action(granted)
                    action(granted)
//                    if granted == false && isSet == true {self.func__OpenURL(.microphone)}
                }
            }
            //: } else if permissionStatus == .denied || permissionStatus == .undetermined {
        } else if permissionStatus == .denied || permissionStatus == .undetermined {
            //: action(false)
            action(false)
            //: if isSet == true {showTostView(.microphone)}
            if isSet == true { infoModel(.microphone) }
            //: } else {
        } else {
            //: action(true)
            action(true)
        }
    }

    // MARK: - 跳转系统设置界面

    //: class func func__OpenURL(_ type: TalkingPermissionsType? = nil) {
    class func beforeAwake(_ type: RunPermissionsType? = nil) {
        //: var message = "Please click 'Go' to allow access".localized
        var message = String(bytes: str_transactionAppValue.map{$0^56}, encoding: .utf8)!.localized

        //: if type == .photo {
        if type == .photo { // 相册
            //: message = "Please allow '%@' to access your album in your iPhone's 'Settings-Privacy-Album' option".localizedArguments(AppName)
            message = String(bytes: str_backTitle.map{languageUnit(to: $0)}, encoding: .utf8)!.localizedArguments(kLet_managerData)
            //: } else if type == .location {
        } else if type == .location { // 位置
            //: message = "Please allow '%@' to access your location services in your iPhone's 'Settings-Privacy-Location Services' option".localizedArguments(AppName)
            message = String(bytes: str_lastData.map{rawStatus(push: $0)}, encoding: .utf8)!.localizedArguments(kLet_managerData)
        }
        //: TalkingAlertShow.alert(title: nil, message: message, leftBtnTitle: "Cancel".localized, rightBtnTitle: "Go".localized, leftBlock: {
        MotilityThen.viewConfig(title: nil, message: message, leftBtnTitle: (String(str_bottomText)).localized, rightBtnTitle: "Go".localized, leftBlock: {
            //: }, rightBlock: {
        }, rightBlock: {
            //: let url = URL(string: UIApplication.openSettingsURLString)
            let url = URL(string: UIApplication.openSettingsURLString)
            //: if  UIApplication.shared.canOpenURL(url!) {
            if UIApplication.shared.canOpenURL(url!) {
                //: if #available(iOS 10, *) {
                if #available(iOS 10, *) {
                    //: UIApplication.shared.open(url!, options: [:], completionHandler: {(success) in})
                    UIApplication.shared.open(url!, options: [:], completionHandler: { _ in })
                    //: } else {
                } else {
                    //: UIApplication.shared.openURL(url!)
                    UIApplication.shared.openURL(url!)
                }
            }
            //: })
        })
    }

    // MARK: - 提示弹窗界面

    //: class func showTostView(_ type: TalkingPermissionsType? = nil) {
    class func infoModel(_ type: RunPermissionsType? = nil) {
        //: let view = TalkingPermissionView.init()
        let view = PermissionView()
        //: view.setPermissionIconView(type: type ?? .camera)
        view.coifType(type: type ?? .camera)
        //: view.show()
        view.imageAcross()
    }

    // MARK: - 检测是否开启推送

    //: class func checkPushNotification(checkNotificationStatus isEnable: ((Bool) -> Void)? = nil) {
    class func sectionOn(checkNotificationStatus isEnable: ((Bool) -> Void)? = nil) {
        //: if #available(iOS 10.0, *) {
        if #available(iOS 10.0, *) {
            //: UNUserNotificationCenter.current().getNotificationSettings { (setttings) in
            UNUserNotificationCenter.current().getNotificationSettings { setttings in

                //: switch setttings.authorizationStatus {
                switch setttings.authorizationStatus {
                //: case .authorized:
                case .authorized:
                    //: isEnable?(true)
                    isEnable?(true)
                //: case .denied:
                case .denied:
                    //: isEnable?(false)
                    isEnable?(false)
                //: case .notDetermined:
                case .notDetermined:
                    //: isEnable?(false)
                    isEnable?(false)
                //: case .provisional:
                case .provisional:
                    //: isEnable?(false)
                    isEnable?(false)
                //: case .ephemeral:
                case .ephemeral:
                    //: isEnable?(false)
                    isEnable?(false)
                //: @unknown default:
                @unknown default:
                    //: isEnable?(false)
                    isEnable?(false)
                }
            }
            //: } else {
        } else {
            //: let isNotificationEnabled = UIApplication.shared.currentUserNotificationSettings?.types.contains(UIUserNotificationType.alert)
            let isNotificationEnabled = UIApplication.shared.currentUserNotificationSettings?.types.contains(UIUserNotificationType.alert)
            //: if isNotificationEnabled == true {
            if isNotificationEnabled == true {
                //: isEnable?(true)
                isEnable?(true)
                //: } else {
            } else {
                //: isEnable?(false)
                isEnable?(false)
            }
        }
    }
}

//: extension TalkingPermissionTool {
extension RubricThen {
    /// 检查相机和麦克风权限
    /// - Parameter action: 回调
    //: class func checkCameraAndMicrophone(_ handler: @escaping ((Bool) -> Void)) {
    class func andThen(_ handler: @escaping ((Bool) -> Void)) {
        // 相机权限
        //: TalkingPermissionTool.func__openCaptureDeviceServiceWithBlock(false) { isOpen in
        RubricThen.toBackMap(false) { isOpen in
            //: guard isOpen == true else {
            guard isOpen == true else {
                //: TalkingPermissionTool.func__openRecordServiceWithBlock(false) { isOpen in
                RubricThen.valueClose(false) { isOpen in
                    //: if isOpen {
                    if isOpen {
                        //: showTostView(.camera)
                        infoModel(.camera)
                        //: } else {
                    } else {
                        //: showTostView(.cameraAndMicrophone)
                        infoModel(.cameraAndMicrophone)
                    }
                }
                //: handler(false)
                handler(false)
                //: return
                return
            }

            // 麦克风权限
            //: TalkingPermissionTool.func__openRecordServiceWithBlock(false) { isOpen in
            RubricThen.valueClose(false) { isOpen in
                //: guard isOpen == true else {
                guard isOpen == true else {
                    //: showTostView(.microphone)
                    infoModel(.microphone)
                    //: handler(false)
                    handler(false)
                    //: return
                    return
                }

                //: handler(true)
                handler(true)
            }
        }
    }

    /// 检测是否开启 直播间/语聊房
    /// - Returns: 结果
    //: class func isLiveOrPartyActive() -> Bool {
    class func socialistPartyActive() -> Bool {
        //: guard TalkingLiveManager.shared().isLive == false else {
        guard UserPushListener.sexApp().isLive == false else { // 直播间
            //: object.func__showStatusBarErrorMsg(showMsg: kMessage_live_limit)
            kLet_inputName.oversight(showMsg: kLet_domainData)
            //: return true
            return true
        }
        //: guard TalkingVoiceRoomManager.shared().isParty == false else {
        guard ViewRoomManager.astatine().isParty == false else { // 语聊房
            //: object.func__showStatusBarErrorMsg(showMsg: kMessage_party_limit)
            kLet_inputName.oversight(showMsg: kLet_succeedName)
            //: return true
            return true
        }
        //: return false
        return false
    }
}
