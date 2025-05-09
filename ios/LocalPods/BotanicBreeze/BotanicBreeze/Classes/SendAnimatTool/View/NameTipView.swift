
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_equalSectionValue:[UInt8] = [0x8f,0x88,0x8f,0x92,0xce,0x85,0x89,0x82,0x83,0x94,0xdc,0xcf,0xc6,0x8e,0x87,0x95,0xc6,0x88,0x89,0x92,0xc6,0x84,0x83,0x83,0x88,0xc6,0x8f,0x8b,0x96,0x8a,0x83,0x8b,0x83,0x88,0x92,0x83,0x82]

private func appTitle(name num: UInt8) -> UInt8 {
    return num ^ 230
}

/*: "Allow push notifications" :*/
fileprivate let str_alwaysValue:String = "true halfAllow"
fileprivate let str_serviceTitle:String = "self mode container maph no"
fileprivate let str_viewValue:String = "tireportns"

/*: "You don't miss out on chat messages when someone wants to chat with you." :*/
fileprivate let str_collectionValue:[UInt8] = [0x2e,0x75,0x6f,0x79,0x20,0x68,0x74,0x69,0x77,0x20,0x74,0x61,0x68,0x63,0x20,0x6f,0x74,0x20,0x73,0x74,0x6e,0x61,0x77,0x20,0x65,0x6e,0x6f,0x65,0x6d,0x6f,0x73,0x20,0x6e,0x65,0x68,0x77,0x20,0x73,0x65,0x67,0x61,0x73,0x73,0x65,0x6d,0x20,0x74,0x61,0x68,0x63,0x20,0x6e,0x6f,0x20,0x74,0x75,0x6f,0x20,0x73,0x73,0x69,0x6d,0x20,0x74,0x27,0x6e,0x6f,0x64,0x20,0x75,0x6f,0x59]

/*: "Open" :*/
fileprivate let str_errorName:String = "Opencatch result"

