
//: Declare String Begin

/*: "bg_talk_other" :*/
fileprivate let str_toName:[Character] = ["b","g","_","t","a","l"]
fileprivate let str_meAtViewContent:String = "k_otherinformation from"

/*: "bg_talk_me" :*/
fileprivate let str_photoValue:String = "image for let phonebg_talk_"
fileprivate let str_textTitle:String = "mage"

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_cardData:[UInt8] = [0x4e,0x53,0x4e,0x59,0xd,0x48,0x54,0x49,0x4a,0x57,0x1f,0xe,0x5,0x4d,0x46,0x58,0x5,0x53,0x54,0x59,0x5,0x47,0x4a,0x4a,0x53,0x5,0x4e,0x52,0x55,0x51,0x4a,0x52,0x4a,0x53,0x59,0x4a,0x49]

fileprivate func quickName(center num: UInt8) -> UInt8 {
    let value = Int(num) - 229
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  NameCellData.swift
//  AbroadTalking
//
//  Created by Hemming on 2023/3/1.
//

//: import UIKit
import UIKit

//: @objcMembers public class TalkingChatMsgBaseCellData: TUIMessageCellData {
@objcMembers public class NameCellData: TUIMessageCellData {
    //: var bubbleTop: CGFloat = 10
    var bubbleTop: CGFloat = 10
    //: var bubbleImg: UIImage?
    var bubbleImg: UIImage?

    //: override public init(direction: TMsgDirection) {
    override public init(direction: TMsgDirection) {
        //: super.init(direction: direction)
        super.init(direction: direction)
        //: if direction == .MsgDirectionIncoming {
        if direction == .MsgDirectionIncoming {
            //: self.bubbleImg = UIImage.resizedInImageWithName(name: "bg_talk_other")
            self.bubbleImg = UIImage.putt(name: (String(str_toName) + String(str_meAtViewContent.prefix(7))))
            //: self.cellLayout = MessageCellLayout.incommingTextMessageLayout()
            self.cellLayout = MessageCellLayout.incommingTextMessageLayout()
            //: } else {
        } else {
            //: self.bubbleImg = UIImage.resizedInImageWithName(name: "bg_talk_me")
            self.bubbleImg = UIImage.putt(name: (String(str_photoValue.suffix(8)) + str_textTitle.replacingOccurrences(of: "age", with: "e")))
            //: self.cellLayout = MessageCellLayout.outgoingTextMessageLayout()
            self.cellLayout = MessageCellLayout.outgoingTextMessageLayout()
        }
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_cardData.map{quickName(center: $0)}, encoding: .utf8)!)
    }
}
