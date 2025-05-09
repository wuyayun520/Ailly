
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_adData:[UInt8] = [0xce,0xc9,0xce,0xd3,0x8f,0xc4,0xc8,0xc3,0xc2,0xd5,0x9d,0x8e,0x87,0xcf,0xc6,0xd4,0x87,0xc9,0xc8,0xd3,0x87,0xc5,0xc2,0xc2,0xc9,0x87,0xce,0xca,0xd7,0xcb,0xc2,0xca,0xc2,0xc9,0xd3,0xc2,0xc3]

private func labelView(status num: UInt8) -> UInt8 {
    return num ^ 167
}

/*: "MF:LiveChatWelMsg" :*/
fileprivate let str_mainValue:[Character] = ["M","F",":","L","i","v"]
fileprivate let str_imageSizeValue:String = "eChacell let warning model value"

/*: "MF:LiveChatPrizeMsg" :*/
fileprivate let str_roomText:[Character] = ["M","F",":","L","i","v","e","C","h","a","t","P","r","i","z","e","M","s","g"]

/*: "MF:LiveChatAttentionMsg" :*/
fileprivate let str_mainText:String = "MF:Limake case self menu"
fileprivate let str_makeReloadName:String = "ping file in varatAtt"
fileprivate let str_userValue:[Character] = ["e","n","t","i","o","n","M","s","g"]

/*: "MF:PartyChatWelMsg" :*/
fileprivate let str_systemValue:String = "MF:Paadd to let ok source"
fileprivate let str_sizeValue:[Character] = ["W","e","l","M","s","g"]

/*: "MF:PartyChatPrizeMsg" :*/
fileprivate let str_cardName:String = "you of equal ifMF:Par"
fileprivate let str_resultName:String = "PrizeMsgnever to call"

/*: "MF:PartyChatAttentionMsg" :*/
fileprivate let str_photoName:[Character] = ["M","F",":","P","a"]
fileprivate let str_coinScreenText:String = "rtyCreturn user"
fileprivate let str_managerData:String = "tebackgroundt"

/*: _ :*/
fileprivate let str_makeTrackContent:[Character] = ["_"]

/*: "UITableViewCell" :*/
fileprivate let str_effectAName:String = "UITablreturn super"
fileprivate let str_centerCurrentValue:String = "Cellphoto fail var self player"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ShowTitleViewCell.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/7/10.
//

//: import UIKit
import UIKit

//: class TalkingDanmuMsgBassCell: UITableViewCell {
class ShowTitleViewCell: UITableViewCell {
    //: var msgModel = TalkingLiveRoomDanmuModel.init()
    var msgModel = ModeDanmuModel()

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

    //: override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        //: super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.init(style: style, reuseIdentifier: reuseIdentifier)

        //: self.accessoryType = .none
        self.accessoryType = .none
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: self.selectionStyle  = .none
        self.selectionStyle = .none

        //: self.contentView.addSubview(bgLb)
        self.contentView.addSubview(bgLb)
        //: self.contentView.addSubview(msgLabel)
        self.contentView.addSubview(msgLabel)

        //: self.msgLabel.snp.makeConstraints { make in
        self.msgLabel.snp.makeConstraints { make in
            //: make.leading.equalTo(8)
            make.leading.equalTo(8)
            //: make.top.equalTo(cellLineSpeing+2)
            make.top.equalTo(kLet_closeBottomTitle + 2)
            //: make.bottom.equalTo(-2)
            make.bottom.equalTo(-2)
//            make.trailing.lessThanOrEqualTo(-6)
            //: make.width.equalTo(10)
            make.width.equalTo(10)
        }
        //: self.bgLb.snp.makeConstraints { make in
        self.bgLb.snp.makeConstraints { make in
            //: make.top.equalTo(cellLineSpeing)
            make.top.equalTo(kLet_closeBottomTitle)
            //: make.leading.bottom.equalTo(0)
            make.leading.bottom.equalTo(0)
            //: make.trailing.equalTo(self.msgLabel.snp.trailing).offset(6)
            make.trailing.equalTo(self.msgLabel.snp.trailing).offset(6)
        }
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_adData.map{labelView(status: $0)}, encoding: .utf8)!)
    }

    //: lazy var bgLb: UIImageView = {
    lazy var bgLb: UIImageView = {
        //: let view = UIImageView.init()
        let view = UIImageView()
        //: view.layer.cornerRadius = 13
        view.layer.cornerRadius = 13
        //: view.layer.masksToBounds = true
        view.layer.masksToBounds = true
        //: view.isUserInteractionEnabled = true
        view.isUserInteractionEnabled = true
        //: return view
        return view
        //: }()
    }()

    //: lazy var msgLabel: YYLabel = {
    lazy var msgLabel: YYLabel = {
        //: let lb = YYLabel.init()
        let lb = YYLabel()
        //: lb.numberOfLines = 0
        lb.numberOfLines = 0
        //: lb.backgroundColor = .clear
        lb.backgroundColor = .clear
        //: lb.clipsToBounds = true
        lb.clipsToBounds = true
        //: lb.textVerticalAlignment = .center
        lb.textVerticalAlignment = .center
        //: lb.isUserInteractionEnabled = true
        lb.isUserInteractionEnabled = true
        //: lb.semanticContentAttribute = .forceLeftToRight
        lb.semanticContentAttribute = .forceLeftToRight
        //: if LanguageManager.shared.direction == .rightToLeft {
        if FileReactiveCompatible.shared.direction == .rightToLeft {
            //: lb.semanticContentAttribute = .forceRightToLeft
            lb.semanticContentAttribute = .forceRightToLeft
        }
        //: return lb
        return lb
        //: }()
    }()
}

