
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_logContent:[UInt8] = [0x9d,0xa2,0x9d,0xa8,0x5c,0x97,0xa3,0x98,0x99,0xa6,0x6e,0x5d,0x54,0x9c,0x95,0xa7,0x54,0xa2,0xa3,0xa8,0x54,0x96,0x99,0x99,0xa2,0x54,0x9d,0xa1,0xa4,0xa0,0x99,0xa1,0x99,0xa2,0xa8,0x99,0x98]

fileprivate func dataApp(equal num: UInt8) -> UInt8 {
    let value = Int(num) + 204
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "Personal information" :*/
fileprivate let str_makeTitle:String = "text"
fileprivate let str_listValue:[Character] = ["e","r","s","o","n","a","l"," ","i","n","f","o","r","m","a","t","i","o","n"]

/*: "RunReplaceableCollection" :*/
fileprivate let str_mediumValue:[Character] = ["G","e","n","d","e"]
fileprivate let str_topTitle:[Character] = ["r"]

/*: "Once gender is set, it Cannot be changed." :*/
fileprivate let str_shareValue:[UInt8] = [0xbb,0x9a,0x97,0x91,0xd4,0x93,0x91,0x9a,0x90,0x91,0x86,0xd4,0x9d,0x87,0xd4,0x87,0x91,0x80,0xd8,0xd4,0x9d,0x80,0xd4,0xb7,0x95,0x9a,0x9a,0x9b,0x80,0xd4,0x96,0x91,0xd4,0x97,0x9c,0x95,0x9a,0x93,0x91,0x90,0xda]

private func pageEffect(calculation num: UInt8) -> UInt8 {
    return num ^ 244
}

/*: "#2ABBFF" :*/
fileprivate let str_callValue:String = "text equal image#2ABBF"
fileprivate let str_crushName:String = "frame"

/*: "btn_male_nv_nor" :*/
fileprivate let str_itemTitle:[Character] = ["b","t","n","_","m"]
fileprivate let str_modeTitle:[Character] = ["a","l","e","_","n","v","_","n","o","r"]

/*: "btn_male_nv_sel" :*/
fileprivate let str_upColorData:[Character] = ["b","t","n","_","m"]
fileprivate let str_endSectionData:[Character] = ["a","l","e","_","n","v","_","s","e","l"]

/*: "Male" :*/
fileprivate let str_withText:String = "Malescale height voice room path"

/*: "#FF5372" :*/
fileprivate let str_blackValue:String = "post var item let#FF5372"

/*: "btn_female_nv_nor" :*/
fileprivate let str_viewName:[Character] = ["b","t","n","_","f","e"]
fileprivate let str_withData:String = "tole"

/*: "btn_female_nv_sel" :*/
fileprivate let str_labText:String = "btn_femethod class make model content"
fileprivate let str_databaseContent:String = "self app_sel"

/*: "Female" :*/
fileprivate let str_labelData:[Character] = ["F","e","m","a","l"]
fileprivate let str_topValue:String = "text"

/*: "Next" :*/
fileprivate let str_resultData:[Character] = ["N","e","x","t"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  CustomViewController.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/8/30.
//

//: import UIKit
import UIKit

//: class TalkingLoginGenderVC: TalkingBaseViewController {
class CustomViewController: SeamViewController {
    //: let disposeBag = DisposeBag()
    let disposeBag = DisposeBag()

    //: init() {
    init() {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_logContent.map{dataApp(equal: $0)}, encoding: .utf8)!)
    }

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
        self.title = (str_makeTitle.replacingOccurrences(of: "text", with: "P") + String(str_listValue)).localized
        //: EqualThen.share.userFillInfoMode.sex = "1"
        EqualThen.share.userFillInfoMode.sex = "1"
        //: self.setupSubviews()
        self.nearBegin()
        //: self.setupSubViewsConstraint()
        self.digitizer()
        //: self.bindInteraction()
        self.requestAfter()
        //: func__checkNextBtnState()
        withSumeraction()
    }

    //: deinit {
    deinit {}

    //: private lazy var logoTitleLabel: UILabel = {
    private lazy var logoTitleLabel: UILabel = {
        //: let label = UILabel()
        let label = UILabel()
        //: label.font = .pingfangFont(type: .Semibold, fontSize: 17)
        label.font = .pingfang(type: .Semibold, fontSize: 17)
        //: label.textColor = .appTitleColor()
        label.textColor = .executeTo()
        //: label.textAlignment = .center
        label.textAlignment = .center
        //: label.text = "Gender".localized
        label.text = (String(str_mediumValue) + String(str_topTitle)).localized
        //: return label
        return label
        //: }()
    }()

    //: private lazy var genderTipLabel: UILabel = {
    private lazy var genderTipLabel: UILabel = {
        //: let label = UILabel()
        let label = UILabel()
        //: label.font = .pingfangFont(type: .Regular, fontSize: 15)
        label.font = .pingfang(type: .Regular, fontSize: 15)
        //: label.textColor = .appValueColor()
        label.textColor = .addColor()
        //: label.numberOfLines = 0
        label.numberOfLines = 0
        //: label.text = "Once gender is set, it Cannot be changed.".localized
        label.text = String(bytes: str_shareValue.map{pageEffect(calculation: $0)}, encoding: .utf8)!.localized
        //: return label
        return label
        //: }()
    }()

    //: private lazy var maleButton: TalkingButton = {
    private lazy var maleButton: ProgressTalkingButton = {
        //: let btn = TalkingButton(type: .custom)
        let btn = ProgressTalkingButton(type: .custom)
        //: btn.isSelected = false
        btn.isSelected = false
        //: btn.spaceBetweenTitleAndImage = 20
        btn.spaceBetweenTitleAndImage = 20
        //: btn.setBackgroundColor(color: UIColor.init(red: 244/255.0, green: 244/255.0, blue: 244/255.0, alpha: 1.0), forState: .normal)
        btn.likeness(color: UIColor(red: 244 / 255.0, green: 244 / 255.0, blue: 244 / 255.0, alpha: 1.0), forState: .normal)
        //: btn.setBackgroundColor(color: UIColor.init(hex: "#2ABBFF")!, forState: .selected)
        btn.likeness(color: UIColor(hex: (String(str_callValue.suffix(6)) + str_crushName.replacingOccurrences(of: "frame", with: "F")))!, forState: .selected)
        //: btn.setImage(UIImage.eponymUp(name: "btn_male_nv_nor"), for: .normal)
        btn.setImage(UIImage.eponymUp(name: (String(str_itemTitle) + String(str_modeTitle))), for: .normal)
        //: btn.setImage(UIImage.eponymUp(name: "btn_male_nv_sel"), for: .selected)
        btn.setImage(UIImage.eponymUp(name: (String(str_upColorData) + String(str_endSectionData))), for: .selected)
        //: btn.setTitle("Male".localized, for: .normal)
        btn.setTitle((String(str_withText.prefix(4))).localized, for: .normal)
        //: btn.setTitle("Male".localized, for: .selected)
        btn.setTitle((String(str_withText.prefix(4))).localized, for: .selected)
        //: btn.setTitleColor(.black, for: .normal)
        btn.setTitleColor(.black, for: .normal)
        //: btn.setTitleColor(.white, for: .selected)
        btn.setTitleColor(.white, for: .selected)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.titleLabel?.font = UIFont.outsideAllSize(fontSize: 17)
        btn.titleLabel?.font = UIFont.outsideAllSize(fontSize: 17)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var femaleButton: TalkingButton = {
    private lazy var femaleButton: ProgressTalkingButton = {
        //: let btn = TalkingButton(type: .custom)
        let btn = ProgressTalkingButton(type: .custom)
        //: btn.isSelected = false
        btn.isSelected = false
        //: btn.spaceBetweenTitleAndImage = 20
        btn.spaceBetweenTitleAndImage = 20
        //: btn.setBackgroundColor(color: UIColor.init(red: 244/255.0, green: 244/255.0, blue: 244/255.0, alpha: 1.0), forState: .normal)
        btn.likeness(color: UIColor(red: 244 / 255.0, green: 244 / 255.0, blue: 244 / 255.0, alpha: 1.0), forState: .normal)
        //: btn.setBackgroundColor(color: UIColor.init(hex: "#FF5372")!, forState: .selected)
        btn.likeness(color: UIColor(hex: (String(str_blackValue.suffix(7))))!, forState: .selected)
        //: btn.setImage(UIImage.eponymUp(name: "btn_female_nv_nor"), for: .normal)
        btn.setImage(UIImage.eponymUp(name: (String(str_viewName) + str_withData.replacingOccurrences(of: "to", with: "ma") + "_nv_nor")), for: .normal)
        //: btn.setImage(UIImage.eponymUp(name: "btn_female_nv_sel"), for: .selected)
        btn.setImage(UIImage.eponymUp(name: (String(str_labText.prefix(6)) + "male_nv" + String(str_databaseContent.suffix(4)))), for: .selected)
        //: btn.setTitle("Female".localized, for: .normal)
        btn.setTitle((String(str_labelData) + str_topValue.replacingOccurrences(of: "text", with: "e")).localized, for: .normal)
        //: btn.setTitle("Female".localized, for: .selected)
        btn.setTitle((String(str_labelData) + str_topValue.replacingOccurrences(of: "text", with: "e")).localized, for: .selected)
        //: btn.setTitleColor(.black, for: .normal)
        btn.setTitleColor(.black, for: .normal)
        //: btn.setTitleColor(.white, for: .selected)
        btn.setTitleColor(.white, for: .selected)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.titleLabel?.font = UIFont.outsideAllSize(fontSize: 17)
        btn.titleLabel?.font = UIFont.outsideAllSize(fontSize: 17)
        //: return btn
        return btn
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
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Medium, fontSize: 17)
        btn.titleLabel?.font = UIFont.pingfang(type: .Medium, fontSize: 17)
        //: btn.setTitle("Next".localized, for: .normal)
        btn.setTitle((String(str_resultData)).localized, for: .normal)
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
}

// MARK: - Public Event

//: extension TalkingLoginGenderVC {
extension CustomViewController {
    //: private func func__checkNextBtnState() {
    private func withSumeraction() {
        //: if EqualThen.share.userFillInfoMode.sex == "1" {
        if EqualThen.share.userFillInfoMode.sex == "1" {
            //: self.commitButton.isEnabled = true
            self.commitButton.isEnabled = true
            //: self.maleButton.isSelected = true
            self.maleButton.isSelected = true
            //: self.femaleButton.isSelected = false
            self.femaleButton.isSelected = false
            //: } else if EqualThen.share.userFillInfoMode.sex == "2"{
        } else if EqualThen.share.userFillInfoMode.sex == "2" {
            //: self.commitButton.isEnabled = true
            self.commitButton.isEnabled = true
            //: self.maleButton.isSelected = false
            self.maleButton.isSelected = false
            //: self.femaleButton.isSelected = true
            self.femaleButton.isSelected = true
            //: } else {
        } else {
            //: self.commitButton.isEnabled = false
            self.commitButton.isEnabled = false
            //: self.maleButton.isSelected = false
            self.maleButton.isSelected = false
            //: self.femaleButton.isSelected = false
            self.femaleButton.isSelected = false
        }
    }

    //: private func func__pushToNextProgress() {
    private func gesture() {
        //        // 1.3 判断用户设备SIM卡归属地是否来自被剔除的国家或地区
        //        // 1.4 判断用户设备是否开启VPN
//        if EqualThen.share.appConfigMode.vpnSimCardCheck {
//
//            guard  !SendUpReactiveCompatible.isUsedProxy() && !SendUpReactiveCompatible.isUsedVPN() else {
//                self.func__showStatusBarErrorMsg(showMsg: "Network error. Check it and try again.".localized)
//                self.navigationController?.popToRootViewController(animated: true)
//                NotificationCenter.default.post(name: DID_LOGIN_OUT_SUCCESS_NOTIFICATION, object: nil, userInfo: nil)
//                GiftManagerRequest.func__reportDeviceID()
//                return
//            }
//        }
        /// 清除后面已填写过资料
        //: let sex = EqualThen.share.userFillInfoMode.sex
        let sex = EqualThen.share.userFillInfoMode.sex
        //: EqualThen.share.userFillInfoMode = UserFillInfoModel.init()
        EqualThen.share.userFillInfoMode = BullInfoModel()
        //: EqualThen.share.userFillInfoMode.sex = sex
        EqualThen.share.userFillInfoMode.sex = sex
        //: let VC = TalkingLoginEditInfoVC()
        let VC = MaterialRecognizerDelegate()
        //: self.navigationController?.pushViewController(VC, animated: true)
        self.navigationController?.pushViewController(VC, animated: true)
    }
}

// MARK: - Layout

//: extension TalkingLoginGenderVC {
extension CustomViewController {
    // 添加视图
    //: private func setupSubviews() {
    private func nearBegin() {
        //: view.backgroundColor = .white
        view.backgroundColor = .white
        //: view.addSubview(logoTitleLabel)
        view.addSubview(logoTitleLabel)
        //: view.addSubview(genderTipLabel)
        view.addSubview(genderTipLabel)
        //: view.addSubview(maleButton)
        view.addSubview(maleButton)
        //: view.addSubview(femaleButton)
        view.addSubview(femaleButton)
        //: view.addSubview(commitButton)
        view.addSubview(commitButton)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func digitizer() {
        //: logoTitleLabel.snp.makeConstraints { make in
        logoTitleLabel.snp.makeConstraints { make in
            //: make.top.equalTo(34)
            make.top.equalTo(34)
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
        }
        //: genderTipLabel.snp.makeConstraints { make in
        genderTipLabel.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.width.equalTo(ScreenWidth-60)
            make.width.equalTo(kLet_cameraValue - 60)
            //: make.top.equalTo(logoTitleLabel.snp.bottom).offset(6)
            make.top.equalTo(logoTitleLabel.snp.bottom).offset(6)
        }
        //: maleButton.snp.makeConstraints { make in
        maleButton.snp.makeConstraints { make in
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
            //: make.width.equalTo(actualWidth(w: 140))
            make.width.equalTo(actualWidth(w: 140))
            //: make.height.equalTo(actualWidth(w: 50))
            make.height.equalTo(actualWidth(w: 50))
            //: make.top.equalTo(genderTipLabel.snp.bottom).offset(20)
            make.top.equalTo(genderTipLabel.snp.bottom).offset(20)
        }
        //: femaleButton.snp.makeConstraints { make in
        femaleButton.snp.makeConstraints { make in
            //: make.trailing.equalTo(-30)
            make.trailing.equalTo(-30)
            //: make.width.equalTo(actualWidth(w: 140))
            make.width.equalTo(actualWidth(w: 140))
            //: make.height.equalTo(actualWidth(w: 50))
            make.height.equalTo(actualWidth(w: 50))
            //: make.top.equalTo(genderTipLabel.snp.bottom).offset(20)
            make.top.equalTo(genderTipLabel.snp.bottom).offset(20)
        }
        //: commitButton.snp.makeConstraints { make in
        commitButton.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.width.equalTo(ScreenWidth-60)
            make.width.equalTo(kLet_cameraValue - 60)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
            //: make.top.equalTo(maleButton.snp.bottom).offset(40)
            make.top.equalTo(maleButton.snp.bottom).offset(40)
        }
    }

    // 添加事件
    //: private func bindInteraction() {
    private func requestAfter() {
        //: commitButton.rx.tap
        commitButton.rx.tap
            //: .subscribe(onNext: { [weak self] in
            .subscribe(onNext: { [weak self] in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.func__pushToNextProgress()
                self.gesture()

                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)
        //: femaleButton.rx.tap
        femaleButton.rx.tap
            //: .subscribe(onNext: { [weak self] in
            .subscribe(onNext: { [weak self] in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: EqualThen.share.userFillInfoMode.sex = "2"
                EqualThen.share.userFillInfoMode.sex = "2"
                //: self.func__checkNextBtnState()
                self.withSumeraction()
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)
        //: maleButton.rx.tap
        maleButton.rx.tap
            //: .subscribe(onNext: { [weak self] in
            .subscribe(onNext: { [weak self] in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: EqualThen.share.userFillInfoMode.sex = "1"
                EqualThen.share.userFillInfoMode.sex = "1"
                //: self.func__checkNextBtnState()
                self.withSumeraction()
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)
    }
}
