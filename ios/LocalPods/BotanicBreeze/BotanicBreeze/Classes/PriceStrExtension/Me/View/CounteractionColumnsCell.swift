
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_screenText:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "icon_me_income" :*/
fileprivate let str_coverText:String = "play selficon_me_i"
fileprivate let str_centerValue:[Character] = ["n","c","o","m","e"]

/*: "Income" :*/
fileprivate let str_labContent:[Character] = ["I","n","c","o","m","e"]

/*: "icon_me_male_wallet" :*/
fileprivate let str_marginData:String = "self callicon_m"
fileprivate let str_sourceLabelName:String = "le_wred raw for"
fileprivate let str_textData:String = "atotoet"

/*: "Wallet" :*/
fileprivate let str_directionText:String = "add equal to type userWalle"
fileprivate let str_actionName:[Character] = ["t"]

/*: "#7189F7" :*/
fileprivate let str_emptyValue:String = "#7189F7height target to to"

/*: "Level" :*/
fileprivate let str_marginValue:String = "if byLevel"

/*: "icon_me_level" :*/
fileprivate let str_upTitle:[Character] = ["i","c","o","n","_","m","e","_","l","e","v","e","l"]

/*: "$ :*/
fileprivate let str_finishData:String = "$"

/*: "Verification needed before balance check" :*/
fileprivate let str_nameValue:[UInt8] = [0x34,0x43,0x50,0x47,0x44,0x47,0x41,0x3f,0x52,0x47,0x4d,0x4c,0xfe,0x4c,0x43,0x43,0x42,0x43,0x42,0xfe,0x40,0x43,0x44,0x4d,0x50,0x43,0xfe,0x40,0x3f,0x4a,0x3f,0x4c,0x41,0x43,0xfe,0x41,0x46,0x43,0x41,0x49]

