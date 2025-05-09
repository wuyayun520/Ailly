
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_pushText:[UInt8] = [0xcd,0xca,0xcd,0xd0,0x8c,0xc7,0xcb,0xc0,0xc1,0xd6,0x9e,0x8d,0x84,0xcc,0xc5,0xd7,0x84,0xca,0xcb,0xd0,0x84,0xc6,0xc1,0xc1,0xca,0x84,0xcd,0xc9,0xd4,0xc8,0xc1,0xc9,0xc1,0xca,0xd0,0xc1,0xc0]

/*: "Add" :*/
fileprivate let str_messageText:[Character] = ["A","d","d"]

/*: "btn_me_edit" :*/
fileprivate let str_stopData:[Character] = ["b","t","n","_","m"]
fileprivate let str_photoAppearValue:[Character] = ["e","_","e","d","i","t"]

/*: "Program" :*/
fileprivate let str_modelName:[Character] = ["P","r","o","g","r","a","m"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  AnalogDigitalConverterHeaderCell.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/10/25.
//

//: import UIKit
import UIKit

//: typealias HeaderTouchBlock = () -> Void
typealias HeaderTouchBlock = () -> Void

//: class TalkingVideoSettingHeaderCell: UITableViewCell {
class AnalogDigitalConverterHeaderCell: UITableViewCell {
    //: var touchBlock: HeaderTouchBlock?
    var touchBlock: HeaderTouchBlock?

    //: override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        //: super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        //: self.backgroundColor = .appBgColor()
        self.backgroundColor = .imageColor()
        //: selectionStyle = .none
        selectionStyle = .none
        //: setupSubviews()
        videoKeep()
        //: setupSubViewsConstraint()
        setupMessageQuantification()
    }

    //: required init?(coder aDecoder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_pushText.map{$0^164}, encoding: .utf8)!)
    }

    // MARK: - Lazy load

    //: private lazy var backBtn: UIButton = {
    private lazy var backBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.backgroundColor = UIColor.white
        btn.backgroundColor = UIColor.white
        //: btn.layer.cornerRadius = 8
        btn.layer.cornerRadius = 8
        //: btn.addTarget(self, action: #selector(backBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(pricePhone), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var iconImg: UIImageView = {
    private lazy var iconImg: UIImageView = {
        //: let imag = UIImageView.init()
        let imag = UIImageView()
        //: imag.isUserInteractionEnabled = false
        imag.isUserInteractionEnabled = false
        //: return imag
        return imag
        //: }()
    }()

    //: private lazy var titleLab: UILabel = {
    private lazy var titleLab: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.font = UIFont.pingfangFont(type: .Medium, fontSize: 16)
        lb.font = UIFont.pingfang(type: .Medium, fontSize: 16)
        //: lb.textColor = UIColor.appTitleColor()
        lb.textColor = UIColor.executeTo()
        //: lb.isUserInteractionEnabled = false
        lb.isUserInteractionEnabled = false
        //: return lb
        return lb
        //: }()
    }()

    //: private lazy var tipsLab: UILabel = {
    private lazy var tipsLab: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.font = UIFont.pingfangFont(type: .Regular, fontSize: 14)
        lb.font = UIFont.pingfang(type: .Regular, fontSize: 14)
        //: lb.textColor = UIColor.publishView()
        lb.textColor = UIColor.publishView()
        //: lb.isUserInteractionEnabled = false
        lb.isUserInteractionEnabled = false
        //: lb.text = "Add".localized
        lb.text = (String(str_messageText)).localized
        //: return lb
        return lb
        //: }()
    }()

    //: private lazy var editImg: UIImageView = {
    private lazy var editImg: UIImageView = {
        //: let imag = UIImageView.init(image: UIImage.eponymUp(name: "btn_me_edit"))
        let imag = UIImageView(image: UIImage.eponymUp(name: (String(str_stopData) + String(str_photoAppearValue))))
        //: imag.isUserInteractionEnabled = false
        imag.isUserInteractionEnabled = false
        //: return imag
        return imag
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingVideoSettingHeaderCell {
extension AnalogDigitalConverterHeaderCell {
    //: func setViewData(title: String, icon: String) {
    func solicitation(title: String, icon: String) {
        //: iconImg.image = UIImage.eponymUp(name: icon)
        iconImg.image = UIImage.eponymUp(name: icon)
        //: titleLab.text = title.localized
        titleLab.text = title.localized
        //: if title == "Program" {
        if title == (String(str_modelName)) {
            //: backBtn.snp.remakeConstraints { make in
            backBtn.snp.remakeConstraints { make in
                //: make.leading.top.equalToSuperview().offset(15)
                make.leading.top.equalToSuperview().offset(15)
                //: make.trailing.equalToSuperview().offset(-15)
                make.trailing.equalToSuperview().offset(-15)
                //: make.bottom.equalToSuperview()
                make.bottom.equalToSuperview()
            }
        }
    }

    //: @objc func backBtnClick() {
    @objc func pricePhone() {
        //: if touchBlock != nil {
        if touchBlock != nil {
            //: touchBlock!()
            touchBlock!()
        }
    }

    //: func setTips(isHidden: Bool) {
    func want(isHidden: Bool) {
        //: tipsLab.isHidden = isHidden
        tipsLab.isHidden = isHidden
    }

    //: func setArrow() {
    func giftTo() {
        //: backBtn.layer.cornerRadius = 0
        backBtn.layer.cornerRadius = 0
        //: backBtn.Corner(width: ScreenWidth-30, height: 50, corners: [.topLeft, .topRight], cornerRadii: .init(width: 8, height: 8))
        backBtn.showEqual(width: kLet_cameraValue - 30, height: 50, corners: [.topLeft, .topRight], cornerRadii: .init(width: 8, height: 8))
    }
}

// MARK: - Layout

//: extension TalkingVideoSettingHeaderCell {
extension AnalogDigitalConverterHeaderCell {
    /// 添加视图
    //: private func setupSubviews() {
    private func videoKeep() {
        //: self.contentView.addSubview(backBtn)
        self.contentView.addSubview(backBtn)
        //: backBtn.addSubview(iconImg)
        backBtn.addSubview(iconImg)
        //: backBtn.addSubview(titleLab)
        backBtn.addSubview(titleLab)
        //: backBtn.addSubview(editImg)
        backBtn.addSubview(editImg)
        //: backBtn.addSubview(tipsLab)
        backBtn.addSubview(tipsLab)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func setupMessageQuantification() {
        //: backBtn.snp.remakeConstraints { make in
        backBtn.snp.remakeConstraints { make in
            //: make.leading.top.equalToSuperview().offset(15)
            make.leading.top.equalToSuperview().offset(15)
            //: make.trailing.equalToSuperview().offset(-15)
            make.trailing.equalToSuperview().offset(-15)
            //: make.bottom.equalToSuperview().offset(-10)
            make.bottom.equalToSuperview().offset(-10)
        }

        //: iconImg.snp.remakeConstraints { make in
        iconImg.snp.remakeConstraints { make in
            //: make.leading.equalToSuperview().offset(12)
            make.leading.equalToSuperview().offset(12)
            //: make.centerY.equalTo(backBtn)
            make.centerY.equalTo(backBtn)
            //: make.width.height.equalTo(25)
            make.width.height.equalTo(25)
        }

        //: titleLab.snp.remakeConstraints { make in
        titleLab.snp.remakeConstraints { make in
            //: make.leading.equalTo(iconImg.snp.trailing).offset(7)
            make.leading.equalTo(iconImg.snp.trailing).offset(7)
            //: make.centerY.equalTo(backBtn)
            make.centerY.equalTo(backBtn)
            //: make.height.equalTo(19)
            make.height.equalTo(19)
        }

        //: editImg.snp.remakeConstraints { make in
        editImg.snp.remakeConstraints { make in
            //: make.centerY.equalTo(backBtn)
            make.centerY.equalTo(backBtn)
            //: make.trailing.equalToSuperview().offset(-12)
            make.trailing.equalToSuperview().offset(-12)
            //: make.width.equalTo(8)
            make.width.equalTo(8)
            //: make.height.equalTo(12)
            make.height.equalTo(12)
        }
        //: tipsLab.snp.remakeConstraints { make in
        tipsLab.snp.remakeConstraints { make in
            //: make.centerY.equalTo(editImg)
            make.centerY.equalTo(editImg)
            //: make.trailing.equalTo(editImg.snp.leading).offset(-7)
            make.trailing.equalTo(editImg.snp.leading).offset(-7)
        }
    }
}