//: extension TalkingDanmuMsgBassCell {
extension ShowTitleViewCell {
    //: class func initTableView(tableView: UITableView, msg: TalkingLiveRoomDanmuModel, indexPath: IndexPath ) -> TalkingDanmuMsgBassCell {
    class func explain(tableView: UITableView, msg: ModeDanmuModel, indexPath _: IndexPath) -> ShowTitleViewCell {
        //: var cell: TalkingDanmuMsgBassCell?
        var cell: ShowTitleViewCell?

        //: if msg.msgInfo?.messageType == 1 ||
        if msg.msgInfo?.messageType == 1 ||
            //: msg.msgInfo?.messageType == 2 ||
            msg.msgInfo?.messageType == 2 ||
            //: msg.msgInfo?.messageType == 3 ||
            msg.msgInfo?.messageType == 3 ||
            //: msg.MsgExtension == "MF:LiveChatWelMsg" ||
            msg.MsgExtension == (String(str_mainValue) + String(str_imageSizeValue.prefix(4)) + "tWelMsg") ||
            //: msg.MsgExtension == "MF:LiveChatPrizeMsg" ||
            msg.MsgExtension == (String(str_roomText)) ||
            //: msg.MsgExtension == "MF:LiveChatAttentionMsg" ||
            msg.MsgExtension == (String(str_mainText.prefix(5)) + "veCh" + String(str_makeReloadName.suffix(5)) + String(str_userValue)) ||
            //: msg.MsgExtension == "MF:PartyChatWelMsg" ||
            msg.MsgExtension == (String(str_systemValue.prefix(5)) + "rtyChat" + String(str_sizeValue)) ||
            //: msg.MsgExtension == "MF:PartyChatPrizeMsg" ||
            msg.MsgExtension == (String(str_cardName.suffix(6)) + "tyChat" + String(str_resultName.prefix(8))) ||
            //: msg.MsgExtension == "MF:PartyChatAttentionMsg" {
            msg.MsgExtension == (String(str_photoName) + String(str_coinScreenText.prefix(4)) + "hatAt" + str_managerData.replacingOccurrences(of: "background", with: "n") + "ionMsg")
        {
            //: let identifier = "\(TalkingDanmuMsgTextCell.className())_\(msg.msgInfo?.messageType ?? 0)"
            let identifier = "\(MakeTitleCell.className())_\(msg.msgInfo?.messageType ?? 0)"
            //: tableView.register(TalkingDanmuMsgTextCell.self, forCellReuseIdentifier: identifier)
            tableView.register(MakeTitleCell.self, forCellReuseIdentifier: identifier)
            //: cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? TalkingDanmuMsgTextCell
            cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? MakeTitleCell
            //: if cell == nil {
            if cell == nil {
                //: cell = TalkingDanmuMsgTextCell(style: .default, reuseIdentifier: identifier)
                cell = MakeTitleCell(style: .default, reuseIdentifier: identifier)
            }
            //: }else {
        } else {
            //: let identifier = "UITableViewCell"
            let identifier = (String(str_effectAName.prefix(6)) + "eView" + String(str_centerCurrentValue.prefix(4)))
            //: var cell = tableView.dequeueReusableCell(withIdentifier: identifier)
            var cell = tableView.dequeueReusableCell(withIdentifier: identifier)
            //: if cell == nil {
            if cell == nil {
                //: cell = TalkingDanmuMsgBassCell(style: .default, reuseIdentifier: identifier)
                cell = ShowTitleViewCell(style: .default, reuseIdentifier: identifier)
            }
            //: return cell as! TalkingDanmuMsgBassCell
            return cell as! ShowTitleViewCell
        }

        //: cell?.msgModel = msg
        cell?.msgModel = msg

        //: return cell!
        return cell!
    }
}
