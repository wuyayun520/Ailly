
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_contentName:[UInt8] = [0xd,0x12,0xd,0x18,0xcc,0x7,0x13,0x8,0x9,0x16,0xde,0xcd,0xc4,0xc,0x5,0x17,0xc4,0x12,0x13,0x18,0xc4,0x6,0x9,0x9,0x12,0xc4,0xd,0x11,0x14,0x10,0x9,0x11,0x9,0x12,0x18,0x9,0x8]

fileprivate func myCorner(pair num: UInt8) -> UInt8 {
    let value = Int(num) + 92
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "img_faceverification_photo" :*/
fileprivate let str_sessionText:String = "asset data inimg_fa"
fileprivate let str_arrayTitle:String = "ation_normal cell self to"

/*: "Face verification" :*/
fileprivate let str_lengthName:String = "return area user countFace "
fileprivate let str_bottomTitle:String = "attributeati"
fileprivate let str_modeButtonRenderName:String = "stopn"

/*: "A real-person verification of your profile will get you more and better matches." :*/
fileprivate let str_theName:[UInt8] = [0xe9,0xc8,0x1a,0xd,0x9,0x14,0xd5,0x18,0xd,0x1a,0x1b,0x17,0x16,0xc8,0x1e,0xd,0x1a,0x11,0xe,0x11,0xb,0x9,0x1c,0x11,0x17,0x16,0xc8,0x17,0xe,0xc8,0x21,0x17,0x1d,0x1a,0xc8,0x18,0x1a,0x17,0xe,0x11,0x14,0xd,0xc8,0x1f,0x11,0x14,0x14,0xc8,0xf,0xd,0x1c,0xc8,0x21,0x17,0x1d,0xc8,0x15,0x17,0x1a,0xd,0xc8,0x9,0x16,0xc,0xc8,0xa,0xd,0x1c,0x1c,0xd,0x1a,0xc8,0x15,0x9,0x1c,0xb,0x10,0xd,0x1b,0xd6]

fileprivate func giftModel(back num: UInt8) -> UInt8 {
    let value = Int(num) - 168
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "· Take the photo by following the posing guide." :*/
fileprivate let str_centerValue:[UInt8] = [0x97,0xe2,0x75,0x1,0x34,0x3e,0x30,0x75,0x21,0x3d,0x30,0x75,0x25,0x3d,0x3a,0x21,0x3a,0x75,0x37,0x2c,0x75,0x33,0x3a,0x39,0x39,0x3a,0x22,0x3c,0x3b,0x32,0x75,0x21,0x3d,0x30,0x75,0x25,0x3a,0x26,0x3c,0x3b,0x32,0x75,0x32,0x20,0x3c,0x31,0x30,0x7b]

private func imaginationImage(search num: UInt8) -> UInt8 {
    return num ^ 85
}

/*: "· The person in the photo must be the account owner." :*/
fileprivate let str_onlineSessionText:[UInt8] = [0x2e,0x72,0x65,0x6e,0x77,0x6f,0x20,0x74,0x6e,0x75,0x6f,0x63,0x63,0x61,0x20,0x65,0x68,0x74,0x20,0x65,0x62,0x20,0x74,0x73,0x75,0x6d,0x20,0x6f,0x74,0x6f,0x68,0x70,0x20,0x65,0x68,0x74,0x20,0x6e,0x69,0x20,0x6e,0x6f,0x73,0x72,0x65,0x70,0x20,0x65,0x68,0x54,0x20,0xb7,0xc2]

/*: "Continue" :*/
fileprivate let str_toText:String = "var requestContinue"

/*: "btn_me_back_continue" :*/
fileprivate let str_rangeContent:String = "btn_melimit count for fill star"
fileprivate let str_theCellViewName:String = "_contnot at ok"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  GiftVerificationView.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/8/31.
//

//: import UIKit
import UIKit

//: class TalkingFaceVerificationView: UIView {
class GiftVerificationView: UIView {
    //: let disposeBag = DisposeBag()
    let disposeBag = DisposeBag()
    //: typealias ContinueBtnClickBlock = () -> Void
    typealias ContinueBtnClickBlock = () -> Void
    //: var btnClickBlock: ContinueBtnClickBlock?
    var btnClickBlock: ContinueBtnClickBlock?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.backgroundColor = UIColor.white
        self.backgroundColor = UIColor.white
        //: createSubViews()
        ok()
        //: layoutSubViewsConstraints()
        margin()
        //: bindInteraction()
        courseOfAction()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_contentName.map{myCorner(pair: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy load

    //: lazy var faceBackImageView: UIImageView = {
    lazy var faceBackImageView: UIImageView = {
        //: let imgView = UIImageView()
        let imgView = UIImageView()
        //: imgView.image = UIImage.eponymUp(name: "img_faceverification_photo")
        imgView.image = UIImage.eponymUp(name: (String(str_sessionText.suffix(6)) + "ceverific" + String(str_arrayTitle.prefix(6)) + "photo"))
        //: return imgView
        return imgView
        //: }()
    }()

    //: lazy var verificationTitleLab: UILabel = {
    lazy var verificationTitleLab: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.text = "Face verification".localized
        lb.text = (String(str_lengthName.suffix(5)) + "verifi" + str_bottomTitle.replacingOccurrences(of: "attribute", with: "c") + str_modeButtonRenderName.replacingOccurrences(of: "stop", with: "o")).localized
        //: lb.textColor = .appTitleColor()
        lb.textColor = .executeTo()
        //: lb.font = .pingfangFont(type: .Medium, fontSize: 22)
        lb.font = .pingfang(type: .Medium, fontSize: 22)
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var verificationDesLab: UILabel = {
    lazy var verificationDesLab: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.text = "A real-person verification of your profile will get you more and better matches.".localized
        lb.text = String(bytes: str_theName.map{giftModel(back: $0)}, encoding: .utf8)!.localized
        //: lb.textColor = .publishView()
        lb.textColor = .publishView()
        //: lb.font = .pingfangFont(type: .Medium, fontSize: 18)
        lb.font = .pingfang(type: .Medium, fontSize: 18)
        //: lb.numberOfLines = 0
        lb.numberOfLines = 0
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var subFirstDesLab: UILabel = {
    lazy var subFirstDesLab: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.text = "· Take the photo by following the posing guide.".localized
        lb.text = String(bytes: str_centerValue.map{imaginationImage(search: $0)}, encoding: .utf8)!.localized
        //: lb.textColor = .appTitleColor()
        lb.textColor = .executeTo()
        //: lb.font = .pingfangFont(type: .Regular, fontSize: 16)
        lb.font = .pingfang(type: .Regular, fontSize: 16)
        //: lb.numberOfLines = 0
        lb.numberOfLines = 0
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var subSecondDesLab: UILabel = {
    lazy var subSecondDesLab: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.text = "· The person in the photo must be the account owner.".localized
        lb.text = String(bytes: str_onlineSessionText.reversed(), encoding: .utf8)!.localized
        //: lb.textColor = .appTitleColor()
        lb.textColor = .executeTo()
        //: lb.font = .pingfangFont(type: .Regular, fontSize: 16)
        lb.font = .pingfang(type: .Regular, fontSize: 16)
        //: lb.numberOfLines = 0
        lb.numberOfLines = 0
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var continueBtn: UIButton = {
    lazy var continueBtn: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setTitle("Continue".localized, for: .normal)
        btn.setTitle((String(str_toText.suffix(8))).localized, for: .normal)
        //: btn.setBackgroundImage(UIImage.eponymUp(name: "btn_me_back_continue"), for: .normal)
        btn.setBackgroundImage(UIImage.eponymUp(name: (String(str_rangeContent.prefix(6)) + "_back" + String(str_theCellViewName.prefix(5)) + "inue")), for: .normal)
        //: btn.titleLabel?.font = .pingfangFont(type: .Medium, fontSize: 17)
        btn.titleLabel?.font = .pingfang(type: .Medium, fontSize: 17)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingFaceVerificationView {
extension GiftVerificationView {
    //: @objc func registerBtnAction() {
    @objc func successfully() {
        //: if btnClickBlock != nil {
        if btnClickBlock != nil {
            //: btnClickBlock!()
            btnClickBlock!()
        }
    }

    //: private func bindInteraction() {
    private func courseOfAction() {
        //: continueBtn.rx.controlEvent(.touchUpInside)
        continueBtn.rx.controlEvent(.touchUpInside)
            //: .subscribe(onNext: { [weak self] in
            .subscribe(onNext: { [weak self] in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.registerBtnAction()
                self.successfully()
                //: }).disposed(by: disposeBag)
            }).disposed(by: disposeBag)
    }
}

// MARK: - Layout

//: extension TalkingFaceVerificationView {
extension GiftVerificationView {
    //: func createSubViews() {
    func ok() {
        //: addSubview(faceBackImageView)
        addSubview(faceBackImageView)
        //: addSubview(verificationTitleLab)
        addSubview(verificationTitleLab)
        //: addSubview(verificationDesLab)
        addSubview(verificationDesLab)
        //: addSubview(subFirstDesLab)
        addSubview(subFirstDesLab)
        //: addSubview(subSecondDesLab)
        addSubview(subSecondDesLab)
        //: addSubview(continueBtn)
        addSubview(continueBtn)
    }

    //: func layoutSubViewsConstraints() {
    func margin() {
        //: let imgSize = faceBackImageView.image?.size
        let imgSize = faceBackImageView.image?.size
        //: let fitH = imgSize!.height * ScreenWidth / imgSize!.width
        let fitH = imgSize!.height * kLet_cameraValue / imgSize!.width
        //: faceBackImageView.snp.makeConstraints { make in
        faceBackImageView.snp.makeConstraints { make in
            //: make.top.equalTo(actualHeight(h: 11)+StatusBarHeight)
            make.top.equalTo(actualHeight(h: 11) + kLet_timeSenseValue)
            //: make.leading.trailing.equalTo(0)
            make.leading.trailing.equalTo(0)
            //: make.height.equalTo(fitH)
            make.height.equalTo(fitH)
        }
        //: verificationTitleLab.snp.makeConstraints { make in
        verificationTitleLab.snp.makeConstraints { make in
            //: make.leading.equalTo(actualWidth(w: 15))
            make.leading.equalTo(actualWidth(w: 15))
            //: make.trailing.equalTo(actualWidth(w: -5))
            make.trailing.equalTo(actualWidth(w: -5))
            //: make.top.equalTo(faceBackImageView.snp.bottom).offset(actualHeight(h: 26))
            make.top.equalTo(faceBackImageView.snp.bottom).offset(actualHeight(h: 26))
        }
        //: verificationDesLab.snp.makeConstraints { make in
        verificationDesLab.snp.makeConstraints { make in
            //: make.leading.equalTo(verificationTitleLab.snp.leading)
            make.leading.equalTo(verificationTitleLab.snp.leading)
            //: make.trailing.equalTo(verificationTitleLab.snp.trailing)
            make.trailing.equalTo(verificationTitleLab.snp.trailing)
            //: make.top.equalTo(verificationTitleLab.snp.bottom).offset(actualHeight(h: 10))
            make.top.equalTo(verificationTitleLab.snp.bottom).offset(actualHeight(h: 10))
        }
        //: subFirstDesLab.snp.makeConstraints { make in
        subFirstDesLab.snp.makeConstraints { make in
            //: make.leading.equalTo(verificationTitleLab.snp.leading)
            make.leading.equalTo(verificationTitleLab.snp.leading)
            //: make.trailing.equalTo(verificationTitleLab.snp.trailing)
            make.trailing.equalTo(verificationTitleLab.snp.trailing)
            //: make.top.equalTo(verificationDesLab.snp.bottom).offset(actualHeight(h: 12))
            make.top.equalTo(verificationDesLab.snp.bottom).offset(actualHeight(h: 12))
        }
        //: subSecondDesLab.snp.makeConstraints { make in
        subSecondDesLab.snp.makeConstraints { make in
            //: make.leading.equalTo(verificationTitleLab.snp.leading)
            make.leading.equalTo(verificationTitleLab.snp.leading)
            //: make.trailing.equalTo(verificationTitleLab.snp.trailing)
            make.trailing.equalTo(verificationTitleLab.snp.trailing)
            //: make.top.equalTo(subFirstDesLab.snp.bottom).offset(actualHeight(h: 9))
            make.top.equalTo(subFirstDesLab.snp.bottom).offset(actualHeight(h: 9))
        }
        //: continueBtn.snp.makeConstraints { make in
        continueBtn.snp.makeConstraints { make in
            //: make.top.equalTo(subSecondDesLab.snp.bottom).offset(actualHeight(h: 24))
            make.top.equalTo(subSecondDesLab.snp.bottom).offset(actualHeight(h: 24))
            //: make.centerX.equalTo(self)
            make.centerX.equalTo(self)
            //: make.width.equalTo(267)
            make.width.equalTo(267)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
        }
    }
}
