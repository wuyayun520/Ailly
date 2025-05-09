
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_collectionText:[UInt8] = [0xa1,0xa6,0xa1,0xbc,0xe0,0xab,0xa7,0xac,0xad,0xba,0xf2,0xe1,0xe8,0xa0,0xa9,0xbb,0xe8,0xa6,0xa7,0xbc,0xe8,0xaa,0xad,0xad,0xa6,0xe8,0xa1,0xa5,0xb8,0xa4,0xad,0xa5,0xad,0xa6,0xbc,0xad,0xac]

private func writtenRecord(number num: UInt8) -> UInt8 {
    return num ^ 200
}

/*: "Send Current Location" :*/
fileprivate let str_viewWithValue:[Character] = ["S","e","n","d"," ","C","u","r","r","e","n","t"," ","L","o"]
fileprivate let str_noValue:[Character] = ["c","a","t","i","o","n"]

/*: "Cancel" :*/
fileprivate let str_toValue:[Character] = ["C","a","n","c","e","l"]

/*: "%.5f,%.5f" :*/
fileprivate let str_upText:String = "source text%.5f,"
fileprivate let str_shareValue:[Character] = ["%",".","5","f"]

/*: "LocationPin" :*/
fileprivate let str_intimateContent:[Character] = ["L","o","c","a","t"]
fileprivate let str_toTitle:String = "ionPinlab live name"

/*: "icon_site" :*/
fileprivate let str_roundContent:String = "extension touch table insideicon_"

/*: "定位成功coordinate =   :*/
fileprivate let str_disableValue:String = "定位\u{6210}功"
fileprivate let str_centerText:String = "ditextat"
fileprivate let str_publishData:String = "e =  execute cloud"

/*: "定位失败 =  :*/
fileprivate let str_atValue:String = "定位失败 ="
fileprivate let str_makeText:String = "cell"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  GiftAtViewDelegate.swift
//  BotanicBreeze
//
//  Created by Hemming on 2025/3/20.
//

//: import UIKit
import UIKit

//: import MapKit
import MapKit

//: class TalkingMapView: UIView {
class GiftAtViewDelegate: UIView {
    // 右边按钮点击事件
    //: var sendBlcok: ((_ coordinate: String) -> Void)?
    var sendBlcok: ((_ coordinate: String) -> Void)?

    //: private var popView: TalkingPopView?
    private var popView: NameThen?

    /// 是否点击底部发送按钮进入（发送时初始化不会传递经纬度）
    //: private var isSend: Bool = false
    private var isSend: Bool = false
    /// 是否查看消息列表中自己发送的地图
    //: private var lookSelf = false
    private var lookSelf = false

    //: private var isSetCenter: Bool = false
    private var isSetCenter: Bool = false

    //: init(frame: CGRect, isSelf: Bool = false, latlon: String?) {
    init(frame: CGRect, isSelf: Bool = false, latlon: String?) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.frame = UIScreen.main.bounds
        self.frame = UIScreen.main.bounds
        //: self.lookSelf = isSelf
        self.lookSelf = isSelf
        //: self.isSend = (latlon == nil)
        self.isSend = (latlon == nil)
        //: setupSubviews()
        delay()
        //: setupSubViewsConstraint()
        canFillData()

