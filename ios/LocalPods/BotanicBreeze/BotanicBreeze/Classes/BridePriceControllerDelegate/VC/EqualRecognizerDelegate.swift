
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_countText:[UInt8] = [0xc6,0xc1,0xc6,0xdb,0x87,0xcc,0xc0,0xcb,0xca,0xdd,0x95,0x86,0x8f,0xc7,0xce,0xdc,0x8f,0xc1,0xc0,0xdb,0x8f,0xcd,0xca,0xca,0xc1,0x8f,0xc6,0xc2,0xdf,0xc3,0xca,0xc2,0xca,0xc1,0xdb,0xca,0xcb]

private func typePath(execute num: UInt8) -> UInt8 {
    return num ^ 175
}

/*: "apple 授权失败，请稍后再试" :*/
fileprivate let str_likeUserTitle:String = "inputpl"
fileprivate let str_nameTitle:String = "败"
fileprivate let str_modelData:String = "，\u{8bf7}稍后再试"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  EqualRecognizerDelegate.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/1/20.
//

//: import UIKit
import UIKit

//: class TalkingLoginMainViewController: TalkingBaseViewController {
class EqualRecognizerDelegate: SeamViewController {
    //: init() {
    init() {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
        //: hideNavi = true
        hideNavi = true
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_countText.map{typePath(execute: $0)}, encoding: .utf8)!)
    }

    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
        //: navigationController?.isNavigationBarHidden = hideNavi
        navigationController?.isNavigationBarHidden = hideNavi
        //: tabBarController?.tabBar.isHidden = true
        tabBarController?.tabBar.isHidden = true
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.setupSubviews()
        self.cellSetup()
        //: self.setupSubViewsConstraint()
        self.fail()
        //: self.bindInteraction()
        self.imageConstraint()
    }

    //: deinit {
    deinit {}

    // MARK: - Lazy Load

    //: lazy var loginMainView: TalkingLoginMainView = {
    lazy var loginMainView: NameReactiveCompatible = {
        //: let loginView = TalkingLoginMainView.init()
        let loginView = NameReactiveCompatible()
        //: return loginView
        return loginView
        //: }()
    }()
}

// MARK: - Public Event

//: extension TalkingLoginMainViewController {
extension EqualRecognizerDelegate {
    //: func req_thirdLogin(_ type: LoginType) {
    func awakeProgram(_ type: VariantSchemaConvertible) {
        //: switch type {
        switch type {
        //: case .AppleLogin:
        case .AppleLogin:
            //: AppleLoginManager.shared.login { dict in
            BridePriceControllerDelegate.shared.save { dict in
                //: guard let dict = dict else {
                guard let dict = dict else {
                    //: printLog(message: "apple 授权失败，请稍后再试")
                    printLog(message: (str_likeUserTitle.replacingOccurrences(of: "input", with: "ap") + "e \u{6388}权失" + str_nameTitle.capitalized + str_modelData))
                    //: return
                    return
                }
                //: ProgressHUD.show()
                ModelReactiveCompatible.fromTarget()
                //: TalkingLoginRequestTool.req_thirdLogin(type: .AppleLogin, params: dict) { succeed, result, errorModel in
                LoginRequestTool.act(type: .AppleLogin, params: dict) { _, _, _ in
                    //: ProgressHUD.dismiss()
                    ModelReactiveCompatible.dataConverterCan()
                }
            }
        //: case .PhoneLogin:
        case .PhoneLogin:
            //: let vc = TalkingLoginViewController.init(type: .LoginPhone)
            let vc = MasterKeyViewController(type: .LoginPhone)
            //: self.navigationController?.pushViewController(vc, animated: true)
            self.navigationController?.pushViewController(vc, animated: true)

        //: case .EmailLogin:
        case .EmailLogin:
            //: let vc = TalkingLoginViewController.init(type: .LoginEmail)
            let vc = MasterKeyViewController(type: .LoginEmail)
            //: navigationController?.pushViewController(vc, animated: true)
            navigationController?.pushViewController(vc, animated: true)

        //: default:
        default:
            //: break
            break
        }
    }
}

// MARK: - Privete Event

//: extension TalkingLoginMainViewController {
extension EqualRecognizerDelegate {
    //: func loginAction(type: LoginType) {
    func name(type: VariantSchemaConvertible) {
        //: LoginPrivacyPolicyView().showView {
        LoginDataWeltanschauungPolicyView().present {
            //: self.req_thirdLogin(type)
            self.awakeProgram(type)
        }
    }
}

// MARK: - Layout

//: extension TalkingLoginMainViewController {
extension EqualRecognizerDelegate {
    // 添加视图
    //: private func setupSubviews() {
    private func cellSetup() {
        //: view.addSubview(loginMainView)
        view.addSubview(loginMainView)
        //: loginMainView.btnBlock = {[weak self] (type: LoginType) in
        loginMainView.btnBlock = { [weak self] (type: VariantSchemaConvertible) in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.loginAction(type: type)
            self.name(type: type)
            //: return
        }
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func fail() {
        //: loginMainView.snp.makeConstraints { make in
        loginMainView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
    }

    // 添加事件
    //: private func bindInteraction() {
    private func imageConstraint() {}
}
