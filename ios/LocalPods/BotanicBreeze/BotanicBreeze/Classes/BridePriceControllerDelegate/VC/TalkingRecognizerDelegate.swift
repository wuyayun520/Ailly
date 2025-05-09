
//: Declare String Begin

/*: "Email Address" :*/
fileprivate let str_appText:String = "add likeEmail"
fileprivate let str_insideKeyTitle:String = " Addressto to mode equal row"

/*: "Phone number" :*/
fileprivate let str_resultValue:[Character] = ["P","h","o","n","e"," "]
fileprivate let str_soundListValue:String = "video"
fileprivate let str_viewValue:String = "userber"

/*: "Enter the email code sent to" :*/
fileprivate let str_sharedName:String = "model editEnter "
fileprivate let str_tempValue:String = "mail codsuper view let return"
fileprivate let str_matchName:[Character] = ["e"," ","s","e","n","t"," ","t","o"]

/*: "Enter the phone code sent to" :*/
fileprivate let str_topValue:[Character] = ["E","n","t","e","r"," ","t","h","e"," ","p","h","o","n","e"]
fileprivate let str_dismissValue:[Character] = [" "]
fileprivate let str_errorNextValue:String = "code saction price"

/*: "(+ :*/
fileprivate let str_callTitle:String = "cancel+"

/*: ) :*/
fileprivate let str_makeValue:[Character] = [")"]

/*: "8075F5" :*/
fileprivate let str_indexEqualValue:String = "index container8075F5"

/*: "F4F4F4" :*/
fileprivate let str_finishName:String = "voice4voice4voice"
fileprivate let str_willValue:[Character] = ["4"]

/*: "Resend verification email" :*/
fileprivate let str_scaleContent:[Character] = ["R","e","s","e","n","d"," "]
fileprivate let str_clueMakeData:[Character] = ["v","e","r","i","f","i","c","a","t","i","o","n"," ","e","m","a","i","l"]

/*: "Tips: If you can't receive the verification code, please check whether the message is in spam or not" :*/
fileprivate let str_layerPlayValue:[UInt8] = [0x81,0xbc,0xa5,0xa6,0xef,0xf5,0x9c,0xb3,0xf5,0xac,0xba,0xa0,0xf5,0xb6,0xb4,0xbb,0xf2,0xa1,0xf5,0xa7,0xb0,0xb6,0xb0,0xbc,0xa3,0xb0,0xf5,0xa1,0xbd,0xb0,0xf5,0xa3,0xb0,0xa7,0xbc,0xb3,0xbc,0xb6,0xb4,0xa1,0xbc,0xba,0xbb,0xf5,0xb6,0xba,0xb1,0xb0,0xf9,0xf5,0xa5,0xb9,0xb0,0xb4,0xa6,0xb0,0xf5,0xb6,0xbd,0xb0,0xb6,0xbe,0xf5,0xa2,0xbd,0xb0,0xa1,0xbd,0xb0,0xa7,0xf5,0xa1,0xbd,0xb0,0xf5,0xb8,0xb0,0xa6,0xa6,0xb4,0xb2,0xb0,0xf5,0xbc,0xa6,0xf5,0xbc,0xbb,0xf5,0xa6,0xa5,0xb4,0xb8,0xf5,0xba,0xa7,0xf5,0xbb,0xba,0xa1]

private func postPlayer(clear num: UInt8) -> UInt8 {
    return num ^ 213
}

/*: "Bind Email succeed" :*/
fileprivate let str_upValue:String = "Bind color view temp"
fileprivate let str_rowLeadingName:String = " selse half click stream"
fileprivate let str_pointValue:String = "utooleed"

/*: "Bind Mobile Phone succeed" :*/
fileprivate let str_arrayIconValue:[Character] = ["B","i","n","d"," ","M"]
fileprivate let str_currentToTitle:String = "OBIL"
fileprivate let str_editValue:String = "e succeeddevice cell var back"

/*: "Resend verification email (%@s)" :*/
fileprivate let str_tableLeadingData:[UInt8] = [0x17,0x20,0x36,0x20,0x2b,0x21,0x65,0x33,0x20,0x37,0x2c,0x23,0x2c,0x26,0x24,0x31,0x2c,0x2a,0x2b,0x65,0x20,0x28,0x24,0x2c,0x29,0x65,0x6d,0x60,0x5,0x36,0x6c]

