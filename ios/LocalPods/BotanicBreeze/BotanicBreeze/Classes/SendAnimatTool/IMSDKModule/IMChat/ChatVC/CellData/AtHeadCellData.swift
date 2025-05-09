
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_makeName:[UInt8] = [0x13,0x14,0x13,0xe,0x52,0x19,0x15,0x1e,0x1f,0x8,0x40,0x53,0x5a,0x12,0x1b,0x9,0x5a,0x14,0x15,0xe,0x5a,0x18,0x1f,0x1f,0x14,0x5a,0x13,0x17,0xa,0x16,0x1f,0x17,0x1f,0x14,0xe,0x1f,0x1e]

private func requestView(gift num: UInt8) -> UInt8 {
    return num ^ 122
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  AtHeadCellData.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/3/2.
//

//: import UIKit
import UIKit

//: @objcMembers public class AtHeadCellData: TalkingChatMsgBaseCellData {
@objcMembers public class AtHeadCellData: NameCellData {
    //: public override var msgModel: DiskModel {
    override public var msgModel: DiskModel {
        //: get { return super.msgModel }
        get { return super.msgModel }
        //: set { super.msgModel = newValue }
        set { super.msgModel = newValue }
    }

    //: override public init(direction: TMsgDirection) {
    override public init(direction: TMsgDirection) {
        //: super.init(direction: direction)
        super.init(direction: direction)
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_makeName.map{requestView(gift: $0)}, encoding: .utf8)!)
    }

    //: public override func contentSize() ->CGSize {
    override public func contentSize() -> CGSize {
        //: let audioWidth = Float(self.voiceModel.audioLength)*2.4 + 90
        let audioWidth = Float(self.voiceModel.audioLength) * 2.4 + 90
        //: return CGSize.init(width: Int(audioWidth), height: 42)
        return CGSize(width: Int(audioWidth), height: 42)
    }

    //: @objc public lazy var voiceModel: TalkingVoiceMsgPlayModel = {
    public lazy var voiceModel: ContentTransformable = {
        //: var model = TalkingVoiceMsgPlayModel()
        var model = ContentTransformable()
        //: return model
        return model
        //: }()
    }()
}
