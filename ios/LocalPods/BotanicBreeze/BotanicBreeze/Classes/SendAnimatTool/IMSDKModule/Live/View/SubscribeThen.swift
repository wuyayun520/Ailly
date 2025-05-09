
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_nameBottomValue:[UInt8] = [0x82,0x85,0x82,0x9f,0xc3,0x88,0x84,0x8f,0x8e,0x99,0xd1,0xc2,0xcb,0x83,0x8a,0x98,0xcb,0x85,0x84,0x9f,0xcb,0x89,0x8e,0x8e,0x85,0xcb,0x82,0x86,0x9b,0x87,0x8e,0x86,0x8e,0x85,0x9f,0x8e,0x8f]

/*: "icon_live_vipsubscribe_back" :*/
fileprivate let str_topTapName:String = "icon_lcollection color guard"
fileprivate let str_appName:String = "pscontainersc"

/*: "icon_live_vipsubscribe_topback" :*/
fileprivate let str_modelValue:[Character] = ["i","c","o","n","_","l","i","v","e","_","v"]
fileprivate let str_actionContent:[Character] = ["i","p","s","u","b","s","c","r","i","b","e","_","t","o","p","b","a","c","k"]

/*: "Open VIP\nto give Exclusive gifts" :*/
fileprivate let str_hiddenTitle:[UInt8] = [0xad,0x92,0x87,0x8c,0xc2,0xb4,0xab,0xb2,0xe8,0x96,0x8d,0xc2,0x85,0x8b,0x94,0x87,0xc2,0xa7,0x9a,0x81,0x8e,0x97,0x91,0x8b,0x94,0x87,0xc2,0x85,0x8b,0x84,0x96,0x91]

/*: "Giving an Exclusive gift will appeal to her" :*/
fileprivate let str_textEqualValue:[UInt8] = [0x5e,0x70,0x6f,0x70,0x77,0x7e,0x39,0x78,0x77,0x39,0x5c,0x61,0x7a,0x75,0x6c,0x6a,0x70,0x6f,0x7c,0x39,0x7e,0x70,0x7f,0x6d,0x39,0x6e,0x70,0x75,0x75,0x39,0x78,0x69,0x69,0x7c,0x78,0x75,0x39,0x6d,0x76,0x39,0x71,0x7c,0x6b]

private func extraM(add num: UInt8) -> UInt8 {
    return num ^ 25
}

/*: "Subscribe" :*/
fileprivate let str_picName:String = "s"
fileprivate let str_officialKindData:[Character] = ["u","b","s","c","r","i","b","e"]

