
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_barData:[UInt8] = [0x84,0x83,0x84,0x99,0xc5,0x8e,0x82,0x89,0x88,0x9f,0xd7,0xc4,0xcd,0x85,0x8c,0x9e,0xcd,0x83,0x82,0x99,0xcd,0x8f,0x88,0x88,0x83,0xcd,0x84,0x80,0x9d,0x81,0x88,0x80,0x88,0x83,0x99,0x88,0x89]

private func scaleWith(show num: UInt8) -> UInt8 {
    return num ^ 237
}

/*: "Resent Code" :*/
fileprivate let str_colorValue:String = "frame errorResen"

/*: "#8C7AFF" :*/
fileprivate let str_atText:String = "normal as page professional#8C7AFF"

/*: " ( :*/
fileprivate let str_cameraText:String = "m("

/*: s)" :*/
fileprivate let str_colorName:[Character] = ["s",")"]

/*: "+ :*/
fileprivate let str_viewStyleContent:String = "response"

/*: "mobile" :*/
fileprivate let str_countData:[UInt8] = [0x1c,0x1e,0x13,0x18,0x1d,0x14]

/*: "vcode" :*/
fileprivate let str_toValue:[UInt8] = [0x84,0x91,0x9d,0x96,0x97]

/*: "areaCode" :*/
fileprivate let str_kitData:[UInt8] = [0x65,0x64,0x6f,0x43,0x61,0x65,0x72,0x61]

/*: "email" :*/
fileprivate let str_hideName:[UInt8] = [0x6c,0x69,0x61,0x6d,0x65]

/*: "RSA加密失败" :*/
fileprivate let str_pairValue:String = "image row varRSA加密失败"

/*: "(+ :*/
fileprivate let str_dataValue:String = "(+"

/*: ) :*/
fileprivate let str_sectionName:String = ")"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  CellReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/8/29.
//

//: import UIKit
import UIKit

//: class TalkingLoginCodeVC: TalkingBaseViewController {
class CellReactiveCompatible: SeamViewController {
    //: public var  phoneOrEmailStr: String = ""  // 邮箱或者Email
    public var phoneOrEmailStr: String = "" // 邮箱或者Email
    //: public var  areaCodeNum: String = ""
    public var areaCodeNum: String = ""
    //: private var codeStr: String = ""
    private var codeStr: String = ""
    //: private var timerDispose: Disposable?
    private var timerDispose: Disposable?
    //: private let disposeBag = DisposeBag()
    private let disposeBag = DisposeBag()
    //: private var loginType: TalkingLoginVCType?
    private var loginType: GiftLoginType?

    //: init(type: TalkingLoginVCType) {
    init(type: GiftLoginType) {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
        //: self.loginType = type
        self.loginType = type
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_barData.map{scaleWith(show: $0)}, encoding: .utf8)!)
    }

    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
    }

    //: override func viewDidDisappear(_ animated: Bool) {
    override func viewDidDisappear(_ animated: Bool) {
        //: super.viewDidDisappear(animated)
        super.viewDidDisappear(animated)
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()

        //: self.setupSubviews()
        self.messageSubviews()
        //: self.setupSubViewsConstraint()
        self.route()
        //: self.bindInteraction()
        self.lineMessage()
    }

    //: deinit {
    deinit {
        //: timerDispose?.dispose()
        timerDispose?.dispose()
    }

    //: lazy var codeView: TalkingLoginCodeView = {
    lazy var codeView: NameCreateReactiveCompatible = {
        //: let codeView = TalkingLoginCodeView()
        let codeView = NameCreateReactiveCompatible()
        //: return codeView
        return codeView
        //: }()
    }()
}

// MARK: - Public Event

//: extension TalkingLoginCodeVC {
extension CellReactiveCompatible {
    //: func func_starCodeTime() {
    func need() {
        //: if timerDispose != nil {
        if timerDispose != nil {
            //: timerDispose?.dispose()
            timerDispose?.dispose()
        }
        //: var timeCount = 300
        var timeCount = 300
        //: timerDispose = Observable<Int>.interval(.seconds(1), scheduler: MainScheduler.instance)
        timerDispose = Observable<Int>.interval(.seconds(1), scheduler: MainScheduler.instance)
            //: .subscribe(onNext: { [weak self] num in
            .subscribe(onNext: { [weak self] _ in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: timeCount -= 1
                timeCount -= 1
                //: self.func_setReCodeButton(timeCount: timeCount)
                self.add(timeCount: timeCount)
                //: })
            })
    }

    //: func func_endCodeTime() {
    func to() {
        //: timerDispose?.dispose()
        timerDispose?.dispose()
    }

