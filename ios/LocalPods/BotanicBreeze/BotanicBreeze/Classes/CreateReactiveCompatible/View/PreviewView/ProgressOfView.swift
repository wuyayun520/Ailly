
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_liveContent:[UInt8] = [0x32,0x35,0x32,0x2f,0x73,0x38,0x34,0x3f,0x3e,0x29,0x61,0x72,0x7b,0x33,0x3a,0x28,0x7b,0x35,0x34,0x2f,0x7b,0x39,0x3e,0x3e,0x35,0x7b,0x32,0x36,0x2b,0x37,0x3e,0x36,0x3e,0x35,0x2f,0x3e,0x3f]

private func centerTemp(black num: UInt8) -> UInt8 {
    return num ^ 91
}

/*: "nav_back_black_nor" :*/
fileprivate let str_statuteTitle:String = "nav_btouch log text make"
fileprivate let str_tabTitle:String = "third print edgeack_b"
fileprivate let str_userName:String = "ltitlek"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ProgressOfView.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/9/12.
//

//: import UIKit
import UIKit

//: import Then
import Then

//: class TPreviewNaviBarView: UIView {
class ProgressOfView: UIView {
    //: var uid = ""
    var uid = ""
    //: var previewSaveBlock: (() -> Void)?
    var previewSaveBlock: (() -> Void)?
    //: var tapHeadPicBlock: (() -> Void)?
    var tapHeadPicBlock: (() -> Void)?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.titleUpPin()
        //: self.setupSubViewsConstraint()
        self.swaddlingClothesData()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_liveContent.map{centerTemp(black: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy load

    //: lazy var backButton = UIButton().then {
    lazy var backButton = UIButton().then {
        //: let img = UIImage(named: "nav_back_black_nor")?.withRenderingMode(.alwaysTemplate)
        let img = UIImage(named: (String(str_statuteTitle.prefix(5)) + String(str_tabTitle.suffix(5)) + str_userName.replacingOccurrences(of: "title", with: "ac") + "_nor"))?.withRenderingMode(.alwaysTemplate)
        //: $0.setImage(img, for: .normal)
        $0.setImage(img, for: .normal)
        //: $0.tintColor = .white
        $0.tintColor = .white
        //: $0.addTarget(self, action: #selector(registerBackAction), for: .touchUpInside)
        $0.addTarget(self, action: #selector(equalTop), for: .touchUpInside)
    }
}

// MARK: - Bind && Event

//: extension TPreviewNaviBarView {
extension ProgressOfView {
    //: @objc func registerBackAction() {
    @objc func equalTop() {
        //: EditTextThen.share.func__getCurrentActivityVC()?.navigationController!.popViewController(animated: true)
        EditTextThen.share.addGet()?.navigationController!.popViewController(animated: true)
    }

    //: @objc func registerSaveAction() {
    @objc func patent() {
        // 相册权限
    }

    //: @objc func tapUserHeadPic() {
    @objc func nextTo() {}
}

// MARK: Layout

//: extension TPreviewNaviBarView {
extension ProgressOfView {
    //: private func setupSubviews() {
    private func titleUpPin() {
        //: addSubview(backButton)
        addSubview(backButton)
    }

    //: private func setupSubViewsConstraint() {
    private func swaddlingClothesData() {
        //: backButton.snp.makeConstraints { make in
        backButton.snp.makeConstraints { make in
            //: make.leading.equalTo(0)
            make.leading.equalTo(0)
            //: make.top.equalTo(StatusBarHeight)
            make.top.equalTo(kLet_timeSenseValue)
            //: make.size.equalTo(CGSize(width: 40, height: NavigationBarHeight))
            make.size.equalTo(CGSize(width: 40, height: kLet_deviceRecordValue))
        }
    }
}
