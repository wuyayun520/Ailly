
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_cellName:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "btn_intimate_send_bg_nor" :*/
fileprivate let str_itemToolTitle:[Character] = ["b","t","n","_","i","n","t","i","m"]
fileprivate let str_imageData:[Character] = ["a"]
fileprivate let str_viewValue:[Character] = ["t","e","_","s","e","n","d","_","b","g","_","n","o","r"]

/*: "Send" :*/
fileprivate let str_toMakeValue:[Character] = ["S","e","n","d"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ViewMsgCell.swift
//  BotanicBreeze
//
//  Created by Charlotte on 2024/7/29.
//

//: import UIKit
import UIKit

//: class TalkingChatAskForGiftMsgCell: TalkingChatBaseMsgCell {
class ViewMsgCell: IndexViewCell {
    //: typealias SendBlock = () -> Void
    typealias SendBlock = () -> Void
    //: var sendBlock: SendBlock?
    var sendBlock: SendBlock?
    //: var giftData: PlayReactiveCompatible?
    var giftData: PlayReactiveCompatible?

    //: override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        //: super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        //: self.bubbleImgView.isHidden = false
        self.bubbleImgView.isHidden = false
        //: self.bubbleImgView.isUserInteractionEnabled = true
        self.bubbleImgView.isUserInteractionEnabled = true
        //: self.bubbleImgView.addSubview(giftContentLab)
        self.bubbleImgView.addSubview(giftContentLab)
        //: self.bubbleImgView.addSubview(sendBtn)
        self.bubbleImgView.addSubview(sendBtn)
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_cellName.reversed(), encoding: .utf8)!)
    }

    //: override func awakeFromNib() {
    override func awakeFromNib() {
        //: super.awakeFromNib()
        super.awakeFromNib()
        // Initialization code
    }

    //: override func setSelected(_ selected: Bool, animated: Bool) {
    override func setSelected(_ selected: Bool, animated: Bool) {
        //: super.setSelected(selected, animated: animated)
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }

    //: private lazy var giftContentLab: YYLabel = {
    private lazy var giftContentLab: YYLabel = {
        //: let label = YYLabel.init()
        let label = YYLabel()
        //: label.textColor = UIColor.appTitleColor()
        label.textColor = UIColor.executeTo()
        //: label.font = UIFont.outsideAllSize(fontSize: 17)
        label.font = UIFont.outsideAllSize(fontSize: 17)
        //: label.numberOfLines = 0
        label.numberOfLines = 0
        //: return label
        return label
        //: }()
    }()

    /// 送礼
    //: private lazy var sendBtn: TalkingButton = {
    private lazy var sendBtn: ProgressTalkingButton = {
        //: let btn = TalkingButton.init()
        let btn = ProgressTalkingButton()
        //: btn.setBackgroundImage(UIImage.eponymUp(name: "btn_intimate_send_bg_nor"), for: .normal)
        btn.setBackgroundImage(UIImage.eponymUp(name: (String(str_itemToolTitle) + String(str_imageData) + String(str_viewValue))), for: .normal)
        //: btn.setTitle("Send".localized, for: .normal)
        btn.setTitle((String(str_toMakeValue)).localized, for: .normal)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangWithDiameter(fontSize: 14)
        btn.titleLabel?.font = UIFont.pingfangWithDiameter(fontSize: 14)
        //: btn.addTarget(self, action: #selector(sendBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(bottomLabel), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

//: extension TalkingChatAskForGiftMsgCell {
extension ViewMsgCell {
    //: @objc func sendBtnClick() {
    @objc func bottomLabel() {
        //: self.sendBlock?()
        self.sendBlock?()
    }
}

//: extension TalkingChatAskForGiftMsgCell {
extension ViewMsgCell {
    //: override func fill(with data: TCommonCellData) {
    override func fill(with data: TCommonCellData) {
        //: super.fill(with: data)
        super.fill(with: data)
        //: self.indicator.stopAnimating()
        self.indicator.stopAnimating()
        //: self.giftData = data as? PlayReactiveCompatible
        self.giftData = data as? PlayReactiveCompatible
        //: guard let giftData = self.giftData else { return }
        guard let giftData = self.giftData else { return }
        //: self.giftContentLab.attributedText =  giftData.attributedString
        self.giftContentLab.attributedText = giftData.attributedString
        //: self.sendBtn.isHidden = (self.giftData?.msgModel.msgInfo.wantGift.sendStatus == 1 || self.giftData?.direction == .MsgDirectionOutgoing)
        self.sendBtn.isHidden = (self.giftData?.msgModel.msgInfo.wantGift.sendStatus == 1 || self.giftData?.direction == .MsgDirectionOutgoing)
    }

    //: override public func updateConstraints() {
    override public func updateConstraints() {
        //: super.updateConstraints()
        super.updateConstraints()
        //: guard let giftData = self.giftData else { return }
        guard let giftData = self.giftData else { return }
        //: self.giftContentLab.snp.remakeConstraints { make in
        self.giftContentLab.snp.remakeConstraints { make in
            //: make.leading.equalTo(giftData.textOrigin.x)
            make.leading.equalTo(giftData.textOrigin.x)
            //: make.top.equalTo(giftData.textOrigin.y)
            make.top.equalTo(giftData.textOrigin.y)
            //: make.size.equalTo(giftData.textSize)
            make.size.equalTo(giftData.textSize)
        }
        //: self.sendBtn.snp.remakeConstraints { make in
        self.sendBtn.snp.remakeConstraints { make in
            //: make.trailing.equalTo(-18)
            make.trailing.equalTo(-18)
            //: make.bottom.equalTo(-14)
            make.bottom.equalTo(-14)
            //: make.size.equalTo(CGSize.init(width: 58, height: 28))
            make.size.equalTo(CGSize(width: 58, height: 28))
        }
    }
}
