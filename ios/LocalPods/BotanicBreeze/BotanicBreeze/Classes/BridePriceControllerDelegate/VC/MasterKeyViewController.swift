
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_userPathName:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "btn_back_white" :*/
fileprivate let str_factorValue:[Character] = ["b","t","n","_","b"]
fileprivate let str_viewText:[Character] = ["a","c","k","_","w","h","i","t","e"]

/*: (+ :*/
fileprivate let str_statusActualTitle:[Character] = ["(","+"]

/*: )" :*/
fileprivate let str_labelData:[Character] = [")"]

/*: "area_icon_ :*/
fileprivate let str_hiddenText:[Character] = ["a","r","e","a","_"]
fileprivate let str_viewValue:String = "today app make with lefticon_"

/*: @2x" :*/
fileprivate let str_intervalData:[Character] = ["@","2","x"]

/*: "get img error" :*/
fileprivate let str_equalName:String = "add self at hideget im"
fileprivate let str_addViewColorData:[Character] = ["g"]
fileprivate let str_firstTitle:[Character] = [" ","e","r","r","o","r"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  MasterKeyViewController.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/1/20.
//

//: import UIKit
import UIKit

//: class TalkingLoginViewController: TalkingBaseViewController {
class MasterKeyViewController: SeamViewController {
    //: private var areaModel = TalkingLocationTool.share.getDefaltCountry()
    private var areaModel = RawReactiveCompatible.share.whish()

    //: private var phoneOrEmailStr = ""
    private var phoneOrEmailStr = ""
    //: private var password: String?
    private var password: String?

    //: public var loginType: TalkingLoginVCType?
    public var loginType: GiftLoginType?

    //: init(type: TalkingLoginVCType) {
    init(type: GiftLoginType) {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
        //: loginType = type
        loginType = type
    }

    //: init() {
    init() {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_userPathName.reversed(), encoding: .utf8)!)
    }

    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
    }

    //: override func viewDidAppear(_ animated: Bool) {
    override func viewDidAppear(_ animated: Bool) {
        //: super.viewDidAppear(animated)
        super.viewDidAppear(animated)
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.setupSubviews()
        self.image()
        //: self.setupSubViewsConstraint()
        self.beyondRoomQuantityeraction()
        //: self.bindInteraction()
        self.button()
    }

    //: deinit {
    deinit {}

    //: lazy var loginView: TalkingLoginView = {
    lazy var loginView: IndexFieldDelegate = {
        //: let loginView = TalkingLoginView.init(type: self.loginType!)
        let loginView = IndexFieldDelegate(type: self.loginType!)
        //: return loginView
        return loginView
        //: }()
    }()

    //: lazy var backBtn: UIButton = {
    lazy var backBtn: UIButton = {
        //: let btn = UIButton.init(frame: CGRect(x: 6, y: StatusBarHeight, width: 44, height: 44))
        let btn = UIButton(frame: CGRect(x: 6, y: kLet_timeSenseValue, width: 44, height: 44))
        //: btn.setImage(UIImage.eponymUp(name: "btn_back_white"), for: .normal)
        btn.setImage(UIImage.eponymUp(name: (String(str_factorValue) + String(str_viewText))), for: .normal)
        //: btn.addTarget(self, action: #selector(backBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(dorsalVertebra), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Public Event

//: extension TalkingLoginViewController {
extension MasterKeyViewController {
    //: @objc func backBtnClick() {
    @objc func dorsalVertebra() {
        //: self.navigationController?.popViewController(animated: true)
        self.navigationController?.popViewController(animated: true)
    }

    //: func func__getPhoneCodeAction() {
    func equal() {
        //: view.endEditing(true)
        view.endEditing(true)
        //: ProgressHUD.show()
        ModelReactiveCompatible.fromTarget()
        //: if self.loginType == .LoginPhone {
        if self.loginType == .LoginPhone {
            //: TalkingLoginRequestTool.req_getPhoneCode(phoneStr: phoneOrEmailStr, areaStr: areaModel.areaCode, completion: { succeed, result, errorModel in
            LoginRequestTool.recordCompletion(phoneStr: phoneOrEmailStr, areaStr: areaModel.areaCode, completion: { succeed, _, _ in
                //: ProgressHUD.dismiss()
                ModelReactiveCompatible.dataConverterCan()
                //: if succeed {
                if succeed {
                    //: self.func__pushToPhoneCodeVC()
                    self.addTable()
                }
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
                    //: self.func__pushToPhoneCodeVC()
                    self.addTable()
                }
            }
        }
    }

    /// 密码登录
    //: private func func__passwordLogin() {
    private func start() {
        //: view.endEditing(true)
        view.endEditing(true)
        //: guard let pwd = password else { return }
        guard let pwd = password else { return }
        //: ProgressHUD.show()
        ModelReactiveCompatible.fromTarget()
        //: if self.loginType == .LoginPhone {
        if self.loginType == .LoginPhone {
            //: TalkingLoginRequestTool.req_passwordLogin(phoneStr: phoneOrEmailStr, areaStr: areaModel.areaCode, pwd: pwd) { succeed, result, errorModel in
            LoginRequestTool.up(phoneStr: phoneOrEmailStr, areaStr: areaModel.areaCode, pwd: pwd) { _, _, _ in
                //: ProgressHUD.dismiss()
                ModelReactiveCompatible.dataConverterCan()
            }
            //: }else{
        } else {
            //: TalkingLoginRequestTool.req_passwordEmailLogin(emailStr: phoneOrEmailStr, pwd: pwd) { succeed, result, errorModel in
            LoginRequestTool.location(emailStr: phoneOrEmailStr, pwd: pwd) { _, _, _ in
                //: ProgressHUD.dismiss()
                ModelReactiveCompatible.dataConverterCan()
            }
        }
    }

    //: func func__pushToAreaCodeVC() {
    func push() {
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
            self.tvEqual()
        }
    }

    //: func func__pushToPhoneCodeVC() {
    func addTable() {
        //: let vc = TalkingLoginCodeVC(type: self.loginType!)
        let vc = CellReactiveCompatible(type: self.loginType!)
        //: if self.loginType == .LoginPhone {
        if self.loginType == .LoginPhone {
            //: vc.areaCodeNum = areaModel.areaCode
            vc.areaCodeNum = areaModel.areaCode
        }
        //: vc.phoneOrEmailStr = phoneOrEmailStr
        vc.phoneOrEmailStr = phoneOrEmailStr
        //: navigationController?.pushViewController(vc, animated: true)
        navigationController?.pushViewController(vc, animated: true)
    }

    //: func func__updateAreaView() {
    func tvEqual() {
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
            imageName = (String(str_hiddenText) + String(str_viewValue.suffix(5))) + "\(imageName)@2x"
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
                printLog(message: (String(str_equalName.suffix(6)) + String(str_addViewColorData) + String(str_firstTitle)))
            }
            //: } else {
        } else {
            //: self.loginView.areaImageView.setUrlImage(urlStr: areaModel.url)
            self.loginView.areaImageView.direct(urlStr: areaModel.url)
        }
    }
}

