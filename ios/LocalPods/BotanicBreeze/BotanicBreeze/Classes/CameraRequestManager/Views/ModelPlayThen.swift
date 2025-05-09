
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_imageName:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "nav_back_black_nor" :*/
fileprivate let str_lineValue:String = "send load self in varnav_ba"
fileprivate let str_styleModelValue:String = "status recordlack_nor"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ModelPlayThen.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/9/14.
//

//: import UIKit
import UIKit

//: import Then
import Then

//: class SocialRankTitleView: UIView {
class ModelPlayThen: UIView {
    // MARK: Life

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.likePlayer()
        //: self.setupSubViewsConstraint()
        self.equalSound()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_imageName.reversed(), encoding: .utf8)!)
    }

    // MARK: UI

    //: lazy var backButton = UIButton().then {
    lazy var backButton = UIButton().then {
        //: let img = UIImage.eponymUp(name: "nav_back_black_nor").withRenderingMode(.alwaysTemplate)
        let img = UIImage.eponymUp(name: (String(str_lineValue.suffix(6)) + "ck_b" + String(str_styleModelValue.suffix(8)))).withRenderingMode(.alwaysTemplate)
        //: $0.setImage(img, for: .normal)
        $0.setImage(img, for: .normal)
        //: $0.tintColor = .white
        $0.tintColor = .white
        //: $0.addTarget(self, action: #selector(registerBackAction), for: .touchUpInside)
        $0.addTarget(self, action: #selector(statusComplete), for: .touchUpInside)
    }
}

// MARK: - Bind && Event

//: extension SocialRankTitleView {
extension ModelPlayThen {
    //: @objc func registerBackAction() {
    @objc func statusComplete() {
        //: currentViewController()?.navigationController?.popViewController(animated: true)
        infoController()?.navigationController?.popViewController(animated: true)
    }
}

// MARK: Layout

//: extension SocialRankTitleView {
extension ModelPlayThen {
    //: private func setupSubviews() {
    private func likePlayer() {
        //: addSubview(backButton)
        addSubview(backButton)
    }

    //: private func setupSubViewsConstraint() {
    private func equalSound() {
        //: backButton.snp.makeConstraints { make in
        backButton.snp.makeConstraints { make in
            //: make.top.equalToSuperview().offset(StatusBarHeight)
            make.top.equalToSuperview().offset(kLet_timeSenseValue)
            //: make.leading.equalToSuperview()
            make.leading.equalToSuperview()
            //: make.size.equalTo(CGSize(width: 40, height: 44))
            make.size.equalTo(CGSize(width: 40, height: 44))
        }
    }
}
