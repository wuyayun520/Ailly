
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_styleText:[UInt8] = [0xef,0xe8,0xef,0xf2,0xae,0xe5,0xe9,0xe2,0xe3,0xf4,0xbc,0xaf,0xa6,0xee,0xe7,0xf5,0xa6,0xe8,0xe9,0xf2,0xa6,0xe4,0xe3,0xe3,0xe8,0xa6,0xef,0xeb,0xf6,0xea,0xe3,0xeb,0xe3,0xe8,0xf2,0xe3,0xe2]

private func toFrom(content num: UInt8) -> UInt8 {
    return num ^ 134
}

/*: "Licensing" :*/
fileprivate let str_rangeName:String = "Litransaction self camera self current"
fileprivate let str_dataVideoIfValue:String = "cetableing"

/*: "Granting licences to receive better video calls and earn more money" :*/
fileprivate let str_dateName:[UInt8] = [0xea,0xdf,0xcc,0xc3,0xd9,0xc4,0xc3,0xca,0x8d,0xc1,0xc4,0xce,0xc8,0xc3,0xce,0xc8,0xde,0x8d,0xd9,0xc2,0x8d,0xdf,0xc8,0xce,0xc8,0xc4,0xdb,0xc8,0x8d,0xcf,0xc8,0xd9,0xd9,0xc8,0xdf,0x8d,0xdb,0xc4,0xc9,0xc8,0xc2,0x8d,0xce,0xcc,0xc1,0xc1,0xde,0x8d,0xcc,0xc3,0xc9,0x8d,0xc8,0xcc,0xdf,0xc3,0x8d,0xc0,0xc2,0xdf,0xc8,0x8d,0xc0,0xc2,0xc3,0xc8,0xd4]

private func masterKey(succeed num: UInt8) -> UInt8 {
    return num ^ 173
}

/*: "Turn on Camera and recording permissions in settings to use the feature properly" :*/
fileprivate let str_skinValue:[UInt8] = [0xa2,0x83,0x84,0x98,0xd6,0x99,0x98,0xd6,0xb5,0x97,0x9b,0x93,0x84,0x97,0xd6,0x97,0x98,0x92,0xd6,0x84,0x93,0x95,0x99,0x84,0x92,0x9f,0x98,0x91,0xd6,0x86,0x93,0x84,0x9b,0x9f,0x85,0x85,0x9f,0x99,0x98,0x85,0xd6,0x9f,0x98,0xd6,0x85,0x93,0x82,0x82,0x9f,0x98,0x91,0x85,0xd6,0x82,0x99,0xd6,0x83,0x85,0x93,0xd6,0x82,0x9e,0x93,0xd6,0x90,0x93,0x97,0x82,0x83,0x84,0x93,0xd6,0x86,0x84,0x99,0x86,0x93,0x84,0x9a,0x8f]

/*: "Cancel" :*/
fileprivate let str_errorTitle:[Character] = ["C","a","n","c","e"]
fileprivate let str_extraValue:String = "search"

/*: "Open" :*/
fileprivate let str_monthValue:String = "Openequal hidden window"

/*: "icon_peimisionlic_camera" :*/
fileprivate let str_buttonValue:[Character] = ["i","c","o","n","_","p","e","i","m","i"]
fileprivate let str_starName:[Character] = ["s","i","o","n","l","i","c","_"]
fileprivate let str_appealTitle:String = "cconstraintmerconstraint"

/*: "icon_peimissionlic_mic" :*/
fileprivate let str_errorEqualValue:String = "icon_ptext let value"
fileprivate let str_dataValue:String = "ohomelic"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  PermissionView.swift
//  BotanicBreeze
//
//  Created by Charlotte on 2024/3/22.
//

//: import UIKit
import UIKit

