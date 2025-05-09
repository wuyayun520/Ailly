
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_makeTitle:[UInt8] = [0x8,0xf,0x8,0x15,0x49,0x2,0xe,0x5,0x4,0x13,0x5b,0x48,0x41,0x9,0x0,0x12,0x41,0xf,0xe,0x15,0x41,0x3,0x4,0x4,0xf,0x41,0x8,0xc,0x11,0xd,0x4,0xc,0x4,0xf,0x15,0x4,0x5]

private func impactStage(target num: UInt8) -> UInt8 {
    return num ^ 97
}

/*: "icon_window_verification" :*/
fileprivate let str_fromTitle:String = "text day succeedicon_w"
fileprivate let str_makeValue:String = "inddate"
fileprivate let str_requestValue:String = "_veripic next var in type"
fileprivate let str_withData:String = "TION"

/*: "Go to certify" :*/
fileprivate let str_modeText:String = "Go to self view observer share self"
fileprivate let str_dataValue:String = "of"

/*: "btn_me_program_photo_delete" :*/
fileprivate let str_extraTitle:String = "national left level make tobtn_"
fileprivate let str_imageModelData:String = "ROGRAM"
fileprivate let str_succeedManagerValue:String = "come colorto_de"
fileprivate let str_moreModeValue:String = "leviewe"

/*: "Authentication is under reviewing" :*/
fileprivate let str_inputValue:[UInt8] = [0x43,0x77,0x76,0x6a,0x67,0x6c,0x76,0x6b,0x61,0x63,0x76,0x6b,0x6d,0x6c,0x22,0x6b,0x71,0x22,0x77,0x6c,0x66,0x67,0x70,0x22,0x70,0x67,0x74,0x6b,0x67,0x75,0x6b,0x6c,0x65]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  BottomView.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/11/15.
//

//: import UIKit
import UIKit

