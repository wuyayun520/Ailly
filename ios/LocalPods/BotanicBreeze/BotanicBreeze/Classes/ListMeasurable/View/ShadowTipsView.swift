
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_fillValue:[UInt8] = [0xfb,0x0,0xfb,0x6,0xba,0xf5,0x1,0xf6,0xf7,0x4,0xcc,0xbb,0xb2,0xfa,0xf3,0x5,0xb2,0x0,0x1,0x6,0xb2,0xf4,0xf7,0xf7,0x0,0xb2,0xfb,0xff,0x2,0xfe,0xf7,0xff,0xf7,0x0,0x6,0xf7,0xf6]

fileprivate func toiletKit(leading num: UInt8) -> UInt8 {
    let value = Int(num) + 110
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "Tips" :*/
fileprivate let str_hiData:String = "Tipsview gift if let"

/*: "Your post may be recommended as hashtag topic to other users. And its content must comply with current laws regulations and platform requirements which shall not contain:" :*/
fileprivate let str_statusName:[UInt8] = [0x3a,0x6e,0x69,0x61,0x74,0x6e,0x6f,0x63,0x20,0x74,0x6f,0x6e,0x20,0x6c,0x6c,0x61,0x68,0x73,0x20,0x68,0x63,0x69,0x68,0x77,0x20,0x73,0x74,0x6e,0x65,0x6d,0x65,0x72,0x69,0x75,0x71,0x65,0x72,0x20,0x6d,0x72,0x6f,0x66,0x74,0x61,0x6c,0x70,0x20,0x64,0x6e,0x61,0x20,0x73,0x6e,0x6f,0x69,0x74,0x61,0x6c,0x75,0x67,0x65,0x72,0x20,0x73,0x77,0x61,0x6c,0x20,0x74,0x6e,0x65,0x72,0x72,0x75,0x63,0x20,0x68,0x74,0x69,0x77,0x20,0x79,0x6c,0x70,0x6d,0x6f,0x63,0x20,0x74,0x73,0x75,0x6d,0x20,0x74,0x6e,0x65,0x74,0x6e,0x6f,0x63,0x20,0x73,0x74,0x69,0x20,0x64,0x6e,0x41,0x20,0x2e,0x73,0x72,0x65,0x73,0x75,0x20,0x72,0x65,0x68,0x74,0x6f,0x20,0x6f,0x74,0x20,0x63,0x69,0x70,0x6f,0x74,0x20,0x67,0x61,0x74,0x68,0x73,0x61,0x68,0x20,0x73,0x61,0x20,0x64,0x65,0x64,0x6e,0x65,0x6d,0x6d,0x6f,0x63,0x65,0x72,0x20,0x65,0x62,0x20,0x79,0x61,0x6d,0x20,0x74,0x73,0x6f,0x70,0x20,0x72,0x75,0x6f,0x59]

/*: "#777777" :*/
fileprivate let str_modelRawValue:String = "#7"
fileprivate let str_attachValue:String = "77777"

/*: "1. Hate comments or rumors. \n2. Induce others to send gifts. \n3. Induce others to pay and trade on money. \n4. Nudity or sexual activity. \n5. Advertising information. \n6. Other contents prohibited by laws and administrative regulations." :*/
fileprivate let str_dataValue:[UInt8] = [0x2e,0x73,0x6e,0x6f,0x69,0x74,0x61,0x6c,0x75,0x67,0x65,0x72,0x20,0x65,0x76,0x69,0x74,0x61,0x72,0x74,0x73,0x69,0x6e,0x69,0x6d,0x64,0x61,0x20,0x64,0x6e,0x61,0x20,0x73,0x77,0x61,0x6c,0x20,0x79,0x62,0x20,0x64,0x65,0x74,0x69,0x62,0x69,0x68,0x6f,0x72,0x70,0x20,0x73,0x74,0x6e,0x65,0x74,0x6e,0x6f,0x63,0x20,0x72,0x65,0x68,0x74,0x4f,0x20,0x2e,0x36,0xa,0x20,0x2e,0x6e,0x6f,0x69,0x74,0x61,0x6d,0x72,0x6f,0x66,0x6e,0x69,0x20,0x67,0x6e,0x69,0x73,0x69,0x74,0x72,0x65,0x76,0x64,0x41,0x20,0x2e,0x35,0xa,0x20,0x2e,0x79,0x74,0x69,0x76,0x69,0x74,0x63,0x61,0x20,0x6c,0x61,0x75,0x78,0x65,0x73,0x20,0x72,0x6f,0x20,0x79,0x74,0x69,0x64,0x75,0x4e,0x20,0x2e,0x34,0xa,0x20,0x2e,0x79,0x65,0x6e,0x6f,0x6d,0x20,0x6e,0x6f,0x20,0x65,0x64,0x61,0x72,0x74,0x20,0x64,0x6e,0x61,0x20,0x79,0x61,0x70,0x20,0x6f,0x74,0x20,0x73,0x72,0x65,0x68,0x74,0x6f,0x20,0x65,0x63,0x75,0x64,0x6e,0x49,0x20,0x2e,0x33,0xa,0x20,0x2e,0x73,0x74,0x66,0x69,0x67,0x20,0x64,0x6e,0x65,0x73,0x20,0x6f,0x74,0x20,0x73,0x72,0x65,0x68,0x74,0x6f,0x20,0x65,0x63,0x75,0x64,0x6e,0x49,0x20,0x2e,0x32,0xa,0x20,0x2e,0x73,0x72,0x6f,0x6d,0x75,0x72,0x20,0x72,0x6f,0x20,0x73,0x74,0x6e,0x65,0x6d,0x6d,0x6f,0x63,0x20,0x65,0x74,0x61,0x48,0x20,0x2e,0x31]

/*: "OK" :*/
fileprivate let str_labValue:[Character] = ["O","K"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ShadowTipsView.swift
//  AbroadTalking
//
//  Created by young on 2022/9/21.
//

//: import UIKit
import UIKit

//: class TalkingFreeTipsView: UIView {
class ShadowTipsView: UIView {
    //: let disposeBag = DisposeBag()
    let disposeBag = DisposeBag()

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_fillValue.map{toiletKit(leading: $0)}, encoding: .utf8)!)
    }

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        call()
        //: setupSubViewsConstraint()
        toAppear()
    }

    // MARK: - Lazy load

    //: private lazy var whiteBgV: UIView = {
    private lazy var whiteBgV: UIView = {
        //: let v = UIView()
        let v = UIView()
        //: v.backgroundColor = .white
        v.backgroundColor = .white
        //: v.layer.cornerRadius = 15
        v.layer.cornerRadius = 15
        //: v.layer.masksToBounds = true
        v.layer.masksToBounds = true
        //: return v
        return v
        //: }()
    }()

    //: private lazy var titleLab: UILabel = {
    private lazy var titleLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = UIColor.appTitleColor()
        lab.textColor = UIColor.executeTo()
        //: lab.font = UIFont.pingfangFont(type: .Semibold, fontSize: 22)
        lab.font = UIFont.pingfang(type: .Semibold, fontSize: 22)
        //: lab.text = "Tips".localized
        lab.text = (String(str_hiData.prefix(4))).localized
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var scrollView: UIScrollView = {
    private lazy var scrollView: UIScrollView = {
        //: let scrollV = UIScrollView()
        let scrollV = UIScrollView()
        //: scrollV.backgroundColor = .white
        scrollV.backgroundColor = .white
        //: scrollV.showsVerticalScrollIndicator = true
        scrollV.showsVerticalScrollIndicator = true
        //: scrollV.showsHorizontalScrollIndicator = false
        scrollV.showsHorizontalScrollIndicator = false
        //: return scrollV
        return scrollV
        //: }()
    }()

    //: private lazy var textLab1: UILabel = {
    private lazy var textLab1: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = UIColor.appTitleColor()
        lab.textColor = UIColor.executeTo()
        //: lab.font = UIFont.pingfangFont(type: .Medium, fontSize: 16)
        lab.font = UIFont.pingfang(type: .Medium, fontSize: 16)
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: lab.text = "Your post may be recommended as hashtag topic to other users. And its content must comply with current laws regulations and platform requirements which shall not contain:".localized
        lab.text = String(bytes: str_statusName.reversed(), encoding: .utf8)!.localized
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var textLab2: UILabel = {
    private lazy var textLab2: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = UIColor(hex: "#777777")
        lab.textColor = UIColor(hex: (str_modelRawValue.capitalized + str_attachValue.capitalized))
        //: lab.font = UIFont.pingfangFont(type: .Regular, fontSize: 16)
        lab.font = UIFont.pingfang(type: .Regular, fontSize: 16)
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: lab.text = "1. Hate comments or rumors. \n2. Induce others to send gifts. \n3. Induce others to pay and trade on money. \n4. Nudity or sexual activity. \n5. Advertising information. \n6. Other contents prohibited by laws and administrative regulations.".localized
        lab.text = String(bytes: str_dataValue.reversed(), encoding: .utf8)!.localized
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var okBtn: UIButton = {
    private lazy var okBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setTitle("OK".localized, for: .normal)
        btn.setTitle("OK".localized, for: .normal)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Medium, fontSize: 18)
        btn.titleLabel?.font = UIFont.pingfang(type: .Medium, fontSize: 18)
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: UIColor.appGradientColor(), size: CGSize(width: 255, height: 50)), for: .normal)
        btn.setBackgroundImage(UIImage.makeBackground(colors: UIColor.appToVoice(), size: CGSize(width: 255, height: 50)), for: .normal)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingFreeTipsView {
extension ShadowTipsView {
    //: func showView(okHandler: @escaping () -> Void) {
    func buttonHandler(okHandler: @escaping () -> Void) {
        //: show()
        device()
        // bind event
        //: okBtn.rx.controlEvent(.touchUpInside)
        okBtn.rx.controlEvent(.touchUpInside)
            //: .subscribe(onNext: { [weak self] in
            .subscribe(onNext: { [weak self] in
                //: guard let self = self else { return }
                guard let self = self else { return }
                // 记录同意状态
                //: Defaults.set(true, forKey: TalkingFreeTipsViewIsShow)
                kLet_turnPartyValue.set(true, forKey: kLet_adjustNoName)
                //: self.dismiss()
                self.phonationDismiss()
                //: okHandler()
                okHandler()
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)
    }

    //: private func show() {
    private func device() {
        //: UIView.animate(withDuration: 0.3) {
        UIView.animate(withDuration: 0.3) {
            //: self.alpha = 1
            self.alpha = 1
            //: } completion: { finish in
        } completion: { _ in
            //: MacroDefine.getWindow().addSubview(self)
            UserMacroDefine.toUp().addSubview(self)
        }
    }

    //: private func dismiss() {
    private func phonationDismiss() {
        //: UIView.animate(withDuration: 0.3) {
        UIView.animate(withDuration: 0.3) {
            //: self.alpha = 0
            self.alpha = 0
            //: } completion: { finish in
        } completion: { _ in
            //: guard self.superview != nil else { return }
            guard self.superview != nil else { return }
            //: self.removeFromSuperview()
            self.removeFromSuperview()
        }
    }
}

// MARK: - Layout

//: extension TalkingFreeTipsView {
extension ShadowTipsView {
    // 添加视图
    //: private func setupSubviews() {
    private func call() {
        //: frame = CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight)
        frame = CGRect(x: 0, y: 0, width: kLet_cameraValue, height: kLet_clickData)
        //: backgroundColor = UIColor.RGBA(0, 0, 0, 0.6)
        backgroundColor = UIColor.showSub(0, 0, 0, 0.6)
        //: alpha = 0
        alpha = 0
        //: addSubview(whiteBgV)
        addSubview(whiteBgV)
        //: whiteBgV.addSubview(titleLab)
        whiteBgV.addSubview(titleLab)
        //: whiteBgV.addSubview(scrollView)
        whiteBgV.addSubview(scrollView)
        //: scrollView.addSubview(textLab1)
        scrollView.addSubview(textLab1)
        //: scrollView.addSubview(textLab2)
        scrollView.addSubview(textLab2)
        //: whiteBgV.addSubview(okBtn)
        whiteBgV.addSubview(okBtn)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func toAppear() {
        //: whiteBgV.snp.makeConstraints { make in
        whiteBgV.snp.makeConstraints { make in
            //: make.center.equalToSuperview()
            make.center.equalToSuperview()
            //: make.size.equalTo(CGSize(width: 295, height: 374))
            make.size.equalTo(CGSize(width: 295, height: 374))
        }
        //: titleLab.snp.makeConstraints { make in
        titleLab.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.top.equalToSuperview().offset(20)
            make.top.equalToSuperview().offset(20)
        }
        //: scrollView.snp.makeConstraints { make in
        scrollView.snp.makeConstraints { make in
            //: make.top.equalTo(titleLab.snp.bottom).offset(10)
            make.top.equalTo(titleLab.snp.bottom).offset(10)
            //: make.leading.equalTo(20)
            make.leading.equalTo(20)
            //: make.trailing.equalTo(-20)
            make.trailing.equalTo(-20)
            //: make.bottom.equalToSuperview().offset(-82)
            make.bottom.equalToSuperview().offset(-82)
        }
        //: textLab1.snp.makeConstraints { make in
        textLab1.snp.makeConstraints { make in
            //: make.top.equalToSuperview()
            make.top.equalToSuperview()
            //: make.leading.equalTo(whiteBgV.snp.leading).offset(20)
            make.leading.equalTo(whiteBgV.snp.leading).offset(20)
            //: make.trailing.equalTo(whiteBgV.snp.trailing).offset(-20)
            make.trailing.equalTo(whiteBgV.snp.trailing).offset(-20)
        }
        //: textLab2.snp.makeConstraints { make in
        textLab2.snp.makeConstraints { make in
            //: make.top.equalTo(textLab1.snp.bottom).offset(4)
            make.top.equalTo(textLab1.snp.bottom).offset(4)
            //: make.leading.width.equalTo(textLab1)
            make.leading.width.equalTo(textLab1)
        }
        //: okBtn.snp.makeConstraints { make in
        okBtn.snp.makeConstraints { make in
            //: make.bottom.equalToSuperview().offset(-16)
            make.bottom.equalToSuperview().offset(-16)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.size.equalTo(CGSize(width: 255, height: 50))
            make.size.equalTo(CGSize(width: 255, height: 50))
        }
    }
}
