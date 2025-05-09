
//: Declare String Begin

/*: "Personal information" :*/
fileprivate let str_coinName:String = "Personal mode voice type max share"
fileprivate let str_appearValue:[Character] = ["i","n","f","o","r","m","a","t","i","o","n"]

/*: "authPic" :*/
fileprivate let str_userData:[Character] = ["a","u","t","h","P","i","c"]

/*: "Face verification" :*/
fileprivate let str_playerText:[Character] = ["F","a","c","e"," ","v","e","r"]
fileprivate let str_packageLabTitle:String = "info"
fileprivate let str_buttonTitle:[Character] = ["i","c","a","t","i","o","n"]

/*: "icon_zc_userconver" :*/
fileprivate let str_timeToName:String = "earn succeed gift resulticon_zc"
fileprivate let str_kindModelTitle:String = "make content make let_use"

/*: "Verify now" :*/
fileprivate let str_actionColorText:String = "Verifyview gin let"

/*: "#4A89F3" :*/
fileprivate let str_textData:[Character] = ["#","4","A","8","9","F","3"]

/*: "Finish" :*/
fileprivate let str_genderMakeData:String = "Finishview let view in message"

/*: "#8C7AFF" :*/
fileprivate let str_leadingUpName:[Character] = ["#","8","C","7","A","F","F"]

/*: "Skip" :*/
fileprivate let str_viewStarShowValue:String = "Skipme photo frame calendar to"

/*: "icon_successfylly" :*/
fileprivate let str_resignMakeText:[Character] = ["i","c","o","n","_","s","u","c","c"]
fileprivate let str_fromWhiteData:String = "ESSFYLLY"

/*: "Submitted successfully" :*/
fileprivate let str_viewPlayData:[Character] = ["S","u","b","m","i","t","t","e","d"," ","s","u","c","c","e","s","s","f","u","l","l","y"]

/*: "#2ED180" :*/
fileprivate let str_currentName:[Character] = ["#","2","E","D","1","8","0"]

/*: _ :*/
fileprivate let str_equalResultName:[Character] = ["_"]

/*: "male" :*/
fileprivate let str_centerMakeTitle:[UInt8] = [0x7b,0x6f,0x7a,0x73]

