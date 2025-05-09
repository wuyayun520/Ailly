
//: Declare String Begin

/*: "nav_back_black_nor" :*/
fileprivate let str_textValue:String = "totalav"
fileprivate let str_callName:[Character] = ["_","b","a","c","k","_","b","l","a","c","k","_","n","o","r"]

/*: "Email Address" :*/
fileprivate let str_leadingName:[Character] = ["E","m","a","i","l"," ","A","d","d","r","e"]
fileprivate let str_requestValue:[Character] = ["s","s"]

/*: "F4F6FA" :*/
fileprivate let str_titleValue:String = "content4content6content"
fileprivate let str_normalName:String = "show"

/*: "Add an email address" :*/
fileprivate let str_layerValue:[Character] = ["A","d","d"," ","a","n"," ","e","m"]
fileprivate let str_pathData:[Character] = ["a","i","l"," ","a","d","d","r","e","s","s"]

/*: "BBBBBB" :*/
fileprivate let str_addTitle:String = "manager"
fileprivate let str_onlineName:[Character] = ["B","B","B","B","B"]

/*: "Only you will see your email on your profile." :*/
fileprivate let str_cornerValueData:[UInt8] = [0x2e,0x65,0x6c,0x69,0x66,0x6f,0x72,0x70,0x20,0x72,0x75,0x6f,0x79,0x20,0x6e,0x6f,0x20,0x6c,0x69,0x61,0x6d,0x65,0x20,0x72,0x75,0x6f,0x79,0x20,0x65,0x65,0x73,0x20,0x6c,0x6c,0x69,0x77,0x20,0x75,0x6f,0x79,0x20,0x79,0x6c,0x6e,0x4f]

/*: "Send verification email" :*/
fileprivate let str_contentElementData:String = "finish action user show insideSend ve"
fileprivate let str_succeedValue:String = "deviceifi"
fileprivate let str_femaleTitle:String = "less view self at builderon email"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  BeautyThen.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/9/1.
//

//: import UIKit
import UIKit

//: class TalkingLoginBindEmailVC: TalkingBaseViewController {
class BeautyThen: SeamViewController {
    // 是否展示返回按钮
    //: var isBack = true
    var isBack = true
    //: private let disposeBag = DisposeBag()
    private let disposeBag = DisposeBag()

    //: override func viewDidAppear(_ animated: Bool) {
    override func viewDidAppear(_ animated: Bool) {
        //: super.viewDidAppear(animated)
        super.viewDidAppear(animated)
        //: if isBack == false {
        if isBack == false {
            //: popGesture(isOpen: false)
            snapFrom(isOpen: false)
        }
    }

    //: override func viewDidDisappear(_ animated: Bool) {
    override func viewDidDisappear(_ animated: Bool) {
        //: super.viewDidDisappear(animated)
        super.viewDidDisappear(animated)
        //: if isBack == false {
        if isBack == false {
            //: popGesture(isOpen: true)
            snapFrom(isOpen: true)
        }
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.hideNavi = true
        self.hideNavi = true
        //: self.view.backgroundColor = .white
        self.view.backgroundColor = .white
        //: self.setupSubviews()
        self.move()
        //: self.setupSubViewsConstraint()
        self.appear()
        //: self.bindInteraction()
        self.modelList()
        //: addTapGestureRecognizer()
        compound()
    }

    //: deinit {
    deinit {}

    // MARK: - Lazy Load