private func viewThereTemp(instance num: UInt8) -> UInt8 {
    return num ^ 69
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  TalkingRecognizerDelegate.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/9/1.
//

//: import UIKit
import UIKit

//: class TalkingLoginBindInputCodeVC: TalkingBaseViewController {
class TalkingRecognizerDelegate: SeamViewController {
    //: public var  phoneOrEmailStr: String = ""  // 邮箱或者Email
    public var phoneOrEmailStr: String = "" // 邮箱或者Email
    //: public var  areaCodeNum: String = ""
    public var areaCodeNum: String = ""
    //: public var  codeStr: String = ""
    public var codeStr: String = ""
    //: public var  viewType: TalkingBindVCType?
    public var viewType: QuantityeractionBindType?
    //: var isBack: Bool!
    var isBack: Bool!
    //: private let disposeBag = DisposeBag()
    private let disposeBag = DisposeBag()
    //: private var timerDispose: Disposable?
    private var timerDispose: Disposable?

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.setupSubviews()
        self.sight()
        //: self.setupSubViewsConstraint()
        self.timeFrom()
        //: self.bindInteraction()
        self.listMagnitudeeraction()
        //: func_starCodeTime()
        pop()
    }

    //: override func viewDidDisappear(_ animated: Bool) {
    override func viewDidDisappear(_ animated: Bool) {
        //: super.viewDidDisappear(animated)
        super.viewDidDisappear(animated)
        //: func_endCodeTime()
        front()
    }

    //: deinit {
    deinit {
        //: timerDispose?.dispose()
        timerDispose?.dispose()
    }

    // MARK: - Lazy Load

    //: lazy var tipsLabel: UILabel = {
    lazy var tipsLabel: UILabel = {
        //: let label = UILabel()
        let label = UILabel()
        //: label.font = .pingfangFont(type: .Medium, fontSize: 17)
        label.font = .pingfang(type: .Medium, fontSize: 17)
        //: label.textColor = .appTitleColor()
        label.textColor = .executeTo()
        //: if self.viewType == .BindEmail {
        if self.viewType == .BindEmail {
            //: label.text = "Email Address".localized
            label.text = (String(str_appText.suffix(5)) + String(str_insideKeyTitle.prefix(8))).localized
            //: } else {
        } else {
            //: label.text = "Phone number".localized
            label.text = (String(str_resultValue) + str_soundListValue.replacingOccurrences(of: "video", with: "n") + str_viewValue.replacingOccurrences(of: "user", with: "um")).localized
        }
        //: label.textAlignment = .center
        label.textAlignment = .center
        //: return label
        return label
        //: }()
    }()

    //: lazy var titleLabel: UILabel = {
    lazy var titleLabel: UILabel = {
        //: let label = UILabel()
        let label = UILabel()
        //: label.font = .pingfangFont(type: .Regular, fontSize: 16)
        label.font = .pingfang(type: .Regular, fontSize: 16)
        //: label.textColor = .appTitleColor()
        label.textColor = .executeTo()

        //: if self.viewType == .BindEmail {
        if self.viewType == .BindEmail {
            //: label.text = "Enter the email code sent to".localized
            label.text = (String(str_sharedName.suffix(6)) + "the e" + String(str_tempValue.prefix(8)) + String(str_matchName)).localized
            //: } else {
        } else {
            //: label.text = "Enter the phone code sent to".localized
            label.text = (String(str_topValue) + String(str_dismissValue) + String(str_errorNextValue.prefix(6)) + "ent to").localized
        }
        //: return label
        return label
        //: }()
    }()

    //: lazy var inputLabel: UILabel = {
    lazy var inputLabel: UILabel = {
        //: let label = UILabel()
        let label = UILabel()
        //: label.font = .pingfangFont(type: .Medium, fontSize: 16)
        label.font = .pingfang(type: .Medium, fontSize: 16)
        //: label.textColor = .appThemeColor()
        label.textColor = .plaster()
        //: label.text = (self.viewType == .BindEmail ? "\(phoneOrEmailStr)" : "(+\(areaCodeNum))\(phoneOrEmailStr)")
        label.text = (self.viewType == .BindEmail ? "\(phoneOrEmailStr)" : "(+\(areaCodeNum))\(phoneOrEmailStr)")
        //: label.textAlignment = .center
        label.textAlignment = .center
        //: return label
        return label
        //: }()
    }()

    //: lazy var codeInputView: TalkingCodeInputView = {
    lazy var codeInputView: CollectionView = {
        //: let codeView = TalkingCodeInputView.init(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: 70), codeNumber: 6, labelTextColor: .white, mainColor: UIColor(hex: "8075F5")!, normalColor: UIColor(hex: "F4F4F4")!, margin: 12)
        let codeView = CollectionView(frame: CGRect(x: 0, y: 0, width: kLet_cameraValue, height: 70), codeNumber: 6, labelTextColor: .white, mainColor: UIColor(hex: (String(str_indexEqualValue.suffix(6))))!, normalColor: UIColor(hex: (str_finishName.replacingOccurrences(of: "voice", with: "F") + String(str_willValue)))!, margin: 12)
        //: if LanguageManager.shared.direction == .rightToLeft {
        if FileReactiveCompatible.shared.direction == .rightToLeft {
            //: codeView.layer.transform =  CATransform3DMakeRotation(CGFloat(Double.pi), 0, 1, 0)
            codeView.layer.transform = CATransform3DMakeRotation(CGFloat(Double.pi), 0, 1, 0) // 镜像
        }
        //: return codeView
        return codeView
        //: }()
    }()

    //: lazy var commitButton: UIButton = {
    lazy var commitButton: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.isEnabled = false
        btn.isEnabled = false
        //: btn.setTitleColor(UIColor.white, for: .normal)
        btn.setTitleColor(UIColor.white, for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Regular, fontSize: 18)
        btn.titleLabel?.font = UIFont.pingfang(type: .Regular, fontSize: 18)
        //: btn.setTitle("Resend verification email".localized, for: .normal)
        btn.setTitle((String(str_scaleContent) + String(str_clueMakeData)).localized, for: .normal)
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: UIColor.appGradientColor(), size: CGSize(width: ScreenWidth-60, height: 50)), for: .normal)
        btn.setBackgroundImage(UIImage.makeBackground(colors: UIColor.appToVoice(), size: CGSize(width: kLet_cameraValue - 60, height: 50)), for: .normal)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var desLab: UILabel = {
    private lazy var desLab: UILabel = {
        //: let label = UILabel()
        let label = UILabel()
        //: label.font = .pingfangFont(type: .Medium, fontSize: 12)
        label.font = .pingfang(type: .Medium, fontSize: 12)
        //: label.textColor = .publishView()
        label.textColor = .publishView()
        //: label.textAlignment = .center
        label.textAlignment = .center
        //: label.numberOfLines = 0
        label.numberOfLines = 0
        //: let str = "Tips: If you can't receive the verification code, please check whether the message is in spam or not".localized
        let str = String(bytes: str_layerPlayValue.map{postPlayer(clear: $0)}, encoding: .utf8)!.localized
        //: let range = NSRange(location: 5, length: str.count-5)
        let range = NSRange(location: 5, length: str.count - 5)
        //: let attributedString = NSMutableAttributedString(string: str)
        let attributedString = NSMutableAttributedString(string: str)
        //: attributedString.addAttribute(.font, value: UIFont.pingfangFont(type: .Regular, fontSize: 12), range: range)
        attributedString.addAttribute(.font, value: UIFont.pingfang(type: .Regular, fontSize: 12), range: range)
        //: label.attributedText = attributedString
        label.attributedText = attributedString
        //: return label
        return label
        //: }()
    }()
}

