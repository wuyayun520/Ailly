
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_plusText:[UInt8] = [0xaa,0xad,0xaa,0xb7,0xeb,0xa0,0xac,0xa7,0xa6,0xb1,0xf9,0xea,0xe3,0xab,0xa2,0xb0,0xe3,0xad,0xac,0xb7,0xe3,0xa1,0xa6,0xa6,0xad,0xe3,0xaa,0xae,0xb3,0xaf,0xa6,0xae,0xa6,0xad,0xb7,0xa6,0xa7]

private func defineContent(ok num: UInt8) -> UInt8 {
    return num ^ 195
}

/*: "icon_cover_toast" :*/
fileprivate let str_playerTitle:String = "icovalue"
fileprivate let str_contentData:String = "er_tdescription frame false"

/*: "OK" :*/
fileprivate let str_drunkName:[Character] = ["O","K"]

/*: "Not for now" :*/
fileprivate let str_offTitle:[Character] = ["N","o","t"," ","f","o","r"," ","n","o","w"]

/*: "Turn on" :*/
fileprivate let str_postModelData:String = "make style title on asTurn on"

/*: "Live Certification off" :*/
fileprivate let str_viewClickText:[Character] = ["L","i","v","e"," ","C","e","r","t","i","f","i","c","a"]
fileprivate let str_removeText:String = "tion offmake kind"

/*: "Please make sure your face is always in the video screen" :*/
fileprivate let str_sharedTitle:[UInt8] = [0x10,0x2c,0x25,0x21,0x33,0x25,0x60,0x2d,0x21,0x2b,0x25,0x60,0x33,0x35,0x32,0x25,0x60,0x39,0x2f,0x35,0x32,0x60,0x26,0x21,0x23,0x25,0x60,0x29,0x33,0x60,0x21,0x2c,0x37,0x21,0x39,0x33,0x60,0x29,0x2e,0x60,0x34,0x28,0x25,0x60,0x36,0x29,0x24,0x25,0x2f,0x60,0x33,0x23,0x32,0x25,0x25,0x2e]

private func modelConversation(data num: UInt8) -> UInt8 {
    return num ^ 64
}

/*: "Current network unavailable" :*/
fileprivate let str_toolValue:String = "session empty voice typeCurr"
fileprivate let str_labValue:String = "ent neselected if type label normal"
fileprivate let str_pointText:String = "undatav"

/*: "Live Reminder" :*/
fileprivate let str_sharedValue:String = "Live Rerandom else birthday height status"
fileprivate let str_kitValue:String = "msizeder"

/*: "You haven't used your free video opportunity yet, talk to someone first!" :*/
fileprivate let str_frameName:[UInt8] = [0x24,0x12,0x8,0x5d,0x15,0x1c,0xb,0x18,0x13,0x5a,0x9,0x5d,0x8,0xe,0x18,0x19,0x5d,0x4,0x12,0x8,0xf,0x5d,0x1b,0xf,0x18,0x18,0x5d,0xb,0x14,0x19,0x18,0x12,0x5d,0x12,0xd,0xd,0x12,0xf,0x9,0x8,0x13,0x14,0x9,0x4,0x5d,0x4,0x18,0x9,0x51,0x5d,0x9,0x1c,0x11,0x16,0x5d,0x9,0x12,0x5d,0xe,0x12,0x10,0x18,0x12,0x13,0x18,0x5d,0x1b,0x14,0xf,0xe,0x9,0x5c]

