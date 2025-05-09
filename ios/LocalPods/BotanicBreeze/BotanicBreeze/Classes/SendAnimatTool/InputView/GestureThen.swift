
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_ofValue:[UInt8] = [0x75,0x72,0x75,0x68,0x34,0x7f,0x73,0x78,0x79,0x6e,0x26,0x35,0x3c,0x74,0x7d,0x6f,0x3c,0x72,0x73,0x68,0x3c,0x7e,0x79,0x79,0x72,0x3c,0x75,0x71,0x6c,0x70,0x79,0x71,0x79,0x72,0x68,0x79,0x78]

/*: "icon_translation" :*/
fileprivate let str_colorTextValue:[Character] = ["i","c","o","n","_","t","r","a","n"]
fileprivate let str_environmentText:[Character] = ["s","l","a","t","i","o","n"]

/*: "English" :*/
fileprivate let str_errorValue:String = "Englishdata equal top"

/*: "icon_translation_go" :*/
fileprivate let str_liveData:[Character] = ["i","c","o","n","_","t","r","a","n","s","l","a","t"]
fileprivate let str_enableTitle:[Character] = ["i","o","n","_","g","o"]

/*: "Trans" :*/
fileprivate let str_titleValue:[Character] = ["T","r","a","n","s"]

/*: "targetText" :*/
fileprivate let str_tableContent:[Character] = ["t"]
fileprivate let str_hidePhotoValue:String = "ARGE"

