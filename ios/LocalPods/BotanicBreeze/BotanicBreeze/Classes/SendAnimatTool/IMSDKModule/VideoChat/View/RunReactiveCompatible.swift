
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_videoData:[UInt8] = [0x1e,0x19,0x1e,0x3,0x5f,0x14,0x18,0x13,0x12,0x5,0x4d,0x5e,0x57,0x1f,0x16,0x4,0x57,0x19,0x18,0x3,0x57,0x15,0x12,0x12,0x19,0x57,0x1e,0x1a,0x7,0x1b,0x12,0x1a,0x12,0x19,0x3,0x12,0x13]

private func controlEachOutside(social num: UInt8) -> UInt8 {
    return num ^ 119
}

/*: "btn_chat_send_nor" :*/
fileprivate let str_allowValue:String = "raw table aboutbtn_"
fileprivate let str_timeText:String = "end_noself dismiss icon image touch"
fileprivate let str_showInfoTitle:String = "pop"

/*: "btn_chat_send_dis" :*/
fileprivate let str_dataTitle:String = "height alwaysbtn_"
fileprivate let str_rowCurrentTrackName:[Character] = ["n","d","_","d","i","s"]

/*: "Send" :*/
fileprivate let str_pathName:[Character] = ["S","e","n","d"]

/*: "Say something...     " :*/
fileprivate let str_partyName:String = "Say execute in table shared"
fileprivate let str_targetName:String = "self color reading."
fileprivate let str_curName:String = " "

/*: "Can't send blank message" :*/
fileprivate let str_styleName:String = "Can\'t "
fileprivate let str_effectValue:String = "drag screen viewblank "

/*: "\n" :*/
fileprivate let str_allName:String = "\n"

/*: "contentSize" :*/
fileprivate let str_titleText:[Character] = ["c","o"]
fileprivate let str_kingName:String = "ntviewn"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  RunReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/7/7.
//

//: import UIKit
import UIKit

//: protocol TalkingVideoCallInputViewDelegate: NSObject {
protocol TalkingEnableRootageReactiveCompatible: NSObject {
    //: func func__sendTextMsg(msgStr: String)
    func inheritance(msgStr: String)

    //: func heightToBottomChanged(heightToBottom: CGFloat)
    func undersurface(heightToBottom: CGFloat)

    //: func inputViewHeightChanged(height: CGFloat)
    func heritage(height: CGFloat)
}

