
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_appearData:[UInt8] = [0x98,0x9f,0x98,0x85,0xd9,0x92,0x9e,0x95,0x94,0x83,0xcb,0xd8,0xd1,0x99,0x90,0x82,0xd1,0x9f,0x9e,0x85,0xd1,0x93,0x94,0x94,0x9f,0xd1,0x98,0x9c,0x81,0x9d,0x94,0x9c,0x94,0x9f,0x85,0x94,0x95]

private func inSucceed(game num: UInt8) -> UInt8 {
    return num ^ 241
}

/*: "btn_chat_send_nor" :*/
fileprivate let str_dayViewName:String = "btn_lab self guard"
fileprivate let str_windowData:String = "title type equal index falsed_nor"

/*: "btn_chat_send_dis" :*/
fileprivate let str_priceData:String = "server height if succeed destroybtn_"
fileprivate let str_effectValue:String = "data index white layer labnd_dis"

/*: "Send" :*/
fileprivate let str_freePointName:String = "self nor imageSend"

/*: "Say something...     " :*/
fileprivate let str_frameTitle:[Character] = ["S","a","y"," ","s","o","m","e","t","h","i","n","g",".",".","."]
fileprivate let str_pageData:[Character] = [" "," "," "," "," "]

/*: "Can't send blank message" :*/
fileprivate let str_makeValue:String = "Can\'t"
fileprivate let str_interestValue:String = "size array user make equal blan"
fileprivate let str_layerValueData:[Character] = ["s","s","a","g","e"]

/*: "uid" :*/
fileprivate let str_tableContent:[UInt8] = [0x2b,0x37,0x3a]

private func noView(domain num: UInt8) -> UInt8 {
    return num ^ 94
}

/*: "name" :*/
fileprivate let str_videoTempData:String = "nanumber"

/*: "@ :*/
fileprivate let str_listValue:[Character] = ["@"]

/*:  " :*/
fileprivate let str_outputTableDataTitle:String = " "

/*: "length" :*/
fileprivate let str_viewData:String = "lstatusgth"

/*: "<at>@ :*/
fileprivate let str_titleValue:String = "video as back<at>@"

/*: </at> " :*/
fileprivate let str_sessionValue:String = "kit color</at> "

/*: "\n" :*/
fileprivate let str_cleanText:[Character] = ["\n"]

/*: "contentSize" :*/
fileprivate let str_statusTitle:String = "colayer"
fileprivate let str_imageContent:[Character] = ["i","z","e"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  LiveInputView.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/7/7.
//

//: import UIKit
import UIKit

//: protocol TalkingLiveRoomInputViewDelegate: NSObject {
protocol AccumulationViewDelegate: NSObject {
    //: func func__sendTextMsg(msgStr: String, atUid: String?)
    func installment(msgStr: String, atUid: String?)

    //: func heightToBottomChanged(heightToBottom: CGFloat)
    func atCut(heightToBottom: CGFloat)

    //: func inputViewHeightChanged(height: CGFloat)
    func horn(height: CGFloat)
}

//: class TalkingLiveRoomInputView: UIView {
class LiveInputView: UIView {
    //: open weak var delegate: TalkingLiveRoomInputViewDelegate?
    open weak var delegate: AccumulationViewDelegate?
    //: private let disposeBag = DisposeBag()
    private let disposeBag = DisposeBag()
    //: private var inputAttr = [NSAttributedString.Key: Any]()
    private var inputAttr = [NSAttributedString.Key: Any]()
    //: private var atDic: [String: Any]?
    private var atDic: [String: Any]?
    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        beforeBigPlace()
        //: setupSubViewsConstraint()
        afterTitle()
        //: bindInteraction()
        disoblige()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_appearData.map{inSucceed(game: $0)}, encoding: .utf8)!)
    }

    //: lazy var sendBtn: UIButton = {
    lazy var sendBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.setBackgroundImage(UIImage.eponymUp(name: "btn_chat_send_nor"), for: .normal)
        btn.setBackgroundImage(UIImage.eponymUp(name: (String(str_dayViewName.prefix(4)) + "chat_sen" + String(str_windowData.suffix(5)))), for: .normal)
        //: btn.setBackgroundImage(UIImage.eponymUp(name: "btn_chat_send_nor"), for: .highlighted)
        btn.setBackgroundImage(UIImage.eponymUp(name: (String(str_dayViewName.prefix(4)) + "chat_sen" + String(str_windowData.suffix(5)))), for: .highlighted)
        //: btn.setBackgroundImage(UIImage.eponymUp(name: "btn_chat_send_dis"), for: .disabled)
        btn.setBackgroundImage(UIImage.eponymUp(name: (String(str_priceData.suffix(4)) + "chat_se" + String(str_effectValue.suffix(6)))), for: .disabled)
        //: btn.addTarget(self, action: #selector(commentBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(cannulate), for: .touchUpInside)
        //: btn.setTitle("Send".localized, for: .normal)
        btn.setTitle((String(str_freePointName.suffix(4))).localized, for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangWithDiameter(fontSize: 15)
        btn.titleLabel?.font = UIFont.pingfangWithDiameter(fontSize: 15)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
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
        //: input.placeholderColor = UIColor.publishView()
        input.placeholderColor = UIColor.publishView()
        //: input.placeholder = "Say something...     ".localized
        input.placeholder = (String(str_frameTitle) + String(str_pageData)).localized
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
        //: input.layer.cornerRadius = 5
        input.layer.cornerRadius = 5
        //: contentView.addSubview(input)
        contentView.addSubview(input)
        //: return input
        return input
        //: }()
    }()
}