    //: func func_setReCodeButton(timeCount: Int) {
    func add(timeCount: Int) {
        //: self.codeView.reSendButton.isEnabled = (timeCount <= 0)
        self.codeView.reSendButton.isEnabled = (timeCount <= 0)
        //: let btnStr = "Resent Code".localized
        let btnStr = (String(str_colorValue.suffix(5)) + "t Code").localized

        //: var attributes = [.foregroundColor: UIColor(hex: "#8C7AFF")!, .font: UIFont.pingfangFont(type: .Medium, fontSize: 17)] as [NSAttributedString.Key: Any]
        var attributes = [.foregroundColor: UIColor(hex: (String(str_atText.suffix(7))))!, .font: UIFont.pingfang(type: .Medium, fontSize: 17)] as [NSAttributedString.Key: Any]
        //: var newStr = btnStr
        var newStr = btnStr
        //: if timeCount > 0 {
        if timeCount > 0 {
            //: newStr = newStr.appending(" (\(timeCount)s)")
            newStr = newStr.appending(" (\(timeCount)s)")
            //: } else {
        } else {
            //: func_endCodeTime()
            to()
            //: attributes[.underlineStyle] = 1
            attributes[.underlineStyle] = 1
        }
        //: let attributeString = NSMutableAttributedString(string: newStr, attributes: attributes)
        let attributeString = NSMutableAttributedString(string: newStr, attributes: attributes)
        //: if timeCount > 0 {
        if timeCount > 0 {
            //: let theRange = NSString(string: btnStr).range(of: btnStr)
            let theRange = NSString(string: btnStr).range(of: btnStr)
            //: attributeString.addAttribute(.foregroundColor, value: UIColor.appTitleColor(), range: theRange)
            attributeString.addAttribute(.foregroundColor, value: UIColor.executeTo(), range: theRange)
        }
        //: self.codeView.reSendButton.setAttributedTitle(attributeString, for: .normal)
        self.codeView.reSendButton.setAttributedTitle(attributeString, for: .normal)
    }

    /// 手机号登录
    //: func func__loginAction() {
    func gambleTarget() {
        //: var reslutStr = ""
        var reslutStr = ""
        //: var reslutCodeStr = ""
        var reslutCodeStr = ""

        //: do {
        do {
            //: let rsa_publicKey = try PublicKey(pemEncoded: LoginRsaPublicKey)
            let rsa_publicKey = try PublicKey(pemEncoded: kLet_transformText)
            //: let clear = try ClearMessage(string: phoneOrEmailStr, using: .utf8)
            let clear = try ClearMessage(string: phoneOrEmailStr, using: .utf8)
            //: reslutStr = try clear.encrypted(with: rsa_publicKey, padding: .PKCS1).base64String
            reslutStr = try clear.encrypted(with: rsa_publicKey, padding: .PKCS1).base64String

            //: let codeClear = try ClearMessage(string: "+\(areaCodeNum)", using: .utf8)
            let codeClear = try ClearMessage(string: "+\(areaCodeNum)", using: .utf8)
            //: reslutCodeStr = try codeClear.encrypted(with: rsa_publicKey, padding: .PKCS1).base64String
            reslutCodeStr = try codeClear.encrypted(with: rsa_publicKey, padding: .PKCS1).base64String

            //: self.view.endEditing(true)
            self.view.endEditing(true)
            //: ProgressHUD.show()
            ModelReactiveCompatible.fromTarget()
            //: if loginType == .LoginPhone {
            if loginType == .LoginPhone {
                //: let params = ["mobile": reslutStr, "vcode": codeStr, "areaCode": reslutCodeStr]
                let params = [String(bytes: str_countData.map{$0^113}, encoding: .utf8)!: reslutStr, String(bytes: str_toValue.map{$0^242}, encoding: .utf8)!: codeStr, String(bytes: str_kitData.reversed(), encoding: .utf8)!: reslutCodeStr]
                //: let content = codeView.phoneLabel.text ?? ""
                let content = codeView.phoneLabel.text ?? ""
                //: TalkingLoginRequestTool.req_thirdLogin(type: .PhoneLogin, content: content, params: params) { [self]  succeed, result, errorModel in
                LoginRequestTool.act(type: .PhoneLogin, content: content, params: params) { [self] succeed, _, _ in
                    //: ProgressHUD.dismiss()
                    ModelReactiveCompatible.dataConverterCan()
                    //: if !succeed {
                    if !succeed {
                        //: self.codeView.codeInputView.startEdit()
                        self.codeView.codeInputView.hide()
                    }
                }
                //: }else{
            } else {
                //: let params = ["email": reslutStr, "vcode": codeStr]
                let params = [String(bytes: str_hideName.reversed(), encoding: .utf8)!: reslutStr, String(bytes: str_toValue.map{$0^242}, encoding: .utf8)!: codeStr]

                //: let content = codeView.phoneLabel.text ?? ""
                let content = codeView.phoneLabel.text ?? ""
                //: TalkingLoginRequestTool.req_thirdLogin(type: .EmailLogin, content: content, params: params) { [self]  succeed, result, errorModel in
                LoginRequestTool.act(type: .EmailLogin, content: content, params: params) { [self] succeed, _, _ in
                    //: ProgressHUD.dismiss()
                    ModelReactiveCompatible.dataConverterCan()
                    //: if !succeed {
                    if !succeed {
                        //: self.codeView.codeInputView.startEdit()
                        self.codeView.codeInputView.hide()
                    }
                }
            }

            //: } catch {
        } catch {
            //: printLog(message: "RSA加密失败")
            printLog(message: (String(str_pairValue.suffix(7))))
        }
    }