/*: "en" :*/
fileprivate let str_makeName:[Character] = ["e","n"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  GestureThen.swift
//  AbroadTalking
//
//  Created by young on 2023/7/4.
//

//: import UIKit
import UIKit

//: import NaturalLanguage
import NaturalLanguage

//: class TalkingSelectTranslationView: UIView {
class GestureThen: UIView {
    //: var transBlock: ((_ succeed: Bool, _ text: String) -> Void)?
    var transBlock: ((_ succeed: Bool, _ text: String) -> Void)? // 翻译结果Block
    //: private var checkTransStr = ""                                // 需要翻译的文本
    private var checkTransStr = "" // 需要翻译的文本

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: backgroundColor = .white
        backgroundColor = .white
        //: setupSubviews()
        tapShould()
        //: setupSubViewsConstraint()
        velleity()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_ofValue.map{$0^28}, encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var leftBtn: TalkingButton = {
    private lazy var leftBtn: ProgressTalkingButton = {
        //: let btn = TalkingButton()
        let btn = ProgressTalkingButton()
        //: btn.setImage(UIImage.eponymUp(name: "icon_translation"), for: .normal)
        btn.setImage(UIImage.eponymUp(name: (String(str_colorTextValue) + String(str_environmentText))), for: .normal)
        //: btn.titleLabel?.font = .pingfangFont(type: .Regular, fontSize: 14)
        btn.titleLabel?.font = .pingfang(type: .Regular, fontSize: 14)
        //: btn.setTitleColor(UIColor.appValueColor(), for: .normal)
        btn.setTitleColor(UIColor.addColor(), for: .normal)
        //: btn.setTitle("English".localized, for: .normal)
        btn.setTitle((String(str_errorValue.prefix(7))).localized, for: .normal)
        //: btn.imageAlignment = .left
        btn.imageAlignment = .left
        //: btn.spaceBetweenTitleAndImage = 5
        btn.spaceBetweenTitleAndImage = 5
        //: btn.isEnabled = false
        btn.isEnabled = false
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var rightBtn: TalkingButton = {
    private lazy var rightBtn: ProgressTalkingButton = {
        //: let btn = TalkingButton()
        let btn = ProgressTalkingButton()
        //: let image = UIImage.eponymUp(name: "icon_translation_go").withTintColor(.appThemeColor())
        let image = UIImage.eponymUp(name: (String(str_liveData) + String(str_enableTitle))).withTintColor(.plaster())
        //: btn.setImage(image, for: .normal)
        btn.setImage(image, for: .normal)
        //: btn.titleLabel?.font = .pingfangFont(type: .Medium, fontSize: 14)
        btn.titleLabel?.font = .pingfang(type: .Medium, fontSize: 14)
        //: btn.setTitleColor(UIColor.appThemeColor(), for: .normal)
        btn.setTitleColor(UIColor.plaster(), for: .normal)
        //: btn.setTitle("Trans".localized, for: .normal)
        btn.setTitle((String(str_titleValue)).localized, for: .normal)
        //: btn.imageAlignment = .right
        btn.imageAlignment = .right
        //: btn.spaceBetweenTitleAndImage = 3
        btn.spaceBetweenTitleAndImage = 3
        //: btn.addTarget(self, action: #selector(transButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(someView), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - 请求数据

//: extension TalkingSelectTranslationView {
extension GestureThen {
    /// 翻译文本内容
    //: private func req_translateText() {
    private func fileName() {
        //: PostulationReactiveCompatible.req_translateText(text: checkTransStr) { succeed, result, errorModel in
        PostulationReactiveCompatible.metricate(text: checkTransStr) { succeed, result, _ in
            //: guard succeed else {
            guard succeed else {
                //: self.transBlock?(succeed, "")
                self.transBlock?(succeed, "")
                //: return
                return
            }

            //: let json = JSON(result ?? [String: Any]())
            let json = JSON(result ?? [String: Any]())
            //: let content = json["targetText"].stringValue
            let content = json[(String(str_tableContent) + str_hidePhotoValue.lowercased() + "tText")].stringValue
            //: self.transBlock?(succeed, content)
            self.transBlock?(succeed, content)
        }
    }
}

// MARK: - Event

//: extension TalkingSelectTranslationView {
extension GestureThen {
    /// 检测输入内容是否为英文
    /// - Parameter inputText: 输入内容
    /// - Returns: 结果
    //: func checkInputLanguage(_ inputText: String) -> Bool {
    func labLanguage(_ inputText: String) -> Bool {
        //: checkTransStr = inputText.trimmingCharacters(in: .whitespaces)
        checkTransStr = inputText.trimmingCharacters(in: .whitespaces)
        //: guard checkTransStr.count > 0 else {
        guard checkTransStr.count > 0 else {
            //: return true
            return true
        }
        //: let languageRecognizer = NLLanguageRecognizer()
        let languageRecognizer = NLLanguageRecognizer()
        //: languageRecognizer.processString(inputText)
        languageRecognizer.processString(inputText)
        //: let language = languageRecognizer.dominantLanguage?.rawValue
        let language = languageRecognizer.dominantLanguage?.rawValue
        //: return language == "en"
        return language == "en"
    }

    /// 翻译按钮点击事件
    //: @objc private func transButtonClick() {
    @objc private func someView() {
        //: self.req_translateText()
        self.fileName()
    }
}

// MARK: - Layout

//: extension TalkingSelectTranslationView {
extension GestureThen {
    /// 添加视图
    //: private func setupSubviews() {
    private func tapShould() {
        //: self.addSubview(leftBtn)
        self.addSubview(leftBtn)
        //: self.addSubview(rightBtn)
        self.addSubview(rightBtn)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func velleity() {
        //: leftBtn.snp.makeConstraints { make in
        leftBtn.snp.makeConstraints { make in
            //: make.leading.equalTo(8)
            make.leading.equalTo(8)
            //: make.top.equalTo(9)
            make.top.equalTo(9)
            //: make.height.equalTo(17)
            make.height.equalTo(17)
            //: make.width.equalTo(70)
            make.width.equalTo(70)
        }
        //: rightBtn.snp.makeConstraints { make in
        rightBtn.snp.makeConstraints { make in
            //: make.trailing.equalTo(-10)
            make.trailing.equalTo(-10)
            //: make.centerY.height.equalTo(leftBtn)
            make.centerY.height.equalTo(leftBtn)
        }
    }
}
