
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_trimValue:[UInt8] = [0xc5,0xca,0xc5,0xd0,0x84,0xbf,0xcb,0xc0,0xc1,0xce,0x96,0x85,0x7c,0xc4,0xbd,0xcf,0x7c,0xca,0xcb,0xd0,0x7c,0xbe,0xc1,0xc1,0xca,0x7c,0xc5,0xc9,0xcc,0xc8,0xc1,0xc9,0xc1,0xca,0xd0,0xc1,0xc0]

fileprivate func makeLog(video num: UInt8) -> UInt8 {
    let value = Int(num) + 164
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "Set New Password" :*/
fileprivate let str_aspectValue:[Character] = ["S","e","t"," ","N","e","w"," ","P"]
fileprivate let str_colorName:String = "ASSWORD"

/*: "8075F5" :*/
fileprivate let str_withValue:String = "treat message quit self premium8075F5"

/*: "F4F4F4" :*/
fileprivate let str_viewTitle:String = "texttextF"
fileprivate let str_containerWillNoName:String = "4"

/*: "Password" :*/
fileprivate let str_buttonTitle:String = "info modelPassword"

/*: "Please set a password of at least 6 digits, consisting of numbers, English case groups" :*/
fileprivate let str_inputServerName:[UInt8] = [0xb5,0x89,0x80,0x84,0x96,0x80,0xc5,0x96,0x80,0x91,0xc5,0x84,0xc5,0x95,0x84,0x96,0x96,0x92,0x8a,0x97,0x81,0xc5,0x8a,0x83,0xc5,0x84,0x91,0xc5,0x89,0x80,0x84,0x96,0x91,0xc5,0xd3,0xc5,0x81,0x8c,0x82,0x8c,0x91,0x96,0xc9,0xc5,0x86,0x8a,0x8b,0x96,0x8c,0x96,0x91,0x8c,0x8b,0x82,0xc5,0x8a,0x83,0xc5,0x8b,0x90,0x88,0x87,0x80,0x97,0x96,0xc9,0xc5,0xa0,0x8b,0x82,0x89,0x8c,0x96,0x8d,0xc5,0x86,0x84,0x96,0x80,0xc5,0x82,0x97,0x8a,0x90,0x95,0x96]

private func headResult(reading num: UInt8) -> UInt8 {
    return num ^ 229
}

/*: "Next" :*/
fileprivate let str_modelData:String = "Nextlet type layer center"

/*: "Skip" :*/
fileprivate let str_trackText:[Character] = ["S","k","i","p"]

/*: "Resent Code" :*/
fileprivate let str_layerValue:[Character] = ["R","e","s","e","n"]
fileprivate let str_insideName:String = "size height textt Code"

/*: "8C7AFF" :*/
fileprivate let str_normalValue:String = "background remove file8C7AFF"

/*: " ( :*/
fileprivate let str_viewValue:String = " ("

/*: s)" :*/
fileprivate let str_byName:String = "group collect in instance handles)"

/*: "Your Password: %@" :*/
fileprivate let str_pressTitle:String = "title in model timeYou"
fileprivate let str_priceValue:String = "r Passsize for let type"

/*: "After updating your password, you won't be able to log in with your old password, are you sure you want to update your password?\n%@" :*/
fileprivate let str_inviteValue:[UInt8] = [0xdd,0x2,0x10,0x1,0xe,0xbc,0x11,0xc,0x0,0xfd,0x10,0x5,0xa,0x3,0xbc,0x15,0xb,0x11,0xe,0xbc,0xc,0xfd,0xf,0xf,0x13,0xb,0xe,0x0,0xc8,0xbc,0x15,0xb,0x11,0xbc,0x13,0xb,0xa,0xc3,0x10,0xbc,0xfe,0x1,0xbc,0xfd,0xfe,0x8,0x1,0xbc,0x10,0xb,0xbc,0x8,0xb,0x3,0xbc,0x5,0xa,0xbc,0x13,0x5,0x10,0x4,0xbc,0x15,0xb,0x11,0xe,0xbc,0xb,0x8,0x0,0xbc,0xc,0xfd,0xf,0xf,0x13,0xb,0xe,0x0,0xc8,0xbc,0xfd,0xe,0x1,0xbc,0x15,0xb,0x11,0xbc,0xf,0x11,0xe,0x1,0xbc,0x15,0xb,0x11,0xbc,0x13,0xfd,0xa,0x10,0xbc,0x10,0xb,0xbc,0x11,0xc,0x0,0xfd,0x10,0x1,0xbc,0x15,0xb,0x11,0xe,0xbc,0xc,0xfd,0xf,0xf,0x13,0xb,0xe,0x0,0xdb,0xa6,0xc1,0xdc]

fileprivate func voiceUser(text num: UInt8) -> UInt8 {
    let value = Int(num) + 100
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "Cancel" :*/
fileprivate let str_playValue:[Character] = ["C","a","n","c","e"]
fileprivate let str_sizeEqualText:String = "array"

/*: "Confirm" :*/
fileprivate let str_modelValue:String = "Coimage block all else info"
fileprivate let str_makeData:String = "nfbindm"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ArrayReactiveCompatible.swift
//  AbroadTalking
//
//  Created by young on 2023/11/15.
//

//: import UIKit
import UIKit

//: typealias NewPwdNextBlock = (_ pwd: String, _ vcode: String?) -> Void
typealias NewPwdNextBlock = (_ pwd: String, _ vcode: String?) -> Void
//: typealias SendSmsBlock = () -> Void
typealias SendSmsBlock = () -> Void

//: class TalkingSetNewPwdView: UIView {
class ArrayReactiveCompatible: UIView {
    //: var nextBlock: NewPwdNextBlock?
    var nextBlock: NewPwdNextBlock? // 修改密码Block
    //: var sendSmsBlock: SendSmsBlock?
    var sendSmsBlock: SendSmsBlock? // 发送验证码Block
    //: private var isNewPwd = false
    private var isNewPwd = false // 否新设置密码（修改需要验证码）
    //: private var type = LoginType.PhoneLogin
    private var type = VariantSchemaConvertible.PhoneLogin // 登录类型（手机号/邮箱）
    //: private let pwdLimitCount = 16
    private let pwdLimitCount = 16 // 密码长度限制
    //: private var reSendTimer: Timer?
    private var reSendTimer: Timer? // 重发定时器
    //: private var vcode: String?
    private var vcode: String? // 验证码
    //: private let disposeBag = DisposeBag()
    private let disposeBag = DisposeBag()

    //: init(frame: CGRect, isNewPwd: Bool, loginType: LoginType) {
    init(frame: CGRect, isNewPwd: Bool, loginType: VariantSchemaConvertible) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.isNewPwd = isNewPwd
        self.isNewPwd = isNewPwd
        //: self.type = loginType
        self.type = loginType
        //: setupSubviews()
        than()
        //: setupSubViewsConstraint()
        instance()
        //: bindInteraction()
        red()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_trimValue.map{makeLog(video: $0)}, encoding: .utf8)!)
    }

    //: deinit {
    deinit {
        //: destroyTimer()
        colorPlayer()
    }

    // MARK: - Lazy Load

    //: private lazy var titleLab: UILabel = {
    private lazy var titleLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.font = .pingfangFont(type: .Semibold, fontSize: 17)
        lab.font = .pingfang(type: .Semibold, fontSize: 17)
        //: lab.textColor = .appTitleColor()
        lab.textColor = .executeTo()
        //: lab.text = "Set New Password".localized
        lab.text = (String(str_aspectValue) + str_colorName.lowercased()).localized
        //: return lab
        return lab
        //: }()
    }()

    //: lazy var phoneLab: UILabel = {
    lazy var phoneLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.font = .pingfangFont(type: .Medium, fontSize: 17)
        lab.font = .pingfang(type: .Medium, fontSize: 17)
        //: lab.textColor = .appTitleColor()
        lab.textColor = .executeTo()
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var codeInputView: TalkingCodeInputView = {
    private lazy var codeInputView: CollectionView = {
        //: let codeView = TalkingCodeInputView.init(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: 70), codeNumber: 6, labelTextColor: .white, mainColor: UIColor(hex: "8075F5")!, normalColor: UIColor(hex: "F4F4F4")!, margin: 12)
        let codeView = CollectionView(frame: CGRect(x: 0, y: 0, width: kLet_cameraValue, height: 70), codeNumber: 6, labelTextColor: .white, mainColor: UIColor(hex: (String(str_withValue.suffix(6))))!, normalColor: UIColor(hex: (str_viewTitle.replacingOccurrences(of: "text", with: "F4") + str_containerWillNoName.capitalized))!, margin: 12)
        //: codeView.isHidden = self.isNewPwd
        codeView.isHidden = self.isNewPwd
        //: if LanguageManager.shared.direction == .rightToLeft {
        if FileReactiveCompatible.shared.direction == .rightToLeft {
            //: codeView.layer.transform =  CATransform3DMakeRotation(CGFloat(Double.pi), 0, 1, 0)
            codeView.layer.transform = CATransform3DMakeRotation(CGFloat(Double.pi), 0, 1, 0) // 镜像
        }
        //: return codeView
        return codeView
        //: }()
    }()

    //: private lazy var pwdTitleLab: UILabel = {
    private lazy var pwdTitleLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.text = "Password".localized
        lab.text = (String(str_buttonTitle.suffix(8))).localized
        //: lab.textColor = .appTitleColor()
        lab.textColor = .executeTo()
        //: lab.font = UIFont.pingfangFont(type: .Semibold, fontSize: 17)
        lab.font = UIFont.pingfang(type: .Semibold, fontSize: 17)
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var pwdInputView: UITextField = {
    private lazy var pwdInputView: UITextField = {
        //: let textField = UITextField()
        let textField = UITextField()
        //: textField.backgroundColor = UIColor(hex: "F4F4F4")
        textField.backgroundColor = UIColor(hex: (str_viewTitle.replacingOccurrences(of: "text", with: "F4") + str_containerWillNoName.capitalized))
        //: textField.font = .pingfangFont(type: .Regular, fontSize: 17)
        textField.font = .pingfang(type: .Regular, fontSize: 17)
        //: textField.textColor = .appTitleColor()
        textField.textColor = .executeTo()
        //: textField.layer.cornerRadius = 25
        textField.layer.cornerRadius = 25
        //: textField.clipsToBounds = true
        textField.clipsToBounds = true
        //: textField.keyboardType = .asciiCapable
        textField.keyboardType = .asciiCapable
        //: textField.autocorrectionType = .no
        textField.autocorrectionType = .no
        //: textField.returnKeyType = .done
        textField.returnKeyType = .done
        //: textField.textAlignment = .center
        textField.textAlignment = .center
        //: textField.isSecureTextEntry = true
        textField.isSecureTextEntry = true
        //: if LanguageManager.shared.direction == .rightToLeft {
        if FileReactiveCompatible.shared.direction == .rightToLeft {
            //: textField.textAlignment = .right
            textField.textAlignment = .right
            //: let view = UIView.init(frame: CGRect(x: 0, y: 0, width: 20, height: 20))
            let view = UIView(frame: CGRect(x: 0, y: 0, width: 20, height: 20))
            //: textField.leftView = view
            textField.leftView = view
            //: textField.leftViewMode = .always
            textField.leftViewMode = .always
        }
        //: return textField
        return textField
        //: }()
    }()

    //: private lazy var desLab: UILabel = {
    private lazy var desLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.font = UIFont.pingfangFont(type: .Regular, fontSize: 12)
        lab.font = UIFont.pingfang(type: .Regular, fontSize: 12)
        //: lab.textColor = .publishView()
        lab.textColor = .publishView()
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: lab.text = "Please set a password of at least 6 digits, consisting of numbers, English case groups".localized
        lab.text = String(bytes: str_inputServerName.map{headResult(reading: $0)}, encoding: .utf8)!.localized
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var nextBtn: UIButton = {
    private lazy var nextBtn: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.isEnabled = false
        btn.isEnabled = false
        //: btn.setTitleColor(UIColor.white, for: .normal)
        btn.setTitleColor(UIColor.white, for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Medium, fontSize: 18)
        btn.titleLabel?.font = UIFont.pingfang(type: .Medium, fontSize: 18)
        //: btn.setTitle("Next".localized, for: .normal)
        btn.setTitle((String(str_modelData.prefix(4))).localized, for: .normal)
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

    //: private lazy var skipBtn: UIButton = {
    private lazy var skipBtn: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: let attributes = [.foregroundColor: UIColor.appThemeColor(), .font: UIFont.pingfangFont(type: .Medium, fontSize: 17), .underlineStyle: 1] as [NSAttributedString.Key: Any]
        let attributes = [.foregroundColor: UIColor.plaster(), .font: UIFont.pingfang(type: .Medium, fontSize: 17), .underlineStyle: 1] as [NSAttributedString.Key: Any]
        //: let attributeString = NSAttributedString(string: "Skip".localized, attributes: attributes)
        let attributeString = NSAttributedString(string: (String(str_trackText)).localized, attributes: attributes)
        //: btn.setAttributedTitle(attributeString, for: .normal)
        btn.setAttributedTitle(attributeString, for: .normal)
        //: btn.isHidden = !self.isNewPwd
        btn.isHidden = !self.isNewPwd
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var reSendBtn: UIButton = {
    private lazy var reSendBtn: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.isEnabled = false
        btn.isEnabled = false
        //: btn.setTitleColor(.appThemeColor(), for: .normal)
        btn.setTitleColor(.plaster(), for: .normal)
        //: btn.setTitle("Resent Code".localized, for: .normal)
        btn.setTitle((String(str_layerValue) + String(str_insideName.suffix(6))).localized, for: .normal)
        //: btn.titleLabel?.font = .pingfangFont(type: .Medium, fontSize: 17)
        btn.titleLabel?.font = .pingfang(type: .Medium, fontSize: 17)
        //: btn.isHidden = self.isNewPwd
        btn.isHidden = self.isNewPwd
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingSetNewPwdView {
extension ArrayReactiveCompatible {
    /// 更新按钮状态
    //: private func updateNextButtonStatus() {
    private func statusUp() {
        //: var isEnabled = false
        var isEnabled = false
        //: if isNewPwd == true {
        if isNewPwd == true { // 新增
            //: isEnabled = pwdInputView.text?.count ?? 0 >= 6
            isEnabled = pwdInputView.text?.count ?? 0 >= 6
            //: } else {
        } else { // 修改
            //: isEnabled = vcode?.count == 6 && pwdInputView.text?.count ?? 0 >= 6
            isEnabled = vcode?.count == 6 && pwdInputView.text?.count ?? 0 >= 6
        }
        //: nextBtn.isEnabled = isEnabled
        nextBtn.isEnabled = isEnabled
    }

    /// 开启重发定时器
    //: func startReSendTimer() {
    func routeTimer() {
        //: codeInputView.func__resetCodeInputView()
        codeInputView.upView()
        //: codeInputView.startEdit()
        codeInputView.hide()

        //: destroyTimer()
        colorPlayer()
        //: var time = 300
        var time = 300
        //: reSendTimer = Timer.scheduledTimer(withTimeInterval: 1, block: { [weak self] timer in
        reSendTimer = Timer.scheduledTimer(withTimeInterval: 1, block: { [weak self] _ in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: guard time > 0 else {
            guard time > 0 else {
                //: self.destroyTimer()
                self.colorPlayer()
                //: return
                return
            }
            //: time -= 1
            time -= 1
            //: self.updateReSendButtonStatus(countdown: time)
            self.modify(countdown: time)
            //: }, repeats: true)
        }, repeats: true)
        //: reSendTimer?.fire()
        reSendTimer?.fire()
        //: RunLoop.current.add(reSendTimer!, forMode: .common)
        RunLoop.current.add(reSendTimer!, forMode: .common)
    }

    /// 销毁定时器
    //: private func destroyTimer() {
    private func colorPlayer() {
        //: if reSendTimer != nil {
        if reSendTimer != nil {
            //: reSendTimer?.invalidate()
            reSendTimer?.invalidate()
            //: reSendTimer = nil
            reSendTimer = nil
        }
    }

    /// 刷新重发按钮
    /// - Parameter countdown: 倒计时
    //: private func updateReSendButtonStatus(countdown: Int) {
    private func modify(countdown: Int) {
        //: reSendBtn.isEnabled = countdown <= 0
        reSendBtn.isEnabled = countdown <= 0
        //: let btnStr = "Resent Code".localized
        let btnStr = (String(str_layerValue) + String(str_insideName.suffix(6))).localized
        //: var attributes = [.foregroundColor: UIColor(hex: "8C7AFF")!, .font: UIFont.pingfangFont(type: .Medium, fontSize: 17)] as [NSAttributedString.Key: Any]
        var attributes = [.foregroundColor: UIColor(hex: (String(str_normalValue.suffix(6))))!, .font: UIFont.pingfang(type: .Medium, fontSize: 17)] as [NSAttributedString.Key: Any]
        //: var newStr = btnStr
        var newStr = btnStr
        //: if countdown > 0 {
        if countdown > 0 {
            //: newStr = newStr.appending(" (\(countdown)s)")
            newStr = newStr.appending(" (\(countdown)s)")
            //: } else {
        } else {
            //: attributes[.underlineStyle] = 1
            attributes[.underlineStyle] = 1
        }

        //: let attributeStr = NSMutableAttributedString(string: newStr, attributes: attributes)
        let attributeStr = NSMutableAttributedString(string: newStr, attributes: attributes)
        //: if countdown > 0 {
        if countdown > 0 {
            //: let theRange = NSString(string: btnStr).range(of: btnStr)
            let theRange = NSString(string: btnStr).range(of: btnStr)
            //: attributeStr.addAttribute(.foregroundColor, value: UIColor.appTitleColor(), range: theRange)
            attributeStr.addAttribute(.foregroundColor, value: UIColor.executeTo(), range: theRange)
        }
        //: reSendBtn.setAttributedTitle(attributeStr, for: .normal)
        reSendBtn.setAttributedTitle(attributeStr, for: .normal)
    }
}

// MARK: - Layout

//: extension TalkingSetNewPwdView {
extension ArrayReactiveCompatible {
    /// 添加视图
    //: private func setupSubviews() {
    private func than() {
        //: self.backgroundColor = .white
        self.backgroundColor = .white
        //: addSubview(titleLab)
        addSubview(titleLab)
        //: addSubview(phoneLab)
        addSubview(phoneLab)
        //: if !isNewPwd {
        if !isNewPwd {
            //: addSubview(codeInputView)
            addSubview(codeInputView)
        }
        //: addSubview(pwdTitleLab)
        addSubview(pwdTitleLab)
        //: addSubview(pwdInputView)
        addSubview(pwdInputView)
        //: addSubview(desLab)
        addSubview(desLab)
        //: addSubview(nextBtn)
        addSubview(nextBtn)
        //: addSubview(skipBtn)
        addSubview(skipBtn)
        //: addSubview(reSendBtn)
        addSubview(reSendBtn)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func instance() {
        //: titleLab.snp.makeConstraints { make in
        titleLab.snp.makeConstraints { make in
            //: make.top.equalToSuperview().offset(34)
            make.top.equalToSuperview().offset(34)
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
        }

        //: phoneLab.snp.makeConstraints { make in
        phoneLab.snp.makeConstraints { make in
            //: make.top.equalTo(titleLab.snp.bottom).offset(36)
            make.top.equalTo(titleLab.snp.bottom).offset(36)
            //: make.centerX.width.equalToSuperview()
            make.centerX.width.equalToSuperview()
        }

        //: if !isNewPwd {
        if !isNewPwd {
            //: codeInputView.snp.makeConstraints { make in
            codeInputView.snp.makeConstraints { make in
                //: make.leading.trailing.equalToSuperview()
                make.leading.trailing.equalToSuperview()
                //: make.height.equalTo(70)
                make.height.equalTo(70)
                //: make.top.equalTo(phoneLab.snp.bottom).offset(14)
                make.top.equalTo(phoneLab.snp.bottom).offset(14)
            }
        }

        //: pwdTitleLab.snp.makeConstraints { make in
        pwdTitleLab.snp.makeConstraints { make in
            //: let topOffset = self.isNewPwd ? 35:105
            let topOffset = self.isNewPwd ? 35 : 105
            //: make.top.equalTo(phoneLab.snp.bottom).offset(topOffset)
            make.top.equalTo(phoneLab.snp.bottom).offset(topOffset)
            //: make.leading.equalTo(titleLab)
            make.leading.equalTo(titleLab)
        }
        //: pwdInputView.snp.makeConstraints { make in
        pwdInputView.snp.makeConstraints { make in
            //: make.top.equalTo(pwdTitleLab.snp.bottom).offset(20)
            make.top.equalTo(pwdTitleLab.snp.bottom).offset(20)
            //: make.leading.equalTo(titleLab)
            make.leading.equalTo(titleLab)
            //: make.trailing.equalTo(-30)
            make.trailing.equalTo(-30)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
        }

        //: desLab.preferredMaxLayoutWidth = ScreenWidth-60
        desLab.preferredMaxLayoutWidth = kLet_cameraValue - 60
        //: desLab.snp.makeConstraints { make in
        desLab.snp.makeConstraints { make in
            //: make.top.equalTo(pwdInputView.snp.bottom).offset(20)
            make.top.equalTo(pwdInputView.snp.bottom).offset(20)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.width.equalTo(ScreenWidth-60)
            make.width.equalTo(kLet_cameraValue - 60)
        }

        //: nextBtn.snp.makeConstraints { make in
        nextBtn.snp.makeConstraints { make in
            //: make.top.equalTo(desLab.snp.bottom).offset(30)
            make.top.equalTo(desLab.snp.bottom).offset(30)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.width.equalTo(ScreenWidth-60)
            make.width.equalTo(kLet_cameraValue - 60)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
        }

        //: skipBtn.snp.makeConstraints { make in
        skipBtn.snp.makeConstraints { make in
            //: make.top.equalTo(nextBtn.snp.bottom)
            make.top.equalTo(nextBtn.snp.bottom)
            //: make.height.width.equalTo(57)
            make.height.width.equalTo(57)
            //: make.width.equalTo(80)
            make.width.equalTo(80)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }

        //: reSendBtn.snp.makeConstraints { make in
        reSendBtn.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.width.equalTo(ScreenWidth-60)
            make.width.equalTo(kLet_cameraValue - 60)
            //: make.height.equalTo(36)
            make.height.equalTo(36)
            //: make.top.equalTo(nextBtn.snp.bottom).offset(10)
            make.top.equalTo(nextBtn.snp.bottom).offset(10)
        }
    }

    /// 添加事件
    //: private func bindInteraction() {
    private func red() {
        //: pwdInputView.rx.text.orEmpty.asObservable()
        pwdInputView.rx.text.orEmpty.asObservable()
            //: .subscribe(onNext: { [weak self] in
            .subscribe(onNext: { [weak self] in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: self.pwdInputView.text = String($0.filter { $0.isLetter || $0.isNumber }.prefix(self.pwdLimitCount))
                self.pwdInputView.text = String($0.filter { $0.isLetter || $0.isNumber }.prefix(self.pwdLimitCount))
                //: self.updateNextButtonStatus()
                self.statusUp()
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)

        //: nextBtn.rx.tap
        nextBtn.rx.tap
            //: .subscribe(onNext: { [weak self] in
            .subscribe(onNext: { [weak self] in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: self.endEditing(true)
                self.endEditing(true)
                //: guard self.isNewPwd == false else {
                guard self.isNewPwd == false else {
                    //: self.nextBlock?(self.pwdInputView.text ?? "", self.vcode)
                    self.nextBlock?(self.pwdInputView.text ?? "", self.vcode)
                    //: return
                    return
                }

                // 二次确认弹窗
                //: let pwdStr = "Your Password: %@".localizedArguments(self.pwdInputView.text ?? "")
                let pwdStr = (String(str_pressTitle.suffix(3)) + String(str_priceValue.prefix(6)) + "word: %@").localizedArguments(self.pwdInputView.text ?? "")
                //: let contentStr = "After updating your password, you won't be able to log in with your old password, are you sure you want to update your password?\n%@".localizedArguments(pwdStr)
                let contentStr = String(bytes: str_inviteValue.map{voiceUser(text: $0)}, encoding: .utf8)!.localizedArguments(pwdStr)
                //: let attributeStr = NSMutableAttributedString(string: contentStr)
                let attributeStr = NSMutableAttributedString(string: contentStr)
                //: let range = NSString(string: contentStr).range(of: pwdStr)
                let range = NSString(string: contentStr).range(of: pwdStr)
                //: attributeStr.addAttribute(.foregroundColor, value: UIColor.appThemeColor(), range: range)
                attributeStr.addAttribute(.foregroundColor, value: UIColor.plaster(), range: range)
                //: let config = ShowAlertConfig()
                let config = AtAlertConfig()
                //: config.textFont = UIFont.pingfangFont(type: .Regular, fontSize: 16)
                config.textFont = UIFont.pingfang(type: .Regular, fontSize: 16)
                //: config.textColor = .appTitleColor()
                config.textColor = .executeTo()
                //: config.alignment = .left
                config.alignment = .left
                //: TalkingAlertShow.customAlert(attributedMessage: attributeStr,
                MotilityThen.customLabel(attributedMessage: attributeStr,
                                             //: leftBtnTitle: "Cancel".localized,
                                             leftBtnTitle: (String(str_playValue) + str_sizeEqualText.replacingOccurrences(of: "array", with: "l")).localized,
                                             //: rightBtnTitle: "Confirm".localized, rightBlock: {
                                             rightBtnTitle: (String(str_modelValue.prefix(2)) + str_makeData.replacingOccurrences(of: "bind", with: "ir")).localized, rightBlock: {
                                                 //: self.nextBlock?(self.pwdInputView.text ?? "", self.vcode)
                                                 self.nextBlock?(self.pwdInputView.text ?? "", self.vcode)
                                                 //: }, config: config)
                                             }, config: config)
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)

        //: if isNewPwd == true {
        if isNewPwd == true {
            //: pwdInputView.becomeFirstResponder()
            pwdInputView.becomeFirstResponder()
            //: skipBtn.rx.tap
            skipBtn.rx.tap
                //: .subscribe(onNext: { [weak self] in
                .subscribe(onNext: { [weak self] in
                    //: guard let self = self else { return }
                    guard let self = self else { return }
                    //: self.endEditing(true)
                    self.endEditing(true)
                    // 获取用户信息
                    //: TalkingLoginRequestTool.req_LoginUserInfoData(self.type)
                    LoginRequestTool.bar(self.type)
                    //: })
                })
                //: .disposed(by: disposeBag)
                .disposed(by: disposeBag)

            //: } else {
        } else {
            //: codeInputView.codeBlock = { [weak self] (codeStr: String) in
            codeInputView.codeBlock = { [weak self] (codeStr: String) in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: self.vcode = codeStr
                self.vcode = codeStr
                //: self.updateNextButtonStatus()
                self.statusUp()
            }

            //: startReSendTimer()
            routeTimer()
            //: reSendBtn.rx.tap
            reSendBtn.rx.tap
                //: .subscribe(onNext: { [weak self] in
                .subscribe(onNext: { [weak self] in
                    //: guard let self = self else { return }
                    guard let self = self else { return }
                    //: self.endEditing(true)
                    self.endEditing(true)
                    //: self.sendSmsBlock?()
                    self.sendSmsBlock?()
                    //: })
                })
                //: .disposed(by: disposeBag)
                .disposed(by: disposeBag)
        }
    }
}