    //: func func__reSendloginCodeAction() {
    func nameOrAction() {
        //: view.endEditing(true)
        view.endEditing(true)
        //: ProgressHUD.show()
        ModelReactiveCompatible.fromTarget()
        //: if loginType == .LoginPhone {
        if loginType == .LoginPhone {
            //: TalkingLoginRequestTool.req_getPhoneCode(phoneStr: phoneOrEmailStr, areaStr: areaCodeNum, completion: { succeed, result, errorModel in
            LoginRequestTool.recordCompletion(phoneStr: phoneOrEmailStr, areaStr: areaCodeNum, completion: { succeed, _, _ in
                //: ProgressHUD.dismiss()
                ModelReactiveCompatible.dataConverterCan()
                //: if succeed {
                if succeed {
                    //: self.codeView.codeInputView.func__resetCodeInputView()
                    self.codeView.codeInputView.upView()
                    //: self.func_starCodeTime()
                    self.need()
                }
                //: self.codeView.codeInputView.startEdit()
                self.codeView.codeInputView.hide()
                //: })
            })
            //: }else{
        } else {
            //: TalkingLoginRequestTool.req_getBindEmailCode(emailStr: phoneOrEmailStr, isBind: false) { succeed, result, errorModel in
            LoginRequestTool.at(emailStr: phoneOrEmailStr, isBind: false) { succeed, _, _ in
                //: ProgressHUD.dismiss()
                ModelReactiveCompatible.dataConverterCan()
                //: if succeed {
                if succeed {
                    //: self.codeView.codeInputView.func__resetCodeInputView()
                    self.codeView.codeInputView.upView()
                    //: self.func_starCodeTime()
                    self.need()
                }
            }
            //: self.codeView.codeInputView.startEdit()
            self.codeView.codeInputView.hide()
        }
    }
}

// MARK: - Layout

//: extension TalkingLoginCodeVC {
extension CellReactiveCompatible {
    // 添加视图
    //: private func setupSubviews() {
    private func messageSubviews() {
        //: view.addSubview(codeView)
        view.addSubview(codeView)
        //: codeView.phoneLabel.text = self.loginType == .LoginPhone ? "(+\(areaCodeNum))\(phoneOrEmailStr)" : "\(phoneOrEmailStr)"
        codeView.phoneLabel.text = self.loginType == .LoginPhone ? "(+\(areaCodeNum))\(phoneOrEmailStr)" : "\(phoneOrEmailStr)"
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func route() {
        //: codeView.snp.makeConstraints { make in
        codeView.snp.makeConstraints { make in
            //: make.leading.trailing.top.bottom.equalToSuperview()
            make.leading.trailing.top.bottom.equalToSuperview()
        }
    }

    // 添加事件
    //: private func bindInteraction() {
    private func lineMessage() {
        //: codeView.codeInputView.codeBlock = { [weak self] (codeStr: String) -> Void in
        codeView.codeInputView.codeBlock = { [weak self] (codeStr: String) in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.codeView.commitButton.isEnabled = (codeStr.count == 6)
            self.codeView.commitButton.isEnabled = (codeStr.count == 6)
            //: if codeStr.count == 6 {
            if codeStr.count == 6 {
                //: self.codeStr = codeStr
                self.codeStr = codeStr
                //: self.func__loginAction()
                self.gambleTarget()
            }
            //: return
        }
        //: codeView.commitButton.rx.controlEvent(.touchUpInside)
        codeView.commitButton.rx.controlEvent(.touchUpInside)
            //: .subscribe(onNext: { [weak self] in
            .subscribe(onNext: { [weak self] in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.func__loginAction()
                self.gambleTarget()
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)
        //: codeView.reSendButton.rx.controlEvent(.touchUpInside)
        codeView.reSendButton.rx.controlEvent(.touchUpInside)
            //: .subscribe(onNext: { [weak self] in
            .subscribe(onNext: { [weak self] in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.func__reSendloginCodeAction()
                self.nameOrAction()
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)

        //: self.func_starCodeTime()
        self.need()
    }
}
