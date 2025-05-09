
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_mainCenterName:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "#45003A" :*/
fileprivate let str_stackValue:String = "#4bottom03"
fileprivate let str_playEqualName:[Character] = ["A"]

/*: "#2D0059" :*/
fileprivate let str_toData:String = "#2"
fileprivate let str_targetTopData:String = "d0059"

/*: "party_close_btn" :*/
fileprivate let str_layerChallengeText:[Character] = ["p","a","r","t","y","_"]
fileprivate let str_colorName:String = "let videoclose_btn"

/*: "btn_party_minimal_nor" :*/
fileprivate let str_lengthName:[Character] = ["b","t","n","_","p","a","r","t","y","_","m","i"]
fileprivate let str_normalName:String = "below sexnimal_nor"

/*: "Minimal" :*/
fileprivate let str_colorTitle:String = "come view let gallery imageMi"
fileprivate let str_bottomValue:[Character] = ["n","i","m","a","l"]

/*: "btn_party_quit_nor" :*/
fileprivate let str_indexWhiteData:String = "time forbtn_pa"
fileprivate let str_colorData:String = "to text coveruit_no"
fileprivate let str_textName:String = "record"

/*: "Quit" :*/
fileprivate let str_upButtonTitle:[Character] = ["Q","u","i","t"]

/*: "btn_party_close_nor" :*/
fileprivate let str_awakeValue:String = "btn_pacontent at view"
fileprivate let str_cellName:[Character] = ["e","_","n","o","r"]

/*: "Close" :*/
fileprivate let str_colorValue:[Character] = ["C","l","o","s","e"]

/*: "Do you want to close the room? After closing the room, all users will be removed from the room." :*/
fileprivate let str_kitData:[UInt8] = [0xdc,0xf7,0xb8,0xe1,0xf7,0xed,0xb8,0xef,0xf9,0xf6,0xec,0xb8,0xec,0xf7,0xb8,0xfb,0xf4,0xf7,0xeb,0xfd,0xb8,0xec,0xf0,0xfd,0xb8,0xea,0xf7,0xf7,0xf5,0xa7,0xb8,0xd9,0xfe,0xec,0xfd,0xea,0xb8,0xfb,0xf4,0xf7,0xeb,0xf1,0xf6,0xff,0xb8,0xec,0xf0,0xfd,0xb8,0xea,0xf7,0xf7,0xf5,0xb4,0xb8,0xf9,0xf4,0xf4,0xb8,0xed,0xeb,0xfd,0xea,0xeb,0xb8,0xef,0xf1,0xf4,0xf4,0xb8,0xfa,0xfd,0xb8,0xea,0xfd,0xf5,0xf7,0xee,0xfd,0xfc,0xb8,0xfe,0xea,0xf7,0xf5,0xb8,0xec,0xf0,0xfd,0xb8,0xea,0xf7,0xf7,0xf5,0xb6]

private func viewTally(model num: UInt8) -> UInt8 {
    return num ^ 152
}

/*: "Cancel" :*/
fileprivate let str_cellMakeHeadText:String = "send rank background returnCance"
fileprivate let str_plainWhiteContent:[Character] = ["l"]

