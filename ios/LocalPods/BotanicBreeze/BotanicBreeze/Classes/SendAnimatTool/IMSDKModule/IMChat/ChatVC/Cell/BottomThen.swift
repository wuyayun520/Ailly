
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_backgroundValue:[UInt8] = [0x32,0x35,0x32,0x2f,0x73,0x38,0x34,0x3f,0x3e,0x29,0x61,0x72,0x7b,0x33,0x3a,0x28,0x7b,0x35,0x34,0x2f,0x7b,0x39,0x3e,0x3e,0x35,0x7b,0x32,0x36,0x2b,0x37,0x3e,0x36,0x3e,0x35,0x2f,0x3e,0x3f]

private func auditoryImageActive(tool num: UInt8) -> UInt8 {
    return num ^ 91
}

/*: "CCCCCC" :*/
fileprivate let str_bindValue:[Character] = ["C","C","C","C","C","C"]

/*: "icon_lounge" :*/
fileprivate let str_blockTitle:[Character] = ["i","c","o","n","_","l"]
fileprivate let str_currentData:[Character] = ["o","u","n","g","e"]

/*: "#FFEE4B" :*/
fileprivate let str_labelDataTitle:String = "status image#FFEE"
fileprivate let str_tillName:String = "return file4B"

/*: "View read receipts?" :*/
fileprivate let str_tableValue:[Character] = ["V","i","e","w"," ","r","e","a"]
fileprivate let str_callValue:[Character] = ["d"," ","r","e","c","e","i","p","t","s","?"]

/*: "#FBE3FE" :*/
fileprivate let str_succeedExitStatusText:String = "#FBE3Finfo edge tag table"
fileprivate let str_picEqualText:String = "e"

/*: "#D8DDFF" :*/
fileprivate let str_modeValue:String = "show photo value video any#D8DDFF"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  BottomThen.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/2/28.
//

//: import UIKit
import UIKit

/*! 提示类型消息 */
//: class TalkingChatTipsMsgCell: TalkingChatBaseMsgCell {
class BottomThen: IndexViewCell {
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
        //: designView()
        paradigm()
    }

    //: required init?(coder aDecoder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_backgroundValue.map{auditoryImageActive(tool: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy load

    /**
     *  系统消息标签
     *  用于展示系统消息的内容。例如：“您撤回了一条消息”。
     */
    //: lazy var messageLB: YYLabel = {
    lazy var messageLB: YYLabel = {
        //: let label = YYLabel.init()
        let label = YYLabel()
        //: label.font = UIFont.outsideAllSize(fontSize: 15)
        label.font = UIFont.outsideAllSize(fontSize: 15)
        //: label.textColor = UIColor.init(hex: "CCCCCC")
        label.textColor = UIColor(hex: (String(str_bindValue)))
        //: label.numberOfLines = 0
        label.numberOfLines = 0
        //: label.backgroundColor = .clear
        label.backgroundColor = .clear
        //: label.layer.cornerRadius = 3
        label.layer.cornerRadius = 3
        //: label.layer.masksToBounds = true
        label.layer.masksToBounds = true
        //: return label
        return label
        //: }()
    }()

    /// 开通VIP已读回执功能按钮
    //: private lazy var vipReadReceiptBtn: TalkingButton = {
    private lazy var vipReadReceiptBtn: ProgressTalkingButton = {
        //: let btn = TalkingButton()
        let btn = ProgressTalkingButton()
        //: btn.setImage(UIImage.eponymUp(name: "icon_lounge"), for: .normal)
        btn.setImage(UIImage.eponymUp(name: (String(str_blockTitle) + String(str_currentData))), for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Regular, fontSize: 15)
        btn.titleLabel?.font = UIFont.pingfang(type: .Regular, fontSize: 15)
        //: btn.setTitleColor(UIColor(hex: "#FFEE4B"), for: .normal)
        btn.setTitleColor(UIColor(hex: (String(str_labelDataTitle.suffix(5)) + String(str_tillName.suffix(2)))), for: .normal)
        //: btn.setTitle("View read receipts?".localized, for: .normal)
        btn.setTitle((String(str_tableValue) + String(str_callValue)).localized, for: .normal)
        //: btn.spaceBetweenTitleAndImage = 6
        btn.spaceBetweenTitleAndImage = 6
        //: btn.layer.cornerRadius = 5
        btn.layer.cornerRadius = 5
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.addTarget(self, action: #selector(vipReadReceiptClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(viewCount), for: .touchUpInside)
        //: contentView.addSubview(btn)
        contentView.addSubview(btn)
        //: let btnWidth = (btn.titleLabel?.intrinsicContentSize.width ?? 0) + 46.0
        let btnWidth = (btn.titleLabel?.intrinsicContentSize.width ?? 0) + 46.0
        //: let btnHeight = 30.0
        let btnHeight = 30.0
        //: let gColor = [UIColor.init(hex: "#FBE3FE")!.withAlphaComponent(0.6).cgColor,
        let gColor = [UIColor(hex: (String(str_succeedExitStatusText.prefix(6)) + str_picEqualText.uppercased()))!.withAlphaComponent(0.6).cgColor,
                      //: UIColor.init(hex: "#D8DDFF")!.withAlphaComponent(0.6).cgColor]
                      UIColor(hex: (String(str_modeValue.suffix(7))))!.withAlphaComponent(0.6).cgColor]
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: gColor, size: CGSize(width: btnWidth, height: btnHeight)), for: .normal)
        btn.setBackgroundImage(UIImage.makeBackground(colors: gColor, size: CGSize(width: btnWidth, height: btnHeight)), for: .normal)
        //: btn.snp.makeConstraints { make in
        btn.snp.makeConstraints { make in
            //: make.center.equalToSuperview()
            make.center.equalToSuperview()
            //: make.size.equalTo(CGSize(width: btnWidth, height: btnHeight))
            make.size.equalTo(CGSize(width: btnWidth, height: btnHeight))
        }
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - 已读回执引导充值VIP