        //: if isSend {
        if isSend {
            // 发送模式：只跟踪用户位置
            //: mapView.region.span = MKCoordinateSpan(latitudeDelta: 0.015, longitudeDelta: 0.015)
            mapView.region.span = MKCoordinateSpan(latitudeDelta: 0.015, longitudeDelta: 0.015) // 缩放级别
            //: mapView.showsUserLocation = true
            mapView.showsUserLocation = true
            //: mapView.userTrackingMode = .follow
            mapView.userTrackingMode = .follow
            //: } else {
        } else {
            // 查看模式：显示对方位置，同时也显示自己
            //: mapView.showsUserLocation = !lookSelf
            mapView.showsUserLocation = !lookSelf
            //: mapView.userTrackingMode = .none
            mapView.userTrackingMode = .none

            //: if let tempArr = latlon?.components(separatedBy: ","), let latitude = tempArr.first, let longitude = tempArr.last {
            if let tempArr = latlon?.components(separatedBy: ","), let latitude = tempArr.first, let longitude = tempArr.last {
                //: let location = CLLocationCoordinate2D(latitude: latitude.doubleValue, longitude: longitude.doubleValue)
                let location = CLLocationCoordinate2D(latitude: latitude.doubleValue, longitude: longitude.doubleValue)
                // 暂时设置地图中心为对方位置
                //: let span = MKCoordinateSpan(latitudeDelta: 0.015, longitudeDelta: 0.015)
                let span = MKCoordinateSpan(latitudeDelta: 0.015, longitudeDelta: 0.015)
                //: let region = MKCoordinateRegion(center: location, span: span)
                let region = MKCoordinateRegion(center: location, span: span)
                //: self.mapView.setRegion(region, animated: false)
                self.mapView.setRegion(region, animated: false)
                // 添加对方位置标记
                //: self.addAnnotation(coordinate2D: location)
                self.arrangeWith(coordinate2D: location)
            }
        }
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_collectionText.map{writtenRecord(number: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var contentView: UIView = {
    private lazy var contentView: UIView = {
        //: let view = UIView()
        let view = UIView()
        //: view.backgroundColor = UIColor.white
        view.backgroundColor = UIColor.white
        //: view.layer.cornerRadius = 15
        view.layer.cornerRadius = 15
        //: view.clipsToBounds = true
        view.clipsToBounds = true
        //: return view
        return view
        //: }()
    }()

    //: private lazy var mapView: MKMapView = {
    private lazy var mapView: MKMapView = {
        //: let map = MKMapView()
        let map = MKMapView()
        //: map.delegate = self
        map.delegate = self
        //: return map
        return map
        //: }()
    }()

    //: private lazy var sendBtn: UIButton = {
    private lazy var sendBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: let size = CGSize(width: actualWidth(w: 315), height: actualWidth(w: 50))
        let size = CGSize(width: actualWidth(w: 315), height: actualWidth(w: 50))
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: UIColor.appGradientColor(), size: size), for: .normal)
        btn.setBackgroundImage(UIImage.makeBackground(colors: UIColor.appToVoice(), size: size), for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangWithDiameter(fontSize: 18)
        btn.titleLabel?.font = UIFont.pingfangWithDiameter(fontSize: 18)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.setTitle("Send Current Location".localized, for: .normal)
        btn.setTitle((String(str_viewWithValue) + String(str_noValue)).localized, for: .normal)
        //: btn.layer.cornerRadius = actualWidth(w: 50/2)
        btn.layer.cornerRadius = actualWidth(w: 50 / 2)
        //: btn.layer.masksToBounds = true
        btn.layer.masksToBounds = true
        //: btn.addTarget(self, action: #selector(sendButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(showBy), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var cacleBtn: UIButton = {
    private lazy var cacleBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.backgroundColor = .white
        btn.backgroundColor = .white
        //: btn.titleLabel?.font = UIFont.pingfangWithDiameter(fontSize: 16)
        btn.titleLabel?.font = UIFont.pingfangWithDiameter(fontSize: 16)
        //: btn.setTitleColor(.appThemeColor(), for: .normal)
        btn.setTitleColor(.plaster(), for: .normal)
        //: btn.setTitle("Cancel".localized, for: .normal)
        btn.setTitle((String(str_toValue)).localized, for: .normal)
        //: btn.layer.cornerRadius = actualWidth(w: 50/2)
        btn.layer.cornerRadius = actualWidth(w: 50 / 2)
        //: btn.layer.masksToBounds = true
        btn.layer.masksToBounds = true
        //: btn.layer.borderWidth = 1
        btn.layer.borderWidth = 1
        //: btn.layer.borderColor = UIColor.appThemeColor().cgColor
        btn.layer.borderColor = UIColor.plaster().cgColor
        //: btn.addTarget(self, action: #selector(cancleButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(miracle), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingMapView {
extension GiftAtViewDelegate {
    //: func show() {
    func textSub() {
        //: popView = TalkingPopView.init(frame: UIScreen.main.bounds)
        popView = NameThen(frame: UIScreen.main.bounds)
        //: popView?.initWithView(view: self)
        popView?.observe(view: self)
        //: popView?.showInView(view: MacroDefine.getWindow())
        popView?.shackUp(view: UserMacroDefine.toUp())
        //: popView?.isRemoveTapGes = true
        popView?.isRemoveTapGes = true
    }

    //: @objc func dismiss() {
    @objc func equalSection() {
        //: popView?.dismissView()
        popView?.big()
        //: popView = nil
        popView = nil
    }

    //: @objc private func sendButtonClick() {
    @objc private func showBy() {
//        let geocoder = CLGeocoder()
//        let location = CLLocation(latitude: self.mapView.centerCoordinate.latitude, longitude: self.mapView.centerCoordinate.longitude)
//
//        geocoder.reverseGeocodeLocation(location) { (placemarks, error) in
//            if let error = error {
//               print("反地理编码错误: \(error.localizedDescription)")
//               return
//            }
//
//            guard let placemark = placemarks?.first else {
//               print("未找到地址信息")
//               return
//            }
//            // 获取地址信息
//            let address = [
//                placemark.country,              // 国家
//                placemark.administrativeArea,   // 省
//                placemark.locality,             // 市
//                placemark.subLocality,          // 区
//                placemark.thoroughfare,         // 街道
//                placemark.subThoroughfare       // 门牌号
//            ].compactMap { $0 }.joined(separator: "")
//
//             print("地址: \(address)")
//        }

        //: self.sendBlcok?(String(format: "%.5f,%.5f", self.mapView.userLocation.coordinate.latitude, self.mapView.userLocation.coordinate.longitude))
        self.sendBlcok?(String(format: "%.5f,%.5f", self.mapView.userLocation.coordinate.latitude, self.mapView.userLocation.coordinate.longitude))
        //: dismiss()
        equalSection()
    }

    //: @objc private func cancleButtonClick() {
    @objc private func miracle() {
        //: dismiss()
        equalSection()
    }
}

// MARK: - Layout

//: extension TalkingMapView {
extension GiftAtViewDelegate {
    // 添加视图
    //: private func setupSubviews() {
    private func delay() {
        //: self.addSubview(contentView)
        self.addSubview(contentView)
        //: contentView.addSubview(mapView)
        contentView.addSubview(mapView)
        //: contentView.addSubview(cacleBtn)
        contentView.addSubview(cacleBtn)
        //: if isSend {
        if isSend {
            //: contentView.addSubview(sendBtn)
            contentView.addSubview(sendBtn)
        }
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func canFillData() {
        //: contentView.snp.makeConstraints { make in
        contentView.snp.makeConstraints { make in
            //: make.leading.trailing.bottom.equalToSuperview()
            make.leading.trailing.bottom.equalToSuperview()
            //: make.top.equalTo(actualWidth(w: 218) + StatusBarNavigationBarHeight)
            make.top.equalTo(actualWidth(w: 218) + kLet_detailNameText)
        }
        //: mapView.snp.makeConstraints { make in
        mapView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
        //: cacleBtn.snp.makeConstraints { make in
        cacleBtn.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.size.equalTo(CGSize(width: actualWidth(w: 315), height: actualWidth(w: 50)))
            make.size.equalTo(CGSize(width: actualWidth(w: 315), height: actualWidth(w: 50)))
            //: make.bottom.equalToSuperview().offset(-34)
            make.bottom.equalToSuperview().offset(-34)
        }
        //: if isSend {
        if isSend {
            //: sendBtn.snp.makeConstraints { make in
            sendBtn.snp.makeConstraints { make in
                //: make.centerX.equalToSuperview()
                make.centerX.equalToSuperview()
                //: make.bottom.equalTo(cacleBtn.snp.top).offset(-18)
                make.bottom.equalTo(cacleBtn.snp.top).offset(-18)
                //: make.size.equalTo(CGSize(width: actualWidth(w: 315), height: actualWidth(w: 50)))
                make.size.equalTo(CGSize(width: actualWidth(w: 315), height: actualWidth(w: 50)))
            }
        }
    }
}

//: extension TalkingMapView : MKMapViewDelegate {
extension GiftAtViewDelegate: MKMapViewDelegate {
    //: private func addAnnotation(coordinate2D: CLLocationCoordinate2D) {
    private func arrangeWith(coordinate2D: CLLocationCoordinate2D) {
        //: let annotation = MKPointAnnotation()
        let annotation = MKPointAnnotation()
        //: annotation.coordinate = coordinate2D
        annotation.coordinate = coordinate2D
        //: mapView.addAnnotation(annotation)
        mapView.addAnnotation(annotation)
    }

    //: func mapView(_ mapView: MKMapView, viewFor annotation: any MKAnnotation) -> MKAnnotationView? {
    func mapView(_ mapView: MKMapView, viewFor annotation: any MKAnnotation) -> MKAnnotationView? {
        //: guard !(annotation is MKUserLocation) else { return nil }
        guard !(annotation is MKUserLocation) else { return nil }
        //: let identifier = "LocationPin"
        let identifier = (String(str_intimateContent) + String(str_toTitle.prefix(6)))
        //: var annotationView = mapView.dequeueReusableAnnotationView(withIdentifier: identifier) as? MKPinAnnotationView
        var annotationView = mapView.dequeueReusableAnnotationView(withIdentifier: identifier) as? MKPinAnnotationView

        //: if annotationView == nil {
        if annotationView == nil {
            //: annotationView = MKPinAnnotationView(annotation: annotation, reuseIdentifier: identifier)
            annotationView = MKPinAnnotationView(annotation: annotation, reuseIdentifier: identifier)
            //: annotationView?.canShowCallout = true
            annotationView?.canShowCallout = true
            //: annotationView?.image = UIImage.eponymUp(name: "icon_site")
            annotationView?.image = UIImage.eponymUp(name: (String(str_roundContent.suffix(5)) + "site"))
        }
        //: return annotationView
        return annotationView
    }

    //: func mapView(_ mapView: MKMapView, didUpdate userLocation: MKUserLocation) {
    func mapView(_: MKMapView, didUpdate userLocation: MKUserLocation) {
        //: printLog(message: "定位成功coordinate =  \(userLocation.coordinate)")
        printLog(message: (str_disableValue + "coor" + str_centerText.replacingOccurrences(of: "text", with: "n") + String(str_publishData.prefix(5))) + "\(userLocation.coordinate)")
        //: if isSend {
        if isSend {
            //: if !isSetCenter {
            if !isSetCenter {
                //: self.mapView.setCenter(userLocation.coordinate, animated: false)
                self.mapView.setCenter(userLocation.coordinate, animated: false)
                //: isSetCenter = true
                isSetCenter = true
            }
        }
    }

    //: func mapView(_ mapView: MKMapView, didFailToLocateUserWithError error: Error) {
    func mapView(_: MKMapView, didFailToLocateUserWithError error: Error) {
        //: printLog(message: "定位失败 = \(error)")
        printLog(message: (str_atValue.capitalized + str_makeText.replacingOccurrences(of: "cell", with: " ")) + "\(error)")
    }
}
