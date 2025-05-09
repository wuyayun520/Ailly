
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_insideTitle:[UInt8] = [0x34,0x33,0x34,0x29,0x75,0x3e,0x32,0x39,0x38,0x2f,0x67,0x74,0x7d,0x35,0x3c,0x2e,0x7d,0x33,0x32,0x29,0x7d,0x3f,0x38,0x38,0x33,0x7d,0x34,0x30,0x2d,0x31,0x38,0x30,0x38,0x33,0x29,0x38,0x39]

private func whiteMode(title num: UInt8) -> UInt8 {
    return num ^ 93
}

/*: "#FA9D33" :*/
fileprivate let str_turnValue:String = "#FA9D33background at"

/*: "#343338" :*/
fileprivate let str_arrayData:String = "from"
fileprivate let str_textContent:[Character] = ["3","4","3","3","3","8"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  AtViewCell.swift
//  BotanicBreeze
//
//  Created by DouXiu on 2024/10/8.
//

//: import UIKit
import UIKit

//: class TalkingVoiceRoomIconGiftItemCell: UICollectionViewCell {
class AtViewCell: UICollectionViewCell {
    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: setupSubviews()
        middleName()
        //: setupSubViewsConstraint()
        equalTotalerval()
    }

    //: @available(*, unavailable)
    @available(*, unavailable)
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_insideTitle.map{whiteMode(title: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var bottomView: UIView = {
    private lazy var bottomView: UIView = {
        //: let v = UIView()
        let v = UIView()
        //: v.backgroundColor = .clear
        v.backgroundColor = .clear
        //: v.layer.cornerRadius = 21
        v.layer.cornerRadius = 21
        //: v.layer.masksToBounds = true
        v.layer.masksToBounds = true
        //: v.layer.borderWidth = 1.5
        v.layer.borderWidth = 1.5
        //: return v
        return v
        //: }()
    }()

    //: private lazy var icon: UIImageView = {
    private lazy var icon: UIImageView = {
        //: let v = UIImageView()
        let v = UIImageView()
        //: v.contentMode = .scaleAspectFill
        v.contentMode = .scaleAspectFill
        //: v.layer.cornerRadius = 18
        v.layer.cornerRadius = 18
        //: v.layer.masksToBounds = true
        v.layer.masksToBounds = true
        //: return v
        return v
        //: }()
    }()

    //: private lazy var seatNumLab: UILabel = {
    private lazy var seatNumLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.font = UIFont.pingfangWithDiameter(fontSize: 9)
        lab.font = UIFont.pingfangWithDiameter(fontSize: 9)
        //: lab.textColor = .white
        lab.textColor = .white
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.layer.cornerRadius = 6
        lab.layer.cornerRadius = 6
        //: lab.layer.masksToBounds = true
        lab.layer.masksToBounds = true
        //: return lab
        return lab
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingVoiceRoomIconGiftItemCell {
extension AtViewCell {
    /// 刷新cell
    /// - Parameters:
    ///   - position: 麦位
    ///   - model: 麦位数据
    //: func refreshIcon(position: Int, model: TalkingMikeListItemModel) {
    func upModel(position: Int, model: WithTransformable) {
        //: guard model.uid > 0, String(model.uid) != EqualThen.share.loginUid else {
        guard model.uid > 0, String(model.uid) != EqualThen.share.loginUid else {
            //: bottomView.isHidden = true
            bottomView.isHidden = true
            //: seatNumLab.isHidden = true
            seatNumLab.isHidden = true
            //: return
            return
        }
        //: let optionsInfo = [KingfisherOptionsInfoItem.processor(RoundCornerImageProcessor(cornerRadius: actualWidth(w: 18)))]
        let optionsInfo = [KingfisherOptionsInfoItem.processor(RoundCornerImageProcessor(cornerRadius: actualWidth(w: 18)))]
        //: icon.setUrlImage(urlStr: model.headPic, options: optionsInfo)
        icon.lineBorder(urlStr: model.headPic, options: optionsInfo)
        //: seatNumLab.text = "\(position + 1)"
        seatNumLab.text = "\(position + 1)"
        //: let color = model.needGift ? UIColor(hex: "#FA9D33") : UIColor(hex: "#343338")
        let color = model.needGift ? UIColor(hex: (String(str_turnValue.prefix(7)))) : UIColor(hex: (str_arrayData.replacingOccurrences(of: "from", with: "#") + String(str_textContent)))
        //: bottomView.layer.borderColor = color?.cgColor
        bottomView.layer.borderColor = color?.cgColor
        //: seatNumLab.backgroundColor = color
        seatNumLab.backgroundColor = color
        //: bottomView.isHidden = false
        bottomView.isHidden = false
        //: seatNumLab.isHidden = false
        seatNumLab.isHidden = false
    }
}

// MARK: - Layout

//: extension TalkingVoiceRoomIconGiftItemCell {
extension AtViewCell {
    /// 添加视图
    //: private func setupSubviews() {
    private func middleName() {
        //: addSubview(bottomView)
        addSubview(bottomView)
        //: bottomView.addSubview(icon)
        bottomView.addSubview(icon)
        //: addSubview(seatNumLab)
        addSubview(seatNumLab)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func equalTotalerval() {
        //: bottomView.snp.makeConstraints { make in
        bottomView.snp.makeConstraints { make in
            //: make.center.equalToSuperview()
            make.center.equalToSuperview()
            //: make.width.height.equalTo(42)
            make.width.height.equalTo(42)
        }

        //: icon.snp.makeConstraints { make in
        icon.snp.makeConstraints { make in
            //: make.center.equalToSuperview()
            make.center.equalToSuperview()
            //: make.width.height.equalTo(36)
            make.width.height.equalTo(36)
        }

        //: seatNumLab.snp.makeConstraints { make in
        seatNumLab.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.width.height.equalTo(12)
            make.width.height.equalTo(12)
            //: make.bottom.equalTo(bottomView.snp.bottom).offset(3)
            make.bottom.equalTo(bottomView.snp.bottom).offset(3)
        }
    }
}
