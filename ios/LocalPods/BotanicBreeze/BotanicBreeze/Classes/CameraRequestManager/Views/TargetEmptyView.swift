
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_shareValue:[UInt8] = [0x60,0x67,0x60,0x7d,0x21,0x6a,0x66,0x6d,0x6c,0x7b,0x33,0x20,0x29,0x61,0x68,0x7a,0x29,0x67,0x66,0x7d,0x29,0x6b,0x6c,0x6c,0x67,0x29,0x60,0x64,0x79,0x65,0x6c,0x64,0x6c,0x67,0x7d,0x6c,0x6d]

/*: "icon_kong_kong_default" :*/
fileprivate let str_viewContent:String = "icountn"
fileprivate let str_sizeValue:String = "kong_row top object"
fileprivate let str_labelValue:String = "T"

/*: "You've got no list yet." :*/
fileprivate let str_cellContent:String = "You\'v"
fileprivate let str_makeData:String = " no lfalse let"
fileprivate let str_touchValue:String = "manager to regularyet."

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  TargetEmptyView.swift
//  AbroadTalking
//
//  Created by young on 2022/9/12.
//

//: import UIKit
import UIKit

//: class SocialEmptyView: UIView {
class TargetEmptyView: UIView {
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_shareValue.map{$0^9}, encoding: .utf8)!)
    }

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: self.setupSubviews()
        self.enterNameGroup()
        //: self.setupSubViewsConstraint()
        self.anomalyView()
    }

    // MARK: - Lazy load

    //: lazy var imgV: UIImageView = {
    lazy var imgV: UIImageView = {
        //: let v = UIImageView(image: UIImage.eponymUp(name: "icon_kong_kong_default"))
        let v = UIImageView(image: UIImage.eponymUp(name: (str_viewContent.replacingOccurrences(of: "count", with: "co") + "_kong_" + String(str_sizeValue.prefix(5)) + "defaul" + str_labelValue.lowercased())))
        //: return v
        return v
        //: }()
    }()

    //: lazy var desLab: UILabel = {
    lazy var desLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = UIColor.publishView()
        lab.textColor = UIColor.publishView()
        //: lab.font = .pingfangFont(type: .Regular, fontSize: 16)
        lab.font = .pingfang(type: .Regular, fontSize: 16)
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.text = "You've got no list yet.".localized
        lab.text = (str_cellContent + "e got" + String(str_makeData.prefix(5)) + "ist " + String(str_touchValue.suffix(4))).localized
        //: return lab
        return lab
        //: }()
    }()
}

//: extension SocialEmptyView {
extension TargetEmptyView {
    // 添加视图
    //: private func setupSubviews() {
    private func enterNameGroup() {
        //: self.addSubview(imgV)
        self.addSubview(imgV)
        //: self.addSubview(desLab)
        self.addSubview(desLab)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func anomalyView() {
        //: imgV.snp.makeConstraints { make in
        imgV.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.top.equalToSuperview().offset(NavigationBarHeight)
            make.top.equalToSuperview().offset(kLet_deviceRecordValue)
        }
        //: desLab.snp.makeConstraints { make in
        desLab.snp.makeConstraints { make in
            //: make.top.equalTo(imgV.snp.bottom).offset(20)
            make.top.equalTo(imgV.snp.bottom).offset(20)
            //: make.leading.equalToSuperview().offset(30)
            make.leading.equalToSuperview().offset(30)
            //: make.trailing.equalToSuperview().offset(-30)
            make.trailing.equalToSuperview().offset(-30)
        }
    }
}