/*: "Cancel" :*/
fileprivate let str_sendValue:[Character] = ["C","a","n","c","e","l"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  SubscribeThen.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/10/31.
//

//: import UIKit
import UIKit

//: class TalkingLiveVipSubscribePopView: UIView {
class SubscribeThen: UIView {
    //: var endBlock: (() -> Void)?
    var endBlock: (() -> Void)?

    //: var popView: TalkingPopView?
    var popView: NameThen?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.currentCover()
        //: self.setupSubViewsConstraint()
        self.sizeBy()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_nameBottomValue.map{$0^235}, encoding: .utf8)!)
    }

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    // 懒加载初始化

    //: lazy var contentImg: UIImageView = {
    lazy var contentImg: UIImageView = {
        //: let img = UIImageView.init()
        let img = UIImageView()
        //: img.image = UIImage.eponymUp(name: "icon_live_vipsubscribe_back")
        img.image = UIImage.eponymUp(name: (String(str_topTapName.prefix(6)) + "ive_vi" + str_appName.replacingOccurrences(of: "container", with: "ub") + "ribe_back"))
        //: img.isUserInteractionEnabled = true
        img.isUserInteractionEnabled = true
        //: return img
        return img
        //: }()
    }()

    //: lazy var topImg: UIImageView = {
    lazy var topImg: UIImageView = {
        //: let iamg = UIImageView.init()
        let iamg = UIImageView()
        //: iamg.image = UIImage.eponymUp(name: "icon_live_vipsubscribe_topback")
        iamg.image = UIImage.eponymUp(name: (String(str_modelValue) + String(str_actionContent)))
        //: iamg.contentMode = .scaleAspectFill
        iamg.contentMode = .scaleAspectFill
        //: return iamg
        return iamg
        //: }()
    }()

    //: lazy var titleLabel: UILabel = {
    lazy var titleLabel: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = UIColor.appTitleColor()
        lab.textColor = UIColor.executeTo()
        //: lab.font = UIFont.systemFont(ofSize: 20, weight: .heavy)
        lab.font = UIFont.systemFont(ofSize: 20, weight: .heavy)
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: lab.text = "Open VIP\nto give Exclusive gifts".localized
        lab.text = String(bytes: str_hiddenTitle.map{$0^226}, encoding: .utf8)!.localized
        //: return lab
        return lab
        //: }()
    }()

    //: lazy var messageView: UILabel = {
    lazy var messageView: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.font = UIFont.pingfangFont(type: .Regular, fontSize: 16)
        lb.font = UIFont.pingfang(type: .Regular, fontSize: 16)
        //: lb.text = "Giving an Exclusive gift will appeal to her".localized
        lb.text = String(bytes: str_textEqualValue.map{extraM(add: $0)}, encoding: .utf8)!.localized
        //: lb.textColor = UIColor.appTitleColor()
        lb.textColor = UIColor.executeTo()
        //: lb.numberOfLines = 0
        lb.numberOfLines = 0
        //: lb.backgroundColor = .clear
        lb.backgroundColor = .clear
        //: return lb
        return lb
        //: }()
    }()

    //: private lazy var finishBtn: UIButton = {
    private lazy var finishBtn: UIButton = {
        //: let btn = UIButton.init(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setTitle("Subscribe".localized, for: .normal)
        btn.setTitle((str_picName.uppercased() + String(str_officialKindData)).localized, for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Medium, fontSize: 16)
        btn.titleLabel?.font = UIFont.pingfang(type: .Medium, fontSize: 16)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: UIColor.appGradientColor(), size: CGSize(width: 130, height: 50)), for: .normal)
        btn.setBackgroundImage(UIImage.makeBackground(colors: UIColor.appToVoice(), size: CGSize(width: 130, height: 50)), for: .normal)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.addTarget(self, action: #selector(finishBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(infoMessage), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var closeBtn: UIButton = {
    private lazy var closeBtn: UIButton = {
        //: let btn = UIButton.init(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setTitle("Cancel".localized, for: .normal)
        btn.setTitle((String(str_sendValue)).localized, for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Medium, fontSize: 16)
        btn.titleLabel?.font = UIFont.pingfang(type: .Medium, fontSize: 16)
        //: btn.setTitleColor(.publishView(), for: .normal)
        btn.setTitleColor(.publishView(), for: .normal)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.layer.borderColor = UIColor.publishView().cgColor
        btn.layer.borderColor = UIColor.publishView().cgColor
        //: btn.layer.borderWidth = 1
        btn.layer.borderWidth = 1
        //: btn.addTarget(self, action: #selector(closeBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(immediateNameClick), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

//: extension TalkingLiveVipSubscribePopView {
extension SubscribeThen {
    //: @objc func finishBtnClick() {
    @objc func infoMessage() {
        //: dismiss()
        userVideo()
        //: EditTextThen.share.func__pushToSubscribePageWebVC()
        EditTextThen.share.whole()
    }

    //: @objc func closeBtnClick() {
    @objc func immediateNameClick() {
        //: dismiss()
        userVideo()
    }

    //: func show() {
    func constraintShow() {
        //: popView = TalkingPopView.init(frame: UIScreen.main.bounds)
        popView = NameThen(frame: UIScreen.main.bounds)
        //: popView?.initWithView(view: self)
        popView?.observe(view: self)
        //: popView?.showInView(view: MacroDefine.getWindow())
        popView?.shackUp(view: UserMacroDefine.toUp())
        //: popView?.isRemoveTapGes = true
        popView?.isRemoveTapGes = true
    }

    //: @objc func dismiss() {
    @objc func userVideo() {
        //: self.endBlock?()
        self.endBlock?()
        //: popView?.dismissView()
        popView?.big()
        //: popView = nil
        popView = nil
    }
}

//: extension TalkingLiveVipSubscribePopView {
extension SubscribeThen {
    // 添加视图
    //: private func setupSubviews() {
    private func currentCover() {
        //: self.addSubview(contentImg)
        self.addSubview(contentImg)
        //: contentImg.addSubview(topImg)
        contentImg.addSubview(topImg)
        //: contentImg.addSubview(closeBtn)
        contentImg.addSubview(closeBtn)
        //: contentImg.addSubview(titleLabel)
        contentImg.addSubview(titleLabel)
        //: contentImg.addSubview(messageView)
        contentImg.addSubview(messageView)
        //: contentImg.addSubview(finishBtn)
        contentImg.addSubview(finishBtn)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func sizeBy() {
        //: let width = 295
        let width = 295
        //: let btnWidth = (width-12*2-11)/2
        let btnWidth = (width - 12 * 2 - 11) / 2
        //: contentImg.snp.makeConstraints { make in
        contentImg.snp.makeConstraints { make in
            //: make.center.equalToSuperview()
            make.center.equalToSuperview()
            //: make.size.equalTo(CGSize.init(width: width, height: 230))
            make.size.equalTo(CGSize(width: width, height: 230))
        }

        //: topImg.snp.makeConstraints { make in
        topImg.snp.makeConstraints { make in
            //: make.trailing.equalTo(-5)
            make.trailing.equalTo(-5)
            //: make.top.equalTo(-47)
            make.top.equalTo(-47)
            //: make.size.equalTo(CGSize.init(width: actualWidth(w: 139), height: actualWidth(w: 109)))
            make.size.equalTo(CGSize(width: actualWidth(w: 139), height: actualWidth(w: 109)))
        }

        //: closeBtn.snp.makeConstraints { make in
        closeBtn.snp.makeConstraints { make in
            //: make.bottom.equalTo(-16)
            make.bottom.equalTo(-16)
            //: make.leading.equalTo(12)
            make.leading.equalTo(12)
            //: make.size.equalTo(CGSize.init(width: btnWidth, height: 50))
            make.size.equalTo(CGSize(width: btnWidth, height: 50))
        }

        //: finishBtn.snp.makeConstraints { make in
        finishBtn.snp.makeConstraints { make in
            //: make.bottom.size.equalTo(closeBtn)
            make.bottom.size.equalTo(closeBtn)
            //: make.leading.equalTo(closeBtn.snp.trailing).offset(11)
            make.leading.equalTo(closeBtn.snp.trailing).offset(11)
            //: make.trailing.equalTo(-12)
            make.trailing.equalTo(-12)
        }

        //: titleLabel.snp.makeConstraints { make in
        titleLabel.snp.makeConstraints { make in
            //: make.top.equalTo(30)
            make.top.equalTo(30)
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
            //: make.trailing.equalTo(-28)
            make.trailing.equalTo(-28)
            //: make.height.equalTo(53)
            make.height.equalTo(53)
        }

        //: messageView.snp.makeConstraints { make in
        messageView.snp.makeConstraints { make in
            //: make.top.equalTo(titleLabel.snp.bottom).offset(10)
            make.top.equalTo(titleLabel.snp.bottom).offset(10)
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
            //: make.trailing.equalTo(-19)
            make.trailing.equalTo(-19)
            //: make.bottom.equalTo(finishBtn.snp.top).offset(-18)
            make.bottom.equalTo(finishBtn.snp.top).offset(-18)
        }
    }
}
