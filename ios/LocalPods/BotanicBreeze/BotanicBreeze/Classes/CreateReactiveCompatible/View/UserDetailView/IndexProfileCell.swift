
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_colorText:[UInt8] = [0x13,0x18,0x13,0x1e,0xd2,0xd,0x19,0xe,0xf,0x1c,0xe4,0xd3,0xca,0x12,0xb,0x1d,0xca,0x18,0x19,0x1e,0xca,0xc,0xf,0xf,0x18,0xca,0x13,0x17,0x1a,0x16,0xf,0x17,0xf,0x18,0x1e,0xf,0xe]

fileprivate func fillUncover(con num: UInt8) -> UInt8 {
    let value = Int(num) - 170
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "icon_ziliao_id_default" :*/
fileprivate let str_lowTitle:String = "cell click self shareicon_"
fileprivate let str_viewLogName:String = "pic value content lab labelo_id_d"

/*: "icon_ziliao_xingzuo_default" :*/
fileprivate let str_requestData:String = "icolab"
fileprivate let str_styleTitle:String = "o_xingview per cell"
fileprivate let str_gestureContent:String = "efaulview"

/*: "icon_ziliao_qianming_default" :*/
fileprivate let str_appSectionTitle:[Character] = ["i","c","o","n","_","z","i","l","i","a","o","_","q","i","a","n"]
fileprivate let str_atButtonTitle:String = "petition ifming_"

/*: "btn_me_copy" :*/
fileprivate let str_playValue:[Character] = ["b","t","n","_","m","e","_","c","o","p"]
fileprivate let str_micTaskName:String = "wrap"

/*: "icon_data_man" :*/
fileprivate let str_keyValue:String = "add progress height foricon_da"
fileprivate let str_numberName:[Character] = ["t","a","_","m","a","n"]

/*: "icon_data_position" :*/
fileprivate let str_cardTitle:[Character] = ["i","c","o","n","_","d","a","t","a","_","p","o","s","i"]
fileprivate let str_cameraValue:String = "TION"

/*: "UID Copied" :*/
fileprivate let str_indexText:[Character] = ["U","I","D"," "]
fileprivate let str_leadingContent:[Character] = ["C","o","p","i","e","d"]

/*: "icon_data_woman" :*/
fileprivate let str_endValue:[UInt8] = [0xcf,0xc5,0xc9,0xc8,0xf9,0xc2,0xc7,0xd2,0xc7,0xf9,0xd1,0xc9,0xcb,0xc7,0xc8]

private func viewTable(minute num: UInt8) -> UInt8 {
    return num ^ 166
}

/*: "  :*/
fileprivate let str_hungName:[Character] = [" "]

/*: "666666" :*/
fileprivate let str_tagSizeValue:String = "awakeawakeawake"

/*: "No personal signature was completed" :*/
fileprivate let str_contentMakeViewValue:[UInt8] = [0x64,0x65,0x74,0x65,0x6c,0x70,0x6d,0x6f,0x63,0x20,0x73,0x61,0x77,0x20,0x65,0x72,0x75,0x74,0x61,0x6e,0x67,0x69,0x73,0x20,0x6c,0x61,0x6e,0x6f,0x73,0x72,0x65,0x70,0x20,0x6f,0x4e]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  IndexProfileCell.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/9/6.
//

//: import UIKit
import UIKit

//: class TalkingUserDetailProfileCell: UITableViewCell {
class IndexProfileCell: UITableViewCell {
    //: override func awakeFromNib() {
    override func awakeFromNib() {
        //: super.awakeFromNib()
        super.awakeFromNib()
    }

    //: override func setSelected(_ selected: Bool, animated: Bool) {
    override func setSelected(_ selected: Bool, animated: Bool) {
        //: super.setSelected(selected, animated: animated)
        super.setSelected(selected, animated: animated)
    }

    //: override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        //: super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        //: self.selectionStyle = .none
        self.selectionStyle = .none
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: self.contentView.backgroundColor = .clear
        self.contentView.backgroundColor = .clear

        //: self.setupSubviews()
        self.header()
        //: self.setupSubViewsConstraint()
        self.searchConstraint()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_colorText.map{fillUncover(con: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy load

    //: private lazy var uidImgView: UIImageView = {
    private lazy var uidImgView: UIImageView = {
        //: let imgV = UIImageView()
        let imgV = UIImageView()
        //: imgV.image = UIImage.eponymUp(name: "icon_ziliao_id_default")
        imgV.image = UIImage.eponymUp(name: (String(str_lowTitle.suffix(5)) + "zilia" + String(str_viewLogName.suffix(6)) + "efault"))
        //: return imgV
        return imgV
        //: }()
    }()

    //: private lazy var constellationImgView: UIImageView = {
    private lazy var constellationImgView: UIImageView = {
        //: let imgV = UIImageView()
        let imgV = UIImageView()
        //: imgV.image = UIImage.eponymUp(name: "icon_ziliao_xingzuo_default")
        imgV.image = UIImage.eponymUp(name: (str_requestData.replacingOccurrences(of: "lab", with: "n") + "_zilia" + String(str_styleTitle.prefix(6)) + "zuo_d" + str_gestureContent.replacingOccurrences(of: "view", with: "t")))
        //: return imgV
        return imgV
        //: }()
    }()

    //: private lazy var signImgView: UIImageView = {
    private lazy var signImgView: UIImageView = {
        //: let imgV = UIImageView()
        let imgV = UIImageView()
        //: imgV.image = UIImage.eponymUp(name: "icon_ziliao_qianming_default")
        imgV.image = UIImage.eponymUp(name: (String(str_appSectionTitle) + String(str_atButtonTitle.suffix(5)) + "default"))
        //: return imgV
        return imgV
        //: }()
    }()

    //: private lazy var uidLab: UILabel = {
    private lazy var uidLab: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.font = .pingfangFont(type: .Regular, fontSize: 15)
        lb.font = .pingfang(type: .Regular, fontSize: 15)
        //: lb.textColor = .appValueColor()
        lb.textColor = .addColor()
        //: return lb
        return lb
        //: }()
    }()

    //: private lazy var constellationLab: UILabel = {
    private lazy var constellationLab: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.font = .pingfangFont(type: .Regular, fontSize: 15)
        lb.font = .pingfang(type: .Regular, fontSize: 15)
        //: lb.textColor = .appValueColor()
        lb.textColor = .addColor()
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var signLab: UILabel = {
    lazy var signLab: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.font = .pingfangFont(type: .Regular, fontSize: 15)
        lb.font = .pingfang(type: .Regular, fontSize: 15)
        //: lb.textColor = .appValueColor()
        lb.textColor = .addColor()
        //: lb.numberOfLines = 0
        lb.numberOfLines = 0
        //: return lb
        return lb
        //: }()
    }()

    //: private lazy var copyButton: UIButton = {
    private lazy var copyButton: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setImage(UIImage.eponymUp(name: "btn_me_copy"), for: .normal)
        btn.setImage(UIImage.eponymUp(name: (String(str_playValue) + str_micTaskName.replacingOccurrences(of: "wrap", with: "y"))), for: .normal)
        //: btn.addTarget(self, action: #selector(clickCopyButtonAction), for: .touchUpInside)
        btn.addTarget(self, action: #selector(equalIn), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var sexIcon: UIImageView = {
    private lazy var sexIcon: UIImageView = {
        //: let imgV = UIImageView()
        let imgV = UIImageView()
        //: imgV.image = UIImage.eponymUp(name: "icon_data_man")
        imgV.image = UIImage.eponymUp(name: (String(str_keyValue.suffix(7)) + String(str_numberName)))
        //: return imgV
        return imgV
        //: }()
    }()

    //: private lazy var ageLab: UILabel = {
    private lazy var ageLab: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.font = .pingfangFont(type: .Regular, fontSize: 15)
        lb.font = .pingfang(type: .Regular, fontSize: 15)
        //: lb.textColor = .appValueColor()
        lb.textColor = .addColor()
        //: return lb
        return lb
        //: }()
    }()

    //: private lazy var locationButton: TalkingButton = {
    private lazy var locationButton: ProgressTalkingButton = {
        //: let btn = TalkingButton(type: .custom)
        let btn = ProgressTalkingButton(type: .custom)
        //: btn.spaceBetweenTitleAndImage = 4
        btn.spaceBetweenTitleAndImage = 4
        //: btn.setImage(UIImage.eponymUp(name: "icon_data_position"), for: .normal)
        btn.setImage(UIImage.eponymUp(name: (String(str_cardTitle) + str_cameraValue.lowercased())), for: .normal)
        //: btn.setTitleColor(UIColor.appValueColor(), for: .normal)
        btn.setTitleColor(UIColor.addColor(), for: .normal)
        //: btn.titleLabel?.font = UIFont.outsideAllSize(fontSize: 15)
        btn.titleLabel?.font = UIFont.outsideAllSize(fontSize: 15)
        //: btn.titleLabel?.lineBreakMode = .byTruncatingTail
        btn.titleLabel?.lineBreakMode = .byTruncatingTail
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingUserDetailProfileCell {
extension IndexProfileCell {
    //: @objc func clickCopyButtonAction() {
    @objc func equalIn() {
        //: UIPasteboard.general.string = uidLab.text
        UIPasteboard.general.string = uidLab.text
        //: ProgressHUD.toast("UID Copied".localized)
        ModelReactiveCompatible.doMake((String(str_indexText) + String(str_leadingContent)).localized)
    }
}

// MARK: - update

//: extension TalkingUserDetailProfileCell {
extension IndexProfileCell {
    /// 刷新个人资料cell
    /// - Parameter userModel: 用户模型
    //: func configWithDataModel(userModel: TalkingUserInfoModel) {
    func renameImage(userModel: OccurrentInfoModel) {
        //: uidLab.text = userModel.uid
        uidLab.text = userModel.uid
        //: constellationLab.text = userModel.constellation
        constellationLab.text = userModel.constellation
        //: let sexImgStr = (userModel.sex == Gender.female.rawValue) ? "icon_data_woman":"icon_data_man"
        let sexImgStr = (userModel.sex == RunReplaceableCollection.female.rawValue) ? String(bytes: str_endValue.map{viewTable(minute: $0)}, encoding: .utf8)! : (String(str_keyValue.suffix(7)) + String(str_numberName))
        //: sexIcon.image = UIImage.eponymUp(name: sexImgStr)
        sexIcon.image = UIImage.eponymUp(name: sexImgStr)
        //: ageLab.text = "\(userModel.age)"
        ageLab.text = "\(userModel.age)"
        //: locationButton.isHidden = userModel.location.count <= 0
        locationButton.isHidden = userModel.location.count <= 0
        //: locationButton.setTitle(" \(userModel.location)", for: .normal)
        locationButton.setTitle(" \(userModel.location)", for: .normal)
        //: if userModel.signature?.isEmptyString == false {
        if userModel.signature?.isEmptyString == false {
            //: let attributes = [.foregroundColor: UIColor(hex: "666666")!, .font: UIFont.pingfangFont(type: .Regular, fontSize: 15)] as [NSAttributedString.Key: Any]
            let attributes = [.foregroundColor: UIColor(hex: (str_tagSizeValue.replacingOccurrences(of: "awake", with: "66")))!, .font: UIFont.pingfang(type: .Regular, fontSize: 15)] as [NSAttributedString.Key: Any]
            //: let attributeStr = NSMutableAttributedString(string: userModel.signature ?? "No personal signature was completed".localized)
            let attributeStr = NSMutableAttributedString(string: userModel.signature ?? String(bytes: str_contentMakeViewValue.reversed(), encoding: .utf8)!.localized)
            //: attributeStr.addAttributes(attributes, range: NSRange(location: 0, length: attributeStr.length))
            attributeStr.addAttributes(attributes, range: NSRange(location: 0, length: attributeStr.length))
            //: let paragraph = NSMutableParagraphStyle()
            let paragraph = NSMutableParagraphStyle()
            //: paragraph.lineSpacing = 2
            paragraph.lineSpacing = 2
            //: attributeStr.addAttribute(.paragraphStyle, value: paragraph, range: NSRange(location: 0, length: attributeStr.length))
            attributeStr.addAttribute(.paragraphStyle, value: paragraph, range: NSRange(location: 0, length: attributeStr.length))

            //: signLab.isHidden = false
            signLab.isHidden = false
            //: signImgView.isHidden = false
            signImgView.isHidden = false
            //: signLab.attributedText = attributeStr
            signLab.attributedText = attributeStr
            //: } else {
        } else {
            //: signLab.isHidden = true
            signLab.isHidden = true
            //: signImgView.isHidden = true
            signImgView.isHidden = true
        }
        //: if locationButton.isHidden && userModel.uid.count > 0 {
        if locationButton.isHidden, userModel.uid.count > 0 {
            //: sexIcon.snp.remakeConstraints { make in
            sexIcon.snp.remakeConstraints { make in
                //: make.top.equalTo(uidImgView.snp.bottom).offset(10)
                make.top.equalTo(uidImgView.snp.bottom).offset(10)
                //: make.leading.size.equalTo(uidImgView)
                make.leading.size.equalTo(uidImgView)
            }
        }
    }
}

// MARK: Layout

//: extension TalkingUserDetailProfileCell {
extension IndexProfileCell {
    //: private func setupSubviews() {
    private func header() {
        //: contentView.addSubview(uidImgView)
        contentView.addSubview(uidImgView)
        //: contentView.addSubview(uidLab)
        contentView.addSubview(uidLab)
        //: contentView.addSubview(copyButton)
        contentView.addSubview(copyButton)
        //: contentView.addSubview(constellationImgView)
        contentView.addSubview(constellationImgView)
        //: contentView.addSubview(constellationLab)
        contentView.addSubview(constellationLab)
        //: contentView.addSubview(sexIcon)
        contentView.addSubview(sexIcon)
        //: contentView.addSubview(ageLab)
        contentView.addSubview(ageLab)
        //: contentView.addSubview(signImgView)
        contentView.addSubview(signImgView)
        //: contentView.addSubview(signLab)
        contentView.addSubview(signLab)
        //: contentView.addSubview(locationButton)
        contentView.addSubview(locationButton)
    }

    //: private func setupSubViewsConstraint() {
    private func searchConstraint() {
        //: uidImgView.snp.makeConstraints { make in
        uidImgView.snp.makeConstraints { make in
            //: make.top.leading.equalTo(15)
            make.top.leading.equalTo(15)
            //: make.size.equalTo(CGSize(width: 22, height: 22))
            make.size.equalTo(CGSize(width: 22, height: 22))
        }
        //: uidLab.snp.makeConstraints { make in
        uidLab.snp.makeConstraints { make in
            //: make.leading.equalTo(uidImgView.snp.trailing).offset(6)
            make.leading.equalTo(uidImgView.snp.trailing).offset(6)
            //: make.centerY.equalTo(uidImgView)
            make.centerY.equalTo(uidImgView)
        }
        //: copyButton.snp.makeConstraints { make in
        copyButton.snp.makeConstraints { make in
            //: make.leading.equalTo(uidLab.snp.trailing).offset(4)
            make.leading.equalTo(uidLab.snp.trailing).offset(4)
            //: make.centerY.equalTo(uidImgView)
            make.centerY.equalTo(uidImgView)
            //: make.size.equalTo(CGSize(width: 22, height: 22))
            make.size.equalTo(CGSize(width: 22, height: 22))
        }
        //: locationButton.snp.makeConstraints { make in
        locationButton.snp.makeConstraints { make in
            //: make.leading.equalTo(uidImgView)
            make.leading.equalTo(uidImgView)
            //: make.top.equalTo(uidImgView.snp.bottom).offset(9)
            make.top.equalTo(uidImgView.snp.bottom).offset(9)
            //: make.height.equalTo(22)
            make.height.equalTo(22)
        }
        //: sexIcon.snp.makeConstraints { make in
        sexIcon.snp.makeConstraints { make in
            //: make.leading.size.equalTo(uidImgView)
            make.leading.size.equalTo(uidImgView)
            //: make.top.equalTo(locationButton.snp.bottom).offset(10)
            make.top.equalTo(locationButton.snp.bottom).offset(10)
        }
        //: ageLab.snp.makeConstraints { make in
        ageLab.snp.makeConstraints { make in
            //: make.leading.equalTo(sexIcon.snp.trailing).offset(6)
            make.leading.equalTo(sexIcon.snp.trailing).offset(6)
            //: make.centerY.equalTo(sexIcon)
            make.centerY.equalTo(sexIcon)
        }
        //: constellationImgView.snp.makeConstraints { make in
        constellationImgView.snp.makeConstraints { make in
            //: make.leading.size.equalTo(uidImgView)
            make.leading.size.equalTo(uidImgView)
            //: make.top.equalTo(sexIcon.snp.bottom).offset(10)
            make.top.equalTo(sexIcon.snp.bottom).offset(10)
        }
        //: constellationLab.snp.makeConstraints { make in
        constellationLab.snp.makeConstraints { make in
            //: make.leading.equalTo(constellationImgView.snp.trailing).offset(6)
            make.leading.equalTo(constellationImgView.snp.trailing).offset(6)
            //: make.centerY.equalTo(constellationImgView)
            make.centerY.equalTo(constellationImgView)
        }
        //: signImgView.snp.makeConstraints { make in
        signImgView.snp.makeConstraints { make in
            //: make.leading.size.equalTo(uidImgView)
            make.leading.size.equalTo(uidImgView)
            //: make.top.equalTo(constellationImgView.snp.bottom).offset(10)
            make.top.equalTo(constellationImgView.snp.bottom).offset(10)
        }
        //: signLab.snp.makeConstraints { make in
        signLab.snp.makeConstraints { make in
            //: make.leading.equalTo(signImgView.snp.trailing).offset(6)
            make.leading.equalTo(signImgView.snp.trailing).offset(6)
            //: make.trailing.equalTo(-15)
            make.trailing.equalTo(-15)
            //: make.top.equalTo(constellationLab.snp.bottom).offset(12)
            make.top.equalTo(constellationLab.snp.bottom).offset(12)
        }
    }
}
