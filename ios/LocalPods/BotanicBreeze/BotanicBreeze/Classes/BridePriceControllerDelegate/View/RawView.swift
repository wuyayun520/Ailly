
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_signData:[UInt8] = [0xfc,0xfb,0xfc,0xe1,0xbd,0xf6,0xfa,0xf1,0xf0,0xe7,0xaf,0xbc,0xb5,0xfd,0xf4,0xe6,0xb5,0xfb,0xfa,0xe1,0xb5,0xf7,0xf0,0xf0,0xfb,0xb5,0xfc,0xf8,0xe5,0xf9,0xf0,0xf8,0xf0,0xfb,0xe1,0xf0,0xf1]

private func managerIndex(view num: UInt8) -> UInt8 {
    return num ^ 149
}

/*: "Nickname" :*/
fileprivate let str_sizeText:String = "size true shareNickname"

/*: "Birthday" :*/
fileprivate let str_observerName:String = "Birthdayview sound"

/*: "F4F4F4" :*/
fileprivate let str_userValue:String = "makemakemake"

/*: "%.2d" :*/
fileprivate let str_bagValue:String = "view false%.2d"

/*: - :*/
fileprivate let str_viewData:String = "-"

/*: "area_code_down_icon" :*/
fileprivate let str_logPushData:String = "area_creturn main lab"
fileprivate let str_requestTitle:[Character] = ["o","w","n","_","i","c","o","n"]

/*: "BBBBBB" :*/
fileprivate let str_fromListData:String = "colorcolorB"
fileprivate let str_buttonData:String = "to"

/*: "0/20" :*/
fileprivate let str_playerName:String = "0/20"

/*: "20/0" :*/
fileprivate let str_containerContent:String = "20/0"

/*: "Invitation code" :*/
fileprivate let str_showCardCollectionValue:[Character] = ["I","n","v","i","t"]
fileprivate let str_styleModelValue:String = "awrap"
fileprivate let str_normalTitle:[Character] = ["i","o","n"," ","c","o","d","e"]

/*: "btn_field_delete_icon" :*/
fileprivate let str_playerTitle:String = "btn_fieldtitle call"
fileprivate let str_countData:String = "self self_del"
fileprivate let str_viewSizeValue:String = "commentcon"

/*: "Next" :*/
fileprivate let str_toData:String = "mini modelNext"

/*: "#8C7AFF" :*/
fileprivate let str_quoteTitle:String = "file"
fileprivate let str_viewValue:String = "send make8C7AFF"

/*: "Skip" :*/
fileprivate let str_afterCellValue:String = "Skipframe a"

/*: "20/ :*/
fileprivate let str_trackContent:String = "frame0/"

/*: /20" :*/
fileprivate let str_resignData:String = "/2result"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  RawView.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/8/30.
//

//: import UIKit
import UIKit

//: enum EditInfoType {
enum ContentInfoType {
    //: case NickName
    case NickName
    //: case Birth
    case Birth
    //: case HeadPic
    case HeadPic
    //: case Finish
    case Finish
    //: case Skip
    case Skip
}

//: class TalkingLoginEditInfoView: UIView {
class RawView: UIView {
    //: typealias InfoActionBlock = (_ type: EditInfoType) -> Void
    typealias InfoActionBlock = (_ type: ContentInfoType) -> Void

    //: let disposeBag = DisposeBag()
    let disposeBag = DisposeBag()
    //: var btnBlock: InfoActionBlock?
    var btnBlock: InfoActionBlock?

    //: private var nameCount: Int = 20
    private var nameCount: Int = 20

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.backgroundColor = UIColor.white
        self.backgroundColor = UIColor.white
        //: EqualThen.share.userFillInfoMode.nickName = EqualThen.share.loginUserMode.nickname ?? ""
        EqualThen.share.userFillInfoMode.nickName = EqualThen.share.loginUserMode.nickname ?? ""
        //: if let inviteCode = UserDefaults.standard.string(forKey: SaveInviteCodeKey) {
        if let inviteCode = UserDefaults.standard.string(forKey: kLet_tabData) {
            //: EqualThen.share.userFillInfoMode.inviteCode = inviteCode
            EqualThen.share.userFillInfoMode.inviteCode = inviteCode
            //: inviteCodeInputView.text = inviteCode
            inviteCodeInputView.text = inviteCode
        }