/*: "icon_chats_subtract" :*/
fileprivate let str_frameName:[Character] = ["i","c","o","n","_","c","h","a"]
fileprivate let str_responseData:[Character] = ["t","s","_","s","u","b","t","r","a","c","t"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  NameTipView.swift
//  BotanicBreeze
//
//  Created by Hemming on 2024/9/26.
//

//: import UIKit
import UIKit

//: class TalkingNoticeTipView: UIView {
class NameTipView: UIView {
    //: public var viewHeight: CGFloat = 0
    public var viewHeight: CGFloat = 0

    //: public var closeBtnBlock: (() -> Void)?
    public var closeBtnBlock: (() -> Void)?

    //: @available(*, unavailable)
    @available(*, unavailable)
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_equalSectionValue.map{appTitle(name: $0)}, encoding: .utf8)!)
    }

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        sendSetup()
        //: setupSubViewsConstraint()
        eventScreen()
    }

    //: private lazy var bgView: UIView = {
    private lazy var bgView: UIView = {
        //: let v = UIView()
        let v = UIView()
        //: v.backgroundColor = UIColor.white
        v.backgroundColor = UIColor.white
        //: v.layer.cornerRadius = 8
        v.layer.cornerRadius = 8
        //: v.layer.shadowColor = UIColor.black.withAlphaComponent(0.1).cgColor
        v.layer.shadowColor = UIColor.black.withAlphaComponent(0.1).cgColor
        //: v.layer.shadowOffset = CGSize(width: 0, height: 1)
        v.layer.shadowOffset = CGSize(width: 0, height: 1)
        //: v.layer.shadowOpacity = 1
        v.layer.shadowOpacity = 1
        //: v.layer.shadowRadius = 6
        v.layer.shadowRadius = 6
        //: return v
        return v
        //: }()
    }()

    //: private lazy var titleLab: UILabel = {
    private lazy var titleLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.text = "Allow push notifications".localized
        lab.text = (String(str_alwaysValue.suffix(5)) + " pus" + String(str_serviceTitle.suffix(4)) + "tifica" + str_viewValue.replacingOccurrences(of: "report", with: "o")).localized
        //: lab.textColor = .appTitleColor()
        lab.textColor = .executeTo()
        //: lab.font = UIFont.pingfangWithDiameter(fontSize: 15)
        lab.font = UIFont.pingfangWithDiameter(fontSize: 15)
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var titleValueLab: UILabel = {
    private lazy var titleValueLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.text = "You don't miss out on chat messages when someone wants to chat with you.".localized
        lab.text = String(bytes: str_collectionValue.reversed(), encoding: .utf8)!.localized
        //: lab.textColor = .appValueColor()
        lab.textColor = .addColor()
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: lab.font = UIFont.outsideAllSize(fontSize: 13)
        lab.font = UIFont.outsideAllSize(fontSize: 13)
        //: return lab
        return lab
        //: }()
    }()

    //: lazy var openBtn: UIButton = {
    lazy var openBtn: UIButton = {
        //: let btn = UIButton.init(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setTitle("Open".localized, for: .normal)
        btn.setTitle((String(str_errorName.prefix(4))).localized, for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Medium, fontSize: 15)
        btn.titleLabel?.font = UIFont.pingfang(type: .Medium, fontSize: 15)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.setBackgroundColor(color: UIColor.appThemeColor(), forState: .normal)
        btn.likeness(color: UIColor.plaster(), forState: .normal)
        //: btn.layer.cornerRadius = 15
        btn.layer.cornerRadius = 15
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.addTarget(self, action: #selector(openBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(gap), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var closeBtn: UIButton = {
    lazy var closeBtn: UIButton = {
        //: let btn = UIButton.init(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setImage(UIImage.eponymUp(name: "icon_chats_subtract"), for: .normal)
        btn.setImage(UIImage.eponymUp(name: (String(str_frameName) + String(str_responseData))), for: .normal)
        //: btn.addTarget(self, action: #selector(closeBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(doImage), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: @objc func openBtnClick() {
    @objc func gap() {
        //: let url = URL(string: UIApplication.openSettingsURLString)
        let url = URL(string: UIApplication.openSettingsURLString)
        //: if  UIApplication.shared.canOpenURL(url!) {
        if UIApplication.shared.canOpenURL(url!) {
            //: if #available(iOS 10, *) {
            if #available(iOS 10, *) {
                //: UIApplication.shared.open(url!, options: [:], completionHandler: {(success) in})
                UIApplication.shared.open(url!, options: [:], completionHandler: { _ in })
                //: } else {
            } else {
                //: UIApplication.shared.openURL(url!)
                UIApplication.shared.openURL(url!)
            }
        }
    }

    //: @objc func closeBtnClick() {
    @objc func doImage() {
        //: self.closeBtnBlock?()
        self.closeBtnBlock?()
    }
}

//: extension TalkingNoticeTipView {
extension NameTipView {
    /// 创建视图
    //: private func setupSubviews() {
    private func sendSetup() {
        //: backgroundColor = .clear
        backgroundColor = .clear
        //: addSubview(bgView)
        addSubview(bgView)
        //: addSubview(titleLab)
        addSubview(titleLab)
        //: addSubview(titleValueLab)
        addSubview(titleValueLab)
        //: addSubview(openBtn)
        addSubview(openBtn)
        //: addSubview(closeBtn)
        addSubview(closeBtn)

        //: viewHeight = titleValueLab.sizeThatFits(CGSize(width: ScreenWidth-110, height: CGFLOAT_MAX)).height + 66
        viewHeight = titleValueLab.sizeThatFits(CGSize(width: kLet_cameraValue - 110, height: CGFLOAT_MAX)).height + 66
        //: self.frame = CGRect(x: 0, y: StatusBarHeight, width: ScreenWidth, height: viewHeight)
        self.frame = CGRect(x: 0, y: kLet_timeSenseValue, width: kLet_cameraValue, height: viewHeight)
    }

    //: private func setupSubViewsConstraint() {
    private func eventScreen() {
        //: bgView.snp.makeConstraints { make in
        bgView.snp.makeConstraints { make in
            //: make.leading.top.trailing.bottom.equalToSuperview().inset(10)
            make.leading.top.trailing.bottom.equalToSuperview().inset(10)
        }
        //: titleLab.snp.makeConstraints { make in
        titleLab.snp.makeConstraints { make in
            //: make.top.equalTo(22)
            make.top.equalTo(22)
            //: make.leading.equalTo(20)
            make.leading.equalTo(20)
            //: make.trailing.equalTo(-90)
            make.trailing.equalTo(-90)
        }
        //: titleValueLab.snp.makeConstraints { make in
        titleValueLab.snp.makeConstraints { make in
            //: make.top.equalTo(titleLab.snp.bottom).offset(4)
            make.top.equalTo(titleLab.snp.bottom).offset(4)
            //: make.trailing.equalTo(-90)
            make.trailing.equalTo(-90)
            //: make.leading.equalTo(20)
            make.leading.equalTo(20)
        }
        //: openBtn.snp.makeConstraints { make in
        openBtn.snp.makeConstraints { make in
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.trailing.equalTo(-20)
            make.trailing.equalTo(-20)
            //: make.width.equalTo(60)
            make.width.equalTo(60)
            //: make.height.equalTo(30)
            make.height.equalTo(30)
        }
        //: closeBtn.snp.makeConstraints { make in
        closeBtn.snp.makeConstraints { make in
            //: make.top.trailing.equalToSuperview()
            make.top.trailing.equalToSuperview()
            //: make.width.equalTo(26)
            make.width.equalTo(26)
            //: make.height.equalTo(26)
            make.height.equalTo(26)
        }
    }
}