//: class TalkingFaceVerificationPopUpView: UIView {
class BottomView: UIView {
    //: var popView: TalkingPopView?
    var popView: NameThen?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.subviewsMake()
        //: self.setupSubViewsConstraint()
        self.addFor()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_makeTitle.map{impactStage(target: $0)}, encoding: .utf8)!)
    }

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    // MARK: - Lazy

    //: private lazy var contentView: UIView = {
    private lazy var contentView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: view.isUserInteractionEnabled = true
        view.isUserInteractionEnabled = true
        //: return view
        return view
        //: }()
    }()

    //: private lazy var backIcon: UIImageView = {
    private lazy var backIcon: UIImageView = {
        //: let imag = UIImageView.init()
        let imag = UIImageView()
        //: imag.setUrlImage(urlStr: EqualThen.share.appUserConfigMode.rpWindowBg, placeImg: UIImage.eponymUp(name: "icon_window_verification"))
        imag.lineBorder(urlStr: EqualThen.share.appUserConfigMode.rpWindowBg, placeImg: UIImage.eponymUp(name: (String(str_fromTitle.suffix(6)) + str_makeValue.replacingOccurrences(of: "date", with: "ow") + String(str_requestValue.prefix(5)) + "fica" + str_withData.lowercased())))
        //: imag.contentMode = .scaleAspectFill
        imag.contentMode = .scaleAspectFill
        //: imag.isUserInteractionEnabled = true
        imag.isUserInteractionEnabled = true
        //: return imag
        return imag
        //: }()
    }()

    //: private lazy var finishBtn: UIButton = {
    private lazy var finishBtn: UIButton = {
        //: let btn = UIButton.init(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: UIColor.appGradientColor(), size: CGSize(width: actualWidth(w: 203), height: actualWidth(w: 50))), for: .normal)
        btn.setBackgroundImage(UIImage.makeBackground(colors: UIColor.appToVoice(), size: CGSize(width: actualWidth(w: 203), height: actualWidth(w: 50))), for: .normal)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.setTitle("Go to certify".localized, for: .normal)
        btn.setTitle((String(str_modeText.prefix(6)) + "certif" + str_dataValue.replacingOccurrences(of: "of", with: "y")).localized, for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangWithDiameter(fontSize: 16)
        btn.titleLabel?.font = UIFont.pingfangWithDiameter(fontSize: 16)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.addTarget(self, action: #selector(finishBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(labelAt), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var closeBtn: UIButton = {
    private lazy var closeBtn: UIButton = {
        //: let btn = UIButton.init(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setImage(UIImage.eponymUp(name: "btn_me_program_photo_delete"), for: .normal)
        btn.setImage(UIImage.eponymUp(name: (String(str_extraTitle.suffix(4)) + "me_p" + str_imageModelData.lowercased() + "_pho" + String(str_succeedManagerValue.suffix(5)) + str_moreModeValue.replacingOccurrences(of: "view", with: "t"))), for: .normal)
        //: btn.addTarget(self, action: #selector(closeBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(userClick), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingFaceVerificationPopUpView {
extension BottomView {
    //: @objc private func finishBtnClick() {
    @objc private func labelAt() {
        //: dismiss()
        activity()
        //: if EqualThen.share.loginUserMode.isTPAuth == TPUserAuth.isSuccessed.rawValue {
        if EqualThen.share.loginUserMode.isTPAuth == SkinComparable.isSuccessed.rawValue {
            //: return
            return
                //: } else if EqualThen.share.loginUserMode.isTPAuth == TPUserAuth.unknown.rawValue {
        } else if EqualThen.share.loginUserMode.isTPAuth == SkinComparable.unknown.rawValue {
            //: EditTextThen.share.func__pushUserVerifyController(toast: nil)
            EditTextThen.share.alongTarget(toast: nil)
            //: } else if EqualThen.share.loginUserMode.isTPAuth == TPUserAuth.isOnGoing.rawValue {
        } else if EqualThen.share.loginUserMode.isTPAuth == SkinComparable.isOnGoing.rawValue {
            //: self.func__showStatusBarErrorMsg(showMsg: "Authentication is under reviewing".localized)
            self.oversight(showMsg: String(bytes: str_inputValue.map{$0^2}, encoding: .utf8)!.localized)
            //: } else {
        } else {
            //: EditTextThen.share.func__pushUserVerifyController(toast: nil)
            EditTextThen.share.alongTarget(toast: nil)
        }
    }

    //: @objc private func closeBtnClick() {
    @objc private func userClick() {
        //: dismiss()
        activity()
    }

    //: func show() {
    func capacityByOf() {
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
    @objc func activity() {
        //: popView?.dismissView()
        popView?.big()
        //: popView = nil
        popView = nil
    }
}

// MARK: - Layout

//: extension TalkingFaceVerificationPopUpView {
extension BottomView {
    // 添加视图
    //: private func setupSubviews() {
    private func subviewsMake() {
        //: self.addSubview(contentView)
        self.addSubview(contentView)
        //: contentView.addSubview(backIcon)
        contentView.addSubview(backIcon)
        //: backIcon.addSubview(finishBtn)
        backIcon.addSubview(finishBtn)
        //: contentView.addSubview(closeBtn)
        contentView.addSubview(closeBtn)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func addFor() {
        //: contentView.snp.makeConstraints { make in
        contentView.snp.makeConstraints { make in
            //: make.top.equalTo(ScreenHeight/4)
            make.top.equalTo(kLet_clickData / 4)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.size.equalTo(CGSize.init(width: 319, height: 386+60))
            make.size.equalTo(CGSize(width: 319, height: 386 + 60))
        }

        //: backIcon.snp.makeConstraints { make in
        backIcon.snp.makeConstraints { make in
            //: make.leading.trailing.top.equalToSuperview()
            make.leading.trailing.top.equalToSuperview()
            //: make.height.equalTo(386)
            make.height.equalTo(386)
        }

        //: finishBtn.snp.makeConstraints { make in
        finishBtn.snp.makeConstraints { make in
            //: make.bottom.equalTo(-25)
            make.bottom.equalTo(-25)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
            //: make.height.equalTo(203)
            make.height.equalTo(203)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }

        //: closeBtn.snp.makeConstraints { make in
        closeBtn.snp.makeConstraints { make in
            //: make.top.equalTo(backIcon.snp.bottom).offset(30)
            make.top.equalTo(backIcon.snp.bottom).offset(30)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.size.equalTo(30)
            make.size.equalTo(30)
        }
    }
}
