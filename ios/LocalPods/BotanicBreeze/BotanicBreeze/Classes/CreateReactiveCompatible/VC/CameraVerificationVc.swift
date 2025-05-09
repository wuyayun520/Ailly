
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_contentValue:[UInt8] = [0xed,0xea,0xed,0xf0,0xac,0xe7,0xeb,0xe0,0xe1,0xf6,0xbe,0xad,0xa4,0xec,0xe5,0xf7,0xa4,0xea,0xeb,0xf0,0xa4,0xe6,0xe1,0xe1,0xea,0xa4,0xed,0xe9,0xf4,0xe8,0xe1,0xe9,0xe1,0xea,0xf0,0xe1,0xe0]

private func toWhite(leading num: UInt8) -> UInt8 {
    return num ^ 132
}

/*: "nav_back_black_nor" :*/
fileprivate let str_currentName:[Character] = ["n","a","v","_","b","a","c","k","_","b","l","a","c","k","_","n","o","r"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  CameraVerificationVc.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/8/31.
//

//: import UIKit
import UIKit

//: class TalkingFaceVerificationVC: TalkingBaseViewController {
class CameraVerificationVc: SeamViewController {
    //: var toastStr: String = ""
    var toastStr: String = ""

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
        fatalError(String(bytes: str_contentValue.map{toWhite(leading: $0)}, encoding: .utf8)!)
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.createUI()
        self.doingEffect()
        //: self.createUIConstraint()
        self.restriction()
        //: if toastStr.isEmptyString == false {
        if toastStr.isEmptyString == false {
            //: ProgressHUD.toast(toastStr)
            ModelReactiveCompatible.doMake(toastStr)
        }
    }

    // MARK: - Lazy load

    //: lazy var mainView: TalkingFaceVerificationView = {
    lazy var mainView: GiftVerificationView = {
        //: let view = TalkingFaceVerificationView()
        let view = GiftVerificationView()
        //: return view
        return view
        //: }()
    }()

    //: lazy var backBtn: UIButton = {
    lazy var backBtn: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setImage(UIImage.eponymUp(name: "nav_back_black_nor"), for: .normal)
        btn.setImage(UIImage.eponymUp(name: (String(str_currentName))), for: .normal)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingFaceVerificationVC {
extension CameraVerificationVc {
    //: @objc func backBtnClicked() {
    @objc func trunkLid() {
        //: self.naviPopback()
        self.white()
    }
}

// MARK: - UI

//: extension TalkingFaceVerificationVC {
extension CameraVerificationVc {
    //: func createUI() {
    func doingEffect() {
        //: view.addSubview(mainView)
        view.addSubview(mainView)
        //: view.addSubview(backBtn)
        view.addSubview(backBtn)
        //: backBtn.addTarget(self, action: #selector(backBtnClicked), for: .touchUpInside)
        backBtn.addTarget(self, action: #selector(trunkLid), for: .touchUpInside)
        //: mainView.btnClickBlock = { () -> Void in
        mainView.btnClickBlock = { () in
            //: let vc = TalkingVerificationExampleVC()
            let vc = ShadowExampleVc()
            //: self.navigationController?.pushViewController(vc, animated: true)
            self.navigationController?.pushViewController(vc, animated: true)
            //: return
        }
    }

    //: func createUIConstraint() {
    func restriction() {
        //: mainView.snp.makeConstraints { make in
        mainView.snp.makeConstraints { make in
            //: make.leading.trailing.top.bottom.equalTo(0)
            make.leading.trailing.top.bottom.equalTo(0)
        }
        //: backBtn.snp.makeConstraints { make in
        backBtn.snp.makeConstraints { make in
            //: make.leading.equalTo(actualWidth(w: 15))
            make.leading.equalTo(actualWidth(w: 15))
            //: make.top.equalTo(actualHeight(h: 12)+StatusBarHeight)
            make.top.equalTo(actualHeight(h: 12) + kLet_timeSenseValue)
            //: make.size.equalTo(CGSize(width: 24, height: 24))
            make.size.equalTo(CGSize(width: 24, height: 24))
        }
    }
}