fileprivate func readIcon(edge num: UInt8) -> UInt8 {
    let value = Int(num) + 34
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  CounteractionColumnsCell.swift
//  AbroadTalking
//
//  Created by young on 2023/4/25.
//

//: import UIKit
import UIKit

//: class TalkingMeTwoColumnsCell: UITableViewCell {
class CounteractionColumnsCell: UITableViewCell {
    //: override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        //: super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: self.selectionStyle = .none
        self.selectionStyle = .none

        //: setupSubviews()
        conversationQuantityeraction()
        //: setupSubViewsConstraint()
        culminationConstraint()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_screenText.reversed(), encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var goldCoinsBtn: UIButton = {
    private lazy var goldCoinsBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.backgroundColor = .white
        btn.backgroundColor = .white
        //: btn.layer.cornerRadius = 6
        btn.layer.cornerRadius = 6
        //: btn.layer.masksToBounds = true
        btn.layer.masksToBounds = true
        //: btn.addTarget(self, action: #selector(goldCoinsButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(yellowBlockName), for: .touchUpInside)

        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.font = UIFont.pingfangFont(type: .Medium, fontSize: 16)
        lab.font = UIFont.pingfang(type: .Medium, fontSize: 16)
        //: lab.textColor = UIColor.appTitleColor()
        lab.textColor = UIColor.executeTo()
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: btn.addSubview(lab)
        btn.addSubview(lab)
        //: lab.snp.makeConstraints { make in
        lab.snp.makeConstraints { make in
            //: make.top.equalTo(11)
            make.top.equalTo(11)
            //: make.leading.equalTo(11)
            make.leading.equalTo(11)
        }

        //: let icon = UIImageView()
        let icon = UIImageView()
        //: icon.contentMode = .scaleAspectFill
        icon.contentMode = .scaleAspectFill
        //: btn.addSubview(icon)
        btn.addSubview(icon)
        //: icon.snp.makeConstraints { make in
        icon.snp.makeConstraints { make in
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.trailing.equalTo(-12)
            make.trailing.equalTo(-12)
            //: make.size.equalTo(CGSize(width: 38, height: 37))
            make.size.equalTo(CGSize(width: 38, height: 37))
        }
        //: if EqualThen.share.loginUserMode.sex == Gender.female.rawValue && EqualThen.share.appStatus != AppSkinStatus.special.rawValue {
        if EqualThen.share.loginUserMode.sex == RunReplaceableCollection.female.rawValue && EqualThen.share.appStatus != PhaseOfTheMoonPropertyProtocol.special.rawValue {
            //: icon.image = UIImage.eponymUp(name: "icon_me_income")
            icon.image = UIImage.eponymUp(name: (String(str_coverText.suffix(9)) + String(str_centerValue)))
            //: lab.text = "Income".localized
            lab.text = (String(str_labContent)).localized
            //: } else {
        } else {
            //: icon.image = UIImage.eponymUp(name: "icon_me_male_wallet")
            icon.image = UIImage.eponymUp(name: (String(str_marginData.suffix(6)) + "e_ma" + String(str_sourceLabelName.prefix(4)) + str_textData.replacingOccurrences(of: "to", with: "l")))
            //: lab.text = "Wallet".localized
            lab.text = (String(str_directionText.suffix(5)) + String(str_actionName)).localized
        }
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var goldCoinsNum: UILabel = {
    private lazy var goldCoinsNum: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.font = UIFont.pingfangFont(type: .Medium, fontSize: 18)
        lab.font = UIFont.pingfang(type: .Medium, fontSize: 18)
        //: lab.textColor = UIColor(hex: "#7189F7")
        lab.textColor = UIColor(hex: (String(str_emptyValue.prefix(7))))
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.text = "0"
        lab.text = "0"
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var myLevelBtn: UIButton = {
    private lazy var myLevelBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.backgroundColor = .white
        btn.backgroundColor = .white
        //: btn.layer.cornerRadius = 6
        btn.layer.cornerRadius = 6
        //: btn.layer.masksToBounds = true
        btn.layer.masksToBounds = true
        //: btn.addTarget(self, action: #selector(myLevelButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(picClick), for: .touchUpInside)

        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.font = UIFont.pingfangFont(type: .Medium, fontSize: 16)
        lab.font = UIFont.pingfang(type: .Medium, fontSize: 16)
        //: lab.textColor = UIColor.appTitleColor()
        lab.textColor = UIColor.executeTo()
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.text = "Level".localized
        lab.text = (String(str_marginValue.suffix(5))).localized
        //: btn.addSubview(lab)
        btn.addSubview(lab)
        //: lab.snp.makeConstraints { make in
        lab.snp.makeConstraints { make in
            //: make.top.equalTo(11)
            make.top.equalTo(11)
            //: make.leading.equalTo(11)
            make.leading.equalTo(11)
        }

        //: let icon = UIImageView()
        let icon = UIImageView()
        //: icon.image = UIImage.eponymUp(name: "icon_me_level")
        icon.image = UIImage.eponymUp(name: (String(str_upTitle)))
        //: icon.contentMode = .scaleAspectFill
        icon.contentMode = .scaleAspectFill
        //: btn.addSubview(icon)
        btn.addSubview(icon)
        //: icon.snp.makeConstraints { make in
        icon.snp.makeConstraints { make in
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.trailing.equalTo(-12)
            make.trailing.equalTo(-12)
            //: make.size.equalTo(CGSize(width: 39, height: 37))
            make.size.equalTo(CGSize(width: 39, height: 37))
        }
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var myLevelNum: UILabel = {
    private lazy var myLevelNum: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.font = UIFont.pingfangFont(type: .Medium, fontSize: 18)
        lab.font = UIFont.pingfang(type: .Medium, fontSize: 18)
        //: lab.textColor = UIColor(hex: "#7189F7")
        lab.textColor = UIColor(hex: (String(str_emptyValue.prefix(7))))
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.text = "0"
        lab.text = "0"
        //: return lab
        return lab
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingMeTwoColumnsCell {
extension CounteractionColumnsCell {
    //: func setViewData() {
    func metadataObject() {
        //: if EqualThen.share.loginUserMode.sex == Gender.female.rawValue && EqualThen.share.appStatus != AppSkinStatus.special.rawValue {
        if EqualThen.share.loginUserMode.sex == RunReplaceableCollection.female.rawValue, EqualThen.share.appStatus != PhaseOfTheMoonPropertyProtocol.special.rawValue {
            //: goldCoinsNum.text = "$\(EqualThen.share.loginUserMode.mf_income)"
            goldCoinsNum.text = "$\(EqualThen.share.loginUserMode.mf_income)"
            //: } else {
        } else {
            //: goldCoinsNum.text = "\(EqualThen.share.loginUserMode.mf_coin)"
            goldCoinsNum.text = "\(EqualThen.share.loginUserMode.mf_coin)"
        }
        //: myLevelNum.text = EqualThen.share.loginUserMode.level
        myLevelNum.text = EqualThen.share.loginUserMode.level
    }

    /// gold coins
    //: @objc private func goldCoinsButtonClick() {
    @objc private func yellowBlockName() {
        //: incomeClick()
        rentalIncome()
    }

    /// my level
    //: @objc private func myLevelButtonClick() {
    @objc private func picClick() {
        //: EditTextThen.share.func__pushToWebVC(webViewType: .Level)
        EditTextThen.share.hailType(webViewType: .Level)
    }

    /// income
    //: @objc func incomeClick() {
    @objc func rentalIncome() {
        //: if EqualThen.share.loginUserMode.sex == Gender.female.rawValue && EqualThen.share.appStatus != AppSkinStatus.special.rawValue {
        if EqualThen.share.loginUserMode.sex == RunReplaceableCollection.female.rawValue, EqualThen.share.appStatus != PhaseOfTheMoonPropertyProtocol.special.rawValue {
            //: if EqualThen.share.loginUserMode.isTPAuth == TPUserAuth.unknown.rawValue || EqualThen.share.loginUserMode.isTPAuth == TPUserAuth.isRefused.rawValue {
            if EqualThen.share.loginUserMode.isTPAuth == SkinComparable.unknown.rawValue || EqualThen.share.loginUserMode.isTPAuth == SkinComparable.isRefused.rawValue {
                //: self.func__showStatusBarSuccessMsg(showMsg: "Verification needed before balance check")
                self.fileFirst(showMsg: String(bytes: str_nameValue.map{readIcon(edge: $0)}, encoding: .utf8)!)
                //: let vc = TalkingFaceVerificationVC()
                let vc = CameraVerificationVc()
                //: self.currentViewController()?.navigationController?.pushViewController(vc, animated: true)
                self.infoController()?.navigationController?.pushViewController(vc, animated: true)
                //: } else if EqualThen.share.loginUserMode.isTPAuth == TPUserAuth.isOnGoing.rawValue {
            } else if EqualThen.share.loginUserMode.isTPAuth == SkinComparable.isOnGoing.rawValue {
                //: self.func__showStatusBarSuccessMsg(showMsg: "Verification needed before balance check")
                self.fileFirst(showMsg: String(bytes: str_nameValue.map{readIcon(edge: $0)}, encoding: .utf8)!)
                //: let vc = TalkingFinalVerificationVC()
                let vc = StatusThen()
                //: self.currentViewController()?.navigationController?.pushViewController(vc, animated: true)
                self.infoController()?.navigationController?.pushViewController(vc, animated: true)

                //: } else {
            } else {
                //: EditTextThen.share.func__pushToWebVC(webViewType: .Balance)
                EditTextThen.share.hailType(webViewType: .Balance)
            }

            //: } else {
        } else {
            //: EditTextThen.share.func__pushToWebVC(webViewType: .RechargeFullPage)
            EditTextThen.share.hailType(webViewType: .RechargeFullPage)
        }
    }
}

// MARK: - Layout

//: extension TalkingMeTwoColumnsCell {
extension CounteractionColumnsCell {
    /// 添加视图
    //: private func setupSubviews() {
    private func conversationQuantityeraction() {
        //: self.contentView.addSubview(goldCoinsBtn)
        self.contentView.addSubview(goldCoinsBtn)
        //: goldCoinsBtn.addSubview(goldCoinsNum)
        goldCoinsBtn.addSubview(goldCoinsNum)
        //: self.contentView.addSubview(myLevelBtn)
        self.contentView.addSubview(myLevelBtn)
        //: myLevelBtn.addSubview(myLevelNum)
        myLevelBtn.addSubview(myLevelNum)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func culminationConstraint() {
        //: let btn_width = (ScreenWidth-30-8)/2
        let btn_width = (kLet_cameraValue - 30 - 8) / 2
        //: goldCoinsBtn.snp.makeConstraints { make in
        goldCoinsBtn.snp.makeConstraints { make in
            //: make.top.equalToSuperview()
            make.top.equalToSuperview()
            //: make.leading.equalTo(15)
            make.leading.equalTo(15)
            //: make.size.equalTo(CGSize(width: btn_width, height: 70))
            make.size.equalTo(CGSize(width: btn_width, height: 70))
            //: make.bottom.equalToSuperview().offset(-12)
            make.bottom.equalToSuperview().offset(-12)
        }
        //: goldCoinsNum.snp.makeConstraints { make in
        goldCoinsNum.snp.makeConstraints { make in
            //: make.leading.equalTo(11)
            make.leading.equalTo(11)
            //: make.bottom.equalTo(-10)
            make.bottom.equalTo(-10)
        }

        //: myLevelBtn.snp.makeConstraints { make in
        myLevelBtn.snp.makeConstraints { make in
            //: make.trailing.equalTo(-15)
            make.trailing.equalTo(-15)
            //: make.top.size.bottom.equalTo(goldCoinsBtn)
            make.top.size.bottom.equalTo(goldCoinsBtn)
        }
        //: myLevelNum.snp.makeConstraints { make in
        myLevelNum.snp.makeConstraints { make in
            //: make.leading.equalTo(11)
            make.leading.equalTo(11)
            //: make.bottom.equalTo(-10)
            make.bottom.equalTo(-10)
        }
    }
}
