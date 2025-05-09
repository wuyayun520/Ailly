
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_rateData:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "icon_home_v" :*/
fileprivate let str_colorName:[Character] = ["i","c"]
fileprivate let str_styleText:[Character] = ["o","n","_","h","o","m","e","_","v"]

/*: "Delete" :*/
fileprivate let str_buttonMakeName:String = "height manager nameDelete"

/*: "ion_blacklist_back" :*/
fileprivate let str_selectedContent:String = "ion_btop frame equal"
fileprivate let str_labelData:String = "ist_backcell title"

/*: "icon_home_boy" :*/
fileprivate let str_titleValue:String = "less element texticon_"
fileprivate let str_managerValue:String = "blocko"
fileprivate let str_imageTitle:[Character] = ["m","e","_","b","o","y"]

/*: "icon_home_girl" :*/
fileprivate let str_barContent:[Character] = ["i","c","o","n","_","h","o"]
fileprivate let str_onIndexData:String = "me_girlfragment make"

/*: "   " :*/
fileprivate let str_makeBlackContent:String = "   "

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  TalkingReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/9/16.
//

//: import UIKit
import UIKit

//: typealias DelteBlckIconBlock = (Int) ->()
typealias DelteBlckIconBlock = (Int) -> Void

//: class TalkingBlacklistCell: UITableViewCell {
class TalkingReactiveCompatible: UITableViewCell {
    //: var currenModel = TalkingBlacklistModel()
    var currenModel = UpMeasurable()
    //: var index = 0
    var index = 0
    //: var deleteBlock: DelteBlckIconBlock!
    var deleteBlock: DelteBlckIconBlock!

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