// MARK: - Public Event

//: extension TalkingLoginBindInputCodeVC {
extension TalkingRecognizerDelegate {
    //: func func__bindEmailAction() {
    func date() {
        //: self.view.endEditing(true)
        self.view.endEditing(true)
        //: ProgressHUD.show(superView: view)
        ModelReactiveCompatible.sendImage(superView: view)
        //: if viewType == .BindEmail {
        if viewType == .BindEmail {
            //: TalkingLoginRequestTool.req_bindEmailCode(emailCode: codeStr) { succeed, result, errorModel in
            LoginRequestTool.video(emailCode: codeStr) { succeed, _, _ in
                //: ProgressHUD.dismiss()
                ModelReactiveCompatible.dataConverterCan()
                //: if succeed {
                if succeed {
                    //: EqualThen.share.loginUserMode.email = self.phoneOrEmailStr
                    EqualThen.share.loginUserMode.email = self.phoneOrEmailStr
                    //: self.func__showStatusBarSuccessMsg(showMsg: "Bind Email succeed".localized)
                    self.fileFirst(showMsg: (String(str_upValue.prefix(5)) + "Email" + String(str_rowLeadingName.prefix(2)) + str_pointValue.replacingOccurrences(of: "tool", with: "cc")).localized)
                    //: let count: Int = (self.navigationController?.viewControllers.count)!
                    let count: Int = (self.navigationController?.viewControllers.count)!
                    //: if count >= 3 {
                    if count >= 3 {
                        //: let count = count - 3
                        let count = count - 3
                        //: let vc = self.navigationController?.viewControllers[count]
                        let vc = self.navigationController?.viewControllers[count]
                        //: self.navigationController?.popToViewController(vc!, animated: true)
                        self.navigationController?.popToViewController(vc!, animated: true)
                    }
                    //: } else {
                } else {
                    //: self.codeInputView.func__resetCodeInputView()
                    self.codeInputView.upView()
                    //: self.codeInputView.startEdit()
                    self.codeInputView.hide()
                }
            }
            //: } else {
        } else {
            //: TalkingLoginRequestTool.req_MobileBind(phoneStr: self.phoneOrEmailStr, areaStr: areaCodeNum, vcode: self.codeStr) { [self]  succeed, result, errorModel in
            LoginRequestTool.make(phoneStr: self.phoneOrEmailStr, areaStr: areaCodeNum, vcode: self.codeStr) { [self] succeed, _, _ in
                //: ProgressHUD.dismiss()
                ModelReactiveCompatible.dataConverterCan()
                //: if !succeed {
                if !succeed {
                    //: self.codeInputView.startEdit()
                    self.codeInputView.hide()
                    //: return
                    return
                }
                //: EqualThen.share.loginUserMode.mobile = self.phoneOrEmailStr
                EqualThen.share.loginUserMode.mobile = self.phoneOrEmailStr
                //: self.func__showStatusBarSuccessMsg(showMsg: "Bind Mobile Phone succeed".localized)
                self.fileFirst(showMsg: (String(str_arrayIconValue) + str_currentToTitle.lowercased() + "e Phon" + String(str_editValue.prefix(9))).localized)
                //: for index in 0..<(self.navigationController?.viewControllers.count)! {
                for index in 0 ..< (self.navigationController?.viewControllers.count)! {
                    //: if self.navigationController?.viewControllers[index] .isKind(of: TalkingSettingsUniversalVC.self) == true {
                    if self.navigationController?.viewControllers[index].isKind(of: DeepWithViewDelegate.self) == true {
                        //: let vc = (self.navigationController?.viewControllers[index] as? TalkingSettingsUniversalVC)!
                        let vc = (self.navigationController?.viewControllers[index] as? DeepWithViewDelegate)!
                        //: self.navigationController?.popToViewController(vc, animated: true)
                        self.navigationController?.popToViewController(vc, animated: true)
                        //: return
                        return
                    }
                }
            }
        }
    }