//: extension TalkingLiveRoomInputView {
extension LiveInputView {
    /// 拉起输入框
    //: func updatePlaceholder() {
    func placeholder() {
        //: self.isHidden = false
        self.isHidden = false
        //: inputTextView.becomeFirstResponder()
        inputTextView.becomeFirstResponder()
    }

    //: @objc func commentBtnClick() {
    @objc func cannulate() {
        //: let textstr = self.handleSendText(text: inputTextView.attributedText)
        let textstr = self.observerFile(text: inputTextView.attributedText)
        //: let temStr = textstr.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
        let temStr = textstr.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
        //: if temStr.count == 0 {
        if temStr.count == 0 {
            //: func__showStatusBarErrorMsg(showMsg: "Can't send blank message".localized)
            oversight(showMsg: (str_makeValue + " send" + String(str_interestValue.suffix(5)) + "k me" + String(str_layerValueData)).localized)
            //: return
            return
        }
        //: let atStr: String = atDic?["uid"] as? String ?? ""
        let atStr: String = atDic?[String(bytes: str_tableContent.map{noView(domain: $0)}, encoding: .utf8)!] as? String ?? ""
        //: self.delegate?.func__sendTextMsg(msgStr: textstr, atUid: atStr)
        self.delegate?.installment(msgStr: textstr, atUid: atStr)
        //: atDic = nil
        atDic = nil
        //: sendBtn.isEnabled = false
        sendBtn.isEnabled = false
        //: resignkeyBoard()
        resignkey()
    }

    //: func resignkeyBoard() {
    func resignkey() {
        //: inputTextView.resignFirstResponder()
        inputTextView.resignFirstResponder()
        //: if (inputTextView.text.count == 0) {
        if inputTextView.text.count == 0 {
            //: inputTextView.placeholder = "Say something...     ".localized
            inputTextView.placeholder = (String(str_frameTitle) + String(str_pageData)).localized
        }
    }

    //: func func__updateInputContentView() {
    func fromFunc() {
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
        self.delegate?.horn(height: textHeight + 16)
    }

