
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_countValue:[UInt8] = [0xad,0xaa,0xad,0xb0,0xec,0xa7,0xab,0xa0,0xa1,0xb6,0xfe,0xed,0xe4,0xac,0xa5,0xb7,0xe4,0xaa,0xab,0xb0,0xe4,0xa6,0xa1,0xa1,0xaa,0xe4,0xad,0xa9,0xb4,0xa8,0xa1,0xa9,0xa1,0xaa,0xb0,0xa1,0xa0]

private func reportAddSucceed(model num: UInt8) -> UInt8 {
    return num ^ 196
}

/*: "+ :*/
fileprivate let str_popValue:[Character] = ["+"]

/*: "area_icon_ :*/
fileprivate let str_rowCellData:[Character] = ["a","r","e","a"]
fileprivate let str_extraData:[Character] = ["_","i","c","o","n","_"]

/*: @2x" :*/
fileprivate let str_leadingData:String = "under extension model refuse in@2x"

/*: "get img error" :*/
fileprivate let str_tabData:[Character] = ["g","e","t"," ","i","m","g"," ","e","r","r","o","r"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  SourceThen.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/8/29.
//

//: import UIKit
import UIKit

//: class TalkingAreaCodeChoiceCell: UITableViewCell {
class SourceThen: UITableViewCell {
    //: override func awakeFromNib() {
    override func awakeFromNib() {
        //: super.awakeFromNib()
        super.awakeFromNib()
        // Initialization code
    }

    //: required init?(coder: NSCoder) {
    required init?(coder: NSCoder) {
        //: super.init(coder: coder)
        super.init(coder: coder)
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_countValue.map{reportAddSucceed(model: $0)}, encoding: .utf8)!)
    }

    //: override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        //: super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        //: selectionStyle = .none
        selectionStyle = .none
        //: self.setupSubviews()
        self.should()
        //: self.setupSubViewsConstraint()
        self.achromaticColour()
        //: self.bindInteraction()
        self.handleNext()
    }

    //: lazy var areaImgView: UIImageView = {
    lazy var areaImgView: UIImageView = {
        //: let imageView = UIImageView.init()
        let imageView = UIImageView()
        //: imageView.layer.cornerRadius = 11
        imageView.layer.cornerRadius = 11
        //: imageView.clipsToBounds = true
        imageView.clipsToBounds = true
        //: return imageView
        return imageView
        //: }()
    }()

    //: lazy var areaNameLabel: UILabel = {
    lazy var areaNameLabel: UILabel = {
        //: let label = UILabel.init()
        let label = UILabel()
        //: label.font = .pingfangFont(type: .Regular, fontSize: 16)
        label.font = .pingfang(type: .Regular, fontSize: 16)
        //: label.textColor = .appTitleColor()
        label.textColor = .executeTo()
        //: return label
        return label
        //: }()
    }()

    //: lazy var areaCodeLabel: UILabel = {
    lazy var areaCodeLabel: UILabel = {
        //: let label = UILabel.init()
        let label = UILabel()
        //: label.font = .pingfangFont(type: .Regular, fontSize: 16)
        label.font = .pingfang(type: .Regular, fontSize: 16)
        //: label.textColor = .appTitleColor()
        label.textColor = .executeTo()
        //: label.textAlignment = .right
        label.textAlignment = .right
        //: return label
        return label
        //: }()
    }()

    //: override func setSelected(_ selected: Bool, animated: Bool) {
    override func setSelected(_ selected: Bool, animated: Bool) {
        //: super.setSelected(selected, animated: animated)
        super.setSelected(selected, animated: animated)
    }
}

// MARK: - Public Event

//: extension TalkingAreaCodeChoiceCell {
extension SourceThen {
    //: public func func__updateUIWithModel(areaModel: TalkingAreaModel) {
    public func clean(areaModel: EventHandyJSON) {
        //: areaNameLabel.text = areaModel.areaName
        areaNameLabel.text = areaModel.areaName
        //: areaCodeLabel.text = "+\(areaModel.areaCode)"
        areaCodeLabel.text = "+\(areaModel.areaCode)"

        //: if areaModel.url.isEmptyString {
        if areaModel.url.isEmptyString {
            //: var imageName = areaModel.areaName.replacingOccurrences(of: " ", with: "")
            var imageName = areaModel.areaName.replacingOccurrences(of: " ", with: "")
            //: imageName = imageName.replacingOccurrences(of: ",", with: "")
            imageName = imageName.replacingOccurrences(of: ",", with: "")
            //: imageName = imageName.replacingOccurrences(of: ")", with: "")
            imageName = imageName.replacingOccurrences(of: ")", with: "")
            //: imageName = imageName.replacingOccurrences(of: "(", with: "")
            imageName = imageName.replacingOccurrences(of: "(", with: "")
            //: imageName = "area_icon_\(imageName)@2x"
            imageName = (String(str_rowCellData) + String(str_extraData)) + "\(imageName)@2x"
            //: do {
            do {
                //: let url = SVGAEffectTool.default.getZipAreaIconPath(iconName: imageName)
                let url = ToEffectTool.default.iconName(iconName: imageName)
                //: let data = try Data(contentsOf: url)
                let data = try Data(contentsOf: url)
                //: areaImgView.image = UIImage(data: data)
                areaImgView.image = UIImage(data: data)
                //: } catch _ as Error? {
            } catch _ as Error? {
                //: areaImgView.image = UIImage.placeImgSquare()
                areaImgView.image = UIImage.becomeSection()
                //: printLog(message: "get img error")
                printLog(message: (String(str_tabData)))
            }
            //: }else {
        } else {
            //: areaImgView.setUrlImage(urlStr: areaModel.url)
            areaImgView.direct(urlStr: areaModel.url)
        }
    }
}

// MARK: - Layout

//: extension TalkingAreaCodeChoiceCell {
extension SourceThen {
    // 添加视图
    //: private func setupSubviews() {
    private func should() {
        //: contentView.backgroundColor = .white
        contentView.backgroundColor = .white
        //: contentView.addSubview(areaImgView)
        contentView.addSubview(areaImgView)
        //: contentView.addSubview(areaNameLabel)
        contentView.addSubview(areaNameLabel)
        //: contentView.addSubview(areaCodeLabel)
        contentView.addSubview(areaCodeLabel)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func achromaticColour() {
        //: areaImgView.snp.makeConstraints { make in
        areaImgView.snp.makeConstraints { make in
            //: make.centerY.equalTo(contentView)
            make.centerY.equalTo(contentView)
            //: make.leading.equalTo(15)
            make.leading.equalTo(15)
            //: make.width.height.equalTo(22)
            make.width.height.equalTo(22)
        }
        //: areaNameLabel.snp.makeConstraints { make in
        areaNameLabel.snp.makeConstraints { make in
            //: make.centerY.equalTo(contentView)
            make.centerY.equalTo(contentView)
            //: make.leading.equalTo(areaImgView.snp.trailing).offset(8)
            make.leading.equalTo(areaImgView.snp.trailing).offset(8)
        }
        //: areaCodeLabel.snp.makeConstraints { make in
        areaCodeLabel.snp.makeConstraints { make in
            //: make.centerY.equalTo(contentView)
            make.centerY.equalTo(contentView)
            //: make.leading.equalTo(areaNameLabel.snp.trailing).offset(8)
            make.leading.equalTo(areaNameLabel.snp.trailing).offset(8)
            //: make.trailing.equalToSuperview().offset(-13)
            make.trailing.equalToSuperview().offset(-13)
        }
    }

    // 添加事件
    //: private func bindInteraction() {
    private func handleNext() {}
}
