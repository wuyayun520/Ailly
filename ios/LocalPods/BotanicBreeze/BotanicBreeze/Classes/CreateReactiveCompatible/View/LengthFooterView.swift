
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_postText:[UInt8] = [0xc0,0xc5,0xc0,0xcb,0x7f,0xba,0xc6,0xbb,0xbc,0xc9,0x91,0x80,0x77,0xbf,0xb8,0xca,0x77,0xc5,0xc6,0xcb,0x77,0xb9,0xbc,0xbc,0xc5,0x77,0xc0,0xc4,0xc7,0xc3,0xbc,0xc4,0xbc,0xc5,0xcb,0xbc,0xbb]

fileprivate func valueText(translate num: UInt8) -> UInt8 {
    let value = Int(num) - 87
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "You can receive a gold coins bonus once a day while the \"Lounge plus\" subscription service is active.The time of the daily gold coins will be based on the US Eastern Time Zone." :*/
fileprivate let str_nameValue:[UInt8] = [0x2e,0x18,0x2,0x57,0x14,0x16,0x19,0x57,0x5,0x12,0x14,0x12,0x1e,0x1,0x12,0x57,0x16,0x57,0x10,0x18,0x1b,0x13,0x57,0x14,0x18,0x1e,0x19,0x4,0x57,0x15,0x18,0x19,0x2,0x4,0x57,0x18,0x19,0x14,0x12,0x57,0x16,0x57,0x13,0x16,0xe,0x57,0x0,0x1f,0x1e,0x1b,0x12,0x57,0x3,0x1f,0x12,0x57,0x55,0x3b,0x18,0x2,0x19,0x10,0x12,0x57,0x7,0x1b,0x2,0x4,0x55,0x57,0x4,0x2,0x15,0x4,0x14,0x5,0x1e,0x7,0x3,0x1e,0x18,0x19,0x57,0x4,0x12,0x5,0x1,0x1e,0x14,0x12,0x57,0x1e,0x4,0x57,0x16,0x14,0x3,0x1e,0x1,0x12,0x59,0x23,0x1f,0x12,0x57,0x3,0x1e,0x1a,0x12,0x57,0x18,0x11,0x57,0x3,0x1f,0x12,0x57,0x13,0x16,0x1e,0x1b,0xe,0x57,0x10,0x18,0x1b,0x13,0x57,0x14,0x18,0x1e,0x19,0x4,0x57,0x0,0x1e,0x1b,0x1b,0x57,0x15,0x12,0x57,0x15,0x16,0x4,0x12,0x13,0x57,0x18,0x19,0x57,0x3,0x1f,0x12,0x57,0x22,0x24,0x57,0x32,0x16,0x4,0x3,0x12,0x5,0x19,0x57,0x23,0x1e,0x1a,0x12,0x57,0x2d,0x18,0x19,0x12,0x59]

private func stateComposeHandle(manager num: UInt8) -> UInt8 {
    return num ^ 119
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  LengthFooterView.swift
//  AbroadTalking
//
//  Created by young on 2022/12/5.
//

//: import UIKit
import UIKit

//: class TalkingDailyFooterView: UICollectionReusableView {
class LengthFooterView: UICollectionReusableView {
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_postText.map{valueText(translate: $0)}, encoding: .utf8)!)
    }

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: self.setupSubviews()
        self.eraseWindow()
        //: self.setupSubViewsConstraint()
        self.equalConstraint()
    }

    // MARK: - Lazy Load

    //: private lazy var cornersView: UIView = {
    private lazy var cornersView: UIView = {
        //: let view = UIView(frame: CGRect(x: 0, y: 0, width: ScreenWidth-30, height: 20))
        let view = UIView(frame: CGRect(x: 0, y: 0, width: kLet_cameraValue - 30, height: 20))
        //: view.Corner(width: view.frame.size.width, height: view.frame.size.height, corners: [.bottomLeft, .bottomRight], cornerRadii: .init(width: 12, height: 12))
        view.showEqual(width: view.frame.size.width, height: view.frame.size.height, corners: [.bottomLeft, .bottomRight], cornerRadii: .init(width: 12, height: 12))
        //: view.backgroundColor = .white
        view.backgroundColor = .white
        //: return view
        return view
        //: }()
    }()

    //: private lazy var desLab: UILabel = {
    private lazy var desLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.text = "You can receive a gold coins bonus once a day while the \"Lounge plus\" subscription service is active.The time of the daily gold coins will be based on the US Eastern Time Zone.".localized
        lab.text = String(bytes: str_nameValue.map{stateComposeHandle(manager: $0)}, encoding: .utf8)!.localized
        //: lab.font = UIFont.outsideAllSize(fontSize: 14)
        lab.font = UIFont.outsideAllSize(fontSize: 14)
        //: lab.textColor = UIColor.publishView()
        lab.textColor = UIColor.publishView()
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: return lab
        return lab
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingDailyFooterView {
extension LengthFooterView {
    /// 获取当前视图高度
    //: static func getFooterViewHeight() -> CGFloat {
    static func strikeOut() -> CGFloat {
        //: if EqualThen.share.loginUserMode.isSignIn {
        if EqualThen.share.loginUserMode.isSignIn {
            //: return actualWidth(w: 124)
            return actualWidth(w: 124)
            //: } else {
        } else {
            //: return actualWidth(w: 200)
            return actualWidth(w: 200)
        }
    }
}

// MARK: - Layout

//: extension TalkingDailyFooterView {
extension LengthFooterView {
    // 添加视图
    //: private func setupSubviews() {
    private func eraseWindow() {
        //: self.addSubview(cornersView)
        self.addSubview(cornersView)
        //: self.addSubview(desLab)
        self.addSubview(desLab)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func equalConstraint() {
        //: desLab.snp.makeConstraints { make in
        desLab.snp.makeConstraints { make in
            //: make.top.equalTo(cornersView.snp.bottom).offset(actualWidth(w: 12))
            make.top.equalTo(cornersView.snp.bottom).offset(actualWidth(w: 12))
            //: make.leading.width.centerX.equalToSuperview()
            make.leading.width.centerX.equalToSuperview()
        }
    }
}
