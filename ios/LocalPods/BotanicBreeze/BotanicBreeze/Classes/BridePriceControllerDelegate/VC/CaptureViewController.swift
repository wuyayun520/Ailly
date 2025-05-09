
//: Declare String Begin

/*: "btn_back_white" :*/
fileprivate let str_buttonValue:String = "color nor extension sessionbtn_"
fileprivate let str_tabContent:String = "_whitto you white mode"
fileprivate let str_picClearValue:[Character] = ["e"]

/*: (+ :*/
fileprivate let str_listData:String = "(kick"

/*: )" :*/
fileprivate let str_untilGiftSectionName:String = ")"

/*: "area_icon_ :*/
fileprivate let str_moreToName:[Character] = ["a","r","e"]
fileprivate let str_clearData:String = "a_icon_as center view then"

/*: @2x" :*/
fileprivate let str_managerText:String = "model now make@2x"

/*: "get img error" :*/
fileprivate let str_pathToData:[Character] = ["g","e","t"," ","i","m","g"," "]
fileprivate let str_firstName:String = "evaluevalueovalue"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  CaptureViewController.swift
//  BotanicBreeze
//
//  Created by Charlotte on 2024/7/31.
//

//: import UIKit
import UIKit

//: class TalkingBindPhoneVC: TalkingBaseViewController {
class CaptureViewController: SeamViewController {
    //: private var areaModel = TalkingLocationTool.share.getDefaltCountry()
    private var areaModel = RawReactiveCompatible.share.whish()

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.setupSubviews()
        self.requestSubviews()
        //: self.setupSubViewsConstraint()
        self.end()
        //: self.bindInteraction()
        self.data()
        //: self.loginView.setPhoneView()
        self.loginView.straddle()
    }

    //: lazy var loginView: TalkingLoginView = {
    lazy var loginView: IndexFieldDelegate = {
        //: let loginView = TalkingLoginView.init(type: .LoginPhone)
        let loginView = IndexFieldDelegate(type: .LoginPhone)
        //: return loginView
        return loginView
        //: }()
    }()

    //: lazy var backBtn: UIButton = {
    lazy var backBtn: UIButton = {
        //: let btn = UIButton.init(frame: CGRect(x: 6, y: StatusBarHeight, width: 44, height: 44))
        let btn = UIButton(frame: CGRect(x: 6, y: kLet_timeSenseValue, width: 44, height: 44))
        //: btn.setImage(UIImage.eponymUp(name: "btn_back_white"), for: .normal)
        btn.setImage(UIImage.eponymUp(name: (String(str_buttonValue.suffix(4)) + "back" + String(str_tabContent.prefix(5)) + String(str_picClearValue))), for: .normal)
        //: btn.addTarget(self, action: #selector(backBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(clickDown), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Public Event

//: extension TalkingBindPhoneVC {
extension CaptureViewController {
    //: @objc func backBtnClick() {
    @objc func clickDown() {
        //: self.navigationController?.popViewController(animated: true)
        self.navigationController?.popViewController(animated: true)
    }

    //: func func__pushToAreaCodeVC() {
    func soundVc() {
        //: let vc = TalkingAreaCodeChoiceVC()
        let vc = SmartThen()
        //: navigationController?.pushViewController(vc, animated: true)
        navigationController?.pushViewController(vc, animated: true)
        //: vc.backCountryCode = { [weak self] areaModel in
        vc.backCountryCode = { [weak self] areaModel in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.areaModel = areaModel
            self.areaModel = areaModel
            //: self.func__updateAreaView()
            self.modeParadigm()
        }
    }

    //: func func__updateAreaView() {
    func modeParadigm() {
        //: self.loginView.areaCodeLabel.text = "\(areaModel.areaName)(+\(areaModel.areaCode))"
        self.loginView.areaCodeLabel.text = "\(areaModel.areaName)(+\(areaModel.areaCode))"
        //: if areaModel.url.isEmptyString {
        if areaModel.url.isEmptyString {
            //: var imageName = areaModel.areaName.replacingOccurrences(of: " ", with: "")
            var imageName = areaModel.areaName.replacingOccurrences(of: " ", with: "")
            //: imageName = imageName.replacingOccurrences(of: ",", with: "")
            imageName = imageName.replacingOccurrences(of: ",", with: "")
            //: imageName = imageName.replacingOccurrences(of: ")", with: "")
            imageName = imageName.replacingOccurrences(of: ")", with: "")
            //: imageName = imageName.replacingOccurrences(of: "(", with: "")
            imageName = imageName.replacingOccurrences(of: "(", with: "")
            //: imageName = "area_icon_\(imageName)@2x"
            imageName = (String(str_moreToName) + String(str_clearData.prefix(7))) + "\(imageName)@2x"
            //: do {
            do {
                //: let url = SVGAEffectTool.default.getZipAreaIconPath(iconName: imageName)
                let url = ToEffectTool.default.iconName(iconName: imageName)
                //: let data = try Data(contentsOf: url)
                let data = try Data(contentsOf: url)
                //: self.loginView.areaImageView.image = UIImage(data: data)
                self.loginView.areaImageView.image = UIImage(data: data)
                //: } catch _ as Error? {
            } catch _ as Error? {
                //: self.loginView.areaImageView.image = UIImage.placeImgSquare()
                self.loginView.areaImageView.image = UIImage.becomeSection()
                //: printLog(message: "get img error")
                printLog(message: (String(str_pathToData) + str_firstName.replacingOccurrences(of: "value", with: "r")))
            }
            //: } else {
        } else {
            //: self.loginView.areaImageView.setUrlImage(urlStr: areaModel.url)
            self.loginView.areaImageView.direct(urlStr: areaModel.url)
        }
    }

    /// 获取验证码跳转
    //: func func__pushCodeView(phone: String) {
    func imagePhone(phone: String) {
        //: TalkingLoginRequestTool.req_bindPhoneGetCode(phoneStr: phone, areaStr: areaModel.areaCode, completion: { succeed, result, errorModel in
        LoginRequestTool.top(phoneStr: phone, areaStr: areaModel.areaCode, completion: { succeed, _, _ in
            //: ProgressHUD.dismiss()
            ModelReactiveCompatible.dataConverterCan()
            //: if succeed {
            if succeed {
                //: let vc = TalkingLoginBindInputCodeVC()
                let vc = TalkingRecognizerDelegate()
                //: vc.areaCodeNum = self.areaModel.areaCode
                vc.areaCodeNum = self.areaModel.areaCode
                //: vc.phoneOrEmailStr = phone
                vc.phoneOrEmailStr = phone
                //: vc.viewType = .BindPhone
                vc.viewType = .BindPhone
                //: self.navigationController?.pushViewController(vc, animated: true)
                self.navigationController?.pushViewController(vc, animated: true)
            }
            //: })
        })
    }
}

// MARK: - Layout

//: extension TalkingBindPhoneVC {
extension CaptureViewController {
    // 添加视图
    //: private func setupSubviews() {
    private func requestSubviews() {
        //: view.addSubview(backBtn)
        view.addSubview(backBtn)
        //: view.addSubview(loginView)
        view.addSubview(loginView)
        //: func__updateAreaView()
        modeParadigm()
        //: view.bringSubviewToFront(backBtn)
        view.bringSubviewToFront(backBtn)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func end() {
        //: loginView.snp.makeConstraints { make in
        loginView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
    }

    // 添加事件
    //: private func bindInteraction() {
    private func data() {
        //: loginView.commitBlock = { [weak self] (_ phone: String, _ pwd: String?) -> Void in
        loginView.commitBlock = { [weak self] (_ phone: String, _: String?) in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.func__pushCodeView(phone:phone)
            self.imagePhone(phone: phone)
        }

        //: loginView.areaCodeBlock = { [weak self] in
        loginView.areaCodeBlock = { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.func__pushToAreaCodeVC()
            self.soundVc()
        }
    }
}