    //: @objc func keyboardWasShown(notification: NSNotification) {
    @objc func colorReport(notification: NSNotification) {
        //: let info = notification.userInfo!
        let info = notification.userInfo!
        //: var kbRect = (info[UIResponder.keyboardFrameEndUserInfoKey]! as! NSValue).cgRectValue
        var kbRect = (info[UIResponder.keyboardFrameEndUserInfoKey]! as! NSValue).cgRectValue
        //: kbRect = self.convert(kbRect, from: nil)
        kbRect = self.convert(kbRect, from: nil)
        //: let height = kbRect.size.height
        let height = kbRect.size.height
        //: self.delegate?.heightToBottomChanged(heightToBottom: height)
        self.delegate?.atCut(heightToBottom: height)
    }

    //: @objc func keyboardWillBeHidden(notification: NSNotification) {
    @objc func substance(notification _: NSNotification) {
        //: self.isHidden = true
        self.isHidden = true
        //: atDic = nil
        atDic = nil
        //: inputTextView.attributedText = nil
        inputTextView.attributedText = nil
        //: self.delegate?.heightToBottomChanged(heightToBottom: 0)
        self.delegate?.atCut(heightToBottom: 0)
    }

    //: func callUserText(toUid: String, nickName: String) {
    func digitiserUp(toUid: String, nickName: String) {
        //: updatePlaceholder()
        placeholder()
        //: atDic = ["uid": toUid, "name": nickName]
        atDic = [String(bytes: str_tableContent.map{noView(domain: $0)}, encoding: .utf8)!: toUid, (str_videoTempData.replacingOccurrences(of: "number", with: "me")): nickName]
        //: self.receiveAtInfotoUser(range: nil, dict: atDic!)
        self.hustle(range: nil, dict: atDic!)
    }
}

//: extension TalkingLiveRoomInputView {
extension LiveInputView {
    /// 替换@ 消息为富文本
    //: func receiveAtInfotoUser(range: NSRange?, dict: [String: Any]) {
    func hustle(range: NSRange?, dict: [String: Any]) {
        //: var atRange = range
        var atRange = range
        //: if atRange != nil {
        if atRange != nil { // 输入框@
            //: if atRange!.location > 0 && (atRange!.length + atRange!.location > self.inputTextView.text.count) {
            if atRange!.location > 0, atRange!.length + atRange!.location > self.inputTextView.text.count {
                //: atRange!.location -= 1
                atRange!.location -= 1
            }
            //: } else {
        } else { // 操作面板@ Ta
            //: atRange = NSRange(location: self.inputTextView.attributedText.length, length: 0)
            atRange = NSRange(location: self.inputTextView.attributedText.length, length: 0)
        }

        //: let atStr: String = "@\(dict["name"] ?? "") "
        let atStr = "@\(dict[(str_videoTempData.replacingOccurrences(of: "number", with: "me"))] ?? "") "
        //: let label = UILabel()
        let label = UILabel()
        //: label.textColor = UIColor.RGBA(0, 132, 255, 1)
        label.textColor = UIColor.showSub(0, 132, 255, 1)
        //: label.font = UIFont.systemFont(ofSize: 16)
        label.font = UIFont.systemFont(ofSize: 16)
        //: label.text = atStr
        label.text = atStr
        //: label.textAlignment = .center
        label.textAlignment = .center
        //: label.sizeToFit()
        label.sizeToFit()
        //: let renderer = UIGraphicsImageRenderer(size: label.bounds.size)
        let renderer = UIGraphicsImageRenderer(size: label.bounds.size)
        //: let image = renderer.image { context in
        let image = renderer.image { context in
            //: label.layer.render(in: context.cgContext)
            label.layer.render(in: context.cgContext)
        }

        //: let textAtta = TalkingTextAttachment()
        let textAtta = HeadThen()
        //: textAtta.bounds = CGRect(x: 0, y: label.font.descender,
        textAtta.bounds = CGRect(x: 0, y: label.font.descender,
                                 //: width: image.size.width,
                                 width: image.size.width,
                                 //: height: image.size.height)
                                 height: image.size.height)
        //: textAtta.image = image
        textAtta.image = image
        //: var atInfo = dict
        var atInfo = dict
        //: atInfo["length"] = atStr.count
        atInfo[(str_viewData.replacingOccurrences(of: "status", with: "en"))] = atStr.count
        //: textAtta.atInfo = atInfo
        textAtta.atInfo = atInfo

        //: let attaImage = NSAttributedString(attachment: textAtta)
        let attaImage = NSAttributedString(attachment: textAtta)
        //: let attrText = NSMutableAttributedString(attributedString: self.inputTextView.attributedText)
        let attrText = NSMutableAttributedString(attributedString: self.inputTextView.attributedText)
        //: attrText.replaceCharacters(in: atRange!, with: attaImage)
        attrText.replaceCharacters(in: atRange!, with: attaImage)
        //: self.inputTextView.attributedText = attrText
        self.inputTextView.attributedText = attrText
    }