//: extension TalkingChatTipsMsgCell {
extension BottomThen {
    /// vip订阅事件
    //: @objc private func vipReadReceiptClick() {
    @objc private func viewCount() {
        //: EditTextThen.share.func__pushToSubscribeAlert()
        EditTextThen.share.addShowParams()
    }
}

// MARK: - Event

//: extension TalkingChatTipsMsgCell {
extension BottomThen {
    //: override func fill(with data: TCommonCellData) {
    override func fill(with data: TCommonCellData) {
        //: super.fill(with: data)
        super.fill(with: data)
        //: guard let tipCellData = data as? EponymCellData else { return }
        guard let tipCellData = data as? EponymCellData else { return }
        //: self.avatarView.isHidden = true
        self.avatarView.isHidden = true
        //: self.isReadImg.isHidden = true
        self.isReadImg.isHidden = true
        //: self.retryView.isHidden = true
        self.retryView.isHidden = true
        //: self.coinLabel.isHidden = true
        self.coinLabel.isHidden = true
        //: self.coinIconImg.isHidden = true
        self.coinIconImg.isHidden = true
        //: self.iconBorder.isHidden = true
        self.iconBorder.isHidden = true
        //: self.bubbleImgView.image = nil
        self.bubbleImgView.image = nil
        //: self.messageLB.layer.contents = nil
        self.messageLB.layer.contents = nil
        //: let dataLayout: YYTextLayout? = tipCellData.yyLayout
        let dataLayout: YYTextLayout? = tipCellData.yyLayout
        //: if dataLayout != nil {
        if dataLayout != nil {
            //: self.messageLB.textLayout = tipCellData.yyLayout
            self.messageLB.textLayout = tipCellData.yyLayout
            //: addTouchTagGes()
            tagPan()
            //: } else {
        } else {
            //: let layout = YYTextLayout.init(containerSize: CGSize.init(width: MacroDefine.getScreenWidth()-50, height: CGFloat(MAXFLOAT)), text: tipCellData.attributedString)
            let layout = YYTextLayout(containerSize: CGSize(width: UserMacroDefine.loadColor() - 50, height: CGFloat(MAXFLOAT)), text: tipCellData.attributedString)
            //: self.messageLB.textLayout = layout
            self.messageLB.textLayout = layout
            //: removeAllTapGes()
            pothouse()
        }

        // VIP已读回执tips
        //: if tipCellData.msgModel.tips.content == "View read receipts?".localized {
        if tipCellData.msgModel.tips.content == (String(str_tableValue) + String(str_callValue)).localized {
            //: self.vipReadReceiptBtn.isHidden = false
            self.vipReadReceiptBtn.isHidden = false
            //: self.bubbleImgView.isHidden = true
            self.bubbleImgView.isHidden = true
            //: } else {
        } else {
            //: self.vipReadReceiptBtn.isHidden = true
            self.vipReadReceiptBtn.isHidden = true
            //: self.bubbleImgView.isHidden = false
            self.bubbleImgView.isHidden = false
        }
    }

