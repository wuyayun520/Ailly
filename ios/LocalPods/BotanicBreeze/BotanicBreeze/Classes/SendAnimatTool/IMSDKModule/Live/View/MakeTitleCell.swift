
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_labValue:[UInt8] = [0x1d,0x22,0x1d,0x28,0xdc,0x17,0x23,0x18,0x19,0x26,0xee,0xdd,0xd4,0x1c,0x15,0x27,0xd4,0x22,0x23,0x28,0xd4,0x16,0x19,0x19,0x22,0xd4,0x1d,0x21,0x24,0x20,0x19,0x21,0x19,0x22,0x28,0x19,0x18]

fileprivate func frameRenderCell(gift num: UInt8) -> UInt8 {
    let value = Int(num) + 76
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  MakeTitleCell.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/7/10.
//

//: import UIKit
import UIKit

//: class TalkingDanmuMsgTextCell: TalkingDanmuMsgBassCell {
class MakeTitleCell: ShowTitleViewCell {
    //: override var msgModel: TalkingLiveRoomDanmuModel {
    override var msgModel: ModeDanmuModel {
        //: get { return super.msgModel }
        get { return super.msgModel }
        //: set {
        set {
            //: super.msgModel = newValue
            super.msgModel = newValue
            //: setCell()
            setDeleteCell()
        }
    }

    //: override func awakeFromNib() {
    override func awakeFromNib() {
        //: super.awakeFromNib()
        super.awakeFromNib()
        // Initialization code
    }

    //: override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        //: super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_labValue.map{frameRenderCell(gift: $0)}, encoding: .utf8)!)
    }
}

//: extension TalkingDanmuMsgTextCell {
extension MakeTitleCell {
    //: func setCell() {
    func setDeleteCell() {
        //: self.msgLabel.attributedText = msgModel.msgAttribText
        self.msgLabel.attributedText = msgModel.msgAttribText
        //: self.msgLabel.snp.updateConstraints { make in
        self.msgLabel.snp.updateConstraints { make in
            //: make.width.equalTo(msgModel.msgWidth)
            make.width.equalTo(msgModel.msgWidth)
        }
        //: self.bgLb.image = nil
        self.bgLb.image = nil
        //: self.bgLb.backgroundColor = msgModel.bgColor
        self.bgLb.backgroundColor = msgModel.bgColor
        //: self.bgLb.layer.borderColor = UIColor.clear.cgColor
        self.bgLb.layer.borderColor = UIColor.clear.cgColor
        //: self.bgLb.layer.borderWidth = 0.0
        self.bgLb.layer.borderWidth = 0.0
    }
}
