
//: Declare String Begin

/*: "location authorizationStatus is  :*/
fileprivate let str_willValue:[UInt8] = [0xb0,0xb3,0xbf,0xbd,0xa8,0xb5,0xb3,0xb2,0xfc,0xbd,0xa9,0xa8,0xb4,0xb3,0xae,0xb5,0xa6,0xbd,0xa8,0xb5,0xb3,0xb2,0x8f,0xa8,0xbd,0xa8,0xa9,0xaf,0xfc,0xb5,0xaf,0xfc]

/*: "get location failed. error: :*/
fileprivate let str_startText:[Character] = ["g","e","t"," ","l","o","c","a","t","i","o","n"," ","f","a","i","l"]
fileprivate let str_atValue:[Character] = ["e","d","."," "]
fileprivate let str_colorData:[Character] = ["e","r","r","o","r",":"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  PopEventThen.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/9/5.
//

//: import UIKit
import UIKit

//: import CoreLocation
import CoreLocation

//: enum PermissionType: Int {
enum FreeNumeric: Int {
    //: case firstEntry = 0
    case firstEntry = 0
    //: case userRestricted = 1
    case userRestricted = 1
    //: case alwaysAllowed = 2
    case alwaysAllowed = 2
}

//: typealias  Authblock = (_ type: PermissionType) -> Void
typealias Authblock = (_ type: FreeNumeric) -> Void

//: typealias  Locationblock = (_ success: Bool, _ latitude: Double, _ longitude: Double) -> Void
typealias Locationblock = (_ success: Bool, _ latitude: Double, _ longitude: Double) -> Void

//: class TalkingLocationManager: NSObject {
class PopEventThen: NSObject {
    //: private var locationManager: CLLocationManager!
    private var locationManager: CLLocationManager!
    //: var getLocationHandle: Locationblock?
    var getLocationHandle: Locationblock?
    //: var getAuthHandle: Authblock?
    var getAuthHandle: Authblock?
    // 定位权限
    //: var locationType: PermissionType?
    var locationType: FreeNumeric?

    // singleton
    //: private static var _instance: TalkingLocationManager?
    private static var _instance: PopEventThen?
    //: class func shared() -> TalkingLocationManager {
    class func project() -> PopEventThen {
        //: guard _instance != nil else {
        guard _instance != nil else {
            //: _instance = TalkingLocationManager()
            _instance = PopEventThen()
            //: return _instance!
            return _instance!
        }
        //: return _instance!
        return _instance!
    }

    //: override init() {
    override init() {
        //: super.init()
        super.init()
        //: locationManager = CLLocationManager()
        locationManager = CLLocationManager()
        //: locationManager.desiredAccuracy = kCLLocationAccuracyHundredMeters
        locationManager.desiredAccuracy = kCLLocationAccuracyHundredMeters
        //: locationManager.delegate = self
        locationManager.delegate = self
        //: requestLocation()
        butylate()
    }

    //: class func destroy() {
    class func iconDestroy() {
        //: DispatchQueue.main.async {
        DispatchQueue.main.async {
            //: if _instance != nil {
            if _instance != nil {
                //: _instance = nil
                _instance = nil
            }
        }
    }

    //: func getLocationBlock(block: @escaping Locationblock) {
    func bindLike(block: @escaping Locationblock) {
        //: if self.getLocationHandle == nil {
        if self.getLocationHandle == nil {
            //: self.getLocationHandle = block
            self.getLocationHandle = block
        }
    }

    //: func getAuthBlock(block: @escaping Authblock) {
    func localGroup(block: @escaping Authblock) {
        //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5) { [weak self] in
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5) { [weak self] in

            //: guard let self = self else {return}
            guard let self = self else { return }
            //: if self.getAuthHandle == nil {
            if self.getAuthHandle == nil {
                //: self.getAuthHandle = block
                self.getAuthHandle = block
            }
            //: self.handleChangedAuthorization()
            self.handleOf()
        }
    }

    /// 设备是否开启了定位服务
    //: func hasLocationService() -> Bool {
    func beyondAdd() -> Bool {
        //: return CLLocationManager.locationServicesEnabled()
        return CLLocationManager.locationServicesEnabled()
    }

    /// APP是否有定位权限
    //: func hasLocationPermission() -> PermissionType {
    func southeast() -> FreeNumeric {
        //: switch locationPermission() {
        switch who() {
        //: case .notDetermined:
        case .notDetermined:
            //: return .firstEntry
            return .firstEntry
        //: case .restricted, .denied:
        case .restricted, .denied:
            //: return .userRestricted
            return .userRestricted
        //: case .authorizedWhenInUse, .authorizedAlways:
        case .authorizedWhenInUse, .authorizedAlways:
            //: return .alwaysAllowed
            return .alwaysAllowed
        //: default:
        default:
            //: break
            break
        }
        //: return .firstEntry
        return .firstEntry
    }

    /// 定位的权限
    //: func locationPermission() -> CLAuthorizationStatus {
    func who() -> CLAuthorizationStatus {
        //: if #available(iOS 14.0, *) {
        if #available(iOS 14.0, *) {
            //: let status: CLAuthorizationStatus = locationManager.authorizationStatus
            let status: CLAuthorizationStatus = locationManager.authorizationStatus
            //: printLog(message: "location authorizationStatus is \(status.rawValue)")
            printLog(message: String(bytes: str_willValue.map{$0^220}, encoding: .utf8)! + "\(status.rawValue)")
            //: return status
            return status
            //: } else {
        } else {
            //: let status = CLLocationManager.authorizationStatus()
            let status = CLLocationManager.authorizationStatus()
            //: printLog(message: "location authorizationStatus is \(status.rawValue)")
            printLog(message: String(bytes: str_willValue.map{$0^220}, encoding: .utf8)! + "\(status.rawValue)")
            //: return status
            return status
        }
    }

    // MARK: - 获取权限，在代理‘didChangeAuthorization’中拿到结果

    //: func requestLocationAuthorizaiton() {
    func equalAppealAuthorizaiton() {
        //: locationManager.requestWhenInUseAuthorization()
        locationManager.requestWhenInUseAuthorization()
    }

    // MARK: - 获取位置

    //: func requestLocation() {
    func butylate() {
        //: locationManager.startUpdatingLocation()
        locationManager.startUpdatingLocation()
    }
}

