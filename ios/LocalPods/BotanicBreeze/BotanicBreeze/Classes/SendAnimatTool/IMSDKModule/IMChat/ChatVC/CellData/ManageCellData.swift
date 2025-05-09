
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_norTitle:[UInt8] = [0xd2,0xd5,0xd2,0xcf,0x93,0xd8,0xd4,0xdf,0xde,0xc9,0x81,0x92,0x9b,0xd3,0xda,0xc8,0x9b,0xd5,0xd4,0xcf,0x9b,0xd9,0xde,0xde,0xd5,0x9b,0xd2,0xd6,0xcb,0xd7,0xde,0xd6,0xde,0xd5,0xcf,0xde,0xdf]

private func fatalShow(button num: UInt8) -> UInt8 {
    return num ^ 187
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ManageCellData.swift
//  AbroadTalking
//
//  Created by Hemming on 2023/2/28.
//

//: import UIKit
import UIKit

//: @objcMembers public class ManageCellData: TalkingChatMsgBaseCellData {
@objcMembers public class ManageCellData: NameCellData {
    //: override public init(direction: TMsgDirection) {
    override public init(direction: TMsgDirection) {
        //: super.init(direction: direction)
        super.init(direction: direction)
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_norTitle.map{fatalShow(button: $0)}, encoding: .utf8)!)
    }

    //: public override func contentSize() -> CGSize {
    override public func contentSize() -> CGSize {
        //: return CGSize(width: 120, height: 120)
        return CGSize(width: 120, height: 120)
    }
}