        //: setupSubviews()
        resumeKind()
        //: setupSubViewsConstraint()
        file()
        //: bindInteraction()
        sinceRangeModel()
        // 先执行一下该方法，昵称可能有默认值
        //: nicknameTextChage(nameInputView)
        emptyChage(nameInputView)

        //: if (EqualThen.share.userFillInfoMode.sex == Gender.female.rawValue && !EqualThen.share.appConfigMode.skipInputInviteCodeFemale) ||
        if (EqualThen.share.userFillInfoMode.sex == RunReplaceableCollection.female.rawValue && !EqualThen.share.appConfigMode.skipInputInviteCodeFemale) ||
            //: (EqualThen.share.userFillInfoMode.sex == Gender.male.rawValue && !EqualThen.share.appConfigMode.skipInputInviteCodeMale) {
            (EqualThen.share.userFillInfoMode.sex == RunReplaceableCollection.male.rawValue && !EqualThen.share.appConfigMode.skipInputInviteCodeMale)
        {
            //: skipButton.isHidden = true
            skipButton.isHidden = true
        }

        //: func__checkFinishBtnState()
        stop()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_signData.map{managerIndex(view: $0)}, encoding: .utf8)!)
    }

    //: lazy var contentView: UIView = {
    lazy var contentView: UIView = {
        //: let contentView = UIView()
        let contentView = UIView()
        //: return contentView
        return contentView
        //: }()
    }()

    //: lazy var nameTitleLab: UILabel = {
    lazy var nameTitleLab: UILabel = {
        //: let label = UILabel()
        let label = UILabel()
        //: label.font = .pingfangFont(type: .Semibold, fontSize: 17)
        label.font = .pingfang(type: .Semibold, fontSize: 17)
        //: label.textColor = .appTitleColor()
        label.textColor = .executeTo()
        //: label.textAlignment = .center
        label.textAlignment = .center
        //: label.text = "Nickname".localized
        label.text = (String(str_sizeText.suffix(8))).localized
        //: return label
        return label
        //: }()
    }()

    //: lazy var birthTitleLab: UILabel = {
    lazy var birthTitleLab: UILabel = {
        //: let label = UILabel()
        let label = UILabel()
        //: label.font = .pingfangFont(type: .Semibold, fontSize: 17)
        label.font = .pingfang(type: .Semibold, fontSize: 17)
        //: label.textColor = .appTitleColor()
        label.textColor = .executeTo()
        //: label.numberOfLines = 0
        label.numberOfLines = 0
        //: label.text = "Birthday".localized
        label.text = (String(str_observerName.prefix(8))).localized
        //: return label
        return label
        //: }()
    }()

    //: lazy var birthControl: UIControl = {
    lazy var birthControl: UIControl = {
        //: let control = UIControl()
        let control = UIControl()
        //: control.backgroundColor = UIColor(hex: "F4F4F4")
        control.backgroundColor = UIColor(hex: (str_userValue.replacingOccurrences(of: "make", with: "F4")))
        //: control.layer.cornerRadius = 25
        control.layer.cornerRadius = 25
        //: control.clipsToBounds = true
        control.clipsToBounds = true
        //: return control
        return control
        //: }()
    }()

    //: lazy var birthLabel: UILabel = {
    lazy var birthLabel: UILabel = {
        //: let label = UILabel()
        let label = UILabel()
        //: label.font = .pingfangFont(type: .Regular, fontSize: 15)
        label.font = .pingfang(type: .Regular, fontSize: 15)
        //: label.textColor = .appTitleColor()
        label.textColor = .executeTo()
        //: let day = EqualThen.share.userFillInfoMode.birthDay
        let day = EqualThen.share.userFillInfoMode.birthDay
        //: let month = EqualThen.share.userFillInfoMode.birthMonth
        let month = EqualThen.share.userFillInfoMode.birthMonth
        //: let year = EqualThen.share.userFillInfoMode.birthYear
        let year = EqualThen.share.userFillInfoMode.birthYear

        //: label.text = "\(String(format: "%.2d", month))-\(String(format: "%.2d", day))-\(year)"
        label.text = "\(String(format: "%.2d", month))-\(String(format: "%.2d", day))-\(year)"

        //: return label
        return label
        //: }()
    }()

    //: lazy var birthDownImgView: UIImageView = {
    lazy var birthDownImgView: UIImageView = {
        //: let imageView = UIImageView()
        let imageView = UIImageView()
        //: imageView.image = UIImage.eponymUp(name: "area_code_down_icon")
        imageView.image = UIImage.eponymUp(name: (String(str_logPushData.prefix(6)) + "ode_d" + String(str_requestTitle)))
        //: return imageView
        return imageView
        //: }()
    }()

    //: lazy var nameInputView: UITextField = {
    lazy var nameInputView: UITextField = {
        //: let textField = UITextField()
        let textField = UITextField()
        //: textField.backgroundColor = UIColor(hex: "F4F4F4")
        textField.backgroundColor = UIColor(hex: (str_userValue.replacingOccurrences(of: "make", with: "F4")))
        //: textField.font = .pingfangFont(type: .Regular, fontSize: 15)
        textField.font = .pingfang(type: .Regular, fontSize: 15)
        //: textField.textColor = .appTitleColor()
        textField.textColor = .executeTo()
        //: textField.layer.cornerRadius = 25
        textField.layer.cornerRadius = 25
        //: textField.clipsToBounds = true
        textField.clipsToBounds = true
        //: textField.delegate = self
        textField.delegate = self
        //: textField.attributedPlaceholder = NSAttributedString(string: "", attributes: [NSAttributedString.Key.font: UIFont.pingfangFont(type: .Regular, fontSize: 15), NSAttributedString.Key.foregroundColor: UIColor(hex: "BBBBBB")!])
        textField.attributedPlaceholder = NSAttributedString(string: "", attributes: [NSAttributedString.Key.font: UIFont.pingfang(type: .Regular, fontSize: 15), NSAttributedString.Key.foregroundColor: UIColor(hex: (str_fromListData.replacingOccurrences(of: "color", with: "BB") + str_buttonData.replacingOccurrences(of: "to", with: "B")))!])
        //: textField.keyboardType = .default
        textField.keyboardType = .default
        //: textField.returnKeyType = .done
        textField.returnKeyType = .done
        //: let leftView = UIView()
        let leftView = UIView()
        //: leftView.frame = CGRect(x: 0, y: 0, width: 20, height: 50)
        leftView.frame = CGRect(x: 0, y: 0, width: 20, height: 50)
        //: textField.leftView = leftView
        textField.leftView = leftView
        //: textField.leftViewMode = .always
        textField.leftViewMode = .always
        //: let rightView = UIView()
        let rightView = UIView()
        //: rightView.frame = CGRect(x: 0, y: 0, width: 80, height: 50)
        rightView.frame = CGRect(x: 0, y: 0, width: 80, height: 50)
        //: textField.rightView = rightView
        textField.rightView = rightView
        //: textField.rightViewMode = .always
        textField.rightViewMode = .always
        //: rightView.addSubview(nameCountLab)
        rightView.addSubview(nameCountLab)
        //: textField.addTarget(self, action: #selector(nicknameTextChage(_:)), for: .editingChanged)
        textField.addTarget(self, action: #selector(emptyChage(_:)), for: .editingChanged)
        //: textField.text = EqualThen.share.userFillInfoMode.nickName
        textField.text = EqualThen.share.userFillInfoMode.nickName
        //: return textField
        return textField
        //: }()
    }()

    //: lazy var nameCountLab: UILabel = {
    lazy var nameCountLab: UILabel = {
        //: let label = UILabel()
        let label = UILabel()
        //: label.frame = CGRect(x: 0, y: 0, width: 60, height: 50)
        label.frame = CGRect(x: 0, y: 0, width: 60, height: 50)
        //: label.font = .pingfangFont(type: .Regular, fontSize: 15)
        label.font = .pingfang(type: .Regular, fontSize: 15)
        //: label.textColor = .publishView()
        label.textColor = .publishView()
        //: label.textAlignment = .right
        label.textAlignment = .right
        //: label.text = "0/20"
        label.text = (str_playerName.capitalized)
        //: if LanguageManager.shared.direction == .rightToLeft {
        if FileReactiveCompatible.shared.direction == .rightToLeft {
            //: label.text = "20/0"
            label.text = (str_containerContent.capitalized)
        }
        //: return label
        return label
        //: }()
    }()

    //: private lazy var inviteCodeTitleLab: UILabel = {
    private lazy var inviteCodeTitleLab: UILabel = {
        //: let label = UILabel()
        let label = UILabel()
        //: label.font = .pingfangFont(type: .Semibold, fontSize: 17)
        label.font = .pingfang(type: .Semibold, fontSize: 17)
        //: label.textColor = .appTitleColor()
        label.textColor = .executeTo()
        //: label.textAlignment = .center
        label.textAlignment = .center
        //: label.text = "Invitation code".localized
        label.text = (String(str_showCardCollectionValue) + str_styleModelValue.replacingOccurrences(of: "wrap", with: "t") + String(str_normalTitle)).localized
        //: return label
        return label
        //: }()
    }()

    //: private lazy var inviteCodeCleanBtn: UIButton = {
    private lazy var inviteCodeCleanBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
        btn.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
        //: btn.setImage(UIImage.eponymUp(name: "btn_field_delete_icon"), for: .normal)
        btn.setImage(UIImage.eponymUp(name: (String(str_playerTitle.prefix(9)) + String(str_countData.suffix(4)) + "ete_" + str_viewSizeValue.replacingOccurrences(of: "comment", with: "i"))), for: .normal)
        //: btn.addTarget(self, action: #selector(inviteCodeCleanButtonEvent), for: .touchUpInside)
        btn.addTarget(self, action: #selector(crop), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var inviteCodeInputView: UITextField = {
    lazy var inviteCodeInputView: UITextField = {
        //: let textField = UITextField()
        let textField = UITextField()
        //: textField.backgroundColor = UIColor(hex: "F4F4F4")
        textField.backgroundColor = UIColor(hex: (str_userValue.replacingOccurrences(of: "make", with: "F4")))
        //: textField.font = .pingfangFont(type: .Regular, fontSize: 15)
        textField.font = .pingfang(type: .Regular, fontSize: 15)
        //: textField.textColor = .appTitleColor()
        textField.textColor = .executeTo()
        //: textField.layer.cornerRadius = 25
        textField.layer.cornerRadius = 25
        //: textField.clipsToBounds = true
        textField.clipsToBounds = true
        //: textField.delegate = self
        textField.delegate = self
        //: textField.attributedPlaceholder = NSAttributedString(string: "", attributes: [NSAttributedString.Key.font: UIFont.pingfangFont(type: .Regular, fontSize: 15), NSAttributedString.Key.foregroundColor: UIColor(hex: "BBBBBB")!])
        textField.attributedPlaceholder = NSAttributedString(string: "", attributes: [NSAttributedString.Key.font: UIFont.pingfang(type: .Regular, fontSize: 15), NSAttributedString.Key.foregroundColor: UIColor(hex: (str_fromListData.replacingOccurrences(of: "color", with: "BB") + str_buttonData.replacingOccurrences(of: "to", with: "B")))!])
        //: textField.keyboardType = .default
        textField.keyboardType = .default
        //: textField.returnKeyType = .done
        textField.returnKeyType = .done
        //: let leftView = UIView()
        let leftView = UIView()
        //: leftView.frame = CGRect(x: 0, y: 0, width: 20, height: 50)
        leftView.frame = CGRect(x: 0, y: 0, width: 20, height: 50)
        //: textField.leftView = leftView
        textField.leftView = leftView
        //: textField.leftViewMode = .always
        textField.leftViewMode = .always
        //: let rightView = UIView()
        let rightView = UIView()
        //: rightView.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
        rightView.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
        //: textField.rightView = rightView
        textField.rightView = rightView
        //: textField.rightViewMode = .always
        textField.rightViewMode = .always
        //: rightView.addSubview(inviteCodeCleanBtn)
        rightView.addSubview(inviteCodeCleanBtn)
        //: textField.addTarget(self, action: #selector(inviteCodeTextChage(_:)), for: .editingChanged)
        textField.addTarget(self, action: #selector(telcoCreateingCodification(_:)), for: .editingChanged)
        //: return textField
        return textField
        //: }()
    }()

    //: lazy var commitButton: UIButton = {
    lazy var commitButton: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.isEnabled = false
        btn.isEnabled = false
        //: btn.setTitleColor(UIColor.white, for: .normal)
        btn.setTitleColor(UIColor.white, for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Medium, fontSize: 17)
        btn.titleLabel?.font = UIFont.pingfang(type: .Medium, fontSize: 17)
        //: btn.setTitle("Next".localized, for: .normal)
        btn.setTitle((String(str_toData.suffix(4))).localized, for: .normal)
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: UIColor.appGradientColor(), size: CGSize(width: ScreenWidth - 60, height: 50)), for: .normal)
        btn.setBackgroundImage(UIImage.makeBackground(colors: UIColor.appToVoice(), size: CGSize(width: kLet_cameraValue - 60, height: 50)), for: .normal)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var skipButton: UIButton = {
    lazy var skipButton: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setTitleColor(UIColor(hex: "#8C7AFF"), for: .normal)
        btn.setTitleColor(UIColor(hex: (str_quoteTitle.replacingOccurrences(of: "file", with: "#") + String(str_viewValue.suffix(6)))), for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Medium, fontSize: 17)
        btn.titleLabel?.font = UIFont.pingfang(type: .Medium, fontSize: 17)
        //: let attributeString = NSMutableAttributedString(string: "Skip".localized)
        let attributeString = NSMutableAttributedString(string: (String(str_afterCellValue.prefix(4))).localized)
        //: attributeString.addAttribute(.underlineStyle, value: NSUnderlineStyle.single.rawValue, range: NSRange(location: 0, length: attributeString.length))
        attributeString.addAttribute(.underlineStyle, value: NSUnderlineStyle.single.rawValue, range: NSRange(location: 0, length: attributeString.length))
        //: btn.setAttributedTitle(attributeString, for: .normal)
        btn.setAttributedTitle(attributeString, for: .normal)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingLoginEditInfoView {
extension RawView {
    /// 更新Next按钮状态
    //: private func func__checkFinishBtnState() {
    private func stop() {
        //: if (EqualThen.share.userFillInfoMode.sex == Gender.female.rawValue && !EqualThen.share.appConfigMode.skipInputInviteCodeFemale) ||
        if (EqualThen.share.userFillInfoMode.sex == RunReplaceableCollection.female.rawValue && !EqualThen.share.appConfigMode.skipInputInviteCodeFemale) ||
            //: (EqualThen.share.userFillInfoMode.sex == Gender.male.rawValue && !EqualThen.share.appConfigMode.skipInputInviteCodeMale) {
            (EqualThen.share.userFillInfoMode.sex == RunReplaceableCollection.male.rawValue && !EqualThen.share.appConfigMode.skipInputInviteCodeMale)
        { // 全部必填
            //: let nickName = EqualThen.share.userFillInfoMode.nickName
            let nickName = EqualThen.share.userFillInfoMode.nickName
            //: let inviteCode = EqualThen.share.userFillInfoMode.inviteCode
            let inviteCode = EqualThen.share.userFillInfoMode.inviteCode
            //: commitButton.isEnabled = (nickName.count > 0 && inviteCode.count > 0)
            commitButton.isEnabled = (nickName.count > 0 && inviteCode.count > 0)
            //: } else {
        } else {
            //: commitButton.isEnabled = true
            commitButton.isEnabled = true
        }
    }

    /// 清除邀请码事件
    //: @objc private func inviteCodeCleanButtonEvent() {
    @objc private func crop() {
        //: inviteCodeInputView.text = ""
        inviteCodeInputView.text = ""
        //: EqualThen.share.userFillInfoMode.inviteCode = ""
        EqualThen.share.userFillInfoMode.inviteCode = ""
        //: func__checkFinishBtnState()
        stop()
    }
}

// MARK: - UITextFieldDelegate

//: extension TalkingLoginEditInfoView: UITextFieldDelegate {
extension RawView: UITextFieldDelegate {
    //: @objc private func nicknameTextChage(_ textField: UITextField) {
    @objc private func emptyChage(_: UITextField) {
        //: let verStr: String = nameInputView.text ?? ""
        let verStr: String = nameInputView.text ?? ""
        //: if verStr.count > nameCount {
        if verStr.count > nameCount {
            //: let substring = nameInputView.text?.prefix(nameCount)
            let substring = nameInputView.text?.prefix(nameCount)
            //: nameInputView.text = String(substring ?? "")
            nameInputView.text = String(substring ?? "")
        }

        //: if LanguageManager.shared.direction == .rightToLeft {
        if FileReactiveCompatible.shared.direction == .rightToLeft {
            //: nameCountLab.text = "20/\(nameInputView.text!.count)"
            nameCountLab.text = "20/\(nameInputView.text!.count)"
            //: } else {
        } else {
            //: nameCountLab.text = "\(nameInputView.text!.count)/20"
            nameCountLab.text = "\(nameInputView.text!.count)/20"
        }
        //: EqualThen.share.userFillInfoMode.nickName = nameInputView.text ?? ""
        EqualThen.share.userFillInfoMode.nickName = nameInputView.text ?? ""
        //: func__checkFinishBtnState()
        stop()
    }

    //: @objc private func inviteCodeTextChage(_ textField: UITextField) {
    @objc private func telcoCreateingCodification(_: UITextField) {
        //: let verStr: String = inviteCodeInputView.text ?? ""
        let verStr: String = inviteCodeInputView.text ?? ""
        //: if verStr.count > 6 {
        if verStr.count > 6 {
            //: let substring = inviteCodeInputView.text?.prefix(6)
            let substring = inviteCodeInputView.text?.prefix(6)
            //: inviteCodeInputView.text = String(substring ?? "")
            inviteCodeInputView.text = String(substring ?? "")
        }
        //: EqualThen.share.userFillInfoMode.inviteCode = inviteCodeInputView.text ?? ""
        EqualThen.share.userFillInfoMode.inviteCode = inviteCodeInputView.text ?? ""
        //: func__checkFinishBtnState()
        stop()
    }

    //: func textFieldShouldReturn(_ textField: UITextField) -> Bool {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        //: textField.resignFirstResponder()
        textField.resignFirstResponder()
    }
}

// MARK: - GiftObjectProtocol

//: extension TalkingLoginEditInfoView: DateViewDelegate {
extension RawView: GiftObjectProtocol {
    //: func func__birthControlClickAction() {
    func birth() {
        //: nameInputView.resignFirstResponder()
        nameInputView.resignFirstResponder()
        //: inviteCodeInputView.resignFirstResponder()
        inviteCodeInputView.resignFirstResponder()
        //: let myDateView = TalkingDateView()
        let myDateView = FuturismViewDelegate()
        //: myDateView.delegate = self
        myDateView.delegate = self
        //: let day = EqualThen.share.userFillInfoMode.birthDay
        let day = EqualThen.share.userFillInfoMode.birthDay
        //: let month = EqualThen.share.userFillInfoMode.birthMonth
        let month = EqualThen.share.userFillInfoMode.birthMonth
        //: let year = EqualThen.share.userFillInfoMode.birthYear
        let year = EqualThen.share.userFillInfoMode.birthYear
        //: myDateView.showView()
        myDateView.anView()
        //: DispatchQueue.main.asyncAfter(deadline: .now() + 0.8) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.8) {
            //: myDateView.setDefaultDate(year: year, month: month, day: day)
            myDateView.clueInDay(year: year, month: month, day: day)
        }
    }

    //: func pickDateView(year: Int, month: Int, day: Int) {
    func viewDay(year: Int, month: Int, day: Int) {
        //: birthLabel.text = "\(String(format: "%.2d", month))-\(String(format: "%.2d", day))-\(year)"
        birthLabel.text = "\(String(format: "%.2d", month))-\(String(format: "%.2d", day))-\(year)"
        //: EqualThen.share.userFillInfoMode.birthDay = day
        EqualThen.share.userFillInfoMode.birthDay = day
        //: EqualThen.share.userFillInfoMode.birthMonth = month
        EqualThen.share.userFillInfoMode.birthMonth = month
        //: EqualThen.share.userFillInfoMode.birthYear = year
        EqualThen.share.userFillInfoMode.birthYear = year
    }
}

// MARK: - Layout

//: extension TalkingLoginEditInfoView {
extension RawView {
    /// 添加视图
    //: private func setupSubviews() {
    private func resumeKind() {
        //: addSubview(contentView)
        addSubview(contentView)
        //: contentView.addSubview(nameTitleLab)
        contentView.addSubview(nameTitleLab)
        //: contentView.addSubview(nameInputView)
        contentView.addSubview(nameInputView)
        //: contentView.addSubview(birthTitleLab)
        contentView.addSubview(birthTitleLab)
        //: contentView.addSubview(birthControl)
        contentView.addSubview(birthControl)
        //: birthControl.addSubview(birthLabel)
        birthControl.addSubview(birthLabel)
        //: birthControl.addSubview(birthDownImgView)
        birthControl.addSubview(birthDownImgView)
        //: contentView.addSubview(inviteCodeTitleLab)
//        contentView.addSubview(inviteCodeTitleLab)
        //: contentView.addSubview(inviteCodeInputView)
//        contentView.addSubview(inviteCodeInputView)
        //: contentView.addSubview(commitButton)
        contentView.addSubview(commitButton)
        //: contentView.addSubview(skipButton)
        contentView.addSubview(skipButton)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func file() {
        //: contentView.snp.makeConstraints { make in
        contentView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }

        //: nameTitleLab.snp.makeConstraints { make in
        nameTitleLab.snp.makeConstraints { make in
            //: make.top.equalTo(34)
            make.top.equalTo(34)
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
            //: make.height.equalTo(28)
            make.height.equalTo(28)
        }
        //: nameInputView.snp.makeConstraints { make in
        nameInputView.snp.makeConstraints { make in
            //: make.trailing.equalTo(-30)
            make.trailing.equalTo(-30)
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
            //: make.top.equalTo(nameTitleLab.snp.bottom).offset(16)
            make.top.equalTo(nameTitleLab.snp.bottom).offset(16)
        }
        //: birthTitleLab.snp.makeConstraints { make in
        birthTitleLab.snp.makeConstraints { make in
            //: make.top.equalTo(nameInputView.snp.bottom).offset(30)
            make.top.equalTo(nameInputView.snp.bottom).offset(30)
            //: make.leading.height.equalTo(nameTitleLab)
            make.leading.height.equalTo(nameTitleLab)
        }
        //: birthControl.snp.makeConstraints { make in
        birthControl.snp.makeConstraints { make in
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
            //: make.trailing.equalTo(-30)
            make.trailing.equalTo(-30)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
            //: make.top.equalTo(birthTitleLab.snp.bottom).offset(16)
            make.top.equalTo(birthTitleLab.snp.bottom).offset(16)
        }
        //: birthLabel.snp.makeConstraints { make in
        birthLabel.snp.makeConstraints { make in
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.leading.equalTo(20)
            make.leading.equalTo(20)
            //: make.trailing.equalToSuperview().offset(-40)
            make.trailing.equalToSuperview().offset(-40)
        }
        //: birthDownImgView.snp.makeConstraints { make in
        birthDownImgView.snp.makeConstraints { make in
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.height.width.equalTo(20)
            make.height.width.equalTo(20)
            //: make.trailing.equalToSuperview().offset(-18)
            make.trailing.equalToSuperview().offset(-18)
        }

        //: inviteCodeTitleLab.snp.makeConstraints { make in
//        inviteCodeTitleLab.snp.makeConstraints { make in
//            //: make.top.equalTo(birthControl.snp.bottom).offset(30)
//            make.top.equalTo(birthControl.snp.bottom).offset(30)
//            //: make.leading.height.equalTo(nameTitleLab)
//            make.leading.height.equalTo(nameTitleLab)
//        }
//
//        //: inviteCodeInputView.snp.makeConstraints { make in
//        inviteCodeInputView.snp.makeConstraints { make in
//            //: make.trailing.equalTo(-30)
//            make.trailing.equalTo(-30)
//            //: make.leading.equalTo(30)
//            make.leading.equalTo(30)
//            //: make.height.equalTo(50)
//            make.height.equalTo(50)
//            //: make.top.equalTo(inviteCodeTitleLab.snp.bottom).offset(16)
//            make.top.equalTo(inviteCodeTitleLab.snp.bottom).offset(16)
//        }

        //: commitButton.snp.makeConstraints { make in
        commitButton.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.width.equalTo(ScreenWidth - 60)
            make.width.equalTo(kLet_cameraValue - 60)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
            //: make.top.equalTo(inviteCodeInputView.snp.bottom).offset(30)
            make.top.equalTo(birthControl.snp.bottom).offset(30)
        }

        //: skipButton.snp.makeConstraints { make in
        skipButton.snp.makeConstraints { make in
            //: make.top.equalTo(commitButton.snp.bottom).offset(20)
            make.top.equalTo(commitButton.snp.bottom).offset(20)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.size.equalTo(CGSize(width: 50, height: 18))
            make.size.equalTo(CGSize(width: 50, height: 18))
        }
    }

    /// 添加事件
    //: private func bindInteraction() {
    private func sinceRangeModel() {
        //: skipButton.rx.tap
        skipButton.rx.tap
            //: .subscribe(onNext: { [weak self] in
            .subscribe(onNext: { [weak self] in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: if self.btnBlock != nil {
                if self.btnBlock != nil {
                    //: self.btnBlock!(.Skip)
                    self.btnBlock!(.Skip)
                }
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)

        //: commitButton.rx.tap
        commitButton.rx.tap
            //: .subscribe(onNext: { [weak self] in
            .subscribe(onNext: { [weak self] in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: if self.btnBlock != nil {
                if self.btnBlock != nil {
                    //: self.btnBlock!(.Finish)
                    self.btnBlock!(.Finish)
                }
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)

        //: birthControl.rx.controlEvent(.touchUpInside)
        birthControl.rx.controlEvent(.touchUpInside)
            //: .subscribe(onNext: { [weak self] in
            .subscribe(onNext: { [weak self] in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: self.func__birthControlClickAction()
                self.birth()
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)
    }
}
