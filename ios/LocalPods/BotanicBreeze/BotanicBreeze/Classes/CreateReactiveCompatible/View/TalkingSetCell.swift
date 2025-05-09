
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_roomPhotoName:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "btn_chatsettings_unchoice" :*/
fileprivate let str_unknownValue:[Character] = ["b","t","n","_","c","h","a","t"]
fileprivate let str_viewValue:String = "seoriginorigini"
fileprivate let str_equalLengthValue:String = "umakechoice"

/*: "Free" :*/
fileprivate let str_disappearName:[Character] = ["F","r","e","e"]

/*: "%@ Gold coins / Message" :*/
fileprivate let str_atData:String = "%@ Gotop image crop"
fileprivate let str_viewContent:String = "/ "
fileprivate let str_carrierData:[Character] = ["M","e","s","s","a","g","e"]

/*: "%@ Gold coins / Min" :*/
fileprivate let str_windowValue:String = "raw model let model collection%@ G"
fileprivate let str_backgroundTitle:String = " / Minmode intimate add label right"

/*: "btn_chatsettings_choiced" :*/
fileprivate let str_editName:String = "btn_cmore for return frame"
fileprivate let str_dataContent:String = "tinext"
fileprivate let str_equalSubName:[Character] = ["s","_","c","h","o","i","c","e","d"]

/*: "LV.%d" :*/
fileprivate let str_emptyValue:[Character] = ["L","V",".","%","d"]

