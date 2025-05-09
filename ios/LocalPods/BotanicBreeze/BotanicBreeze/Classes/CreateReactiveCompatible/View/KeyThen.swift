
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_equalText:[UInt8] = [0x65,0x62,0x65,0x78,0x24,0x6f,0x63,0x68,0x69,0x7e,0x36,0x25,0x2c,0x64,0x6d,0x7f,0x2c,0x62,0x63,0x78,0x2c,0x6e,0x69,0x69,0x62,0x2c,0x65,0x61,0x7c,0x60,0x69,0x61,0x69,0x62,0x78,0x69,0x68]

private func stateLabel(component num: UInt8) -> UInt8 {
    return num ^ 12
}

/*: "btn_report_selected_nor" :*/
fileprivate let str_playerName:[Character] = ["b","t","n","_","r","e","p","o","r"]
fileprivate let str_withName:String = "t_setext self let"
fileprivate let str_statusLabelTitle:String = "d_norcount kit self"

/*: "· %@" :*/
fileprivate let str_modelName:String = "· %info"

/*: "btn_report_selected_pre" :*/
fileprivate let str_pinText:[Character] = ["b","t","n","_","r","e","p","o","r","t","_","s","e","l","e","c","t","e","d","_","p"]
fileprivate let str_imagePathValue:String = "rtake"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  KeyThen.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/9/14.
//

//: import UIKit
import UIKit

//: import Then
import Then

//: class TalkingReportViewCell: UITableViewCell {
class KeyThen: UITableViewCell {
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
        self.heatherMixture()
        //: self.setupSubViewsConstraint()
        self.writeWith()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_equalText.map{stateLabel(component: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy load

    //: lazy var reasonLabel = UILabel().then {
    lazy var reasonLabel = UILabel().then {
        //: $0.textColor = UIColor.appTitleColor()
        $0.textColor = UIColor.executeTo()
        //: $0.font = .pingfangFont(type: .Medium, fontSize: 16)
        $0.font = .pingfang(type: .Medium, fontSize: 16)
    }

    //: lazy var selectedImgView = UIImageView().then {
    lazy var selectedImgView = UIImageView().then {
        //: $0.image = UIImage.eponymUp(name: "btn_report_selected_nor")
        $0.image = UIImage.eponymUp(name: (String(str_playerName) + String(str_withName.prefix(4)) + "lecte" + String(str_statusLabelTitle.prefix(5))))
    }
}

// MARK: - update || fitHeight

//: extension TalkingReportViewCell {
extension KeyThen {
    //: func updateReportCell(model: TalkingReportModel) {
    func theme(model: UserReactiveCompatible) {
        //: reasonLabel.text = String(format: "· %@", model.reason)
        reasonLabel.text = String(format: "· %@", model.reason)
        //: var image = UIImage.eponymUp(name: "btn_report_selected_nor")
        var image = UIImage.eponymUp(name: (String(str_playerName) + String(str_withName.prefix(4)) + "lecte" + String(str_statusLabelTitle.prefix(5))))
        //: if model.selected == true {
        if model.selected == true {
            //: image = UIImage.eponymUp(name: "btn_report_selected_pre").withTintColor(UIColor.appThemeColor())
            image = UIImage.eponymUp(name: (String(str_pinText) + str_imagePathValue.replacingOccurrences(of: "take", with: "e"))).withTintColor(UIColor.plaster())
        }
        //: selectedImgView.image = image
        selectedImgView.image = image
    }
}

// MARK: - Layout

//: extension TalkingReportViewCell {
extension KeyThen {
    //: private func setupSubviews() {
    private func heatherMixture() {
        //: contentView.addSubview(reasonLabel)
        contentView.addSubview(reasonLabel)
        //: contentView.addSubview(selectedImgView)
        contentView.addSubview(selectedImgView)
    }

    //: private func setupSubViewsConstraint() {
    private func writeWith() {
        //: reasonLabel.snp.makeConstraints { make in
        reasonLabel.snp.makeConstraints { make in
            //: make.leading.top.equalTo(0)
            make.leading.top.equalTo(0)
            //: make.trailing.equalTo(selectedImgView.snp.leading).offset(-10)
            make.trailing.equalTo(selectedImgView.snp.leading).offset(-10)
        }
        //: selectedImgView.snp.makeConstraints { make in
        selectedImgView.snp.makeConstraints { make in
            //: make.trailing.equalTo(0)
            make.trailing.equalTo(0)
            //: make.centerY.equalTo(reasonLabel.snp.centerY)
            make.centerY.equalTo(reasonLabel.snp.centerY)
            //: make.size.equalTo(CGSize(width: 18, height: 18))
            make.size.equalTo(CGSize(width: 18, height: 18))
        }
    }
}