private func freeFinish(key num: UInt8) -> UInt8 {
    return num ^ 125
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  RudeView.swift
//  AbroadTalking
//
//  Created by young on 2023/6/20.
//

//: import UIKit
import UIKit

//: enum LiveAlertViewType {
enum FileViewType {
    //: case noFace
    case noFace // 无人脸
    //: case noNetwork
    case noNetwork // 无网络
    //: case turnOnLive
    case turnOnLive // 开播提醒
    //: case freeVideo
    case freeVideo // 免费视频挽留
}

//: class TalkingLiveAlertView: UIView {
class RudeView: UIView {
    // 右边按钮点击事件
    //: var rightBlcok: (() -> Void)?
    var rightBlcok: (() -> Void)?

    //: private var popView: TalkingPopView?
    private var popView: NameThen?
    //: private var type = LiveAlertViewType.noFace
    private var type = FileViewType.noFace

    //: init(frame: CGRect, type: LiveAlertViewType) {
    init(frame: CGRect, type: FileViewType) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.frame = UIScreen.main.bounds
        self.frame = UIScreen.main.bounds
        //: self.type = type
        self.type = type
        //: setupSubviews()
        itemName()
        //: setupSubViewsConstraint()
        sumerchangeConversation()
        //: refreshUI()
        currentUi()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_plusText.map{defineContent(ok: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var contentView: UIView = {
    private lazy var contentView: UIView = {
        //: let view = UIView()
        let view = UIView()
        //: view.backgroundColor = UIColor.white
        view.backgroundColor = UIColor.white
        //: view.layer.cornerRadius = 15
        view.layer.cornerRadius = 15
        //: return view
        return view
        //: }()
    }()

    //: private lazy var topIcon: UIImageView = {
    private lazy var topIcon: UIImageView = {
        //: let iamg = UIImageView()
        let iamg = UIImageView()
        //: iamg.image = UIImage.eponymUp(name: "icon_cover_toast")
        iamg.image = UIImage.eponymUp(name: (str_playerTitle.replacingOccurrences(of: "value", with: "n") + "_cov" + String(str_contentData.prefix(4)) + "oast"))
        //: iamg.contentMode = .scaleAspectFill
        iamg.contentMode = .scaleAspectFill
        //: return iamg
        return iamg
        //: }()
    }()

    //: private lazy var titleLab: UILabel = {
    private lazy var titleLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = .appTitleColor()
        lab.textColor = .executeTo()
        //: lab.font = UIFont.pingfangWithDiameter(fontSize: 18)
        lab.font = UIFont.pingfangWithDiameter(fontSize: 18)
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var contentLab: UILabel = {
    private lazy var contentLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = .appTitleColor()
        lab.textColor = .executeTo()
        //: lab.font = UIFont.outsideAllSize(fontSize: 16)
        lab.font = UIFont.outsideAllSize(fontSize: 16)
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var closeBtn: UIButton = {
    private lazy var closeBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: let size = CGSize(width: actualWidth(w: 203), height: actualWidth(w: 50))
        let size = CGSize(width: actualWidth(w: 203), height: actualWidth(w: 50))
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: UIColor.appGradientColor(), size: size), for: .normal)
        btn.setBackgroundImage(UIImage.makeBackground(colors: UIColor.appToVoice(), size: size), for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangWithDiameter(fontSize: 18)
        btn.titleLabel?.font = UIFont.pingfangWithDiameter(fontSize: 18)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.setTitle("OK".localized, for: .normal)
        btn.setTitle("OK".localized, for: .normal)
        //: btn.layer.cornerRadius = actualWidth(w: 50/2)
        btn.layer.cornerRadius = actualWidth(w: 50 / 2)
        //: btn.layer.masksToBounds = true
        btn.layer.masksToBounds = true
        //: btn.addTarget(self, action: #selector(rightButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(toClick), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var leftBtn: UIButton = {
    private lazy var leftBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.backgroundColor = .white
        btn.backgroundColor = .white
        //: btn.titleLabel?.font = UIFont.pingfangWithDiameter(fontSize: 16)
        btn.titleLabel?.font = UIFont.pingfangWithDiameter(fontSize: 16)
        //: btn.setTitleColor(.appThemeColor(), for: .normal)
        btn.setTitleColor(.plaster(), for: .normal)
        //: btn.setTitle("Not for now".localized, for: .normal)
        btn.setTitle((String(str_offTitle)).localized, for: .normal)
        //: btn.layer.cornerRadius = actualWidth(w: 50/2)
        btn.layer.cornerRadius = actualWidth(w: 50 / 2)
        //: btn.layer.masksToBounds = true
        btn.layer.masksToBounds = true
        //: btn.layer.borderWidth = 1
        btn.layer.borderWidth = 1
        //: btn.layer.borderColor = UIColor.appThemeColor().cgColor
        btn.layer.borderColor = UIColor.plaster().cgColor
        //: btn.addTarget(self, action: #selector(leftButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(snapCapture), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var rightBtn: UIButton = {
    private lazy var rightBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.backgroundColor = .appThemeColor()
        btn.backgroundColor = .plaster()
        //: btn.titleLabel?.font = UIFont.pingfangWithDiameter(fontSize: 16)
        btn.titleLabel?.font = UIFont.pingfangWithDiameter(fontSize: 16)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.setTitle("Turn on".localized, for: .normal)
        btn.setTitle((String(str_postModelData.suffix(7))).localized, for: .normal)
        //: btn.layer.cornerRadius = actualWidth(w: 50/2)
        btn.layer.cornerRadius = actualWidth(w: 50 / 2)
        //: btn.layer.masksToBounds = true
        btn.layer.masksToBounds = true
        //: btn.addTarget(self, action: #selector(rightButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(toClick), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingLiveAlertView {
extension RudeView {
    //: func show() {
    func subjectMatterSchedule() {
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
    @objc func composePing() {
        //: popView?.dismissView()
        popView?.big()
        //: popView = nil
        popView = nil
    }

    //: @objc private func leftButtonClick() {
    @objc private func snapCapture() {
        //: dismiss()
        composePing()
    }

    //: @objc private func rightButtonClick() {
    @objc private func toClick() {
        //: dismiss()
        composePing()
        //: rightBlcok?()
        rightBlcok?()
    }

    //: override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    override func touchesBegan(_: Set<UITouch>, with _: UIEvent?) {
        //: if type != .freeVideo {
        if type != .freeVideo {
            //: dismiss()
            composePing()
        }
    }
}

// MARK: - Layout

//: extension TalkingLiveAlertView {
extension RudeView {
    // 刷新视图
    //: private func refreshUI() {
    private func currentUi() {
        //: switch (type) {
        switch type {
        //: case .noFace:
        case .noFace:
            //: titleLab.text = "Live Certification off".localized
            titleLab.text = (String(str_viewClickText) + String(str_removeText.prefix(8))).localized
            //: contentLab.text = "Please make sure your face is always in the video screen".localized
            contentLab.text = String(bytes: str_sharedTitle.map{modelConversation(data: $0)}, encoding: .utf8)!.localized

        //: case .noNetwork:
        case .noNetwork:
            //: titleLab.text = "Live Certification off".localized
            titleLab.text = (String(str_viewClickText) + String(str_removeText.prefix(8))).localized
            //: contentLab.text = "Current network unavailable".localized
            contentLab.text = (String(str_toolValue.suffix(4)) + String(str_labValue.prefix(6)) + "twork " + str_pointText.replacingOccurrences(of: "data", with: "a") + "ailable").localized

        //: case .turnOnLive:
        case .turnOnLive:
            //: titleLab.text = "Live Reminder".localized
            titleLab.text = (String(str_sharedValue.prefix(7)) + str_kitValue.replacingOccurrences(of: "size", with: "in")).localized
            //: contentLab.text = ""
            contentLab.text = ""

        //: case .freeVideo:
        case .freeVideo:
            //: titleLab.text = ""
            titleLab.text = ""
            //: contentLab.text = "You haven't used your free video opportunity yet, talk to someone first!".localized
            contentLab.text = String(bytes: str_frameName.map{freeFinish(key: $0)}, encoding: .utf8)!.localized
        }
    }

    // 添加视图
    //: private func setupSubviews() {
    private func itemName() {
        //: self.addSubview(contentView)
        self.addSubview(contentView)
        //: contentView.addSubview(topIcon)
        contentView.addSubview(topIcon)
        //: contentView.addSubview(titleLab)
        contentView.addSubview(titleLab)
        //: contentView.addSubview(contentLab)
        contentView.addSubview(contentLab)
        //: if self.type == .turnOnLive {
        if self.type == .turnOnLive {
            //: contentView.addSubview(leftBtn)
            contentView.addSubview(leftBtn)
            //: contentView.addSubview(rightBtn)
            contentView.addSubview(rightBtn)
            //: } else {
        } else {
            //: contentView.addSubview(closeBtn)
            contentView.addSubview(closeBtn)
        }
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func sumerchangeConversation() {
        //: contentView.snp.makeConstraints { make in
        contentView.snp.makeConstraints { make in
            //: make.top.equalTo(self.snp.centerY).offset(-114)
            make.top.equalTo(self.snp.centerY).offset(-114)
            //: make.leading.equalTo(40)
            make.leading.equalTo(40)
            //: make.trailing.equalTo(-40)
            make.trailing.equalTo(-40)
        }

        //: topIcon.snp.makeConstraints { make in
        topIcon.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.top.equalTo(-39)
            make.top.equalTo(-39)
            //: make.size.equalTo(CGSize(width: actualWidth(w: 101), height: actualWidth(w: 101)))
            make.size.equalTo(CGSize(width: actualWidth(w: 101), height: actualWidth(w: 101)))
        }

        //: titleLab.snp.makeConstraints { make in
        titleLab.snp.makeConstraints { make in
            //: make.top.equalTo(topIcon.snp.bottom).offset(8)
            make.top.equalTo(topIcon.snp.bottom).offset(8)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.leading.equalTo(20)
            make.leading.equalTo(20)
            //: make.trailing.equalTo(-20)
            make.trailing.equalTo(-20)
        }

        //: contentLab.snp.makeConstraints { make in
        contentLab.snp.makeConstraints { make in
            //: make.top.equalTo(titleLab.snp.bottom).offset(10)
            make.top.equalTo(titleLab.snp.bottom).offset(10)
            //: make.centerX.leading.trailing.equalTo(titleLab)
            make.centerX.leading.trailing.equalTo(titleLab)
        }

        //: if self.type == .turnOnLive {
        if self.type == .turnOnLive {
            //: leftBtn.snp.makeConstraints { make in
            leftBtn.snp.makeConstraints { make in
                //: make.top.equalTo(titleLab.snp.bottom).offset(20)
                make.top.equalTo(titleLab.snp.bottom).offset(20)
                //: make.leading.equalTo(13)
                make.leading.equalTo(13)
                //: make.size.equalTo(CGSize(width: actualWidth(w: 130), height: actualWidth(w: 50)))
                make.size.equalTo(CGSize(width: actualWidth(w: 130), height: actualWidth(w: 50)))
            }
            //: rightBtn.snp.makeConstraints { make in
            rightBtn.snp.makeConstraints { make in
                //: make.top.size.equalTo(leftBtn)
                make.top.size.equalTo(leftBtn)
                //: make.trailing.equalTo(-13)
                make.trailing.equalTo(-13)
                //: make.bottom.equalToSuperview().offset(-20)
                make.bottom.equalToSuperview().offset(-20)
            }

            //: } else {
        } else {
            //: closeBtn.snp.makeConstraints { make in
            closeBtn.snp.makeConstraints { make in
                //: make.centerX.equalToSuperview()
                make.centerX.equalToSuperview()
                //: make.top.equalTo(contentLab.snp.bottom).offset(20)
                make.top.equalTo(contentLab.snp.bottom).offset(20)
                //: make.size.equalTo(CGSize(width: actualWidth(w: 203), height: actualWidth(w: 50)))
                make.size.equalTo(CGSize(width: actualWidth(w: 203), height: actualWidth(w: 50)))
                //: make.bottom.equalToSuperview().offset(-20)
                make.bottom.equalToSuperview().offset(-20)
            }
        }
    }
}
