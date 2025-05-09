
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_createName:[UInt8] = [0xfd,0x2,0xfd,0x8,0xbc,0xf7,0x3,0xf8,0xf9,0x6,0xce,0xbd,0xb4,0xfc,0xf5,0x7,0xb4,0x2,0x3,0x8,0xb4,0xf6,0xf9,0xf9,0x2,0xb4,0xfd,0x1,0x4,0x0,0xf9,0x1,0xf9,0x2,0x8,0xf9,0xf8]

fileprivate func molarConcentration(add num: UInt8) -> UInt8 {
    let value = Int(num) - 148
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "btn_daily_todayBg_nor" :*/
fileprivate let str_nameShowValue:[Character] = ["b","t","n","_","d","a","i"]
fileprivate let str_modeData:String = "make"
fileprivate let str_pleaseTitle:String = "type buttony_tod"

/*: "btn_daily_style1_nor" :*/
fileprivate let str_hiddenCameraIName:[Character] = ["b","t","n","_","d","a","i","l","y","_","s","t","y","l","e","1","_","n","o","r"]

/*: "btn_daily_todayLight_nor" :*/
fileprivate let str_extraName:[Character] = ["b","t","n","_","d","a","i","l","y","_","t","o","d"]
fileprivate let str_colorData:[Character] = ["a","y","L","i","g","h","t","_","n","o","r"]

/*: "btn_daily_notSignIn_nor" :*/
fileprivate let str_makeNameTitle:String = "equal centerbtn_d"
fileprivate let str_readingData:String = "otSignIyou color bottom"
fileprivate let str_changeLabName:[Character] = ["n","_","n","o","r"]

/*: "btn_daily_signIn_nor" :*/
fileprivate let str_valueUpVarText:[Character] = ["b","t","n","_","d","a","i","l","y","_","s","i","g"]
fileprivate let str_makeIndexTrueTitle:String = "nIn_norself selected number in"

/*: "btn_daily_today_nor" :*/
fileprivate let str_styleData:String = "to textbtn_da"
fileprivate let str_textData:String = "day_nordirection return super"

/*: "#FF8F1A" :*/
fileprivate let str_arrayValue:String = "data model add view label#FF8F1"
fileprivate let str_imageText:String = "a"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ModelReusableView.swift
//  AbroadTalking
//
//  Created by young on 2022/12/5.
//

//: import UIKit
import UIKit

//: class TalkingDailyItemCell: UICollectionViewCell {
class ModelReusableView: UICollectionViewCell {
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_createName.map{molarConcentration(add: $0)}, encoding: .utf8)!)
    }

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.contentView.backgroundColor = .white
        self.contentView.backgroundColor = .white
        //: self.setupSubviews()
        self.rubric()
        //: self.setupSubViewsConstraint()
        self.loadLess()
    }

    // MARK: - Lazy Load

    //: private lazy var iconImgBgV: UIImageView = {
    private lazy var iconImgBgV: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.image = UIImage.eponymUp(name: "btn_daily_todayBg_nor")
        img.image = UIImage.eponymUp(name: (String(str_nameShowValue) + str_modeData.replacingOccurrences(of: "make", with: "l") + String(str_pleaseTitle.suffix(5)) + "ayBg_nor"))
        //: img.isHidden = true
        img.isHidden = true
        //: img.contentMode = .scaleAspectFill
        img.contentMode = .scaleAspectFill
        //: return img
        return img
        //: }()
    }()

    //: private lazy var iconImgV: UIImageView = {
    private lazy var iconImgV: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.image = UIImage.eponymUp(name: "btn_daily_style1_nor")
        img.image = UIImage.eponymUp(name: (String(str_hiddenCameraIName)))
        //: img.contentMode = .scaleAspectFill
        img.contentMode = .scaleAspectFill
        //: return img
        return img
        //: }()
    }()

    //: private lazy var iconLightV: UIImageView = {
    private lazy var iconLightV: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.image = UIImage.eponymUp(name: "btn_daily_todayLight_nor")
        img.image = UIImage.eponymUp(name: (String(str_extraName) + String(str_colorData)))
        //: img.isHidden = true
        img.isHidden = true
        //: img.contentMode = .scaleAspectFill
        img.contentMode = .scaleAspectFill
        //: return img
        return img
        //: }()
    }()

    //: private lazy var dayLab: UILabel = {
    private lazy var dayLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var addIconLab: UILabel = {
    private lazy var addIconLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.font = UIFont.pingfangWithDiameter(fontSize: 14)
        lab.font = UIFont.pingfangWithDiameter(fontSize: 14)
        //: lab.textColor = .white
        lab.textColor = .white
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: return lab
        return lab
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingDailyItemCell {
extension ModelReusableView {
    /// 刷新cell
    /// - Parameter model: 数据模型
    //: func refreshDailyItemCell(model: TalkingDailyItemModel) {
    func way(model: CreateReactiveCompatible) {
        //: iconImgBgV.isHidden = true
        iconImgBgV.isHidden = true
        //: addIconLab.isHidden = true
        addIconLab.isHidden = true
        //: iconLightV.isHidden = true
        iconLightV.isHidden = true

        //: addIconLab.text = model.addIcon
        addIconLab.text = model.addIcon
        //: dayLab.font = UIFont.outsideAllSize(fontSize: 17)
        dayLab.font = UIFont.outsideAllSize(fontSize: 17)
        //: dayLab.text = model.day
        dayLab.text = model.day

        //: switch(model.type) {
        switch model.type {
        //: case .Overdue_NotSignIn:
        case .Overdue_NotSignIn:
            //: iconImgV.image = UIImage.eponymUp(name: "btn_daily_notSignIn_nor")
            iconImgV.image = UIImage.eponymUp(name: (String(str_makeNameTitle.suffix(5)) + "aily_n" + String(str_readingData.prefix(7)) + String(str_changeLabName)))
            //: dayLab.textColor = UIColor.publishView()
            dayLab.textColor = UIColor.publishView()

        //: case .Overdue_SignIn:
        case .Overdue_SignIn:
            //: iconImgV.image = UIImage.eponymUp(name: "btn_daily_signIn_nor")
            iconImgV.image = UIImage.eponymUp(name: (String(str_valueUpVarText) + String(str_makeIndexTrueTitle.prefix(7))))
            //: dayLab.textColor = UIColor.publishView()
            dayLab.textColor = UIColor.publishView()

        //: case .Today:
        case .Today:
            //: iconImgBgV.isHidden = false
            iconImgBgV.isHidden = false
            //: addIconLab.isHidden = false
            addIconLab.isHidden = false
            //: iconLightV.isHidden = false
            iconLightV.isHidden = false

            //: iconImgV.image = UIImage.eponymUp(name: "btn_daily_today_nor")
            iconImgV.image = UIImage.eponymUp(name: (String(str_styleData.suffix(6)) + "ily_to" + String(str_textData.prefix(7))))
            //: dayLab.font = UIFont.pingfangWithDiameter(fontSize: 17)
            dayLab.font = UIFont.pingfangWithDiameter(fontSize: 17)
            //: dayLab.textColor = UIColor(hex: "#FF8F1A")
            dayLab.textColor = UIColor(hex: (String(str_arrayValue.suffix(6)) + str_imageText.uppercased()))

        //: case .Future:
        case .Future:
            //: addIconLab.isHidden = false
            addIconLab.isHidden = false
            //: iconImgV.image = UIImage.eponymUp(name: "btn_daily_today_nor")
            iconImgV.image = UIImage.eponymUp(name: (String(str_styleData.suffix(6)) + "ily_to" + String(str_textData.prefix(7))))
            //: dayLab.textColor = UIColor.appValueColor()
            dayLab.textColor = UIColor.addColor()
        }
    }
}

// MARK: - Layout

//: extension TalkingDailyItemCell {
extension ModelReusableView {
    // 添加视图
    //: private func setupSubviews() {
    private func rubric() {
        //: contentView.addSubview(iconImgBgV)
        contentView.addSubview(iconImgBgV)
        //: contentView.addSubview(iconImgV)
        contentView.addSubview(iconImgV)
        //: contentView.addSubview(addIconLab)
        contentView.addSubview(addIconLab)
        //: contentView.addSubview(iconLightV)
        contentView.addSubview(iconLightV)
        //: contentView.addSubview(dayLab)
        contentView.addSubview(dayLab)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func loadLess() {
        //: iconImgBgV.snp.makeConstraints { make in
        iconImgBgV.snp.makeConstraints { make in
            //: make.top.centerX.equalToSuperview()
            make.top.centerX.equalToSuperview()
            //: make.size.equalTo(CGSize(width: 65, height: 65))
            make.size.equalTo(CGSize(width: 65, height: 65))
        }
        //: iconImgV.snp.makeConstraints { make in
        iconImgV.snp.makeConstraints { make in
            //: make.center.equalTo(iconImgBgV)
            make.center.equalTo(iconImgBgV)
            //: make.size.equalTo(CGSize(width: 42, height: 42))
            make.size.equalTo(CGSize(width: 42, height: 42))
        }
        //: addIconLab.snp.makeConstraints { make in
        addIconLab.snp.makeConstraints { make in
            //: make.centerX.equalTo(iconImgV)
            make.centerX.equalTo(iconImgV)
            //: make.centerY.equalTo(iconImgV).offset(-2)
            make.centerY.equalTo(iconImgV).offset(-2)
        }
        //: iconLightV.snp.makeConstraints { make in
        iconLightV.snp.makeConstraints { make in
            //: make.top.equalTo(1)
            make.top.equalTo(1)
            //: make.trailing.equalToSuperview().offset(-4)
            make.trailing.equalToSuperview().offset(-4)
        }
        //: dayLab.snp.makeConstraints { make in
        dayLab.snp.makeConstraints { make in
            //: make.top.equalTo(53)
            make.top.equalTo(53)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }
    }
}
