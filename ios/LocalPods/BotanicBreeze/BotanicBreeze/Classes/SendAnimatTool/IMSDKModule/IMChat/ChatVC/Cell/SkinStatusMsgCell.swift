
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_userData:[UInt8] = [0xd6,0xd1,0xd6,0xcb,0x97,0xdc,0xd0,0xdb,0xda,0xcd,0x85,0x96,0x9f,0xd7,0xde,0xcc,0x9f,0xd1,0xd0,0xcb,0x9f,0xdd,0xda,0xda,0xd1,0x9f,0xd6,0xd2,0xcf,0xd3,0xda,0xd2,0xda,0xd1,0xcb,0xda,0xdb]

private func addSection(index num: UInt8) -> UInt8 {
    return num ^ 191
}

/*: "LocationPin" :*/
fileprivate let str_lineValue:String = "Loselect age return"
fileprivate let str_frameBlueData:String = "cationPinsize attribute model pic"

/*: "icon_site" :*/
fileprivate let str_managerText:String = "systemon"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__

//: import UIKit
import UIKit

//: import MapKit
import MapKit

//: class TalkingChatMapMsgCell: TalkingChatBaseMsgCell {
class SkinStatusMsgCell: IndexViewCell {
    //: override func awakeFromNib() {
    override func awakeFromNib() {
        //: super.awakeFromNib()
        super.awakeFromNib()
    }

    //: override func setSelected(_ selected: Bool, animated: Bool) {
    override func setSelected(_ selected: Bool, animated: Bool) {
        //: super.setSelected(selected, animated: animated)
        super.setSelected(selected, animated: animated)
    }

    //: override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        //: super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.init(style: style, reuseIdentifier: reuseIdentifier)

        //: designView()
        orientation()
    }

    //: required init?(coder aDecoder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_userData.map{addSection(index: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy load

    //: lazy var mapView: MKMapView = {
    lazy var mapView: MKMapView = {
        //: let map = MKMapView.init()
        let map = MKMapView()
        //: map.layer.cornerRadius = 12.0
        map.layer.cornerRadius = 12.0
        //: map.layer.masksToBounds = true
        map.layer.masksToBounds = true
        //: map.isZoomEnabled = false
        map.isZoomEnabled = false
        //: map.isScrollEnabled = false
        map.isScrollEnabled = false
        //: map.delegate = self
        map.delegate = self
        //: return map
        return map
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingChatMapMsgCell {
extension SkinStatusMsgCell {
    //: override func fill(with data: TCommonCellData) {
    override func fill(with data: TCommonCellData) {
        //: super.fill(with: data)
        super.fill(with: data)
        //: guard let mapCellData = data as? CompartmentSourceCellData else { return }
        guard let mapCellData = data as? CompartmentSourceCellData else { return }

        //: let tempArr = mapCellData.msgModel.msgInfo.latlon.components(separatedBy: ",")
        let tempArr = mapCellData.msgModel.msgInfo.latlon.components(separatedBy: ",")
        //: if let latitude = tempArr.first , let longitude = tempArr.last {
        if let latitude = tempArr.first, let longitude = tempArr.last {
            //: let location = CLLocationCoordinate2D(latitude: latitude.doubleValue, longitude: longitude.doubleValue)
            let location = CLLocationCoordinate2D(latitude: latitude.doubleValue, longitude: longitude.doubleValue)
            //: let span = MKCoordinateSpan(latitudeDelta: 0.015, longitudeDelta: 0.015)
            let span = MKCoordinateSpan(latitudeDelta: 0.015, longitudeDelta: 0.015) // 缩放级别
            //: let region = MKCoordinateRegion(center: location, span: span)
            let region = MKCoordinateRegion(center: location, span: span)
            //: self.mapView.setRegion(region, animated: false)
            self.mapView.setRegion(region, animated: false)
            //: self.addAnnotation(coordinate2D: location)
            self.star(coordinate2D: location)
        }
    }
}

// MARK: - Event

//: extension TalkingChatMapMsgCell {
extension SkinStatusMsgCell {
    //: func designView() {
    func orientation() {
        //: self.container.addSubview(mapView)
        self.container.addSubview(mapView)
    }

    //: override public func updateConstraints() {
    override public func updateConstraints() {
        //: super.updateConstraints()
        super.updateConstraints()
        //: self.mapView.snp.remakeConstraints { make in
        self.mapView.snp.remakeConstraints { make in
            //: make.leading.top.equalToSuperview()
            make.leading.top.equalToSuperview()
            //: make.width.equalTo(212)
            make.width.equalTo(212)
            //: make.height.equalTo(145)
            make.height.equalTo(145)
        }
    }
}

//: extension TalkingChatMapMsgCell : MKMapViewDelegate {
extension SkinStatusMsgCell: MKMapViewDelegate {
    //: private func addAnnotation(coordinate2D: CLLocationCoordinate2D) {
    private func star(coordinate2D: CLLocationCoordinate2D) {
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
        let identifier = (String(str_lineValue.prefix(2)) + String(str_frameBlueData.prefix(9)))
        //: var annotationView = mapView.dequeueReusableAnnotationView(withIdentifier: identifier) as? MKPinAnnotationView
        var annotationView = mapView.dequeueReusableAnnotationView(withIdentifier: identifier) as? MKPinAnnotationView
        //: if annotationView == nil {
        if annotationView == nil {
            //: annotationView = MKPinAnnotationView(annotation: annotation, reuseIdentifier: identifier)
            annotationView = MKPinAnnotationView(annotation: annotation, reuseIdentifier: identifier)
            //: annotationView?.canShowCallout = true
            annotationView?.canShowCallout = true
            //: annotationView?.image = UIImage.eponymUp(name: "icon_site")
            annotationView?.image = UIImage.eponymUp(name: (str_managerText.replacingOccurrences(of: "system", with: "ic") + "_site"))
        }
        //: return annotationView
        return annotationView
    }
}
