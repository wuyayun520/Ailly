
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_indexArrayData:[UInt8] = [0xcd,0xd2,0xcd,0xd8,0x8c,0xc7,0xd3,0xc8,0xc9,0xd6,0x9e,0x8d,0x84,0xcc,0xc5,0xd7,0x84,0xd2,0xd3,0xd8,0x84,0xc6,0xc9,0xc9,0xd2,0x84,0xcd,0xd1,0xd4,0xd0,0xc9,0xd1,0xc9,0xd2,0xd8,0xc9,0xc8]

fileprivate func oldLike(click num: UInt8) -> UInt8 {
    let value = Int(num) + 156
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "bg_message_top" :*/
fileprivate let str_userColorTitle:String = "bg_mmain right center"
fileprivate let str_previousValue:String = "e_topself photo remote component"

/*: "#432813" :*/
fileprivate let str_currentValue:String = "#transform28"
fileprivate let str_toValue:[Character] = ["1","3"]

/*: "me_premium_subscribed" :*/
fileprivate let str_modelRangeData:[UInt8] = [0x64,0x65,0x62,0x69,0x72,0x63,0x73,0x62,0x75,0x73,0x5f,0x6d,0x75,0x69,0x6d,0x65,0x72,0x70,0x5f,0x65,0x6d]

/*: "me_premium_upgrade" :*/
fileprivate let str_applicationData:String = "me_pinterval value when path"
fileprivate let str_countText:String = "upviewade"

/*: "Expiration:  :*/
fileprivate let str_succeedName:String = "path selectedExpiratio"
fileprivate let str_interactionName:String = "n: make value position type current"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  TitleModeThen.swift
//  BotanicBreeze
//
//  Created by DouXiu on 2025/2/19.
//

//: import UIKit
import UIKit

//: class TalkingMeUpgradeCardCell: UITableViewCell {
class TitleModeThen: UITableViewCell {
    //: override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        //: super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: self.selectionStyle = .none
        self.selectionStyle = .none
        //: setupSubviews()
        collectionExplain()
        //: setupSubViewsConstraint()
        startDown()
    }

    //: @available(*, unavailable)
    @available(*, unavailable)
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_indexArrayData.map{oldLike(click: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var bgImgView: UIImageView = {
    private lazy var bgImgView: UIImageView = {
        //: let imag = UIImageView(image: UIImage.eponymUp(name: "bg_message_top"))
        let imag = UIImageView(image: UIImage.eponymUp(name: (String(str_userColorTitle.prefix(4)) + "essag" + String(str_previousValue.prefix(5)))))
        //: imag.isUserInteractionEnabled = true
        imag.isUserInteractionEnabled = true
        //: return imag
        return imag
        //: }()
    }()

    //: private lazy var expTimeLab: UILabel = {
    private lazy var expTimeLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = UIColor(hex: "#432813")
        lab.textColor = UIColor(hex: (str_currentValue.replacingOccurrences(of: "transform", with: "43") + String(str_toValue)))
        //: lab.font = UIFont.pingfangFont(type: .Medium, fontSize: 14)
        lab.font = UIFont.pingfang(type: .Medium, fontSize: 14)
        //: return lab
        return lab
        //: }()
    }()

    //: lazy var tapGesture: UITapGestureRecognizer = {
    lazy var tapGesture: UITapGestureRecognizer = {
        //: let t = UITapGestureRecognizer(target: self, action: #selector(tapAction(_:)))
        let t = UITapGestureRecognizer(target: self, action: #selector(viewSub(_:)))
        //: return t
        return t
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingMeUpgradeCardCell {
extension TitleModeThen {
    /// 点击跳转事件
    //: @objc func tapAction(_ tapGesture: UITapGestureRecognizer) {
    @objc func viewSub(_: UITapGestureRecognizer) {
        //: EditTextThen.share.func__pushToSubscribeAlert()
        EditTextThen.share.addShowParams()
    }
}

// MARK: - Layout

//: extension TalkingMeUpgradeCardCell {
extension TitleModeThen {
    /// 刷新视图
    //: func refreshUpgradeCard() {
    func restoreThe() {
        //: let imgNameStr = EqualThen.share.loginUserMode.loungePlus ? "me_premium_subscribed" : "me_premium_upgrade"
        let imgNameStr = EqualThen.share.loginUserMode.loungePlus ? String(bytes: str_modelRangeData.reversed(), encoding: .utf8)! : (String(str_applicationData.prefix(4)) + "remium_" + str_countText.replacingOccurrences(of: "view", with: "gr"))
        //: bgImgView.image = UIImage.eponymUp(name: imgNameStr)
        bgImgView.image = UIImage.eponymUp(name: imgNameStr)
        //: expTimeLab.isHidden = !EqualThen.share.loginUserMode.loungePlus
        expTimeLab.isHidden = !EqualThen.share.loginUserMode.loungePlus
        //: expTimeLab.text = "Expiration: \(EqualThen.share.loginUserMode.loungePlusExpire)"
        expTimeLab.text = (String(str_succeedName.suffix(9)) + String(str_interactionName.prefix(3))) + "\(EqualThen.share.loginUserMode.loungePlusExpire)"
    }

    /// 添加视图
    //: private func setupSubviews() {
    private func collectionExplain() {
        //: contentView.addSubview(bgImgView)
        contentView.addSubview(bgImgView)
        //: contentView.addSubview(expTimeLab)
        contentView.addSubview(expTimeLab)
        //: bgImgView.addGestureRecognizer(tapGesture)
        bgImgView.addGestureRecognizer(tapGesture)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func startDown() {
        //: bgImgView.snp.makeConstraints { make in
        bgImgView.snp.makeConstraints { make in
            //: make.top.equalToSuperview()
            make.top.equalToSuperview()
            //: make.leading.equalTo(15)
            make.leading.equalTo(15)
            //: make.trailing.equalTo(-15)
            make.trailing.equalTo(-15)
            //: make.height.equalTo(actualWidth(w: 86))
            make.height.equalTo(actualWidth(w: 86))
            //: make.bottom.equalTo(-12)
            make.bottom.equalTo(-12)
        }

        //: expTimeLab.snp.makeConstraints { make in
        expTimeLab.snp.makeConstraints { make in
            //: make.top.equalTo(actualWidth(w: 45))
            make.top.equalTo(actualWidth(w: 45))
            //: make.leading.equalTo(actualWidth(w: 58))
            make.leading.equalTo(actualWidth(w: 58))
        }
    }
}
