
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_viewTitle:[UInt8] = [0x45,0x42,0x45,0x58,0x4,0x4f,0x43,0x48,0x49,0x5e,0x16,0x5,0xc,0x44,0x4d,0x5f,0xc,0x42,0x43,0x58,0xc,0x4e,0x49,0x49,0x42,0xc,0x45,0x41,0x5c,0x40,0x49,0x41,0x49,0x42,0x58,0x49,0x48]

private func modelInfo(pin num: UInt8) -> UInt8 {
    return num ^ 44
}

/*: "icon_faceverification_guide_ok" :*/
fileprivate let str_contentRawData:String = "source block labicon_f"
fileprivate let str_equalData:String = "makeifi"
fileprivate let str_userData:String = "receive sizen_guid"
fileprivate let str_layerData:[Character] = ["e","_","o","k"]

/*: "Submitted successfully, please wait \n patiently for review." :*/
fileprivate let str_labValue:[UInt8] = [0x78,0x5e,0x49,0x46,0x42,0x5f,0x5f,0x4e,0x4f,0xb,0x58,0x5e,0x48,0x48,0x4e,0x58,0x58,0x4d,0x5e,0x47,0x47,0x52,0x7,0xb,0x5b,0x47,0x4e,0x4a,0x58,0x4e,0xb,0x5c,0x4a,0x42,0x5f,0xb,0x21,0xb,0x5b,0x4a,0x5f,0x42,0x4e,0x45,0x5f,0x47,0x52,0xb,0x4d,0x44,0x59,0xb,0x59,0x4e,0x5d,0x42,0x4e,0x5c,0x5]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  EditThen.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/8/31.
//

//: import UIKit
import UIKit

//: class TalkingFinalVerificationView: UIView {
class EditThen: UIView {
    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.backgroundColor = UIColor.white
        self.backgroundColor = UIColor.white
        //: createSubViews()
        clickSumerchange()
        //: layoutSubViewsConstraints()
        overToStart()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_viewTitle.map{modelInfo(pin: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy load

    //: lazy var successIconView: UIImageView = {
    lazy var successIconView: UIImageView = {
        //: let imgView = UIImageView()
        let imgView = UIImageView()
        //: imgView.image = UIImage.eponymUp(name: "icon_faceverification_guide_ok")
        imgView.image = UIImage.eponymUp(name: (String(str_contentRawData.suffix(6)) + "aceve" + str_equalData.replacingOccurrences(of: "make", with: "r") + "catio" + String(str_userData.suffix(6)) + String(str_layerData)))
        //: return imgView
        return imgView
        //: }()
    }()

    //: lazy var tipLab: UILabel = {
    lazy var tipLab: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.text = "Submitted successfully, please wait \n patiently for review.".localized
        lb.text = String(bytes: str_labValue.map{$0^43}, encoding: .utf8)!.localized
        //: lb.textColor = .appTitleColor()
        lb.textColor = .executeTo()
        //: lb.font = .pingfangFont(type: .Regular, fontSize: 18)
        lb.font = .pingfang(type: .Regular, fontSize: 18)
        //: lb.numberOfLines = 0
        lb.numberOfLines = 0
        //: lb.textAlignment = .center
        lb.textAlignment = .center
        //: return lb
        return lb
        //: }()
    }()
}

// MARK: - UI

//: extension TalkingFinalVerificationView {
extension EditThen {
    //: func createSubViews() {
    func clickSumerchange() {
        //: addSubview(successIconView)
        addSubview(successIconView)
        //: addSubview(tipLab)
        addSubview(tipLab)
    }

    //: func layoutSubViewsConstraints() {
    func overToStart() {
        //: successIconView.snp.makeConstraints { make in
        successIconView.snp.makeConstraints { make in
            //: make.centerX.equalTo(self)
            make.centerX.equalTo(self)
            //: make.top.equalTo(actualHeight(h: 102))
            make.top.equalTo(actualHeight(h: 102))
            //: make.width.height.equalTo(actualWidth(w: 71))
            make.width.height.equalTo(actualWidth(w: 71))
        }
        //: tipLab.snp.makeConstraints { make in
        tipLab.snp.makeConstraints { make in
            //: make.leading.equalTo(actualWidth(w: 15))
            make.leading.equalTo(actualWidth(w: 15))
            //: make.trailing.equalTo(actualWidth(w: -15))
            make.trailing.equalTo(actualWidth(w: -15))
            //: make.top.equalTo(successIconView.snp.bottom).offset(actualHeight(h: 27))
            make.top.equalTo(successIconView.snp.bottom).offset(actualHeight(h: 27))
        }
    }
}