// MARK: - Layout

//: extension TalkingLoginViewController {
extension MasterKeyViewController {
    // 添加视图
    //: private func setupSubviews() {
    private func image() {
        //: view.addSubview(backBtn)
        view.addSubview(backBtn)
        //: view.addSubview(loginView)
        view.addSubview(loginView)
        //: func__updateAreaView()
        tvEqual()
        //: view.bringSubviewToFront(backBtn)
        view.bringSubviewToFront(backBtn)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func beyondRoomQuantityeraction() {
        //: loginView.snp.makeConstraints { make in
        loginView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
    }

    // 添加事件
    //: private func bindInteraction() {
    private func button() {
        //: loginView.commitBlock = { [weak self] (_ phone: String, _ pwd: String?) -> Void in
        loginView.commitBlock = { [weak self] (_ phone: String, _ pwd: String?) in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.phoneOrEmailStr = phone
            self.phoneOrEmailStr = phone
            //: self.password = pwd
            self.password = pwd
            //: if pwd?.count ?? 0 > 0 {
            if pwd?.count ?? 0 > 0 { // pwd
                //: self.func__passwordLogin()
                self.start()
                //: } else {
            } else { // OTP
                //: self.func__getPhoneCodeAction()
                self.equal()
            }
        }

        //: loginView.areaCodeBlock = { [weak self] in
        loginView.areaCodeBlock = { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.func__pushToAreaCodeVC()
            self.push()
        }

        //: addTapGestureRecognizer()
        compound()
    }
}