//: class TalkingPermissionView: UIView {
class PermissionView: UIView {
    //: var popView: TalkingPopView?
    var popView: NameThen?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.buttonFront()
        //: self.setupSubViewsConstraint()
        self.placeUprightInward()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_styleText.map{toFrom(content: $0)}, encoding: .utf8)!)
    }

    //: lazy var backView: UIView = {
    lazy var backView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: view.layer.cornerRadius = 15
        view.layer.cornerRadius = 15
        //: view.layer.masksToBounds = true
        view.layer.masksToBounds = true
        //: view.backgroundColor = .white
        view.backgroundColor = .white
        //: return view
        return view
        //: }()
    }()

    //: lazy var titleLB: UILabel = {
    lazy var titleLB: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.textColor = UIColor.appTitleColor()
        lb.textColor = UIColor.executeTo()
        //: lb.font = UIFont.pingfangWithDiameter(fontSize: 20)
        lb.font = UIFont.pingfangWithDiameter(fontSize: 20)
        //: lb.text = "Licensing".localized
        lb.text = (String(str_rangeName.prefix(2)) + str_dataVideoIfValue.replacingOccurrences(of: "table", with: "ns")).localized
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var messageLB: UILabel = {
    lazy var messageLB: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.textColor = UIColor.appTitleColor()
        lb.textColor = UIColor.executeTo()
        //: lb.font = UIFont.outsideAllSize(fontSize: 16)
        lb.font = UIFont.outsideAllSize(fontSize: 16)
        //: if EqualThen.share.loginUserMode.sex == Gender.female.rawValue && EqualThen.share.appStatus != AppSkinStatus.special.rawValue {
        if EqualThen.share.loginUserMode.sex == RunReplaceableCollection.female.rawValue && EqualThen.share.appStatus != PhaseOfTheMoonPropertyProtocol.special.rawValue {
            //: lb.text = "Granting licences to receive better video calls and earn more money".localized
            lb.text = String(bytes: str_dateName.map{masterKey(succeed: $0)}, encoding: .utf8)!.localized
            //: } else {
        } else {
            //: lb.text = "Turn on Camera and recording permissions in settings to use the feature properly".localized
            lb.text = String(bytes: str_skinValue.map{$0^246}, encoding: .utf8)!.localized
        }
        //: lb.numberOfLines = 0
        lb.numberOfLines = 0
        //: lb.textAlignment = .center
        lb.textAlignment = .center
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var cancleBtn: UIButton = {
    lazy var cancleBtn: UIButton = {
        //: let btn = UIButton.init(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setTitle("Cancel".localized, for: .normal)
        btn.setTitle((String(str_errorTitle) + str_extraValue.replacingOccurrences(of: "search", with: "l")).localized, for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Medium, fontSize: 16)
        btn.titleLabel?.font = UIFont.pingfang(type: .Medium, fontSize: 16)
        //: btn.setTitleColor(.publishView(), for: .normal)
        btn.setTitleColor(.publishView(), for: .normal)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.layer.borderColor = UIColor.appThemeColor().cgColor
        btn.layer.borderColor = UIColor.plaster().cgColor
        //: btn.layer.borderWidth = 1
        btn.layer.borderWidth = 1
        //: btn.addTarget(self, action: #selector(cancleBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(dataUp), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var openBtn: UIButton = {
    lazy var openBtn: UIButton = {
        //: let btn = UIButton.init(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setTitle("Open".localized, for: .normal)
        btn.setTitle((String(str_monthValue.prefix(4))).localized, for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Medium, fontSize: 16)
        btn.titleLabel?.font = UIFont.pingfang(type: .Medium, fontSize: 16)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: UIColor.appGradientColor(), size: CGSize(width: 130, height: 50)), for: .normal)
        btn.setBackgroundImage(UIImage.makeBackground(colors: UIColor.appToVoice(), size: CGSize(width: 130, height: 50)), for: .normal)
        //: btn.addTarget(self, action: #selector(openBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(videoModel), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

//: extension TalkingPermissionView {
extension PermissionView {
    //: func show() {
    func imageAcross() {
        //: popView = TalkingPopView.init(frame: UIScreen.main.bounds)
        popView = NameThen(frame: UIScreen.main.bounds)
        //: self.frame = CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight)
        self.frame = CGRect(x: 0, y: 0, width: kLet_cameraValue, height: kLet_clickData)
        //: popView?.initWithView(view: self)
        popView?.observe(view: self)
        //: popView?.showInView(view: MacroDefine.getWindow())
        popView?.shackUp(view: UserMacroDefine.toUp())
        //: popView?.isRemoveTapGes = true
        popView?.isRemoveTapGes = true
    }

    //: @objc func cancleBtnClick() {
    @objc func dataUp() {
        //: popView?.dismissView()
        popView?.big()
        //: popView = nil
        popView = nil
    }

    //: @objc func openBtnClick() {
    @objc func videoModel() {
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
        //: cancleBtnClick()
        dataUp()
    }

    //: func setPermissionIconView(type: TalkingPermissionsType) {
    func coifType(type: RunPermissionsType) {
        //: let count = type == .cameraAndMicrophone ? 2: 1
        let count = type == .cameraAndMicrophone ? 2 : 1
        //: for index in 0..<count {
        for index in 0 ..< count {
            //: let icon = UIImageView()
            let icon = UIImageView()
            //: icon.contentMode = .scaleAspectFill
            icon.contentMode = .scaleAspectFill
            //: backView.addSubview(icon)
            backView.addSubview(icon)
            //: if count == 1 {
            if count == 1 {
                //: icon.snp.makeConstraints { make in
                icon.snp.makeConstraints { make in
                    //: make.centerX.equalToSuperview()
                    make.centerX.equalToSuperview()
                    //: make.size.equalTo(62)
                    make.size.equalTo(62)
                    //: make.top.equalTo(messageLB.snp.bottom).offset(20)
                    make.top.equalTo(messageLB.snp.bottom).offset(20)
                }
                //: } else {
            } else {
                //: if index == 0 {
                if index == 0 {
                    //: icon.snp.makeConstraints { make in
                    icon.snp.makeConstraints { make in
                        //: make.leading.equalTo(61)
                        make.leading.equalTo(61)
                        //: make.size.equalTo(62)
                        make.size.equalTo(62)
                        //: make.top.equalTo(messageLB.snp.bottom).offset(20)
                        make.top.equalTo(messageLB.snp.bottom).offset(20)
                    }
                    //: } else {
                } else {
                    //: icon.snp.makeConstraints { make in
                    icon.snp.makeConstraints { make in
                        //: make.trailing.equalTo(-61)
                        make.trailing.equalTo(-61)
                        //: make.size.equalTo(62)
                        make.size.equalTo(62)
                        //: make.top.equalTo(messageLB.snp.bottom).offset(20)
                        make.top.equalTo(messageLB.snp.bottom).offset(20)
                    }
                }
            }
            //: switch type {
            switch type {
            //: case .camera:
            case .camera:
                //: icon.image = UIImage.eponymUp(name: "icon_peimisionlic_camera")
                icon.image = UIImage.eponymUp(name: (String(str_buttonValue) + String(str_starName) + str_appealTitle.replacingOccurrences(of: "constraint", with: "a")))
            //: case .microphone:
            case .microphone:
                //: icon.image = UIImage.eponymUp(name: "icon_peimissionlic_mic")
                icon.image = UIImage.eponymUp(name: (String(str_errorEqualValue.prefix(6)) + "eimissi" + str_dataValue.replacingOccurrences(of: "home", with: "n") + "_mic"))
            //: case .cameraAndMicrophone:
            case .cameraAndMicrophone:
                //: if index == 0 {
                if index == 0 {
                    //: icon.image = UIImage.eponymUp(name: "icon_peimisionlic_camera")
                    icon.image = UIImage.eponymUp(name: (String(str_buttonValue) + String(str_starName) + str_appealTitle.replacingOccurrences(of: "constraint", with: "a")))
                    //: } else {
                } else {
                    //: icon.image = UIImage.eponymUp(name: "icon_peimissionlic_mic")
                    icon.image = UIImage.eponymUp(name: (String(str_errorEqualValue.prefix(6)) + "eimissi" + str_dataValue.replacingOccurrences(of: "home", with: "n") + "_mic"))
                }
            //: default:
            default:
                //: break
                break
            }
        }
    }
}

//: extension TalkingPermissionView {
extension PermissionView {
    // 添加视图
    //: private func setupSubviews() {
    private func buttonFront() {
        //: self.addSubview(backView)
        self.addSubview(backView)
        //: backView.addSubview(titleLB)
        backView.addSubview(titleLB)
        //: backView.addSubview(messageLB)
        backView.addSubview(messageLB)
        //: backView.addSubview(cancleBtn)
        backView.addSubview(cancleBtn)
        //: backView.addSubview(openBtn)
        backView.addSubview(openBtn)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func placeUprightInward() {
        //: backView.snp.makeConstraints { make in
        backView.snp.makeConstraints { make in
            //: make.center.equalToSuperview()
            make.center.equalToSuperview()
            //: make.width.equalTo(295)
            make.width.equalTo(295)
            //: make.height.equalTo(321)
            make.height.equalTo(321)
        }
        //: titleLB.snp.makeConstraints { make in
        titleLB.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.top.equalTo(32)
            make.top.equalTo(32)
            //: make.height.equalTo(22)
            make.height.equalTo(22)
        }
        //: messageLB.snp.makeConstraints { make in
        messageLB.snp.makeConstraints { make in
            //: make.top.equalTo(titleLB.snp.bottom).offset(21)
            make.top.equalTo(titleLB.snp.bottom).offset(21)
            //: make.leading.equalTo(20)
            make.leading.equalTo(20)
            //: make.trailing.equalTo(-20)
            make.trailing.equalTo(-20)
        }
        //: cancleBtn.snp.makeConstraints { make in
        cancleBtn.snp.makeConstraints { make in
            //: make.leading.equalTo(12)
            make.leading.equalTo(12)
            //: make.bottom.equalTo(-16)
            make.bottom.equalTo(-16)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
            //: make.width.equalTo(130)
            make.width.equalTo(130)
        }
        //: openBtn.snp.makeConstraints { make in
        openBtn.snp.makeConstraints { make in
            //: make.trailing.equalTo(-12)
            make.trailing.equalTo(-12)
            //: make.bottom.size.equalTo(cancleBtn)
            make.bottom.size.equalTo(cancleBtn)
        }
    }
}
