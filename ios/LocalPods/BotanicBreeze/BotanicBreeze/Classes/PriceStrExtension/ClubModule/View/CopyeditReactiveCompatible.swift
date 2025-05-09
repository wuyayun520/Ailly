
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_dataValue:[UInt8] = [0xc5,0xc2,0xc5,0xd8,0x84,0xcf,0xc3,0xc8,0xc9,0xde,0x96,0x85,0x8c,0xc4,0xcd,0xdf,0x8c,0xc2,0xc3,0xd8,0x8c,0xce,0xc9,0xc9,0xc2,0x8c,0xc5,0xc1,0xdc,0xc0,0xc9,0xc1,0xc9,0xc2,0xd8,0xc9,0xc8]

/*: "iv_match_vc" :*/
fileprivate let str_valueInputData:[Character] = ["i","v","_","m","a","t","c","h"]
fileprivate let str_addText:[Character] = ["_","v","c"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  CopyeditReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/8/11.
//

//: import UIKit
import UIKit

//: class TalkingClubDetentionPopUpView: UIView {
class CopyeditReactiveCompatible: UIView {
    //: var popView: TalkingPopView?
    var popView: NameThen?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.theoreticalAccount()
        //: self.setupSubViewsConstraint()
        self.speck()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_dataValue.map{$0^172}, encoding: .utf8)!)
    }

    //: lazy var backIcon: UIImageView = {
    lazy var backIcon: UIImageView = {
        //: let iamg = UIImageView.init()
        let iamg = UIImageView()
        //: iamg.image = UIImage.eponymUp(name: "iv_match_vc")
        iamg.image = UIImage.eponymUp(name: (String(str_valueInputData) + String(str_addText)))
        //: iamg.contentMode = .scaleAspectFill
        iamg.contentMode = .scaleAspectFill
        //: iamg.isUserInteractionEnabled = true
        iamg.isUserInteractionEnabled = true
        //: return iamg
        return iamg
        //: }()
    }()

    //: lazy var backBtn: UIButton = {
    lazy var backBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.addTarget(self, action: #selector(backBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(beginLabel), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

//: extension TalkingClubDetentionPopUpView {
extension CopyeditReactiveCompatible {
    //: func show() {
    func nameTo() {
        //: popView = TalkingPopView.init(frame: UIScreen.main.bounds)
        popView = NameThen(frame: UIScreen.main.bounds)
        //: self.frame = CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight)
        self.frame = CGRect(x: 0, y: 0, width: kLet_cameraValue, height: kLet_clickData)
        //: popView?.initWithView(view: self)
        popView?.observe(view: self)
        //: popView?.showInView(view: MacroDefine.getWindow())
        popView?.shackUp(view: UserMacroDefine.toUp())
        //: popView?.isRemoveTapGes = true
        popView?.isRemoveTapGes = true
    }

    //: @objc func backBtnClick() {
    @objc func beginLabel() {
        //: popView?.dismissView()
        popView?.big()
        //: popView = nil
        popView = nil
    }
}

//: extension TalkingClubDetentionPopUpView {
extension CopyeditReactiveCompatible {
    // 添加视图
    //: private func setupSubviews() {
    private func theoreticalAccount() {
        //: self.addSubview(backIcon)
        self.addSubview(backIcon)
        //: backIcon.addSubview(backBtn)
        backIcon.addSubview(backBtn)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func speck() {
        //: backIcon.snp.makeConstraints { make in
        backIcon.snp.makeConstraints { make in
            //: make.bottom.equalTo(-124)
            make.bottom.equalTo(-124)
            //: make.leading.equalTo(39)
            make.leading.equalTo(39)
            //: make.trailing.equalTo(-39)
            make.trailing.equalTo(-39)
            //: make.height.equalTo(378)
            make.height.equalTo(378)
        }
        //: backBtn.snp.makeConstraints { make in
        backBtn.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
    }
}
