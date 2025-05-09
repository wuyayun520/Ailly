
//: Declare String Begin

/*: "AboutUs" :*/
fileprivate let str_backgroundName:[Character] = ["A","b","o","u","t","U","s"]

/*: "sl_about" :*/
fileprivate let str_appFemaleValue:String = "lab giftsl_abou"
fileprivate let str_giftTitle:[Character] = ["t"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  KeyRecognizerDelegate.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/9/19.
//

//: import UIKit
import UIKit

//: class TalkingAboutUsVC: TalkingBaseViewController {
class KeyRecognizerDelegate: SeamViewController {
    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.view.backgroundColor = UIColor.white
        self.view.backgroundColor = UIColor.white
        //: self.title = "AboutUs".localized
        self.title = (String(str_backgroundName)).localized
        //: designView()
        edit()
    }

    // MARK: - Lazy load

    //: lazy var iconBImag: UIImageView = {
    lazy var iconBImag: UIImageView = {
        //: let imag = UIImageView.init()
        let imag = UIImageView()
        //: imag.image = UIImage.eponymUp(name: "sl_about")
        imag.image = UIImage.eponymUp(name: (String(str_appFemaleValue.suffix(7)) + String(str_giftTitle)))
        //: return imag
        return imag
        //: }()
    }()

    //: lazy var titleBLB: UILabel = {
    lazy var titleBLB: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.font = UIFont.pingfangFont(type: .Regular, fontSize: 14)
        lb.font = UIFont.pingfang(type: .Regular, fontSize: 14)
        //: lb.textColor = UIColor.RGBA(157, 157, 157, 1)
        lb.textColor = UIColor.showSub(157, 157, 157, 1)
        //: lb.text = "V"+AppVersion
        lb.text = "V" + kLet_intimateValue
        //: return lb
        return lb
        //: }()
    }()
}

// MARK: - UI

//: extension TalkingAboutUsVC {
extension KeyRecognizerDelegate {
    //: private func designView() {
    private func edit() {
        //: self.view.addSubview(iconBImag)
        self.view.addSubview(iconBImag)
        //: self.view.addSubview(titleBLB)
        self.view.addSubview(titleBLB)

        //: iconBImag.snp.makeConstraints { make in
        iconBImag.snp.makeConstraints { make in
            //: make.top.equalTo(self.view.snp.top).offset(96)
            make.top.equalTo(self.view.snp.top).offset(96)
            //: make.centerX.equalTo(self.view)
            make.centerX.equalTo(self.view)
        }
        //: titleBLB.snp.makeConstraints { make in
        titleBLB.snp.makeConstraints { make in
            //: make.top.equalTo(iconBImag.snp.bottom).offset(16)
            make.top.equalTo(iconBImag.snp.bottom).offset(16)
            //: make.centerX.equalTo(self.view)
            make.centerX.equalTo(self.view)
        }
    }
}