/*: "#E9E9E9" :*/
fileprivate let str_sendName:[Character] = ["#","E","9","E","9","E","9"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  TalkingSetCell.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/9/1.
//

//: import UIKit
import UIKit

//: class ChatPriceModel: HandyJSON {
class DataHandyJSON: HandyJSON {
    //: var price: Int = 0
    var price: Int = 0
    //: var levelLimit: Int = 0
    var levelLimit: Int = 0
    //: var isSelected: Bool = false
    var isSelected: Bool = false

    //: required init() {}
    required init() {}
}

//: class TalkingFemaleChatSetCell: UITableViewCell {
class TalkingSetCell: UITableViewCell {
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
        //: self.setupSubviews()
        self.insert()
        //: self.setupSubViewsConstraint()
        self.setupThroughConfinement()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_roomPhotoName.reversed(), encoding: .utf8)!)
    }

    // MARK: - Lazy load

    //: lazy var desLabel: UILabel = {
    lazy var desLabel: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.textColor = .appTitleColor()
        lb.textColor = .executeTo()
        //: lb.font = .pingfangFont(type: .Regular, fontSize: 16)
        lb.font = .pingfang(type: .Regular, fontSize: 16)
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var levelView: UIView = {
    lazy var levelView: UIView = {
        //: let view = UIView()
        let view = UIView()
        //: view.backgroundColor = UIColor.appThemeColor()
        view.backgroundColor = UIColor.plaster()
        //: view.layer.cornerRadius = 10
        view.layer.cornerRadius = 10
        //: view.layer.masksToBounds = true
        view.layer.masksToBounds = true
        //: return view
        return view
        //: }()
    }()

    //: lazy var levelLab: UILabel = {
    lazy var levelLab: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.textColor = UIColor.white
        lb.textColor = UIColor.white
        //: lb.font = .pingfangFont(type: .Regular, fontSize: 12)
        lb.font = .pingfang(type: .Regular, fontSize: 12)
        //: lb.textAlignment = .center
        lb.textAlignment = .center
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var selectedImageView: UIImageView = {
    lazy var selectedImageView: UIImageView = {
        //: let imgView = UIImageView()
        let imgView = UIImageView()
        //: imgView.image = UIImage.eponymUp(name: "btn_chatsettings_unchoice")
        imgView.image = UIImage.eponymUp(name: (String(str_unknownValue) + str_viewValue.replacingOccurrences(of: "origin", with: "t") + "ngs_" + str_equalLengthValue.replacingOccurrences(of: "make", with: "n")))
        //: return imgView
        return imgView
        //: }()
    }()
}

// MARK: - update || fitHeight

//: extension TalkingFemaleChatSetCell {
extension TalkingSetCell {
    //: public func updateCellModel(cellModel: ChatPriceModel, index: Int) {
    public func roomCompartment(cellModel: DataHandyJSON, index: Int) {
        //: switch index {
        switch index {
        //: case 0:
        case 0:
            //: desLabel.text = cellModel.price == 0 ? "Free".localized : "%@ Gold coins / Message".localizedArguments(cellModel.price)
            desLabel.text = cellModel.price == 0 ? (String(str_disappearName)).localized : (String(str_atData.prefix(5)) + "ld coins " + str_viewContent.capitalized + String(str_carrierData)).localizedArguments(cellModel.price)
        //: case 1, 2:
        case 1, 2:
            //: desLabel.text = "%@ Gold coins / Min".localizedArguments(cellModel.price)
            desLabel.text = (String(str_windowValue.suffix(4)) + "old coins" + String(str_backgroundTitle.prefix(6))).localizedArguments(cellModel.price)
        //: default:
        default:
            //: break
            break
        }

        //: selectedImageView.image = cellModel.isSelected == true ? UIImage.eponymUp(name: "btn_chatsettings_choiced") : UIImage.eponymUp(name: "btn_chatsettings_unchoice")
        selectedImageView.image = cellModel.isSelected == true ? UIImage.eponymUp(name: (String(str_editName.prefix(5)) + "hatset" + str_dataContent.replacingOccurrences(of: "next", with: "ng") + String(str_equalSubName))) : UIImage.eponymUp(name: (String(str_unknownValue) + str_viewValue.replacingOccurrences(of: "origin", with: "t") + "ngs_" + str_equalLengthValue.replacingOccurrences(of: "make", with: "n")))

        //: levelLab.text = String(format: "LV.%d", cellModel.levelLimit)
        levelLab.text = String(format: "LV.%d", cellModel.levelLimit)
        //: levelView.isHidden = cellModel.levelLimit == 0
        levelView.isHidden = cellModel.levelLimit == 0
        //: levelLab.isHidden = cellModel.levelLimit == 0
        levelLab.isHidden = cellModel.levelLimit == 0

        //: contentView.backgroundColor = cellModel.levelLimit > (Int(EqualThen.share.loginUserMode.level) ?? 1) ? UIColor(hex: "#E9E9E9") : .white
        contentView.backgroundColor = cellModel.levelLimit > (Int(EqualThen.share.loginUserMode.level) ?? 1) ? UIColor(hex: (String(str_sendName))) : .white
    }
}

// MARK: Layout

//: extension TalkingFemaleChatSetCell {
extension TalkingSetCell {
    //: private func setupSubviews() {
    private func insert() {
        //: contentView.addSubview(desLabel)
        contentView.addSubview(desLabel)
        //: contentView.addSubview(levelView)
        contentView.addSubview(levelView)
        //: contentView.addSubview(levelLab)
        contentView.addSubview(levelLab)
        //: contentView.addSubview(selectedImageView)
        contentView.addSubview(selectedImageView)
    }

    //: private func setupSubViewsConstraint() {
    private func setupThroughConfinement() {
        //: desLabel.snp.makeConstraints { make in
        desLabel.snp.makeConstraints { make in
            //: make.leading.equalTo(15)
            make.leading.equalTo(15)
            //: make.top.equalTo(17)
            make.top.equalTo(17)
            //: make.height.equalTo(20)
            make.height.equalTo(20)
        }
        //: levelView.snp.makeConstraints { make in
        levelView.snp.makeConstraints { make in
            //: make.leading.equalTo(desLabel.snp.trailing).offset(4)
            make.leading.equalTo(desLabel.snp.trailing).offset(4)
            //: make.trailing.equalTo(levelLab.snp.trailing).offset(7)
            make.trailing.equalTo(levelLab.snp.trailing).offset(7)
            //: make.centerY.equalTo(desLabel.snp.centerY)
            make.centerY.equalTo(desLabel.snp.centerY)
            //: make.height.equalTo(20)
            make.height.equalTo(20)
        }
        //: levelLab.snp.makeConstraints { make in
        levelLab.snp.makeConstraints { make in
            //: make.leading.equalTo(levelView.snp.leading).offset(7)
            make.leading.equalTo(levelView.snp.leading).offset(7)
            //: make.centerY.equalTo(levelView.snp.centerY)
            make.centerY.equalTo(levelView.snp.centerY)
            //: make.centerX.equalTo(levelView.snp.centerX)
            make.centerX.equalTo(levelView.snp.centerX)
        }
        //: selectedImageView.snp.makeConstraints { make in
        selectedImageView.snp.makeConstraints { make in
            //: make.trailing.equalTo(-15)
            make.trailing.equalTo(-15)
            //: make.centerY.equalTo(desLabel.snp.centerY)
            make.centerY.equalTo(desLabel.snp.centerY)
            //: make.size.equalTo(CGSize(width: 21.0, height: 21.0))
            make.size.equalTo(CGSize(width: 21.0, height: 21.0))
        }
    }
}