    /// 发送消息处理富文本
    //: private func handleSendText(text: NSAttributedString?) -> String {
    private func observerFile(text: NSAttributedString?) -> String {
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
        mText.enumerateAttributes(in: NSRange(location: 0, length: mText.length)) { attrs, range, _ in
            //: let atta = attrs[NSAttributedString.Key.attachment] as? TalkingTextAttachment
            let atta = attrs[NSAttributedString.Key.attachment] as? HeadThen
            //: if atta != nil && range.length == 1 {
            if atta != nil && range.length == 1 {
                //: if let name = atta!.atInfo["name"] {
                if let name = atta!.atInfo[(str_videoTempData.replacingOccurrences(of: "number", with: "me"))] {
                    //: let str = "<at>@\(name)</at> "
                    let str = "<at>@\(name)</at> "
                    //: string.append(str)
                    string.append(str)
                }
                //: } else {
            } else {
                //: let str = mText.attributedSubstring(from: range).string
                let str = mText.attributedSubstring(from: range).string
                //: string.append(str)
                string.append(str)
            }
        }

        //: return string
        return string
    }
}

// MARK: - UITextViewDelegate

//: extension TalkingLiveRoomInputView: UITextViewDelegate {
extension LiveInputView: UITextViewDelegate {
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
        //: if textView.text.count == 0 {
        if textView.text.count == 0 {
            //: atDic = nil
            atDic = nil
        }
        //: self.inputTextView.typingAttributes = self.inputAttr
        self.inputTextView.typingAttributes = self.inputAttr

        //: if (text == "\n") {
        if text == "\n" {
            //: commentBtnClick()
            cannulate()
            //: textView.resignFirstResponder()
            textView.resignFirstResponder()
        }
        //: return true
        return true
    }
}

// MARK: - LayoutUI

//: extension TalkingLiveRoomInputView {
extension LiveInputView {
    // 添加视图
    //: private func setupSubviews() {
    private func beforeBigPlace() {
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
    private func afterTitle() {
        //: contentView.snp.makeConstraints { make in
        contentView.snp.makeConstraints { make in
            //: make.top.leading.trailing.bottom.equalTo(self)
            make.top.leading.trailing.bottom.equalTo(self)
        }
        //: sendBtn.snp.makeConstraints { make in
        sendBtn.snp.makeConstraints { make in
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.trailing.equalTo(-8)
            make.trailing.equalTo(-8)
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
    private func disoblige() {
        //: NotificationCenter.default.addObserver(self, selector: #selector(keyboardWasShown(notification:)), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(colorReport(notification:)), name: UIResponder.keyboardWillShowNotification, object: nil)
        //: NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillBeHidden(notification:)), name: UIResponder.keyboardWillHideNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(substance(notification:)), name: UIResponder.keyboardWillHideNotification, object: nil)

        //: inputTextView.rx.observeWeakly(UITextView.self, "contentSize").subscribe(onNext: { [weak self] (change) in
        inputTextView.rx.observeWeakly(UITextView.self, (str_statusTitle.replacingOccurrences(of: "layer", with: "nt") + "entS" + String(str_imageContent))).subscribe(onNext: { [weak self] _ in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.func__updateInputContentView()
            self.fromFunc()
            //: }).disposed(by: disposeBag)
        }).disposed(by: disposeBag)
    }
}