    //: required init?(coder aDecoder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_rateData.reversed(), encoding: .utf8)!)
    }

    //: override func layoutSubviews() {
    override func layoutSubviews() {
        //: super.layoutSubviews()
        super.layoutSubviews()
    }

    //: override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        //: super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        //: selectionStyle = UITableViewCell.SelectionStyle.none
        selectionStyle = UITableViewCell.SelectionStyle.none
        //: self.backgroundColor = UIColor.clear
        self.backgroundColor = UIColor.clear
        //: self.contentView.backgroundColor = UIColor.clear
        self.contentView.backgroundColor = UIColor.clear
        //: self.contentView.addSubview(IconBtn)
        self.contentView.addSubview(IconBtn)
        //: self.contentView.addSubview(nameLabel)
        self.contentView.addSubview(nameLabel)
        //: self.contentView.addSubview(cardImg)
        self.contentView.addSubview(cardImg)
        //: self.contentView.addSubview(sexBtn)
        self.contentView.addSubview(sexBtn)
        //: self.contentView.addSubview(RemoveBtn)
        self.contentView.addSubview(RemoveBtn)

        //: IconBtn.snp.makeConstraints { make in
        IconBtn.snp.makeConstraints { make in
            //: make.leading.equalTo(self).offset(15)
            make.leading.equalTo(self).offset(15)
            //: make.top.equalTo(self).offset(8)
            make.top.equalTo(self).offset(8)
            //: make.width.height.equalTo(40)
            make.width.height.equalTo(40)
        }
        //: nameLabel.snp.makeConstraints { make in
        nameLabel.snp.makeConstraints { make in
            //: make.leading.equalTo(IconBtn.snp.trailing).offset(12)
            make.leading.equalTo(IconBtn.snp.trailing).offset(12)
            //: make.top.equalTo(self).offset(17)
            make.top.equalTo(self).offset(17)
            //: make.height.equalTo(21)
            make.height.equalTo(21)
        }
        //: cardImg.snp.makeConstraints { make in
        cardImg.snp.makeConstraints { make in
            //: make.leading.equalTo(nameLabel.snp.trailing).offset(4)
            make.leading.equalTo(nameLabel.snp.trailing).offset(4)
            //: make.top.equalTo(self).offset(20)
            make.top.equalTo(self).offset(20)
            //: make.height.equalTo(16)
            make.height.equalTo(16)
            //: make.width.equalTo(16)
            make.width.equalTo(16)
        }
        //: sexBtn.snp.makeConstraints { make in
        sexBtn.snp.makeConstraints { make in
            //: make.leading.equalTo(cardImg.snp.trailing).offset(4)
            make.leading.equalTo(cardImg.snp.trailing).offset(4)
            //: make.top.equalTo(self).offset(20)
            make.top.equalTo(self).offset(20)
            //: make.height.equalTo(16)
            make.height.equalTo(16)
            //: make.width.equalTo(33)
            make.width.equalTo(33)
            //: make.trailing.lessThanOrEqualTo(RemoveBtn.snp.leading).offset(-5)
            make.trailing.lessThanOrEqualTo(RemoveBtn.snp.leading).offset(-5)
        }
        //: RemoveBtn.snp.makeConstraints { make in
        RemoveBtn.snp.makeConstraints { make in
            //: make.trailing.equalTo(self.snp.trailing).offset(-15)
            make.trailing.equalTo(self.snp.trailing).offset(-15)
            //: make.centerY.equalTo(self)
            make.centerY.equalTo(self)
            //: make.height.equalTo(34)
            make.height.equalTo(34)
            //: make.width.equalTo(89)
            make.width.equalTo(89)
        }
    }

    // MARK: - Lazy load

    //: lazy var IconBtn: UIButton = {
    lazy var IconBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.layer.cornerRadius = 5
        btn.layer.cornerRadius = 5
        //: btn.layer.masksToBounds = true
        btn.layer.masksToBounds = true
        //: btn.addTarget(self, action: #selector(IconBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(nameClick), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var nameLabel: UILabel = {
    lazy var nameLabel: UILabel = {
        //: let label = UILabel.init()
        let label = UILabel()
        //: label.font = .pingfangFont(type: .Medium, fontSize: 18)
        label.font = .pingfang(type: .Medium, fontSize: 18)
        //: label.textColor = .appTitleColor()
        label.textColor = .executeTo()
        //: return label
        return label
        //: }()
    }()

    //: lazy var cardImg: UIImageView = {
    lazy var cardImg: UIImageView = {
        //: let img = UIImageView.init()
        let img = UIImageView()
        //: img.image = UIImage.eponymUp(name: "icon_home_v")
        img.image = UIImage.eponymUp(name: (String(str_colorName) + String(str_styleText)))
        //: img.contentMode = .scaleAspectFill
        img.contentMode = .scaleAspectFill
        //: return img
        return img
        //: }()
    }()

    //: lazy var sexBtn: UIButton = {
    lazy var sexBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.setTitleColor(UIColor.white, for: .normal)
        btn.setTitleColor(UIColor.white, for: .normal)
        //: btn.titleLabel?.font = .pingfangFont(type: .Medium, fontSize: 10)
        btn.titleLabel?.font = .pingfang(type: .Medium, fontSize: 10)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var RemoveBtn: UIButton = {
    lazy var RemoveBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.setTitle("Delete".localized, for: .normal)
        btn.setTitle((String(str_buttonMakeName.suffix(6))).localized, for: .normal)
        //: btn.setTitleColor(UIColor.appThemeColor(), for: .normal)
        btn.setTitleColor(UIColor.plaster(), for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Regular, fontSize: 16)
        btn.titleLabel?.font = UIFont.pingfang(type: .Regular, fontSize: 16)
        //: btn.setBackgroundImage(UIImage.eponymUp(name: "ion_blacklist_back"), for: .normal)
        btn.setBackgroundImage(UIImage.eponymUp(name: (String(str_selectedContent.prefix(5)) + "lackl" + String(str_labelData.prefix(8)))), for: .normal)
        //: btn.addTarget(self, action: #selector(RemoveBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(saloon), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingBlacklistCell {
extension TalkingReactiveCompatible {
    //: func setCell(model: TalkingBlacklistModel, index: Int) {
    func videoStochasticProcess(model: UpMeasurable, index: Int) {
        //: currenModel = model
        currenModel = model
        //: self.index = index
        self.index = index
        //: IconBtn.setUrlImage(urlStr: model.headPic ?? "")
        IconBtn.dataBack(urlStr: model.headPic ?? "")
        //: nameLabel.text = model.nickname
        nameLabel.text = model.nickname

        //: if model.isTPAuth == false {
        if model.isTPAuth == false {
            //: cardImg.isHidden = true
            cardImg.isHidden = true
            //: cardImg.snp.updateConstraints { make in
            cardImg.snp.updateConstraints { make in
                //: make.width.equalTo(1)
                make.width.equalTo(1)
                //: make.leading.equalTo(nameLabel.snp.trailing).offset(0)
                make.leading.equalTo(nameLabel.snp.trailing).offset(0)
            }
            //: } else {
        } else {
            //: cardImg.isHidden = false
            cardImg.isHidden = false
            //: cardImg.snp.updateConstraints { make in
            cardImg.snp.updateConstraints { make in
                //: make.leading.equalTo(nameLabel.snp.trailing).offset(4)
                make.leading.equalTo(nameLabel.snp.trailing).offset(4)
                //: make.width.equalTo(16)
                make.width.equalTo(16)
            }
        }
        //: switch model.sex {
        switch model.sex {
        //: case 1:
        case 1:
            //: sexBtn.setBackgroundImage(UIImage.eponymUp(name: "icon_home_boy"), for: .normal)
            sexBtn.setBackgroundImage(UIImage.eponymUp(name: (String(str_titleValue.suffix(5)) + str_managerValue.replacingOccurrences(of: "block", with: "h") + String(str_imageTitle))), for: .normal)
        //: break
        //: case 2:
        case 2:
            //: sexBtn.setBackgroundImage(UIImage.eponymUp(name: "icon_home_girl"), for: .normal)
            sexBtn.setBackgroundImage(UIImage.eponymUp(name: (String(str_barContent) + String(str_onIndexData.prefix(7)))), for: .normal)
        //: break
        //: default:
        default:
            //: break
            break
        }
        //: sexBtn.setTitle("   " + String(model.age!), for: .normal)
        sexBtn.setTitle("   " + String(model.age!), for: .normal)
    }

    //: @objc func IconBtnClick() {
    @objc func nameClick() {
        //: EditTextThen.share.func__pushToUserDetailVC(uid: currenModel.uid)
        EditTextThen.share.soulAge(uid: currenModel.uid)
    }

    //: @objc func RemoveBtnClick() {
    @objc func saloon() {
        //: if self.deleteBlock != nil {
        if self.deleteBlock != nil {
            //: self.deleteBlock(index)
            self.deleteBlock(index)
        }
    }
}