/*: "OK" :*/
fileprivate let str_hostToValue:[Character] = ["O","K"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ShowDataThen.swift
//  BotanicBreeze
//
//  Created by DouXiu on 2024/9/23.
//

//: import UIKit
import UIKit

//: class TalkingVoiceRoomCloseView: UIView {
class ShowDataThen: UIView {
    /// 是否是主播
    //: private let isAnchor = (String(TalkingVoiceRoomManager.shared().partyModel.streamerInfo.uid) == EqualThen.share.loginUid)
    private let isAnchor = (String(ViewRoomManager.astatine().partyModel.streamerInfo.uid) == EqualThen.share.loginUid)

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        roundAwake()
        //: setupSubViewsConstraint()
        service()
        //: addNotifications()
        quits()
    }

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    //: @available(*, unavailable)
    @available(*, unavailable)
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_mainCenterName.reversed(), encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var gradientLayer: CAGradientLayer = {
    private lazy var gradientLayer: CAGradientLayer = {
        //: let layer = CAGradientLayer()
        let layer = CAGradientLayer()
        //: layer.frame = CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight)
        layer.frame = CGRect(x: 0, y: 0, width: kLet_cameraValue, height: kLet_clickData)
        //: layer.startPoint = CGPoint(x: 0.5, y: 0)
        layer.startPoint = CGPoint(x: 0.5, y: 0)
        //: layer.endPoint = CGPoint(x: 0.5, y: 1)
        layer.endPoint = CGPoint(x: 0.5, y: 1)
        //: layer.colors = [
        layer.colors = [
            //: UIColor(hex: "#45003A")!.withAlphaComponent(0.9).cgColor,
            UIColor(hex: (str_stackValue.replacingOccurrences(of: "bottom", with: "50") + String(str_playEqualName)))!.withAlphaComponent(0.9).cgColor,
            //: UIColor(hex: "#2D0059")!.withAlphaComponent(0.9).cgColor
            UIColor(hex: (str_toData.capitalized + str_targetTopData.uppercased()))!.withAlphaComponent(0.9).cgColor,
        ]
        //: layer.locations = [0, 1]
        layer.locations = [0, 1]
        //: return layer
        return layer
        //: }()
    }()

    //: private lazy var rightBtn: UIButton = {
    private lazy var rightBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.eponymUp(name: "party_close_btn"), for: .normal)
        btn.setImage(UIImage.eponymUp(name: (String(str_layerChallengeText) + String(str_colorName.suffix(9)))), for: .normal)
        //: btn.addTarget(self, action: #selector(dismiss), for: .touchUpInside)
        btn.addTarget(self, action: #selector(socialEvent), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var miniBtn: UIButton = {
    private lazy var miniBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.eponymUp(name: "btn_party_minimal_nor"), for: .normal)
        btn.setImage(UIImage.eponymUp(name: (String(str_lengthName) + String(str_normalName.suffix(9)))), for: .normal)
        //: btn.addTarget(self, action: #selector(miniButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(marginalCost), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var miniLab: UILabel = {
    private lazy var miniLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = .white
        lab.textColor = .white
        //: lab.font = UIFont.pingfangWithDiameter(fontSize: 17)
        lab.font = UIFont.pingfangWithDiameter(fontSize: 17)
        //: lab.text = "Minimal".localized
        lab.text = (String(str_colorTitle.suffix(2)) + String(str_bottomValue)).localized
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var quitBtn: UIButton = {
    private lazy var quitBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.eponymUp(name: "btn_party_quit_nor"), for: .normal)
        btn.setImage(UIImage.eponymUp(name: (String(str_indexWhiteData.suffix(6)) + "rty_q" + String(str_colorData.suffix(6)) + str_textName.replacingOccurrences(of: "record", with: "r"))), for: .normal)
        //: btn.addTarget(self, action: #selector(quitButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(tillGift), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var quitLab: UILabel = {
    private lazy var quitLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = .white
        lab.textColor = .white
        //: lab.font = UIFont.pingfangWithDiameter(fontSize: 17)
        lab.font = UIFont.pingfangWithDiameter(fontSize: 17)
        //: lab.text = "Quit".localized
        lab.text = (String(str_upButtonTitle)).localized
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var closeBtn: UIButton = {
    private lazy var closeBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.eponymUp(name: "btn_party_close_nor"), for: .normal)
        btn.setImage(UIImage.eponymUp(name: (String(str_awakeValue.prefix(6)) + "rty_clos" + String(str_cellName))), for: .normal)
        //: btn.addTarget(self, action: #selector(closeButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(toSend), for: .touchUpInside)
        //: btn.isHidden = !self.isAnchor
        btn.isHidden = !self.isAnchor
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var closeLab: UILabel = {
    private lazy var closeLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = .white
        lab.textColor = .white
        //: lab.font = UIFont.pingfangWithDiameter(fontSize: 17)
        lab.font = UIFont.pingfangWithDiameter(fontSize: 17)
        //: lab.text = "Close".localized
        lab.text = (String(str_colorValue)).localized
        //: lab.isHidden = !self.isAnchor
        lab.isHidden = !self.isAnchor
        //: return lab
        return lab
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingVoiceRoomCloseView {
extension ShowDataThen {
    /// 展示视图
    //: func show() {
    func makeFromDismiss() {
        //: guard self.superview == nil else { return }
        guard self.superview == nil else { return }
        //: MacroDefine.getWindow().addSubview(self)
        UserMacroDefine.toUp().addSubview(self)
    }

    /// 移除视图
    //: @objc func dismiss() {
    @objc func socialEvent() {
        //: guard self.superview != nil else { return }
        guard self.superview != nil else { return }
        //: self.removeFromSuperview()
        self.removeFromSuperview()
    }

    /// 最小化窗口点击事件
    //: @objc private func miniButtonClick() {
    @objc private func marginalCost() {
        //: self.dismiss()
        self.socialEvent()
        //: TalkingVoiceRoomManager.shared().voiceRoom_mini()
        ViewRoomManager.astatine().singingVoice()
    }

    /// 退出语聊房按钮点击事件
    //: @objc private func quitButtonClick() {
    @objc private func tillGift() {
        //: self.dismiss()
        self.socialEvent()
        //: TalkingVoiceRoomManager.shared().voiceRoom_releaseAllResource()
        ViewRoomManager.astatine().fastening()
    }

    /// 关闭语聊房按钮点击事件
    //: @objc private func closeButtonClick() {
    @objc private func toSend() {
        //: let config = ShowAlertConfig()
        let config = AtAlertConfig()
        //: config.alignment = .center
        config.alignment = .center
        //: TalkingAlertShow.customAlert(message: "Do you want to close the room? After closing the room, all users will be removed from the room.".localized, leftBtnTitle: "Cancel".localized, rightBtnTitle: "OK".localized, leftBlock: {}, rightBlock: {
        MotilityThen.customLabel(message: String(bytes: str_kitData.map{viewTally(model: $0)}, encoding: .utf8)!.localized, leftBtnTitle: (String(str_cellMakeHeadText.suffix(5)) + String(str_plainWhiteContent)).localized, rightBtnTitle: "OK".localized, leftBlock: {}, rightBlock: {
            //: TalkingVoiceRoomManager.shared().voiceRoom_releaseAllResource()
            ViewRoomManager.astatine().fastening()
            //: TalkingVoiceRoomReqTool.req_voiceRoomClose(roomId: TalkingVoiceRoomManager.shared().partyModel.roomId)
            SurgeryReqTool.giftAdd(roomId: ViewRoomManager.astatine().partyModel.roomId)
            //: self.dismiss()
            self.socialEvent()

            //: }, config: config)
        }, config: config)
    }
}

// MARK: - Layout

//: extension TalkingVoiceRoomCloseView {
extension ShowDataThen {
    /// 添加视图
    //: private func setupSubviews() {
    private func roundAwake() {
        //: self.layer.addSublayer(self.gradientLayer)
        self.layer.addSublayer(self.gradientLayer)
        //: self.addSubview(self.rightBtn)
        self.addSubview(self.rightBtn)
        //: self.addSubview(self.quitBtn)
        self.addSubview(self.quitBtn)
        //: self.addSubview(self.quitLab)
        self.addSubview(self.quitLab)
        //: self.addSubview(self.miniBtn)
        self.addSubview(self.miniBtn)
        //: self.addSubview(self.miniLab)
        self.addSubview(self.miniLab)
        //: self.addSubview(self.closeBtn)
        self.addSubview(self.closeBtn)
        //: self.addSubview(self.closeLab)
        self.addSubview(self.closeLab)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func service() {
        //: self.frame = CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight)
        self.frame = CGRect(x: 0, y: 0, width: kLet_cameraValue, height: kLet_clickData)

        //: self.rightBtn.snp.makeConstraints { make in
        self.rightBtn.snp.makeConstraints { make in
            //: make.top.equalTo(StatusBarHeight + actualWidth(w: 4))
            make.top.equalTo(kLet_timeSenseValue + actualWidth(w: 4))
            //: make.trailing.equalTo(-10)
            make.trailing.equalTo(-10)
            //: make.width.height.equalTo(actualWidth(w: 32))
            make.width.height.equalTo(actualWidth(w: 32))
        }

        //: self.quitBtn.snp.makeConstraints { make in
        self.quitBtn.snp.makeConstraints { make in
            //: if self.isAnchor {
            if self.isAnchor {
                //: make.centerY.equalToSuperview()
                make.centerY.equalToSuperview()
                //: } else {
            } else {
                //: make.top.equalTo((ScreenHeight + actualWidth(w: 116)) / 2)
                make.top.equalTo((kLet_clickData + actualWidth(w: 116)) / 2)
            }
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.width.height.equalTo(actualWidth(w: 75))
            make.width.height.equalTo(actualWidth(w: 75))
        }
        //: self.quitLab.snp.makeConstraints { make in
        self.quitLab.snp.makeConstraints { make in
            //: make.top.equalTo(self.quitBtn.snp.bottom).offset(actualWidth(w: 12))
            make.top.equalTo(self.quitBtn.snp.bottom).offset(actualWidth(w: 12))
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }

        //: self.miniBtn.snp.makeConstraints { make in
        self.miniBtn.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.width.height.equalTo(self.quitBtn)
            make.width.height.equalTo(self.quitBtn)
            //: make.bottom.equalTo(self.quitBtn.snp.top).offset(-actualWidth(w: 116))
            make.bottom.equalTo(self.quitBtn.snp.top).offset(-actualWidth(w: 116))
        }
        //: self.miniLab.snp.makeConstraints { make in
        self.miniLab.snp.makeConstraints { make in
            //: make.top.equalTo(self.miniBtn.snp.bottom).offset(actualWidth(w: 12))
            make.top.equalTo(self.miniBtn.snp.bottom).offset(actualWidth(w: 12))
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }

        //: self.closeBtn.snp.makeConstraints { make in
        self.closeBtn.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.width.height.equalTo(self.quitBtn)
            make.width.height.equalTo(self.quitBtn)
            //: make.top.equalTo(self.quitBtn.snp.bottom).offset(actualWidth(w: 116))
            make.top.equalTo(self.quitBtn.snp.bottom).offset(actualWidth(w: 116))
        }
        //: self.closeLab.snp.makeConstraints { make in
        self.closeLab.snp.makeConstraints { make in
            //: make.top.equalTo(self.closeBtn.snp.bottom).offset(actualWidth(w: 12))
            make.top.equalTo(self.closeBtn.snp.bottom).offset(actualWidth(w: 12))
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }
    }

    /// 添加通知
    //: private func addNotifications() {
    private func quits() {
        // 语聊房状态变更
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(dismiss),
                                               selector: #selector(socialEvent),
                                               //: name: PARTY_STATUS_CHANGE_NOTIFICATION,
                                               name: kLet_messageData,
                                               //: object: nil)
                                               object: nil)
    }
}