//: class TalkingVideoCallInputView: UIView {
class RunReactiveCompatible: UIView {
    //: let textMaxLengthLimit = 255
    let textMaxLengthLimit = 255
    //: open weak var delegate: TalkingVideoCallInputViewDelegate?
    open weak var delegate: TalkingEnableRootageReactiveCompatible?
    //: private let disposeBag = DisposeBag()
    private let disposeBag = DisposeBag()
    //: private var inputAttr = [NSAttributedString.Key: Any]()
    private var inputAttr = [NSAttributedString.Key: Any]()

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        sizeSubviews()
        //: setupSubViewsConstraint()
        barPush()
        //: bindInteraction()
        playerOf()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_videoData.map{controlEachOutside(social: $0)}, encoding: .utf8)!)
    }

    //: lazy var sendBtn: UIButton = {
    lazy var sendBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.setBackgroundImage(UIImage.eponymUp(name: "btn_chat_send_nor"), for: .normal)
        btn.setBackgroundImage(UIImage.eponymUp(name: (String(str_allowValue.suffix(4)) + "chat_s" + String(str_timeText.prefix(6)) + str_showInfoTitle.replacingOccurrences(of: "pop", with: "r"))), for: .normal)
        //: btn.setBackgroundImage(UIImage.eponymUp(name: "btn_chat_send_nor"), for: .highlighted)
        btn.setBackgroundImage(UIImage.eponymUp(name: (String(str_allowValue.suffix(4)) + "chat_s" + String(str_timeText.prefix(6)) + str_showInfoTitle.replacingOccurrences(of: "pop", with: "r"))), for: .highlighted)
        //: btn.setBackgroundImage(UIImage.eponymUp(name: "btn_chat_send_dis"), for: .disabled)
        btn.setBackgroundImage(UIImage.eponymUp(name: (String(str_dataTitle.suffix(4)) + "chat_se" + String(str_rowCurrentTrackName))), for: .disabled)
        //: btn.setTitle("Send".localized, for: .normal)
        btn.setTitle((String(str_pathName)).localized, for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangWithDiameter(fontSize: 15)
        btn.titleLabel?.font = UIFont.pingfangWithDiameter(fontSize: 15)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.addTarget(self, action: #selector(commentBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(possibility), for: .touchUpInside)
        //: btn.isEnabled = false
        btn.isEnabled = false
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var contentView: UIView = {
    lazy var contentView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: view.backgroundColor = UIColor.white
        view.backgroundColor = UIColor.white
        //: return view
        return view

        //: }()
    }()

    //: lazy var inputTextView: InputTextView = {
    lazy var inputTextView: ListScrollView = {
        //: let input = InputTextView()
        let input = ListScrollView()
        //: input.font = UIFont.pingfangFont(type: .Regular, fontSize: 15)
        input.font = UIFont.pingfang(type: .Regular, fontSize: 15)
        //: input.placeholderColor = UIColor.init(red: 153/255.0, green: 153/255.0, blue: 153/255.0, alpha: 0.8)
        input.placeholderColor = UIColor(red: 153 / 255.0, green: 153 / 255.0, blue: 153 / 255.0, alpha: 0.8)
        //: input.placeholder = "Say something...     ".localized
        input.placeholder = (String(str_partyName.prefix(4)) + "someth" + String(str_targetName.suffix(4)) + "..    " + str_curName.capitalized).localized
        //: input.returnKeyType = .send
        input.returnKeyType = .send
        //: input.scrollsToTop = false
        input.scrollsToTop = false
        //: input.delegate = self
        input.delegate = self
        //: input.backgroundColor = UIColor.white
        input.backgroundColor = UIColor.white
        //: input.textColor = UIColor.appTitleColor()
        input.textColor = UIColor.executeTo()
        //: self.inputAttr = [NSAttributedString.Key.foregroundColor: UIColor.appTitleColor(), .font: UIFont.pingfangFont(type: .Regular, fontSize: 15)]
        self.inputAttr = [NSAttributedString.Key.foregroundColor: UIColor.executeTo(), .font: UIFont.pingfang(type: .Regular, fontSize: 15)]
        //: input.typingAttributes = self.inputAttr
        input.typingAttributes = self.inputAttr
//        input.layer.cornerRadius = 5
        //: contentView.addSubview(input)
        contentView.addSubview(input)
        //: return input
        return input
        //: }()
    }()
}

//: extension TalkingVideoCallInputView {
extension RunReactiveCompatible {
    /// 拉起输入框
    //: func updatePlaceholder() {
    func lineEnable() {
        //: self.isHidden = false
        self.isHidden = false
        //: inputTextView.becomeFirstResponder()
        inputTextView.becomeFirstResponder()
    }

    //: @objc func commentBtnClick() {
    @objc func possibility() {
        //: let textstr = self.handleSendText(text: inputTextView.attributedText)
        let textstr = self.nameTextCareBlowInfo(text: inputTextView.attributedText)
        //: let temStr = textstr.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
        let temStr = textstr.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
        //: if temStr.count == 0 {
        if temStr.count == 0 {
            //: func__showStatusBarErrorMsg(showMsg: "Can't send blank message".localized)
            oversight(showMsg: (str_styleName + "send " + String(str_effectValue.suffix(6)) + "message").localized)
            //: return
            return
        }
        //: self.delegate?.func__sendTextMsg(msgStr: textstr)
        self.delegate?.inheritance(msgStr: textstr)
        //: sendBtn.isEnabled = false
        sendBtn.isEnabled = false
        //: resignkeyBoard()
        toAdd()
    }

    //: func resignkeyBoard() {
    func toAdd() {
        //: inputTextView.resignFirstResponder()
        inputTextView.resignFirstResponder()
        //: if (inputTextView.text.count == 0) {
        if inputTextView.text.count == 0 {
            //: inputTextView.placeholder = "Say something...     ".localized
            inputTextView.placeholder = (String(str_partyName.prefix(4)) + "someth" + String(str_targetName.suffix(4)) + "..    " + str_curName.capitalized).localized
        }
    }

    //: func func__updateInputContentView() {
    func totaleractionBirdSEyeView() {
        //: let textSize = inputTextView.contentSize
        let textSize = inputTextView.contentSize
        //: let textHeight = max(30, min(100, textSize.height))
        let textHeight = max(30, min(100, textSize.height))
        //: inputTextView.snp.updateConstraints { make in
        inputTextView.snp.updateConstraints { make in
            //: make.height.equalTo(textHeight)
            make.height.equalTo(textHeight)
        }
        //: self.delegate?.inputViewHeightChanged(height: textHeight+16)
        self.delegate?.heritage(height: textHeight + 16)
    }

    //: @objc func keyboardWasShown(notification: NSNotification) {
    @objc func adult(notification: NSNotification) {
        //: let info = notification.userInfo!
        let info = notification.userInfo!
        //: var kbRect = (info[UIResponder.keyboardFrameEndUserInfoKey]! as! NSValue).cgRectValue
        var kbRect = (info[UIResponder.keyboardFrameEndUserInfoKey]! as! NSValue).cgRectValue
        //: kbRect = self.convert(kbRect, from: nil)
        kbRect = self.convert(kbRect, from: nil)
        //: let height = kbRect.size.height
        let height = kbRect.size.height
        //: self.delegate?.heightToBottomChanged(heightToBottom: height)
        self.delegate?.undersurface(heightToBottom: height)
    }

    //: @objc func keyboardWillBeHidden(notification: NSNotification) {
    @objc func tagDrop(notification _: NSNotification) {
        //: self.isHidden = true
        self.isHidden = true
//
        //: self.delegate?.heightToBottomChanged(heightToBottom: 0)
        self.delegate?.undersurface(heightToBottom: 0)
    }
}

//: extension TalkingVideoCallInputView {
extension RunReactiveCompatible {
    /// 发送消息处理富文本
    //: private func handleSendText(text: NSAttributedString?) -> String {
    private func nameTextCareBlowInfo(text: NSAttributedString?) -> String {
        //: var mText: NSMutableAttributedString!
        var mText: NSMutableAttributedString!
        //: if text == nil {
        if text == nil {
            //: mText = NSMutableAttributedString(string: "")
            mText = NSMutableAttributedString(string: "")
            //: } else {
        } else {
            //: mText = NSMutableAttributedString(attributedString: text!)
            mText = NSMutableAttributedString(attributedString: text!)
        }

        //: var string = String()
        var string = String()
        //: mText.enumerateAttributes(in: NSRange(location: 0, length: mText.length)) { attrs, range, stop in
        mText.enumerateAttributes(in: NSRange(location: 0, length: mText.length)) { _, range, _ in
            //: let str = mText.attributedSubstring(from: range).string
            let str = mText.attributedSubstring(from: range).string
            //: string.append(str)
            string.append(str)
        }

        //: return string
        return string
    }
}

// MARK: - UITextViewDelegate

//: extension TalkingVideoCallInputView: UITextViewDelegate {
extension RunReactiveCompatible: UITextViewDelegate {
    //: func textViewDidEndEditing(_ textView: UITextView) {
    func textViewDidEndEditing(_: UITextView) {}

    //: func textViewDidChange(_ textView: UITextView) {
    func textViewDidChange(_ textView: UITextView) {
        //: if textView.text.count>0 {
        if textView.text.count > 0 {
            //: sendBtn.isEnabled = true
            sendBtn.isEnabled = true
            //: } else {
        } else {
            //: sendBtn.isEnabled = false
            sendBtn.isEnabled = false
        }
    }

    //: func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
    func textView(_ textView: UITextView, shouldChangeTextIn _: NSRange, replacementText text: String) -> Bool {
        //: self.inputTextView.typingAttributes = self.inputAttr
        self.inputTextView.typingAttributes = self.inputAttr

        //: let string = textView.text + text
        let string = textView.text + text
        //: guard string.count < textMaxLengthLimit else {
        guard string.count < textMaxLengthLimit else {
            //: return false
            return false
        }
        //: if (text == "\n") {
        if text == "\n" {
            //: commentBtnClick()
            possibility()
            //: textView.resignFirstResponder()
            textView.resignFirstResponder()
        }
        //: return true
        return true
    }
}

// MARK: - LayoutUI

//: extension TalkingVideoCallInputView {
extension RunReactiveCompatible {
    // 添加视图
    //: private func setupSubviews() {
    private func sizeSubviews() {
        //: backgroundColor = .clear
        backgroundColor = .clear
        //: addSubview(contentView)
        addSubview(contentView)
        //: contentView.addSubview(sendBtn)
        contentView.addSubview(sendBtn)
        //: contentView.addSubview(inputTextView)
        contentView.addSubview(inputTextView)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func barPush() {
        //: contentView.snp.makeConstraints { make in
        contentView.snp.makeConstraints { make in
            //: make.top.leading.trailing.bottom.equalTo(self)
            make.top.leading.trailing.bottom.equalTo(self)
        }
        //: sendBtn.snp.makeConstraints { make in
        sendBtn.snp.makeConstraints { make in
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.trailing.equalTo(-15)
            make.trailing.equalTo(-15)
            //: make.height.equalTo(30)
            make.height.equalTo(30)
            //: make.width.equalTo(66)
            make.width.equalTo(66)
        }
        //: inputTextView.snp.makeConstraints { make in
        inputTextView.snp.makeConstraints { make in
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.leading.equalTo(contentView.snp.leading).offset(15)
            make.leading.equalTo(contentView.snp.leading).offset(15)
            //: make.trailing.equalTo(sendBtn.snp.leading).offset(-10)
            make.trailing.equalTo(sendBtn.snp.leading).offset(-10)
            //: make.height.equalTo(40)
            make.height.equalTo(40)
        }
    }

    // 添加事件
    //: private func bindInteraction() {
    private func playerOf() {
        //: NotificationCenter.default.addObserver(self, selector: #selector(keyboardWasShown(notification:)), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(adult(notification:)), name: UIResponder.keyboardWillShowNotification, object: nil)
        //: NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillBeHidden(notification:)), name: UIResponder.keyboardWillHideNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(tagDrop(notification:)), name: UIResponder.keyboardWillHideNotification, object: nil)

        //: inputTextView.rx.observeWeakly(UITextView.self, "contentSize").subscribe(onNext: { [weak self] (change) in
        inputTextView.rx.observeWeakly(UITextView.self, (String(str_titleText) + str_kingName.replacingOccurrences(of: "view", with: "e") + "tSize")).subscribe(onNext: { [weak self] _ in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.func__updateInputContentView()
            self.totaleractionBirdSEyeView()
            //: }).disposed(by: disposeBag)
        }).disposed(by: disposeBag)
    }
}
