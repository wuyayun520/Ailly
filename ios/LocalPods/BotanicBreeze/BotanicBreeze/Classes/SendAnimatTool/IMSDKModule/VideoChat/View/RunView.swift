
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_labelValue:[UInt8] = [0x15,0x1a,0x15,0x20,0xd4,0xf,0x1b,0x10,0x11,0x1e,0xe6,0xd5,0xcc,0x14,0xd,0x1f,0xcc,0x1a,0x1b,0x20,0xcc,0xe,0x11,0x11,0x1a,0xcc,0x15,0x19,0x1c,0x18,0x11,0x19,0x11,0x1a,0x20,0x11,0x10]

fileprivate func blockSize(feel num: UInt8) -> UInt8 {
    let value = Int(num) - 172
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "copywriting" :*/
fileprivate let str_toValue:String = "copframewr"
fileprivate let str_modelValue:[Character] = ["i","t","i","n","g"]

/*: "showBullet" :*/
fileprivate let str_emptyValue:String = "self gift selfshowBul"
fileprivate let str_resultData:[Character] = ["l","e","t"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  RunView.swift
//  AbroadTalking
//
//  Created by young on 2023/9/11.
//

//: import UIKit
import UIKit

//: class TalkingVideoFloatScreenView: UIView {
class RunView: UIView {
    // 数据
    //: private let data = JSON(EqualThen.share.appConfigMode.videoReport)
    private let data = JSON(EqualThen.share.appConfigMode.videoReport)

    // MARK: - 属性声明

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.layer.masksToBounds = true
        self.layer.masksToBounds = true
        //: setupSubviews()
        imageShow()
        //: setupSubViewsConstraint()
        totalEqual()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_labelValue.map{blockSize(feel: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var textLab: UILabel = {
    private lazy var textLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = .white
        lab.textColor = .white
        //: lab.font = UIFont.outsideAllSize(fontSize: 12)
        lab.font = UIFont.outsideAllSize(fontSize: 12)
        //: lab.text = data["copywriting"].stringValue
        lab.text = data[(str_toValue.replacingOccurrences(of: "frame", with: "y") + String(str_modelValue))].stringValue
        //: return lab
        return lab
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingVideoFloatScreenView {
extension RunView {
    /// 展示飘屏动画
    //: @objc func show_animation() {
    @objc func modelAnimation() {
        //: guard self.textLab.text?.count ?? 0 > 0 else { return }
        guard self.textLab.text?.count ?? 0 > 0 else { return }
        //: guard data["showBullet"].boolValue == true else { return }
        guard data[(String(str_emptyValue.suffix(7)) + String(str_resultData))].boolValue == true else { return }
        //: guard self.superview != nil else { return }
        guard self.superview != nil else { return }
        //: var startX = ScreenWidth
        var startX = kLet_cameraValue
        //: var endX = -self.frame.width
        var endX = -self.frame.width
        //: if LanguageManager.shared.direction == .rightToLeft {
        if FileReactiveCompatible.shared.direction == .rightToLeft {
            //: startX = -self.frame.width
            startX = -self.frame.width
            //: endX = ScreenWidth
            endX = kLet_cameraValue
        }
        //: self.isHidden = false
        self.isHidden = false
        //: self.frame.origin.x = startX
        self.frame.origin.x = startX
        //: let duration = (ScreenWidth+self.frame.width)*5.0/ScreenWidth
        let duration = (kLet_cameraValue + self.frame.width) * 5.0 / kLet_cameraValue
        //: UIView.animate(withDuration: duration, delay: 0, options: .curveLinear) {
        UIView.animate(withDuration: duration, delay: 0, options: .curveLinear) {
            //: self.frame.origin.x = endX
            self.frame.origin.x = endX

            //: } completion: { finish in
        } completion: { _ in
            //: DispatchQueue.main.asyncAfter(deadline: .now() + 5.0) { [weak self] in
            DispatchQueue.main.asyncAfter(deadline: .now() + 5.0) { [weak self] in
                //: self?.show_animation()
                self?.modelAnimation()
            }
        }
    }
}

// MARK: - Layout

//: extension TalkingVideoFloatScreenView {
extension RunView {
    /// 添加视图
    //: private func setupSubviews() {
    private func imageShow() {
        //: self.backgroundColor = UIColor.black.withAlphaComponent(0.4)
        self.backgroundColor = UIColor.black.withAlphaComponent(0.4)
        //: self.layer.cornerRadius = 11
        self.layer.cornerRadius = 11
        //: self.layer.masksToBounds = true
        self.layer.masksToBounds = true
        //: self.isHidden = true
        self.isHidden = true
        //: addSubview(textLab)
        addSubview(textLab)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func totalEqual() {
        //: let text_width = self.textLab.sizeThatFits(CGSize(width: CGFLOAT_MAX, height: 22)).width
        let text_width = self.textLab.sizeThatFits(CGSize(width: CGFLOAT_MAX, height: 22)).width
        //: self.frame = CGRect(x: ScreenWidth,
        self.frame = CGRect(x: kLet_cameraValue,
                            //: y: StatusBarHeight+45,
                            y: kLet_timeSenseValue + 45,
                            //: width: text_width+16.0,
                            width: text_width + 16.0,
                            //: height: 22)
                            height: 22)
        //: if LanguageManager.shared.direction == .rightToLeft {
        if FileReactiveCompatible.shared.direction == .rightToLeft {
            //: self.frame.origin.x = -self.frame.width
            self.frame.origin.x = -self.frame.width
        }
        //: textLab.snp.makeConstraints { make in
        textLab.snp.makeConstraints { make in
            //: make.center.equalToSuperview()
            make.center.equalToSuperview()
        }
    }
}