    //: func func__resendEmailCodeAction() {
    func buttonDown() {
        //: self.view.endEditing(true)
        self.view.endEditing(true)
        //: ProgressHUD.show(superView: view)
        ModelReactiveCompatible.sendImage(superView: view)
        //: if viewType == .BindEmail {
        if viewType == .BindEmail {
            //: TalkingLoginRequestTool.req_getBindEmailCode(emailStr: self.phoneOrEmailStr, isBind: true) { succeed, result, errorModel in
            LoginRequestTool.at(emailStr: self.phoneOrEmailStr, isBind: true) { succeed, _, _ in
                //: ProgressHUD.dismiss()
                ModelReactiveCompatible.dataConverterCan()
                //: if succeed {
                if succeed {
                    //: self.func_starCodeTime()
                    self.pop()
                    //: self.codeInputView.func__resetCodeInputView()
                    self.codeInputView.upView()
                }
                //: self.codeInputView.startEdit()
                self.codeInputView.hide()
            }
            //: } else {
        } else {
            //: TalkingLoginRequestTool.req_bindPhoneGetCode(phoneStr: self.phoneOrEmailStr, areaStr: areaCodeNum, completion: { succeed, result, errorModel in
            LoginRequestTool.top(phoneStr: self.phoneOrEmailStr, areaStr: areaCodeNum, completion: { succeed, _, _ in
                //: ProgressHUD.dismiss()
                ModelReactiveCompatible.dataConverterCan()
                //: if succeed {
                if succeed {
                    //: self.codeInputView.func__resetCodeInputView()
                    self.codeInputView.upView()
                    //: self.func_starCodeTime()
                    self.pop()
                }
                //: self.codeInputView.startEdit()
                self.codeInputView.hide()
                //: })
            })
        }
    }