//: extension TalkingLocationManager: CLLocationManagerDelegate {
extension PopEventThen: CLLocationManagerDelegate {
    // MARK: - ios 14.0 之前，获取权限结果的方法

    //: func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
    func locationManager(_: CLLocationManager, didChangeAuthorization _: CLAuthorizationStatus) {
        //: handleChangedAuthorization()
        handleOf()
    }

    // MARK: - ios 14.0，获取权限结果的方法

    //: func locationManagerDidChangeAuthorization(_ manager: CLLocationManager) {
    func locationManagerDidChangeAuthorization(_: CLLocationManager) {
        //: handleChangedAuthorization()
        handleOf()
    }

    //: private func handleChangedAuthorization() {
    private func handleOf() {
        //: guard let block = getAuthHandle else {
        guard let block = getAuthHandle else {
            //: return
            return
        }
        //: switch hasLocationPermission() {
        switch southeast() {
        //: case .firstEntry:
        case .firstEntry:
            //: self.locationType = .firstEntry
            self.locationType = .firstEntry
            //: block(.firstEntry)
            block(.firstEntry)
        //: break
        //: case .userRestricted:
        case .userRestricted:
            //: self.locationType = .userRestricted
            self.locationType = .userRestricted
            //: block(.userRestricted)
            block(.userRestricted)
        //: break
        //: case .alwaysAllowed:
        case .alwaysAllowed:
            //: self.locationType = .alwaysAllowed
            self.locationType = .alwaysAllowed
            //: block(.alwaysAllowed)
            block(.alwaysAllowed)
            //: break
        }
    }

    // MARK: - 获取定位后的经纬度

    //: func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
    func locationManager(_: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        //: self.locationManager.stopUpdatingLocation()
        self.locationManager.stopUpdatingLocation()

        //: if let loction = locations.last {
        if let loction = locations.last {
            // 限制时间间隔 > 5s
//            guard abs(loction.timestamp.timeIntervalSinceNow) > 5 else { return }
            //: if let block = getLocationHandle {
            if let block = getLocationHandle {
                //: block(true, loction.coordinate.latitude, loction.coordinate.longitude)
                block(true, loction.coordinate.latitude, loction.coordinate.longitude)
                //: getLocationHandle = nil
                getLocationHandle = nil
            }
        }
    }

    //: func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
    func locationManager(_: CLLocationManager, didFailWithError error: Error) {
        //: self.locationManager.stopUpdatingLocation()
        self.locationManager.stopUpdatingLocation()
        //: printLog(message: "get location failed. error:\(error.localizedDescription)")
        printLog(message: (String(str_startText) + String(str_atValue) + String(str_colorData)) + "\(error.localizedDescription)")
    }
}
