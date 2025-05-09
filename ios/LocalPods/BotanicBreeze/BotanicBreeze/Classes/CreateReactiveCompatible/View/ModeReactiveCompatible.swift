
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_textData:[UInt8] = [0xd7,0xd0,0xd7,0xca,0x96,0xdd,0xd1,0xda,0xdb,0xcc,0x84,0x97,0x9e,0xd6,0xdf,0xcd,0x9e,0xd0,0xd1,0xca,0x9e,0xdc,0xdb,0xdb,0xd0,0x9e,0xd7,0xd3,0xce,0xd2,0xdb,0xd3,0xdb,0xd0,0xca,0xdb,0xda]

private func afterView(file num: UInt8) -> UInt8 {
    return num ^ 190
}

/*: "img_faceverification_pose" :*/
fileprivate let str_curData:[Character] = ["i","m","g","_","f","a","c","e"]
fileprivate let str_popName:String = "vequalri"
fileprivate let str_sexData:String = "ion_poselist user if"

/*: "Strike this pose and take a photo" :*/
fileprivate let str_centerValue:[UInt8] = [0x11,0x36,0x30,0x2b,0x29,0x27,0x62,0x36,0x2a,0x2b,0x31,0x62,0x32,0x2d,0x31,0x27,0x62,0x23,0x2c,0x26,0x62,0x36,0x23,0x29,0x27,0x62,0x23,0x62,0x32,0x2a,0x2d,0x36,0x2d]

private func makeAdd(title num: UInt8) -> UInt8 {
    return num ^ 66
}

/*: "Your photo will never be uploaded to your profile or shown to anyone else." :*/
fileprivate let str_styleListName:[UInt8] = [0xb,0x21,0x27,0x24,0xd2,0x22,0x1a,0x21,0x26,0x21,0xd2,0x29,0x1b,0x1e,0x1e,0xd2,0x20,0x17,0x28,0x17,0x24,0xd2,0x14,0x17,0xd2,0x27,0x22,0x1e,0x21,0x13,0x16,0x17,0x16,0xd2,0x26,0x21,0xd2,0x2b,0x21,0x27,0x24,0xd2,0x22,0x24,0x21,0x18,0x1b,0x1e,0x17,0xd2,0x21,0x24,0xd2,0x25,0x1a,0x21,0x29,0x20,0xd2,0x26,0x21,0xd2,0x13,0x20,0x2b,0x21,0x20,0x17,0xd2,0x17,0x1e,0x25,0x17,0xe0]