    //: func func_starCodeTime() {
    func pop() {
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
                //: self.commitButton.isEnabled = (timeCount <= 0)
                self.commitButton.isEnabled = (timeCount <= 0)
                //: if timeCount > 0 {
                if timeCount > 0 {
                    //: self.commitButton.setTitle("Resend verification email (%@s)".localizedArguments(timeCount), for: .normal)
                    self.commitButton.setTitle(String(bytes: str_tableLeadingData.map{viewThereTemp(instance: $0)}, encoding: .utf8)!.localizedArguments(timeCount), for: .normal)
                    //: } else {
                } else {
                    //: self.func_endCodeTime()
                    self.front()
                    //: self.commitButton.setTitle("Resend verification email".localized, for: .normal)
                    self.commitButton.setTitle((String(str_scaleContent) + String(str_clueMakeData)).localized, for: .normal)
                }
                //: })
            })
    }

    //: func func_endCodeTime() {
    func front() {
        //: timerDispose?.dispose()
        timerDispose?.dispose()
    }
}

// MARK: - Layout

//: extension TalkingLoginBindInputCodeVC {
extension TalkingRecognizerDelegate {
    // 添加视图
    //: private func setupSubviews() {
    private func sight() {
        //: view.backgroundColor = .white
        view.backgroundColor = .white
        //: view.addSubview(tipsLabel)
        view.addSubview(tipsLabel)
        //: view.addSubview(titleLabel)
        view.addSubview(titleLabel)
        //: view.addSubview(inputLabel)
        view.addSubview(inputLabel)
        //: view.addSubview(codeInputView)
        view.addSubview(codeInputView)
        //: view.addSubview(commitButton)
        view.addSubview(commitButton)
        //: view.addSubview(desLab)
        view.addSubview(desLab)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func timeFrom() {
        //: tipsLabel.snp.makeConstraints { make in
        tipsLabel.snp.makeConstraints { make in
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
            //: make.top.equalTo(34)
            make.top.equalTo(34)
        }
        //: titleLabel.snp.makeConstraints { make in
        titleLabel.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.top.equalTo(tipsLabel.snp.bottom).offset(40)
            make.top.equalTo(tipsLabel.snp.bottom).offset(40)
        }
        //: inputLabel.snp.makeConstraints { make in
        inputLabel.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.top.equalTo(titleLabel.snp.bottom)
            make.top.equalTo(titleLabel.snp.bottom)
        }
        //: codeInputView.snp.makeConstraints { make in
        codeInputView.snp.makeConstraints { make in
            //: make.leading.trailing.equalToSuperview()
            make.leading.trailing.equalToSuperview()
            //: make.height.equalTo(70)
            make.height.equalTo(70)
            //: make.top.equalTo(inputLabel.snp.bottom).offset(24)
            make.top.equalTo(inputLabel.snp.bottom).offset(24)
        }
        //: commitButton.snp.makeConstraints { make in
        commitButton.snp.makeConstraints { make in
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
            //: make.trailing.equalTo(-30)
            make.trailing.equalTo(-30)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
            //: make.top.equalTo(codeInputView.snp.bottom).offset(30)
            make.top.equalTo(codeInputView.snp.bottom).offset(30)
        }
        //: desLab.snp.makeConstraints { make in
        desLab.snp.makeConstraints { make in
            //: make.top.equalTo(commitButton.snp.bottom).offset(36)
            make.top.equalTo(commitButton.snp.bottom).offset(36)
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
            //: make.trailing.equalTo(-30)
            make.trailing.equalTo(-30)
        }
    }

    // 添加事件
    //: private func bindInteraction() {
    private func listMagnitudeeraction() {
        //: commitButton.rx.controlEvent(.touchUpInside)
        commitButton.rx.controlEvent(.touchUpInside)
            //: .subscribe(onNext: { [weak self] in
            .subscribe(onNext: { [weak self] in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.func__resendEmailCodeAction()
                self.buttonDown()
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)
        //: codeInputView.codeBlock = { [weak self] (codeStr: String) -> Void in
        codeInputView.codeBlock = { [weak self] (codeStr: String) in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: if codeStr.count == 6 {
            if codeStr.count == 6 {
                //: self.codeStr = codeStr
                self.codeStr = codeStr
                //: self.func__bindEmailAction()
                self.date()
            }
            //: return
        }
    }
}
