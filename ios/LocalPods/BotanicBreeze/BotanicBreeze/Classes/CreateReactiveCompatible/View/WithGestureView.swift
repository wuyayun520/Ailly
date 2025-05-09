
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_managerData:[UInt8] = [0x1e,0x19,0x1e,0x3,0x5f,0x14,0x18,0x13,0x12,0x5,0x4d,0x5e,0x57,0x1f,0x16,0x4,0x57,0x19,0x18,0x3,0x57,0x15,0x12,0x12,0x19,0x57,0x1e,0x1a,0x7,0x1b,0x12,0x1a,0x12,0x19,0x3,0x12,0x13]

private func attributeGesture(title num: UInt8) -> UInt8 {
    return num ^ 119
}

/*: "Edit Title" :*/
fileprivate let str_playName:String = "Editreturn room value"

/*: "0/ :*/
fileprivate let str_roomTitle:String = "collection/"

/*: "Finish" :*/
fileprivate let str_colorText:String = "var permission title model colorFinish"

/*: "btn_delete" :*/
fileprivate let str_contentData:String = "btn_dself cell"
fileprivate let str_rawData:[Character] = ["e","l","e","t","e"]

/*: / :*/
fileprivate let str_dayData:String = "reply"

/*: "\n" :*/
fileprivate let str_onlineText:[Character] = ["\n"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  WithGestureView.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/2/15.
//

//: import UIKit
import UIKit

//: typealias TextUpload = (_ text: String) -> Void
typealias TextUpload = (_ text: String) -> Void

//: class TalkingGreetEditTextView: UIView {
class WithGestureView: UIView {
    //: var textUpload: TextUpload?
    var textUpload: TextUpload?
    //: var popView: TalkingPopView?
    var popView: NameThen?
    //: let lengthLimit = 60
    let lengthLimit = 60

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.imageHead()
        //: self.setupSubViewsConstraint()
        self.willIn()
        //: let tapGesture = UITapGestureRecognizer(target: self, action: #selector(dismissView))
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(untilDataView))
        //: self.addGestureRecognizer(tapGesture)
        self.addGestureRecognizer(tapGesture)
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_managerData.map{attributeGesture(title: $0)}, encoding: .utf8)!)
    }

    //: deinit {
    deinit {}

    // 懒加载初始化

    //: lazy var contentView: UIView = {
    lazy var contentView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: view.backgroundColor = .white
        view.backgroundColor = .white
        //: view.layer.cornerRadius = 8
        view.layer.cornerRadius = 8
        //: view.layer.masksToBounds = true
        view.layer.masksToBounds = true
        //: return view
        return view
        //: }()
    }()

    //: lazy var titleLabel: UILabel = {
    lazy var titleLabel: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = UIColor.appTitleColor()
        lab.textColor = UIColor.executeTo()
        //: lab.font = UIFont.pingfangFont(type: .Semibold, fontSize: 20)
        lab.font = UIFont.pingfang(type: .Semibold, fontSize: 20)
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: lab.text = "Edit Title".localized
        lab.text = (String(str_playName.prefix(4)) + " Title").localized
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: return lab
        return lab
        //: }()
    }()

    //: lazy var numberLB: UILabel = {
    lazy var numberLB: UILabel = {
        //: let LB = UILabel.init()
        let LB = UILabel()
        //: LB.textColor = UIColor.publishView()
        LB.textColor = UIColor.publishView()
        //: LB.font = UIFont.pingfangFont(type: .Regular, fontSize: 16)
        LB.font = UIFont.pingfang(type: .Regular, fontSize: 16)
        //: LB.text = "0/\(lengthLimit)"
        LB.text = "0/\(lengthLimit)"
        //: LB.textAlignment = .right
        LB.textAlignment = .right
        //: return LB
        return LB
        //: }()
    }()

    //: lazy var inputTView: TalkingTextView = {
    lazy var inputTView: IndexHasDelegate = {
        //: let textView = TalkingTextView()
        let textView = IndexHasDelegate()
        //: textView.placeholder = ""
        textView.placeholder = ""
        //: textView.PlaceholderInsets = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        textView.PlaceholderInsets = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        //: textView.font = UIFont.pingfangFont(type: .Regular, fontSize: 16)
        textView.font = UIFont.pingfang(type: .Regular, fontSize: 16)
        //: textView.textColor = UIColor.appTitleColor()
        textView.textColor = UIColor.executeTo()
        //: textView.textContainer.maximumNumberOfLines = 0
        textView.textContainer.maximumNumberOfLines = 0
        //: textView.textAlignment = .left
        textView.textAlignment = .left
        //: if LanguageManager.shared.direction == .rightToLeft {
        if FileReactiveCompatible.shared.direction == .rightToLeft {
            //: textView.textAlignment = .right
            textView.textAlignment = .right
        }
        //: textView.delegate = self
        textView.delegate = self
        //: textView.clipsToBounds = true
        textView.clipsToBounds = true
        //: textView.layer.cornerRadius = 4
        textView.layer.cornerRadius = 4
        //: textView.returnKeyType = UIReturnKeyType.done
        textView.returnKeyType = UIReturnKeyType.done
        //: textView.bounces = false
        textView.bounces = false
        //: textView.backgroundColor = .appBgColor()
        textView.backgroundColor = .imageColor()
        //: return textView
        return textView
        //: }()
    }()

    //: private lazy var finishBtn: UIButton = {
    private lazy var finishBtn: UIButton = {
        //: let btn = UIButton.init(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setTitle("Finish".localized, for: .normal)
        btn.setTitle((String(str_colorText.suffix(6))).localized, for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Medium, fontSize: 17)
        btn.titleLabel?.font = UIFont.pingfang(type: .Medium, fontSize: 17)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: UIColor.appGradientColor(), size: CGSize(width: 267, height: 50)), for: .normal)
        btn.setBackgroundImage(UIImage.makeBackground(colors: UIColor.appToVoice(), size: CGSize(width: 267, height: 50)), for: .normal)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.addTarget(self, action: #selector(finishBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(alongSize), for: .touchUpInside)
        //: btn.isEnabled = false
        btn.isEnabled = false
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var closeBtn: UIButton = {
    private lazy var closeBtn: UIButton = {
        //: let btn = UIButton.init(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setImage(UIImage.eponymUp(name: "btn_delete"), for: .normal)
        btn.setImage(UIImage.eponymUp(name: (String(str_contentData.prefix(5)) + String(str_rawData))), for: .normal)
        //: btn.addTarget(self, action: #selector(closeBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(conversation), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

//: extension TalkingGreetEditTextView {
extension WithGestureView {
    //: @objc func dismissView() {
    @objc func untilDataView() {}

    //: @objc func finishBtnClick() {
    @objc func alongSize() {
        //: dismiss()
        addView()
        //: if textUpload != nil {
        if textUpload != nil {
            //: textUpload!(inputTView.text)
            textUpload!(inputTView.text)
        }
    }

    //: @objc func closeBtnClick() {
    @objc func conversation() {
        //: dismiss()
        addView()
    }

    //: func show() {
    func singingVoiceShow() {
        //: popView = TalkingPopView.init(frame: UIScreen.main.bounds)
        popView = NameThen(frame: UIScreen.main.bounds)
        //: popView?.initWithView(view: self)
        popView?.observe(view: self)
        //: popView?.showInView(view: MacroDefine.getWindow())
        popView?.shackUp(view: UserMacroDefine.toUp())
    }

    //: func dismiss() {
    func addView() {
        //: popView?.dismissView()
        popView?.big()
        //: popView = nil
        popView = nil
    }
}

// MARK: - UITextViewDelegate

//: extension TalkingGreetEditTextView: UITextViewDelegate {
extension WithGestureView: UITextViewDelegate {
    //: public func textViewDidChange(_ textView: UITextView) {
    public func textViewDidChange(_ textView: UITextView) {
        //: if textView.text.count>0 {
        if textView.text.count > 0 {
            //: finishBtn.isEnabled = true
            finishBtn.isEnabled = true
            //: } else {
        } else {
            //: finishBtn.isEnabled = false
            finishBtn.isEnabled = false
        }
        //: if textView.text.count > lengthLimit {
        if textView.text.count > lengthLimit {
            // 获得已输出字数与正输入字母数
            //: let selectRange = textView.markedTextRange
            let selectRange = textView.markedTextRange

            // 获取高亮部分 － 如果有联想词则解包成功
            //: if let selectRange = selectRange {
            if let selectRange = selectRange {
                //: let position =  textView.position(from: (selectRange.start), offset: 0)
                let position = textView.position(from: selectRange.start, offset: 0)
                //: if (position != nil) {
                if position != nil {
                    //: return
                    return
                }
            }

            //: let textContent = textView.text ?? ""
            let textContent = textView.text ?? ""
            //: let textNum = textContent.count
            let textNum = textContent.count

            // 截取
            //: if textNum > lengthLimit && lengthLimit > 0 {
            if textNum > lengthLimit && lengthLimit > 0 {
                //: textView.text = string_prefix(index: lengthLimit, text: textContent)
                textView.text = playTo(index: lengthLimit, text: textContent)
            }
        }
        //: numberLB.text =  "\(textView.text.count)/\(lengthLimit)"
        numberLB.text = "\(textView.text.count)/\(lengthLimit)"
    }

    //: public func textViewShouldBeginEditing(_ textView: UITextView) -> Bool {
    public func textViewShouldBeginEditing(_: UITextView) -> Bool {
        //: numberLB.isHidden = false
        numberLB.isHidden = false
        //: return true
        return true
    }

    //: public func textViewDidEndEditing(_ textView: UITextView) {
    public func textViewDidEndEditing(_ textView: UITextView) {
        //: if textView.text.isEmpty {
        if textView.text.isEmpty {
            //: numberLB.isHidden = false
            numberLB.isHidden = false
            //: } else {
        } else {
            //: numberLB.isHidden = true
            numberLB.isHidden = true
        }
    }

    //: public func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
    public func textView(_ textView: UITextView, shouldChangeTextIn _: NSRange, replacementText text: String) -> Bool {
        //: if textView.returnKeyType == .done {
        if textView.returnKeyType == .done {
            //: if text == "\n" {
            if text == "\n" {
                //: textView.resignFirstResponder()
                textView.resignFirstResponder()
            }
            //: return true
            return true
        }
        //: return true
        return true
    }

    // 字符串的截取 从头截取到指定index
    //: private func string_prefix(index: Int, text: String) -> String {
    private func playTo(index: Int, text: String) -> String {
        //: if text.count <= index {
        if text.count <= index {
            //: return text
            return text
            //: } else {
        } else {
            //: let index = text.index(text.startIndex, offsetBy: index)
            let index = text.index(text.startIndex, offsetBy: index)
            //: let str = text.prefix(upTo: index)
            let str = text.prefix(upTo: index)
            //: return String(str)
            return String(str)
        }
    }
}

//: extension TalkingGreetEditTextView {
extension WithGestureView {
    // 添加视图
    //: private func setupSubviews() {
    private func imageHead() {
        //: self.addSubview(contentView)
        self.addSubview(contentView)
        //: contentView.addSubview(titleLabel)
        contentView.addSubview(titleLabel)
        //: contentView.addSubview(closeBtn)
        contentView.addSubview(closeBtn)
        //: contentView.addSubview(inputTView)
        contentView.addSubview(inputTView)
        //: contentView.addSubview(finishBtn)
        contentView.addSubview(finishBtn)
        //: contentView.addSubview(numberLB)
        contentView.addSubview(numberLB)
        //: contentView.bringSubviewToFront(numberLB)
        contentView.bringSubviewToFront(numberLB)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func willIn() {
        //: contentView.snp.makeConstraints { make in
        contentView.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.top.equalTo(100)
            make.top.equalTo(100)
            //: make.size.equalTo(CGSize.init(width: actualWidth(w: 297), height: actualWidth(w: 320)))
            make.size.equalTo(CGSize(width: actualWidth(w: 297), height: actualWidth(w: 320)))
        }

        //: closeBtn.snp.makeConstraints { make in
        closeBtn.snp.makeConstraints { make in
            //: make.top.equalTo(13)
            make.top.equalTo(13)
            //: make.trailing.equalTo(-13)
            make.trailing.equalTo(-13)
            //: make.size.equalTo(CGSize.init(width: 18, height: 18))
            make.size.equalTo(CGSize(width: 18, height: 18))
        }

        //: titleLabel.snp.makeConstraints { make in
        titleLabel.snp.makeConstraints { make in
            //: make.top.equalTo(30)
            make.top.equalTo(30)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }

        //: finishBtn.snp.makeConstraints { make in
        finishBtn.snp.makeConstraints { make in
            //: make.bottom.equalTo(-18)
            make.bottom.equalTo(-18)
            //: make.leading.equalTo(20)
            make.leading.equalTo(20)
            //: make.trailing.equalTo(-20)
            make.trailing.equalTo(-20)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
        }

        //: inputTView.snp.makeConstraints { make in
        inputTView.snp.makeConstraints { make in
            //: make.top.equalTo(titleLabel.snp.bottom).offset(14)
            make.top.equalTo(titleLabel.snp.bottom).offset(14)
            //: make.leading.equalTo(20)
            make.leading.equalTo(20)
            //: make.trailing.equalTo(-20)
            make.trailing.equalTo(-20)
            //: make.bottom.equalTo(finishBtn.snp.top).offset(-24)
            make.bottom.equalTo(finishBtn.snp.top).offset(-24)
        }

        //: numberLB.snp.makeConstraints { make in
        numberLB.snp.makeConstraints { make in
            //: make.trailing.equalTo(inputTView.snp.trailing).offset(-16)
            make.trailing.equalTo(inputTView.snp.trailing).offset(-16)
            //: make.height.equalTo(20)
            make.height.equalTo(20)
            //: make.bottom.equalTo(inputTView.snp.bottom).offset(-12)
            make.bottom.equalTo(inputTView.snp.bottom).offset(-12)
        }
    }
}