fileprivate func stickingPoint(hidden num: UInt8) -> UInt8 {
    let value = Int(num) + 242
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "female" :*/
fileprivate let str_equalData:[Character] = ["f","e","m","a","l","e"]

/*: "RegisterSuccess" :*/
fileprivate let str_toTitle:String = "raw selfRegi"
fileprivate let str_giftFromName:[Character] = ["u","c","c","e","s","s"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  GrantRecognizerDelegate.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/9/8.
//

//: import UIKit
import UIKit

//: class TalkingLoginEditAuthAndVideoVC: TalkingBaseViewController {
class GrantRecognizerDelegate: SeamViewController {
    //: private var VideoIconPath = ""
    private var VideoIconPath = ""
    //: private var videoPath = ""
    private var videoPath = ""
    //: var params = [String: Any]()
    var params = [String: Any]()

    //: override func viewDidAppear(_ animated: Bool) {
    override func viewDidAppear(_ animated: Bool) {
        //: super.viewDidAppear(animated)
        super.viewDidAppear(animated)
        //: popGesture(isOpen: false)
        snapFrom(isOpen: false)
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.title = "Personal information".localized
        self.title = (String(str_coinName.prefix(9)) + String(str_appearValue)).localized
        //: self.view.backgroundColor = .white
        self.view.backgroundColor = .white
        //: self.setupSubviews()
        self.begin()
        //: self.setupSubViewsConstraint()
        self.omit()

        //: if !EqualThen.share.appConfigMode.skipInputInviteCode {
        if !EqualThen.share.appConfigMode.skipInputInviteCode {
            //: skipButton.isHidden = true
            skipButton.isHidden = true
//            skipTipLabel.isHidden = skipButton.isHidden
        }
        //: if EqualThen.share.userFillInfoMode.authImage != nil {
        if EqualThen.share.userFillInfoMode.authImage != nil {
            //: self.params["authPic"] = EqualThen.share.userFillInfoMode.authImage?.jpegData(compressionQuality: 1)
            self.params[(String(str_userData))] = EqualThen.share.userFillInfoMode.authImage?.jpegData(compressionQuality: 1)
            //: self.setConverView()
            self.conver()
            //: self.finishBtn.isEnabled = true
            self.finishBtn.isEnabled = true
        }
    }

    // MARK: - Lazy Load

    //: lazy var contentView: UIView = {
    lazy var contentView: UIView = {
        //: let contentView = UIView.init()
        let contentView = UIView()
        //: return contentView
        return contentView
        //: }()
    }()

    //: lazy var converLB: UILabel = {
    lazy var converLB: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.textColor = .appTitleColor()
        lb.textColor = .executeTo()
        //: lb.font = UIFont.pingfangFont(type: .Semibold, fontSize: 17)
        lb.font = UIFont.pingfang(type: .Semibold, fontSize: 17)
        //: lb.text = "Face verification".localized
        lb.text = (String(str_playerText) + str_packageLabTitle.replacingOccurrences(of: "info", with: "if") + String(str_buttonTitle)).localized
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var converImag: UIImageView = {
    lazy var converImag: UIImageView = {
        //: let imagv = UIImageView.init()
        let imagv = UIImageView()
        //: imagv.image = UIImage.eponymUp(name: "icon_zc_userconver")
        imagv.image = UIImage.eponymUp(name: (String(str_timeToName.suffix(7)) + String(str_kindModelTitle.suffix(4)) + "rconver"))
        //: return imagv
        return imagv
        //: }()
    }()

    //: lazy var converBtn: UIButton = {
    lazy var converBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.addTarget(self, action: #selector(converBtnClick), for: UIControl.Event.touchUpInside)
        btn.addTarget(self, action: #selector(status), for: UIControl.Event.touchUpInside)
        //: var attributedString = NSMutableAttributedString(string: "Verify now".localized)
        var attributedString = NSMutableAttributedString(string: (String(str_actionColorText.prefix(6)) + " now").localized)
        //: attributedString.addAttributes([.underlineStyle: NSNumber(value: NSUnderlineStyle.single.rawValue), .foregroundColor: UIColor.init(hex: "#4A89F3")!, .font: UIFont.pingfangFont(type: .Semibold, fontSize: 15)], range: NSRange.init(location: 0, length: attributedString.length))
        attributedString.addAttributes([.underlineStyle: NSNumber(value: NSUnderlineStyle.single.rawValue), .foregroundColor: UIColor(hex: (String(str_textData)))!, .font: UIFont.pingfang(type: .Semibold, fontSize: 15)], range: NSRange(location: 0, length: attributedString.length))
        //: btn.setAttributedTitle(attributedString, for: UIControl.State.normal)
        btn.setAttributedTitle(attributedString, for: UIControl.State.normal)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var finishBtn: UIButton = {
    lazy var finishBtn: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.isEnabled = false
        btn.isEnabled = false
        //: btn.setTitleColor(UIColor.white, for: .normal)
        btn.setTitleColor(UIColor.white, for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Medium, fontSize: 17)
        btn.titleLabel?.font = UIFont.pingfang(type: .Medium, fontSize: 17)
        //: btn.setTitle("Finish".localized, for: .normal)
        btn.setTitle((String(str_genderMakeData.prefix(6))).localized, for: .normal)
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: UIColor.appGradientColor(), size: CGSize(width: ScreenWidth-60, height: 50)), for: .normal)
        btn.setBackgroundImage(UIImage.makeBackground(colors: UIColor.appToVoice(), size: CGSize(width: kLet_cameraValue - 60, height: 50)), for: .normal)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.addTarget(self, action: #selector(finishBtnClick(isSkip:)), for: .touchUpInside)
        btn.addTarget(self, action: #selector(aggregation(isSkip:)), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var skipButton: UIButton = {
    lazy var skipButton: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setTitleColor(UIColor.init(hex: "#8C7AFF"), for: .normal)
        btn.setTitleColor(UIColor(hex: (String(str_leadingUpName))), for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Medium, fontSize: 17)
        btn.titleLabel?.font = UIFont.pingfang(type: .Medium, fontSize: 17)
        //: let attributeString = NSMutableAttributedString(string: "Skip".localized)
        let attributeString = NSMutableAttributedString(string: (String(str_viewStarShowValue.prefix(4))).localized)
        //: attributeString.addAttribute(.underlineStyle, value: NSUnderlineStyle.single.rawValue, range: NSRange(location: 0, length: attributeString.length))
        attributeString.addAttribute(.underlineStyle, value: NSUnderlineStyle.single.rawValue, range: NSRange(location: 0, length: attributeString.length))
        //: btn.setAttributedTitle(attributeString, for: .normal)
        btn.setAttributedTitle(attributeString, for: .normal)
        //: btn.addTarget(self, action: #selector(skipButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(showOfStop), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
//    lazy var skipTipLabel: UILabel = {
//        let label = UILabel()
//        label.font = .pingfangFont(type: .Regular, fontSize: 12)
//        label.textColor = .publishView()
//        label.textAlignment = .center
//        label.numberOfLines = 0
//        label.text = "You can feel free to skip this step.".localized
//        return label
//    }()
}

//: extension TalkingLoginEditAuthAndVideoVC {
extension GrantRecognizerDelegate {
    //: func setConverView() {
    func conver() {
        //: self.converImag.image = UIImage.eponymUp(name: "icon_successfylly")
        self.converImag.image = UIImage.eponymUp(name: (String(str_resignMakeText) + str_fromWhiteData.lowercased()))
        //: let attributedString = NSMutableAttributedString(string: "Submitted successfully".localized)
        let attributedString = NSMutableAttributedString(string: (String(str_viewPlayData)).localized)
        //: attributedString.addAttributes([.foregroundColor: UIColor.init(hex: "#2ED180")!, .font: UIFont.pingfangFont(type: .Semibold, fontSize: 15)], range: NSRange.init(location: 0, length: attributedString.length))
        attributedString.addAttributes([.foregroundColor: UIColor(hex: (String(str_currentName)))!, .font: UIFont.pingfang(type: .Semibold, fontSize: 15)], range: NSRange(location: 0, length: attributedString.length))
        //: self.converBtn.setAttributedTitle(attributedString, for: UIControl.State.normal)
        self.converBtn.setAttributedTitle(attributedString, for: UIControl.State.normal)
    }
}

/// event
//: extension TalkingLoginEditAuthAndVideoVC {
extension GrantRecognizerDelegate {
    /// 重写返回按钮事件
    //: override func naviPopback() {
    override func white() {
        //: super.naviPopback()
        super.white()
        // 埋点
        //: let eventID = "\(click_registration_information3_backBTN)_\(EqualThen.share.userFillInfoMode.sex == Gender.male.rawValue ? "male" : "female")"
        let eventID = "\(kLet_userContent)_\(EqualThen.share.userFillInfoMode.sex == RunReplaceableCollection.male.rawValue ? String(bytes: str_centerMakeTitle.map{stickingPoint(hidden: $0)}, encoding: .utf8)! : (String(str_equalData)))"
        //: uploadRecord.uploadRecordEvent(eventID: eventID)
        kLet_textData.historicalPaper(eventID: eventID)
    }

    //: @objc func converBtnClick() {
    @objc func status() {
        // 埋点
        //: let eventID = "\(click_registration_information3_verifyBTN)_\(EqualThen.share.userFillInfoMode.sex == Gender.male.rawValue ? "male" : "female")"
        let eventID = "\(kLet_intimateData)_\(EqualThen.share.userFillInfoMode.sex == RunReplaceableCollection.male.rawValue ? String(bytes: str_centerMakeTitle.map{stickingPoint(hidden: $0)}, encoding: .utf8)! : (String(str_equalData)))"
        //: uploadRecord.uploadRecordEvent(eventID: eventID)
        kLet_textData.historicalPaper(eventID: eventID)

        //: let vc = TalkingVerificationExampleVC()
        let vc = ShadowExampleVc()
        //: vc.isRegisterPush = true
        vc.isRegisterPush = true
        //: self.navigationController?.pushViewController(vc, animated: true)
        self.navigationController?.pushViewController(vc, animated: true)
        //: vc.iconActionBlock = { [weak self] image in
        vc.iconActionBlock = { [weak self] image in
            //: guard let self = self else {
            guard let self = self else {
                //: return
                return
            }
            //: EqualThen.share.userFillInfoMode.authImage = image
            EqualThen.share.userFillInfoMode.authImage = image
            //: self.params["authPic"] = image.jpegData(compressionQuality: 1)
            self.params[(String(str_userData))] = image.jpegData(compressionQuality: 1)
            //: self.setConverView()
            self.conver()
            //: self.finishBtn.isEnabled = true
            self.finishBtn.isEnabled = true
        }
    }

    //: @objc private func skipButtonClick() {
    @objc private func showOfStop() {
        // 埋点
        //: let eventID = "\(click_registration_information3_skipBTN)_\(EqualThen.share.userFillInfoMode.sex == Gender.male.rawValue ? "male" : "female")"
        let eventID = "\(kLet_nameValue)_\(EqualThen.share.userFillInfoMode.sex == RunReplaceableCollection.male.rawValue ? String(bytes: str_centerMakeTitle.map{stickingPoint(hidden: $0)}, encoding: .utf8)! : (String(str_equalData)))"
        //: uploadRecord.uploadRecordEvent(eventID: eventID)
        kLet_textData.historicalPaper(eventID: eventID)

        //: params.removeValue(forKey: "authPic")
        params.removeValue(forKey: (String(str_userData)))
        //: finishBtnClick(isSkip: true)
        aggregation(isSkip: true)
    }

    //: @objc private func finishBtnClick(isSkip: Bool = false) {
    @objc private func aggregation(isSkip: Bool = false) {
        // 埋点
        //: if isSkip == false {
        if isSkip == false {
            //: let eventID = "\(click_registration_information3_finishBTN)_\(EqualThen.share.userFillInfoMode.sex == Gender.male.rawValue ? "male" : "female")"
            let eventID = "\(kLet_minNetValue)_\(EqualThen.share.userFillInfoMode.sex == RunReplaceableCollection.male.rawValue ? String(bytes: str_centerMakeTitle.map{stickingPoint(hidden: $0)}, encoding: .utf8)! : (String(str_equalData)))"
            //: uploadRecord.uploadRecordEvent(eventID: eventID)
            kLet_textData.historicalPaper(eventID: eventID)
        }

        //: view.endEditing(true)
        view.endEditing(true)
        //: ProgressHUD.show()
        ModelReactiveCompatible.fromTarget()
        //: TalkingLoginRequestTool.req_updateUserInfo(params: params) { succeed, result, errorModel in
        LoginRequestTool.user(params: params) { succeed, result, _ in
            //: ProgressHUD.dismiss()
            ModelReactiveCompatible.dataConverterCan()
            //: if succeed {
            if succeed {
                // 发送通知
                //: NotificationCenter.default.post(name: DID_LOGIN_SUCCESS_NOTIFICATION, object: nil, userInfo: result as! Dictionary<String, Any>)
                NotificationCenter.default.post(name: kLet_popText, object: nil, userInfo: result as! [String: Any])
                // 注册成功埋点
                //: TalkingAdjustManager.share.addEvent(key: "RegisterSuccess")
                AdministratorThen.share.duringAdd(key: (String(str_toTitle.suffix(4)) + "sterS" + String(str_giftFromName)))
                //: FirebaseAnalyticsManager.share.logEvent(name: "RegisterSuccess")
                ManagerThen.share.migration(name: (String(str_toTitle.suffix(4)) + "sterS" + String(str_giftFromName)))

                //: if EqualThen.share.loginUserMode.remindBindEmail == true {
                if EqualThen.share.loginUserMode.remindBindEmail == true { // 需要绑定邮箱
                    //: DispatchQueue.main.asyncAfter(deadline: .now()+0.5) {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                        //: EditTextThen.share.func__pushToLockUserEmailVC(isShowBack: false)
                        EditTextThen.share.actionTo(isShowBack: false)
                    }
                }
            }
        }
    }
}

//: extension TalkingLoginEditAuthAndVideoVC {
extension GrantRecognizerDelegate {
    //: func setupSubviews() {
    func begin() {
        //: self.view.addSubview(converLB)
        self.view.addSubview(converLB)
        //: self.view.addSubview(converImag)
        self.view.addSubview(converImag)
        //: self.view.addSubview(converBtn)
        self.view.addSubview(converBtn)
        //: self.view.addSubview(finishBtn)
        self.view.addSubview(finishBtn)
        //: self.view.addSubview(skipButton)
        self.view.addSubview(skipButton)
//        self.view.addSubview(skipTipLabel)
    }

    //: func setupSubViewsConstraint() {
    func omit() {
        //: converLB.snp.makeConstraints { make in
        converLB.snp.makeConstraints { make in
            //: make.top.equalTo(34)
            make.top.equalTo(34)
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
        }
        //: converImag.snp.makeConstraints { make in
        converImag.snp.makeConstraints { make in
            //: make.top.equalTo(converLB.snp.bottom).offset(20)
            make.top.equalTo(converLB.snp.bottom).offset(20)
            //: make.centerX.equalTo(self.view)
            make.centerX.equalTo(self.view)
            //: make.size.equalTo(125)
            make.size.equalTo(125)
        }
        //: converBtn.snp.makeConstraints { make in
        converBtn.snp.makeConstraints { make in
            //: make.top.equalTo(converImag.snp.bottom).offset(9)
            make.top.equalTo(converImag.snp.bottom).offset(9)
            //: make.centerX.equalTo(self.view)
            make.centerX.equalTo(self.view)
        }

        //: finishBtn.snp.makeConstraints { make in
        finishBtn.snp.makeConstraints { make in
            //: make.top.equalTo(converBtn.snp.bottom).offset(40)
            make.top.equalTo(converBtn.snp.bottom).offset(40)
            //: make.height.equalTo(51)
            make.height.equalTo(51)
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
            //: make.trailing.equalTo(-30)
            make.trailing.equalTo(-30)
        }
        //: skipButton.snp.makeConstraints { make in
        skipButton.snp.makeConstraints { make in
            //: make.top.equalTo(finishBtn.snp.bottom).offset(20)
            make.top.equalTo(finishBtn.snp.bottom).offset(20)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.size.equalTo(CGSize.init(width: 50, height: 18))
            make.size.equalTo(CGSize(width: 50, height: 18))
        }
//        skipTipLabel.snp.makeConstraints { make in
//            make.bottom.equalTo(skipButton.snp.top).offset(-15)
//            make.centerX.equalToSuperview()
//            make.width.equalTo(ScreenWidth-60)
//        }
    }
}
