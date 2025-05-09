
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_labText:[UInt8] = [0xb1,0xb6,0xb1,0xbc,0x70,0xab,0xb7,0xac,0xad,0xba,0x82,0x71,0x68,0xb0,0xa9,0xbb,0x68,0xb6,0xb7,0xbc,0x68,0xaa,0xad,0xad,0xb6,0x68,0xb1,0xb5,0xb8,0xb4,0xad,0xb5,0xad,0xb6,0xbc,0xad,0xac]

fileprivate func viewValue(selection num: UInt8) -> UInt8 {
    let value = Int(num) + 184
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "What would you like to share with others? (Free)" :*/
fileprivate let str_viewTitle:[UInt8] = [0xb9,0x86,0x8f,0x9a,0xce,0x99,0x81,0x9b,0x82,0x8a,0xce,0x97,0x81,0x9b,0xce,0x82,0x87,0x85,0x8b,0xce,0x9a,0x81,0xce,0x9d,0x86,0x8f,0x9c,0x8b,0xce,0x99,0x87,0x9a,0x86,0xce,0x81,0x9a,0x86,0x8b,0x9c,0x9d,0xd1,0xce,0xc6,0xa8,0x9c,0x8b,0x8b,0xc7]

private func actionSelf(result num: UInt8) -> UInt8 {
    return num ^ 238
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  FreeGrantFuturismReusableView.swift
//  AbroadTalking
//
//  Created by young on 2022/9/21.
//

//: import UIKit
import UIKit

// 限制长度
//: let kFreeTextLengthLimit = 300
let kLet_viewContent = 300

//: class FreeCollectionHeaderView: UICollectionReusableView {
class FreeGrantFuturismReusableView: UICollectionReusableView {
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_labText.map{viewValue(selection: $0)}, encoding: .utf8)!)
    }

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        doingMakeSubviews()
        //: setupSubViewsConstraint()
        eigenvalueOfAMatrix()
    }

    // MARK: - Lazy load

    //: lazy var textView: YYTextView = {
    lazy var textView: YYTextView = {
        //: let tv = YYTextView()
        let tv = YYTextView()
        //: tv.textColor = UIColor.appTitleColor()
        tv.textColor = UIColor.executeTo()
        //: tv.font = UIFont.pingfangFont(type: .Regular, fontSize: 16)
        tv.font = UIFont.pingfang(type: .Regular, fontSize: 16)
        //: tv.placeholderText = "What would you like to share with others? (Free)".localized
        tv.placeholderText = String(bytes: str_viewTitle.map{actionSelf(result: $0)}, encoding: .utf8)!.localized
        //: tv.placeholderFont = UIFont.pingfangFont(type: .Regular, fontSize: 15)
        tv.placeholderFont = UIFont.pingfang(type: .Regular, fontSize: 15)
        //: tv.placeholderTextColor = UIColor.publishView()
        tv.placeholderTextColor = UIColor.publishView()
        //: if LanguageManager.shared.direction == .rightToLeft {
        if FileReactiveCompatible.shared.direction == .rightToLeft {
            //: tv.textAlignment = .right
            tv.textAlignment = .right
        }
        //: tv.delegate = self
        tv.delegate = self
        //: return tv
        return tv
        //: }()
    }()

    //: lazy var backView: UIView = {
    lazy var backView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: view.backgroundColor = .white
        view.backgroundColor = .white
        //: view.layer.cornerRadius = 16
        view.layer.cornerRadius = 16
        //: view.layer.masksToBounds = true
        view.layer.masksToBounds = true
        //: return view
        return view
        //: }()
    }()
}

// MARK: - YYTextViewDelegate

//: extension FreeCollectionHeaderView: YYTextViewDelegate {
extension FreeGrantFuturismReusableView: YYTextViewDelegate {
    //: func textView(_ textView: YYTextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
    func textView(_ textView: YYTextView, shouldChangeTextIn _: NSRange, replacementText text: String) -> Bool {
        //: let string = textView.text + text
        let string = textView.text + text
        //: guard string.count < kFreeTextLengthLimit else {
        guard string.count < kLet_viewContent else {
            //: return false
            return false
        }

        //: return true
        return true
    }
}

// MARK: - LayoutUI

//: extension FreeCollectionHeaderView {
extension FreeGrantFuturismReusableView {
    // 添加视图
    //: private func setupSubviews() {
    private func doingMakeSubviews() {
        //: self.addSubview(backView)
        self.addSubview(backView)
        //: backView.addSubview(textView)
        backView.addSubview(textView)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func eigenvalueOfAMatrix() {
        //: backView.snp.makeConstraints { make in
        backView.snp.makeConstraints { make in
            //: make.leading.equalTo(15)
            make.leading.equalTo(15)
            //: make.trailing.equalTo(-15)
            make.trailing.equalTo(-15)
            //: make.top.equalTo(6)
            make.top.equalTo(6)
            //: make.bottom.equalTo(-16)
            make.bottom.equalTo(-16)
        }
        //: textView.snp.makeConstraints { make in
        textView.snp.makeConstraints { make in
            //: make.leading.equalTo(12)
            make.leading.equalTo(12)
            //: make.trailing.equalTo(-12)
            make.trailing.equalTo(-12)
            //: make.top.equalTo(20)
            make.top.equalTo(20)
            //: make.bottom.equalTo(-20)
            make.bottom.equalTo(-20)
        }
    }
}