    //: private lazy var backBtn: UIButton = {
    private lazy var backBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.eponymUp(name: "nav_back_black_nor"), for: .normal)
        btn.setImage(UIImage.eponymUp(name: (str_textValue.replacingOccurrences(of: "total", with: "n") + String(str_callName))), for: .normal)
        //: btn.addTarget(self, action: #selector(backBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(back), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var titleLabel: UILabel = {
    private lazy var titleLabel: UILabel = {
        //: let label = UILabel()
        let label = UILabel()
        //: label.font = .pingfangFont(type: .Semibold, fontSize: 17.0)
        label.font = .pingfang(type: .Semibold, fontSize: 17.0)
        //: label.textColor = .appTitleColor()
        label.textColor = .executeTo()
        //: label.textAlignment = .center
        label.textAlignment = .center
        //: label.text = "Email Address".localized
        label.text = (String(str_leadingName) + String(str_requestValue)).localized
        //: return label
        return label
        //: }()
    }()

    //: private lazy var emailInputView: UITextField = {
    private lazy var emailInputView: UITextField = {
        //: let textField = UITextField()
        let textField = UITextField()
        //: textField.backgroundColor = UIColor(hex: "F4F6FA")
        textField.backgroundColor = UIColor(hex: (str_titleValue.replacingOccurrences(of: "content", with: "F") + str_normalName.replacingOccurrences(of: "show", with: "A")))
        //: textField.font = .pingfangFont(type: .Medium, fontSize: 17)
        textField.font = .pingfang(type: .Medium, fontSize: 17)
        //: textField.textColor = .appTitleColor()
        textField.textColor = .executeTo()
        //: textField.layer.cornerRadius = 25
        textField.layer.cornerRadius = 25
        //: textField.textAlignment = .center
        textField.textAlignment = .center
        //: textField.clipsToBounds = true
        textField.clipsToBounds = true
        //: textField.attributedPlaceholder = NSAttributedString(string: "Add an email address".localized, attributes: [NSAttributedString.Key.font: UIFont.pingfangFont(type: .Regular, fontSize: 15), NSAttributedString.Key.foregroundColor: UIColor(hex: "BBBBBB")!])
        textField.attributedPlaceholder = NSAttributedString(string: (String(str_layerValue) + String(str_pathData)).localized, attributes: [NSAttributedString.Key.font: UIFont.pingfang(type: .Regular, fontSize: 15), NSAttributedString.Key.foregroundColor: UIColor(hex: (str_addTitle.replacingOccurrences(of: "manager", with: "B") + String(str_onlineName)))!])
        //: textField.keyboardType = .default
        textField.keyboardType = .default
        //: textField.returnKeyType = .done
        textField.returnKeyType = .done
        //: textField.clearButtonMode = .whileEditing
        textField.clearButtonMode = .whileEditing
        //: return textField
        return textField
        //: }()
    }()

    //: private lazy var emailTipLabel: UILabel = {
    private lazy var emailTipLabel: UILabel = {
        //: let label = UILabel()
        let label = UILabel()
        //: label.font = .pingfangFont(type: .Regular, fontSize: 15.0)
        label.font = .pingfang(type: .Regular, fontSize: 15.0)
        //: label.textColor = .publishView()
        label.textColor = .publishView()
        //: label.textAlignment = .center
        label.textAlignment = .center
        //: label.numberOfLines = 0
        label.numberOfLines = 0
        //: label.text = "Only you will see your email on your profile.".localized
        label.text = String(bytes: str_cornerValueData.reversed(), encoding: .utf8)!.localized
        //: return label
        return label
        //: }()
    }()

    //: private lazy var commitButton: UIButton = {
    private lazy var commitButton: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.isEnabled = false
        btn.isEnabled = false
        //: btn.setTitleColor(UIColor.white, for: .normal)
        btn.setTitleColor(UIColor.white, for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Regular, fontSize: 18)
        btn.titleLabel?.font = UIFont.pingfang(type: .Regular, fontSize: 18)
        //: btn.setTitle("Send verification email".localized, for: .normal)
        btn.setTitle((String(str_contentElementData.suffix(7)) + str_succeedValue.replacingOccurrences(of: "device", with: "r") + "cati" + String(str_femaleTitle.suffix(8))).localized, for: .normal)
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: UIColor.appGradientColor(), size: CGSize(width: ScreenWidth-60, height: 50)), for: .normal)
        btn.setBackgroundImage(UIImage.makeBackground(colors: UIColor.appToVoice(), size: CGSize(width: kLet_cameraValue - 60, height: 50)), for: .normal)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: if TalkingRequestAddrTool.share.interfaceLang == LangType.es.rawValue || TalkingRequestAddrTool.share.interfaceLang == LangType.pt.rawValue {
        if SendUpReactiveCompatible.share.interfaceLang == EditTermConvertible.es.rawValue || SendUpReactiveCompatible.share.interfaceLang == EditTermConvertible.pt.rawValue {
            //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Regular, fontSize: 16)
            btn.titleLabel?.font = UIFont.pingfang(type: .Regular, fontSize: 16)
        }
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Public Event

//: extension TalkingLoginBindEmailVC {
extension BeautyThen {
    //: @objc func backBtnClick() {
    @objc func back() {
        //: self.navigationController?.popViewController(animated: true)
        self.navigationController?.popViewController(animated: true)
    }

    //: func checkCommitButtonState() {
    func object() {
        //: if emailInputView.text!.isEmptyString {
        if emailInputView.text!.isEmptyString {
            //: commitButton.isEnabled = false
            commitButton.isEnabled = false
            //: } else {
        } else {
            //: commitButton.isEnabled = true
            commitButton.isEnabled = true
        }
    }

    //: func func__getEmailCodeAction() {
    func funcLikeKindness() {
        //: view.endEditing(true)
        view.endEditing(true)
        //: ProgressHUD.show(superView: view)
        ModelReactiveCompatible.sendImage(superView: view)
        //: TalkingLoginRequestTool.req_getBindEmailCode(emailStr: emailInputView.text!, isBind: true) { succeed, result, errorModel in
        LoginRequestTool.at(emailStr: emailInputView.text!, isBind: true) { succeed, _, _ in
            //: ProgressHUD.dismiss()
            ModelReactiveCompatible.dataConverterCan()
            //: if succeed {
            if succeed {
                //: self.func__pushToPhoneCodeVC()
                self.bind()
            }
        }
    }

    //: func func__pushToPhoneCodeVC() {
    func bind() {
        //: let vc = TalkingLoginBindInputCodeVC()
        let vc = TalkingRecognizerDelegate()
        //: vc.phoneOrEmailStr = emailInputView.text!
        vc.phoneOrEmailStr = emailInputView.text!
        //: vc.viewType = .BindEmail
        vc.viewType = .BindEmail
        //: navigationController?.pushViewController(vc, animated: true)
        navigationController?.pushViewController(vc, animated: true)
    }
}

// MARK: - Layout

//: extension TalkingLoginBindEmailVC {
extension BeautyThen {
    // 添加视图
    //: private func setupSubviews() {
    private func move() {
        //: backBtn.isHidden = !isBack
        backBtn.isHidden = !isBack
        //: view.addSubview(backBtn)
        view.addSubview(backBtn)
        //: view.bringSubviewToFront(backBtn)
        view.bringSubviewToFront(backBtn)
        //: view.addSubview(titleLabel)
        view.addSubview(titleLabel)
        //: view.addSubview(emailInputView)
        view.addSubview(emailInputView)
        //: view.addSubview(commitButton)
        view.addSubview(commitButton)
        //: view.addSubview(emailTipLabel)
        view.addSubview(emailTipLabel)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func appear() {
        //: backBtn.snp.makeConstraints { make in
        backBtn.snp.makeConstraints { make in
            //: make.leading.equalTo(6)
            make.leading.equalTo(6)
            //: make.top.equalTo(StatusBarHeight)
            make.top.equalTo(kLet_timeSenseValue)
            //: make.size.equalTo(44)
            make.size.equalTo(44)
        }
        //: titleLabel.snp.makeConstraints { make in
        titleLabel.snp.makeConstraints { make in
            //: make.top.equalTo(backBtn.snp.bottom).offset(44)
            make.top.equalTo(backBtn.snp.bottom).offset(44)
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
        }
        //: emailInputView.snp.makeConstraints { make in
        emailInputView.snp.makeConstraints { make in
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
            //: make.trailing.equalTo(-30)
            make.trailing.equalTo(-30)
            //: make.top.equalTo(titleLabel.snp.bottom).offset(40)
            make.top.equalTo(titleLabel.snp.bottom).offset(40)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
        }
        //: commitButton.snp.makeConstraints { make in
        commitButton.snp.makeConstraints { make in
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
            //: make.trailing.equalTo(-30)
            make.trailing.equalTo(-30)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
            //: make.top.equalTo(emailInputView.snp.bottom).offset(40)
            make.top.equalTo(emailInputView.snp.bottom).offset(40)
        }
        //: emailTipLabel.snp.makeConstraints { make in
        emailTipLabel.snp.makeConstraints { make in
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
            //: make.trailing.equalTo(-30)
            make.trailing.equalTo(-30)
            //: make.top.equalTo(commitButton.snp.bottom).offset(24)
            make.top.equalTo(commitButton.snp.bottom).offset(24)
        }
    }

    // 添加事件
    //: private func bindInteraction() {
    private func modelList() {
        //: emailInputView.rx.text.orEmpty.asObservable()
        emailInputView.rx.text.orEmpty.asObservable()
            //: .subscribe(onNext: { [weak self] _ in
            .subscribe(onNext: { [weak self] _ in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.checkCommitButtonState()
                self.object()
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)
        //: commitButton.rx.tap
        commitButton.rx.tap
            //: .subscribe(onNext: { [weak self] in
            .subscribe(onNext: { [weak self] in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.func__getEmailCodeAction()
                self.funcLikeKindness()
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)
    }
}