fileprivate func refuseIndexLayer(stage num: UInt8) -> UInt8 {
    let value = Int(num) + 78
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "Camera" :*/
fileprivate let str_countToName:String = "type valueCamera"

/*: "btn_me_back_continue" :*/
fileprivate let str_enterTableValue:String = "value state cover tablebtn_me_b"
fileprivate let str_numberValue:[Character] = ["a","c","k","_","c","o","n","t","i","n","u","e"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ModeReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/8/31.
//

//: import UIKit
import UIKit

//: class TalkingVerificationExampleView: UIView {
class ModeReactiveCompatible: UIView {
    //: let disposeBag = DisposeBag()
    let disposeBag = DisposeBag()
    //: typealias CameraBtnClickBlock = () -> Void
    typealias CameraBtnClickBlock = () -> Void
    //: var btnClickBlock: CameraBtnClickBlock?
    var btnClickBlock: CameraBtnClickBlock?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.backgroundColor = UIColor.white
        self.backgroundColor = UIColor.white
        //: createSubViews()
        bringAbout()
        //: layoutSubViewsConstraints()
        writeAt()
        //: bindInteraction()
        giveAndTake()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_textData.map{afterView(file: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy load

    //: lazy var faceBackImageView: UIImageView = {
    lazy var faceBackImageView: UIImageView = {
        //: let imgView = UIImageView()
        let imgView = UIImageView()
        //: imgView.image = UIImage.eponymUp(name: "img_faceverification_pose")
        imgView.image = UIImage.eponymUp(name: (String(str_curData) + str_popName.replacingOccurrences(of: "equal", with: "e") + "ficat" + String(str_sexData.prefix(8))))
        //: return imgView
        return imgView
        //: }()
    }()

    //: lazy var verificationTitleLab: UILabel = {
    lazy var verificationTitleLab: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.text = "Strike this pose and take a photo".localized
        lb.text = String(bytes: str_centerValue.map{makeAdd(title: $0)}, encoding: .utf8)!.localized
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
        //: lb.text = "Your photo will never be uploaded to your profile or shown to anyone else.".localized
        lb.text = String(bytes: str_styleListName.map{refuseIndexLayer(stage: $0)}, encoding: .utf8)!.localized
        //: lb.textColor = .appValueColor()
        lb.textColor = .addColor()
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
        //: btn.setTitle("Camera".localized, for: .normal)
        btn.setTitle((String(str_countToName.suffix(6))).localized, for: .normal)
        //: btn.setBackgroundImage(UIImage.eponymUp(name: "btn_me_back_continue"), for: .normal)
        btn.setBackgroundImage(UIImage.eponymUp(name: (String(str_enterTableValue.suffix(8)) + String(str_numberValue))), for: .normal)
        //: btn.titleLabel?.font = .pingfangFont(type: .Medium, fontSize: 17)
        btn.titleLabel?.font = .pingfang(type: .Medium, fontSize: 17)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingVerificationExampleView {
extension ModeReactiveCompatible {
    //: @objc func registerBtnAction() {
    @objc func mightHaveBeen() {
        //: if btnClickBlock != nil {
        if btnClickBlock != nil {
            //: btnClickBlock!()
            btnClickBlock!()
        }
    }

    //: private func bindInteraction() {
    private func giveAndTake() {
        //: continueBtn.rx.controlEvent(.touchUpInside)
        continueBtn.rx.controlEvent(.touchUpInside)
            //: .subscribe(onNext: { [weak self] in
            .subscribe(onNext: { [weak self] in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.registerBtnAction()
                self.mightHaveBeen()
                //: }).disposed(by: disposeBag)
            }).disposed(by: disposeBag)
    }
}

// MARK: - Layout

//: extension TalkingVerificationExampleView {
extension ModeReactiveCompatible {
    //: func createSubViews() {
    func bringAbout() {
        //: addSubview(faceBackImageView)
        addSubview(faceBackImageView)
        //: addSubview(verificationTitleLab)
        addSubview(verificationTitleLab)
        //: addSubview(verificationDesLab)
        addSubview(verificationDesLab)
        //: addSubview(continueBtn)
        addSubview(continueBtn)
    }

    //: func layoutSubViewsConstraints() {
    func writeAt() {
        //: let fitH = 686 * (ScreenWidth - actualWidth(w: 30)) / 690
        let fitH = 686 * (kLet_cameraValue - actualWidth(w: 30)) / 690
        //: faceBackImageView.snp.makeConstraints { make in
        faceBackImageView.snp.makeConstraints { make in
            //: make.top.equalTo((actualHeight(h: 18)))
            make.top.equalTo(actualHeight(h: 18))
            //: make.leading.equalTo(actualWidth(w: 15))
            make.leading.equalTo(actualWidth(w: 15))
            //: make.width.equalTo(ScreenWidth-actualWidth(w: 30))
            make.width.equalTo(kLet_cameraValue - actualWidth(w: 30))
            //: make.height.equalTo(fitH)
            make.height.equalTo(fitH)
        }
        //: verificationTitleLab.snp.makeConstraints { make in
        verificationTitleLab.snp.makeConstraints { make in
            //: make.leading.equalTo(actualWidth(w: 15))
            make.leading.equalTo(actualWidth(w: 15))
            //: make.trailing.equalTo(actualWidth(w: -15))
            make.trailing.equalTo(actualWidth(w: -15))
            //: make.top.equalTo(faceBackImageView.snp.bottom).offset(actualHeight(h: 24))
            make.top.equalTo(faceBackImageView.snp.bottom).offset(actualHeight(h: 24))
        }
        //: verificationDesLab.snp.makeConstraints { make in
        verificationDesLab.snp.makeConstraints { make in
            //: make.leading.equalTo(verificationTitleLab.snp.leading)
            make.leading.equalTo(verificationTitleLab.snp.leading)
            //: make.trailing.equalTo(verificationTitleLab.snp.trailing)
            make.trailing.equalTo(verificationTitleLab.snp.trailing)
            //: make.top.equalTo(verificationTitleLab.snp.bottom).offset(10)
            make.top.equalTo(verificationTitleLab.snp.bottom).offset(10)
        }
        //: continueBtn.snp.makeConstraints { make in
        continueBtn.snp.makeConstraints { make in
            //: make.bottom.equalTo(-actualHeight(h: 34)-kDeviceSafeBottomHeight)
            make.bottom.equalTo(-actualHeight(h: 34) - kLet_nextData)
            //: make.centerX.equalTo(self)
            make.centerX.equalTo(self)
            //: make.width.equalTo(267)
            make.width.equalTo(267)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
        }
    }
}