    //: override func updateConstraints() {
    override func updateConstraints() {
        //: super.updateConstraints()
        super.updateConstraints()
        //: self.container.snp.remakeConstraints { make in
        self.container.snp.remakeConstraints { make in
            //: make.center.equalToSuperview()
            make.center.equalToSuperview()
            //: make.width.lessThanOrEqualTo(ScreenWidth-40)
            make.width.lessThanOrEqualTo(kLet_cameraValue - 40)
            //: make.top.equalTo(10)
            make.top.equalTo(10)
            //: make.bottom.equalTo(-10)
            make.bottom.equalTo(-10)
        }

        //: self.messageLB.snp.remakeConstraints { make in
        self.messageLB.snp.remakeConstraints { make in
            //: make.leading.equalTo(8)
            make.leading.equalTo(8)
            //: make.trailing.equalTo(-8)
            make.trailing.equalTo(-8)
            //: make.top.bottom.equalToSuperview()
            make.top.bottom.equalToSuperview()
        }
    }

    //: func addTouchTagGes() {
    func tagPan() {
        //: removeAllTapGes()
        pothouse()
        //: let containerTap = UITapGestureRecognizer.init(target: self, action: #selector(TouchCellMessageAction(tap:)))
        let containerTap = UITapGestureRecognizer(target: self, action: #selector(cleanTap(tap:)))
        //: containerTap.numberOfTapsRequired = 1
        containerTap.numberOfTapsRequired = 1
        //: containerTap.numberOfTouchesRequired = 1
        containerTap.numberOfTouchesRequired = 1
        //: self.messageLB.addGestureRecognizer(containerTap)
        self.messageLB.addGestureRecognizer(containerTap)
        //: self.messageLB.isUserInteractionEnabled = true
        self.messageLB.isUserInteractionEnabled = true
    }

    //: func removeAllTapGes() {
    func pothouse() {
        //: self.container.gestureRecognizers?.forEach(self.container.removeGestureRecognizer(_:))
        self.container.gestureRecognizers?.forEach(self.container.removeGestureRecognizer(_:))
    }

    //: @objc func TouchCellMessageAction(tap: UITapGestureRecognizer) {
    @objc func cleanTap(tap _: UITapGestureRecognizer) {
        //: self.delegate?.onSelectMessage(cell: self)
        self.delegate?.onSelectMessage(cell: self)
    }
}

// MARK: - Event

//: extension TalkingChatTipsMsgCell {
extension BottomThen {
    //: func designView() {
    func paradigm() {
        //: self.bubbleImgView.addSubview(messageLB)
        self.bubbleImgView.addSubview(messageLB)
        //: self.bubbleImgView.isHidden = false
        self.bubbleImgView.isHidden = false
        //: self.bubbleImgView.backgroundColor = UIColor.black.withAlphaComponent(0.3)
        self.bubbleImgView.backgroundColor = UIColor.black.withAlphaComponent(0.3)
        //: self.bubbleImgView.layer.cornerRadius = 5
        self.bubbleImgView.layer.cornerRadius = 5
        //: self.bubbleImgView.clipsToBounds = true
        self.bubbleImgView.clipsToBounds = true
        //: self.bubbleImgView.isUserInteractionEnabled = true
        self.bubbleImgView.isUserInteractionEnabled = true
    }
}
