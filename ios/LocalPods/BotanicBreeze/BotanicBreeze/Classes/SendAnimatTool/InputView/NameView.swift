
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_indicatorName:[UInt8] = [0xf1,0xf6,0xf1,0xfc,0xb0,0xeb,0xf7,0xec,0xed,0xfa,0xc2,0xb1,0xa8,0xf0,0xe9,0xfb,0xa8,0xf6,0xf7,0xfc,0xa8,0xea,0xed,0xed,0xf6,0xa8,0xf1,0xf5,0xf8,0xf4,0xed,0xf5,0xed,0xf6,0xfc,0xed,0xec]

fileprivate func centerShow(location num: UInt8) -> UInt8 {
    let value = Int(num) - 136
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "Translation" :*/
fileprivate let str_mapName:String = "image ifTransl"

/*: "icon_translation_close" :*/
fileprivate let str_videoData:String = "icon_at normal error line"
fileprivate let str_tableData:String = "if file old up selfation_"

/*: "Send" :*/
fileprivate let str_allValue:String = "up session make throughSend"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  NameView.swift
//  AbroadTalking
//
//  Created by young on 2023/7/4.
//

//: import UIKit
import UIKit

//: class TalkingTranslationResultView: UIView {
class NameView: UIView {
    // 翻译结果发送Block
    //: var sendBlock: ((_ text: String) -> Void)?
    var sendBlock: ((_ text: String) -> Void)?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: backgroundColor = .white
        backgroundColor = .white
        //: setupSubviews()
        colorModel()
        //: setupSubViewsConstraint()
        stuffName()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_indicatorName.map{centerShow(location: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var titleLab: UILabel = {
    private lazy var titleLab: UILabel = {
        //: let label = UILabel()
        let label = UILabel()
        //: label.font = .pingfangFont(type: .Medium, fontSize: 16)
        label.font = .pingfang(type: .Medium, fontSize: 16)
        //: label.textColor = .appTitleColor()
        label.textColor = .executeTo()
        //: label.text = "Translation".localized
        label.text = (String(str_mapName.suffix(6)) + "ation").localized
        //: return label
        return label
        //: }()
    }()

    //: private lazy var closeBtn: UIButton = {
    private lazy var closeBtn: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: let img = UIImage.eponymUp(name: "icon_translation_close")
        let img = UIImage.eponymUp(name: (String(str_videoData.prefix(5)) + "transl" + String(str_tableData.suffix(6)) + "close"))
        //: btn.setImage(img, for: .normal)
        btn.setImage(img, for: .normal)
        //: btn.addTarget(self, action: #selector(closeButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(clickView), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var sendBtn: UIButton = {
    private lazy var sendBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.titleLabel?.font = UIFont.pingfangWithDiameter(fontSize: 16)
        btn.titleLabel?.font = UIFont.pingfangWithDiameter(fontSize: 16)
        //: btn .setTitle("Send".localized, for: .normal)
        btn.setTitle((String(str_allValue.suffix(4))).localized, for: .normal)
        //: btn .setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: let size = CGSize(width: 66, height: 30)
        let size = CGSize(width: 66, height: 30)
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: UIColor.appGradientColor(), size: size), for: .normal)
        btn.setBackgroundImage(UIImage.makeBackground(colors: UIColor.appToVoice(), size: size), for: .normal)
        //: btn.layer.cornerRadius = 15
        btn.layer.cornerRadius = 15
        //: btn.layer.masksToBounds = true
        btn.layer.masksToBounds = true
        //: btn.addTarget(self, action: #selector(sendButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(concatenate), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var textView: UITextView = {
    private lazy var textView: UITextView = {
        //: let v = UITextView()
        let v = UITextView()
        //: v.font = UIFont.outsideAllSize(fontSize: 16)
        v.font = UIFont.outsideAllSize(fontSize: 16)
        //: v.textColor = .appTitleColor()
        v.textColor = .executeTo()
        //: v.isEditable = false
        v.isEditable = false
        //: return v
        return v
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingTranslationResultView {
extension NameView {
    /// 展示翻译结果视图
    /// - Parameter text: 翻译内容
    //: func showTranslationResultView(_ text: String) {
    func bottomView(_ text: String) {
        //: guard text.count > 0 else { return }
        guard text.count > 0 else { return }
        //: self.isHidden = false
        self.isHidden = false
        //: self.textView.text = text
        self.textView.text = text
    }

    /// 关闭按钮点击事件
    //: @objc private func closeButtonClick() {
    @objc private func clickView() {
        //: self.isHidden = true
        self.isHidden = true
    }

    /// 发送按钮点击事件
    //: @objc private func sendButtonClick() {
    @objc private func concatenate() {
        //: closeButtonClick()
        clickView()
        //: self.sendBlock?(self.textView.text)
        self.sendBlock?(self.textView.text)
    }
}

// MARK: - Layout

//: extension TalkingTranslationResultView {
extension NameView {
    /// 添加视图
    //: private func setupSubviews() {
    private func colorModel() {
        //: self.addSubview(titleLab)
        self.addSubview(titleLab)
        //: self.addSubview(closeBtn)
        self.addSubview(closeBtn)
        //: self.addSubview(sendBtn)
        self.addSubview(sendBtn)
        //: self.addSubview(textView)
        self.addSubview(textView)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func stuffName() {
        //: titleLab.snp.makeConstraints { make in
        titleLab.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.top.equalTo(18)
            make.top.equalTo(18)
        }

        //: closeBtn.snp.makeConstraints { make in
        closeBtn.snp.makeConstraints { make in
            //: make.leading.equalTo(5)
            make.leading.equalTo(5)
            //: make.centerY.equalTo(titleLab)
            make.centerY.equalTo(titleLab)
            //: make.width.height.equalTo(40)
            make.width.height.equalTo(40)
        }

        //: sendBtn.snp.makeConstraints { make in
        sendBtn.snp.makeConstraints { make in
            //: make.trailing.equalTo(-15)
            make.trailing.equalTo(-15)
            //: make.centerY.equalTo(titleLab)
            make.centerY.equalTo(titleLab)
            //: make.size.equalTo(CGSize(width: 66, height: 30))
            make.size.equalTo(CGSize(width: 66, height: 30))
        }

        //: textView.snp.makeConstraints { make in
        textView.snp.makeConstraints { make in
            //: make.top.equalTo(sendBtn.snp.bottom).offset(20)
            make.top.equalTo(sendBtn.snp.bottom).offset(20)
            //: make.leading.equalTo(40)
            make.leading.equalTo(40)
            //: make.trailing.equalTo(-40)
            make.trailing.equalTo(-40)
            //: make.bottom.equalToSuperview().offset(-10-kDeviceSafeBottomHeight)
            make.bottom.equalToSuperview().offset(-10 - kLet_nextData)
        }
    }
}
