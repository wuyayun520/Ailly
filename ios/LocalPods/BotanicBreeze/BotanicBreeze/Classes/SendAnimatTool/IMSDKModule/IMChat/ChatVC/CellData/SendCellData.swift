
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_addName:[UInt8] = [0xbd,0xba,0xbd,0xa0,0xfc,0xb7,0xbb,0xb0,0xb1,0xa6,0xee,0xfd,0xf4,0xbc,0xb5,0xa7,0xf4,0xba,0xbb,0xa0,0xf4,0xb6,0xb1,0xb1,0xba,0xf4,0xbd,0xb9,0xa4,0xb8,0xb1,0xb9,0xb1,0xba,0xa0,0xb1,0xb0]

/*: "[未知消息]" :*/
fileprivate let str_lineVideoLetData:String = "[未\u{77e5}消\u{606f}]"

/*: "extra" :*/
fileprivate let str_levelDetailName:String = "eeventtra"

/*: "rYMsgType" :*/
fileprivate let str_workClickData:[Character] = ["r","Y","M","s","g","T","y","p","e"]

/*: "GJ:CallCustom" :*/
fileprivate let str_kindValue:String = "GJ:Camodel height user to destroy"
fileprivate let str_appData:String = "scolorm"

/*: "stopCall" :*/
fileprivate let str_menuData:[Character] = ["s","t","o","p","C","a","l","l"]

/*: "#FF5A4D" :*/
fileprivate let str_controlValue:String = "#FF5A4Dview camera time"

/*: "msgInfo" :*/
fileprivate let str_picValue:String = "msgInfview fatal"
fileprivate let str_arrayValue:[Character] = ["o"]

/*: "logType" :*/
fileprivate let str_styleTitle:String = "system"
fileprivate let str_startName:String = "ogTypecase make make"

/*: "  " :*/
fileprivate let str_toTextValue:String = "clearclear"

/*: "jumps" :*/
fileprivate let str_requestData:String = "jubuilderps"

/*: "jumpKey" :*/
fileprivate let str_toValue:String = "file in letjumpKe"
fileprivate let str_extraData:String = "content"

/*: "chat_video_me" :*/
fileprivate let str_directionText:[UInt8] = [0x65,0x6d,0x5f,0x6f,0x65,0x64,0x69,0x76,0x5f,0x74,0x61,0x68,0x63]

/*: "chat_voice_me" :*/
fileprivate let str_withViewName:[Character] = ["c","h","a","t","_","v","o","i","c","e","_","m","e"]

/*: "chat_video_call" :*/
fileprivate let str_centerTitle:[UInt8] = [0x9b,0xa0,0x99,0xac,0x97,0xae,0xa1,0x9c,0x9d,0xa7,0x97,0x9b,0x99,0xa4,0xa4]

fileprivate func fileMake(up num: UInt8) -> UInt8 {
    let value = Int(num) - 56
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "chat_voice_call" :*/
fileprivate let str_collectName:String = "equal sectionchat_vo"
fileprivate let str_earnData:String = "var height front room nameice_call"

/*: "chat_video_cancel" :*/
fileprivate let str_backgroundName:[UInt8] = [0x6c,0x65,0x63,0x6e,0x61,0x63,0x5f,0x6f,0x65,0x64,0x69,0x76,0x5f,0x74,0x61,0x68,0x63]

/*: "chat_voice_cancel" :*/
fileprivate let str_roomData:String = "equal no equal media cellchat_vo"
fileprivate let str_topToTitle:String = "ice_capath self"

/*: "#16D073" :*/
fileprivate let str_themeContent:String = "#16D073self make make"

/*: "#F95644" :*/
fileprivate let str_imageData:String = "#Fat frame"
fileprivate let str_valueBeginTitle:String = "effect5644"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  SendCellData.swift
//  AbroadTalking
//
//  Created by Hemming on 2023/3/2.
//

//: import UIKit
import UIKit

//: @objcMembers public class SendCellData: TalkingChatMsgBaseCellData {
@objcMembers public class SendCellData: NameCellData {
    //: var textColor: UIColor?
    var textColor: UIColor?
    //: let textFont = UIFont.outsideAllSize(fontSize: 16)
    let textFont = UIFont.outsideAllSize(fontSize: 16)
    //: var textSize = CGSize.zero
    var textSize = CGSize.zero
    //: var textOrigin = CGPoint.zero
    var textOrigin = CGPoint.zero
    //: var quoteSize = CGSize.zero
    var quoteSize = CGSize.zero

    //: var transTextSize = CGSize.zero
    var transTextSize = CGSize.zero
    //: var isVoiceVideo = false
    var isVoiceVideo = false
    /// 获取翻译内容富文本（get）
    //: var transAttrString: NSMutableAttributedString {
    var transAttrString: NSMutableAttributedString {
        //: let attr = formatTextTransMsgString()
        let attr = viewChange()
        //: return attr
        return attr
    }

    //: @objc public var hasJump = false
    public var hasJump = false
    //: @objc public var contentStr: String?
    public var contentStr: String?

    //: override public init(direction: TMsgDirection) {
    override public init(direction: TMsgDirection) {
        //: super.init(direction: direction)
        super.init(direction: direction)
        //: if direction == .MsgDirectionIncoming {
        if direction == .MsgDirectionIncoming {
            //: textColor = UIColor.appTitleColor()
            textColor = UIColor.executeTo()
            //: } else {
        } else {
            //: textColor = UIColor.white
            textColor = UIColor.white
        }
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_addName.map{$0^212}, encoding: .utf8)!)
    }

    //: public override var msgModel: DiskModel {
    override public var msgModel: DiskModel {
        //: get {
        get {
            //: return super.msgModel
            return super.msgModel
        }
        //: set {
        set {
            //: super.msgModel = newValue
            super.msgModel = newValue
            //: if newValue.msgInfo.content.isEmptyString {
            if newValue.msgInfo.content.isEmptyString {
                //: contentStr = "[未知消息]"
                contentStr = (str_lineVideoLetData)
                //: } else {
            } else {
                //: contentStr = newValue.msgInfo.content
                contentStr = newValue.msgInfo.content
            }
        }
    }

    //: public override func contentSize() -> CGSize {
    override public func contentSize() -> CGSize {
        //: let maxWidth = ScreenWidth - (25 + self.cellLayout.avatarSize.width) * 2 - 44
        let maxWidth = kLet_cameraValue - (25 + self.cellLayout.avatarSize.width) * 2 - 44

        //: if self.msgModel.quoteMsgInfo.isQuoteMsg() {
        if self.msgModel.quoteMsgInfo.coverMsg() {
            //: self.quoteSize = self.msgModel.quoteMsgInfo.quoteSize(Int(maxWidth - 20))
            self.quoteSize = self.msgModel.quoteMsgInfo.location(Int(maxWidth - 20))
        }

        //: let yyLayout = YYTextLayout.init(containerSize: CGSize(width: maxWidth - 20, height: CGFLOAT_MAX), text: self.contentAttrString)
        let yyLayout = YYTextLayout(containerSize: CGSize(width: maxWidth - 20, height: CGFLOAT_MAX), text: self.contentAttrString)
        //: let yySize = yyLayout?.textBoundingSize ?? .zero
        let yySize = yyLayout?.textBoundingSize ?? .zero
        //: var temTextSize = CGSize(width:  ceil(yySize.width), height: ceil(yySize.height))
        var temTextSize = CGSize(width: ceil(yySize.width), height: ceil(yySize.height))
        //: self.textSize = temTextSize
        self.textSize = temTextSize

        //: self.textOrigin = CGPoint(x: self.cellLayout.bubbleInsets.left, y: self.cellLayout.bubbleInsets.top + self.quoteSize.height + (self.quoteSize.height > 0 ? 6:0))
        self.textOrigin = CGPoint(x: self.cellLayout.bubbleInsets.left, y: self.cellLayout.bubbleInsets.top + self.quoteSize.height + (self.quoteSize.height > 0 ? 6 : 0))

        //: if self.translateStatus != .MsgTranslate_init {
        if self.translateStatus != .MsgTranslate_init {
            //: let yyLayout = YYTextLayout.init(containerSize: CGSize(width: maxWidth-20, height: CGFLOAT_MAX), text: self.transAttrString)
            let yyLayout = YYTextLayout(containerSize: CGSize(width: maxWidth - 20, height: CGFLOAT_MAX), text: self.transAttrString)
            //: let transTextSize = yyLayout?.textBoundingRect.size ?? CGSize.zero
            let transTextSize = yyLayout?.textBoundingRect.size ?? CGSize.zero
            //: self.transTextSize = transTextSize
            self.transTextSize = transTextSize
        }

        //: temTextSize.width = max(temTextSize.width, self.quoteSize.width)
        temTextSize.width = max(temTextSize.width, self.quoteSize.width)

        //: temTextSize.height += self.cellLayout.bubbleInsets.top + self.cellLayout.bubbleInsets.bottom + self.quoteSize.height +  (self.quoteSize.height > 0 ? 6:0)
        temTextSize.height += self.cellLayout.bubbleInsets.top + self.cellLayout.bubbleInsets.bottom + self.quoteSize.height + (self.quoteSize.height > 0 ? 6 : 0)
        //: temTextSize.width += self.cellLayout.bubbleInsets.left+self.cellLayout.bubbleInsets.right
        temTextSize.width += self.cellLayout.bubbleInsets.left + self.cellLayout.bubbleInsets.right

        //: return CGSize(width: max(60, temTextSize.width), height: temTextSize.height)
        return CGSize(width: max(60, temTextSize.width), height: temTextSize.height)
    }

    //: public override func height(ofWidth width: CGFloat) -> CGFloat {
    override public func height(ofWidth _: CGFloat) -> CGFloat {
        //: var cellHeight = self.cellLayout.messageInsets.top
        var cellHeight = self.cellLayout.messageInsets.top // 气泡与顶部的距离

        //: let containerSize = self.contentSize()
        let containerSize = self.contentSize() // 实际气泡的高度
        //: cellHeight += containerSize.height
        cellHeight += containerSize.height
        //: cellHeight += self.cellLayout.messageInsets.bottom
        cellHeight += self.cellLayout.messageInsets.bottom // 气泡与底部的距离

        //: if self.transTextSize.height > 0 {
        if self.transTextSize.height > 0 {
            //: cellHeight += (self.transTextSize.height + 10)
            cellHeight += (self.transTextSize.height + 10)
        }

        //: if self.msgIncome > 0 {
        if self.msgIncome > 0 { // 有收益
            //: cellHeight += 15
            cellHeight += 15
        }
        // 判断是否展示未回复付费消息提示
        //: if TalkingPrivateChatManager.needShowReplyTipsMessage(self.direction,
        if FreeReactiveCompatible.cards(self.direction,
                                           //: msgType: self.messageType,
                                           msgType: self.messageType,
                                           //: msgTime: self.innerMessage.timestamp) {
                                           msgTime: self.innerMessage.timestamp)
        {
            //: cellHeight += 20
            cellHeight += 20
        }

        //: return max(65, cellHeight)
        return max(65, cellHeight)
    }

    //: public lazy var contentAttrString: NSMutableAttributedString = {
    public lazy var contentAttrString: NSMutableAttributedString = {
        //: let attr = formatTextMsgString(msgInfoModel: self.msgModel.msgInfo)
        let attr = sumHungWindow(msgInfoModel: self.msgModel.msgInfo)
        //: return attr
        return attr
        //: }()
    }()

    //: func formatTextMsgString(msgInfoModel: NeedSaveJsonModel) -> NSMutableAttributedString {
    func sumHungWindow(msgInfoModel: NeedSaveJsonModel) -> NSMutableAttributedString {
        //: if msgInfoModel.content.isEmptyString {
        if msgInfoModel.content.isEmptyString {
            //: return NSMutableAttributedString.init(string: "")
            return NSMutableAttributedString(string: "")
        }

        //: let dic = TUIMsgChatManager.parseTXMessageData(data: self.innerMessage.customElem.data)
        let dic = TUIMsgChatManager.parseTXMessageData(data: self.innerMessage.customElem.data)
        //: guard let extraDic = dic["extra"] as? Dictionary<String, Any> else {
        guard let extraDic = dic[(str_levelDetailName.replacingOccurrences(of: "event", with: "x"))] as? [String: Any] else {
            //: return NSMutableAttributedString.init(string: "")
            return NSMutableAttributedString(string: "")
        }

        // 创建富文本
        //: let attributes: [NSAttributedString.Key: Any] = [
        let attributes: [NSAttributedString.Key: Any] = [
            //: .font: UIFont.outsideAllSize(fontSize: 16),
            .font: UIFont.outsideAllSize(fontSize: 16),
            //: .foregroundColor: self.direction == .MsgDirectionIncoming ? UIColor.appTitleColor() : UIColor.white
            .foregroundColor: self.direction == .MsgDirectionIncoming ? UIColor.executeTo() : UIColor.white,
        ]
        //: let attr = NSMutableAttributedString(string: msgInfoModel.content, attributes: attributes)
        let attr = NSMutableAttributedString(string: msgInfoModel.content, attributes: attributes)

        // 音视频通话更改颜色
        //: if self.direction == .MsgDirectionIncoming &&
        if self.direction == .MsgDirectionIncoming &&
            //: dic["rYMsgType"] as? String == "GJ:CallCustom" &&
            dic[(String(str_workClickData))] as? String == (String(str_kindValue.prefix(5)) + "llCu" + str_appData.replacingOccurrences(of: "color", with: "to")) &&
            //: msgInfoModel.callCmd != "stopCall" {
            msgInfoModel.callCmd != (String(str_menuData))
        {
            //: attr.addAttribute(.foregroundColor, value: UIColor(hex: "#FF5A4D")!, range: NSRange(location: 0, length: attr.length))
            attr.addAttribute(.foregroundColor, value: UIColor(hex: (String(str_controlValue.prefix(7))))!, range: NSRange(location: 0, length: attr.length))
        }

        // 音视频通话添加icon
        //: if  dic["rYMsgType"] as? String == "GJ:CallCustom" {
        if dic[(String(str_workClickData))] as? String == (String(str_kindValue.prefix(5)) + "llCu" + str_appData.replacingOccurrences(of: "color", with: "to")) {
            //: isVoiceVideo = true
            isVoiceVideo = true
            //: var isVideoChat = true
            var isVideoChat = true
            //: let extraDic = dic["extra"] as? Dictionary<String, Any> ??  Dictionary<String, Any>.init()
            let extraDic = dic[(str_levelDetailName.replacingOccurrences(of: "event", with: "x"))] as? [String: Any] ?? [String: Any]()
            //: let extraJson = JSON(extraDic)
            let extraJson = JSON(extraDic)
            //: if extraJson["msgInfo"]["logType"].intValue == 1 {
            if extraJson[(String(str_picValue.prefix(6)) + String(str_arrayValue))][(str_styleTitle.replacingOccurrences(of: "system", with: "l") + String(str_startName.prefix(6)))].intValue == 1 {
                //: isVideoChat = false
                isVideoChat = false
            }
            //: let callImgAttr = self.getCallImageAttributedString(msgInfoModel: msgInfoModel, isVideoChat: isVideoChat)
            let callImgAttr = self.exaggerate(msgInfoModel: msgInfoModel, isVideoChat: isVideoChat)
            //: let spaceAttr = NSMutableAttributedString.init(string: "  ")
            let spaceAttr = NSMutableAttributedString(string: "  ")
            //: attr.insert(spaceAttr, at: 0)
            attr.insert(spaceAttr, at: 0)
            //: attr.insert(callImgAttr, at: 0)
            attr.insert(callImgAttr, at: 0)
        }

        //: if extraDic.keys.contains("jumps") {
        if extraDic.keys.contains((str_requestData.replacingOccurrences(of: "builder", with: "m"))) {
            //: hasJump = true
            hasJump = true
        }
        //: if extraDic.keys.contains("jumpKey") {
        if extraDic.keys.contains((String(str_toValue.suffix(6)) + str_extraData.replacingOccurrences(of: "content", with: "y"))) {
            //: hasJump = true
            hasJump = true
        }

        //: return attr
        return attr
    }

    //: func getCallImageAttributedString(msgInfoModel: NeedSaveJsonModel, isVideoChat: Bool) -> NSMutableAttributedString {
    func exaggerate(msgInfoModel: NeedSaveJsonModel, isVideoChat: Bool) -> NSMutableAttributedString {
        //: let callImgView = UIImageView.init()
        let callImgView = UIImageView()
        //: callImgView.size = CGSize(width: 22, height: 17)
        callImgView.size = CGSize(width: 22, height: 17)
        //: callImgView.contentMode = .scaleAspectFit
        callImgView.contentMode = .scaleAspectFit
        //: var imgStr = isVideoChat ? "chat_video_me" : "chat_voice_me"
        var imgStr = isVideoChat ? String(bytes: str_directionText.reversed(), encoding: .utf8)! : (String(str_withViewName))

        //: if self.direction == .MsgDirectionIncoming {
        if self.direction == .MsgDirectionIncoming {
            //: if msgInfoModel.callCmd == "stopCall" {
            if msgInfoModel.callCmd == (String(str_menuData)) {
                //: imgStr = isVideoChat ?"chat_video_call":"chat_voice_call"
                imgStr = isVideoChat ?String(bytes: str_centerTitle.map{fileMake(up: $0)}, encoding: .utf8)! : (String(str_collectName.suffix(7)) + String(str_earnData.suffix(8)))
                //: } else {
            } else {
                //: imgStr = isVideoChat ?"chat_video_cancel":"chat_voice_cancel"
                imgStr = isVideoChat ?String(bytes: str_backgroundName.reversed(), encoding: .utf8)! : (String(str_roomData.suffix(7)) + String(str_topToTitle.prefix(6)) + "ncel")
            }
        }
        //: callImgView.image = UIImage.eponymUp(name: imgStr)
        callImgView.image = UIImage.eponymUp(name: imgStr)

        //: let attachText = NSMutableAttributedString.yy_attachmentString(withContent: callImgView, contentMode: .center, attachmentSize: callImgView.size, alignTo: UIFont.outsideAllSize(fontSize: 17), alignment: .center)
        let attachText = NSMutableAttributedString.yy_attachmentString(withContent: callImgView, contentMode: .center, attachmentSize: callImgView.size, alignTo: UIFont.outsideAllSize(fontSize: 17), alignment: .center)

        //: return attachText
        return attachText
    }

    //: func formatTextTransMsgString() -> NSMutableAttributedString {
    func viewChange() -> NSMutableAttributedString {
        //: let tempText = self.translatedContent
        let tempText = self.translatedContent
        //: let transAttrStr = NSMutableAttributedString.init(string: tempText)
        let transAttrStr = NSMutableAttributedString(string: tempText)

        //: let paragraphStyle = NSMutableParagraphStyle.init()
        let paragraphStyle = NSMutableParagraphStyle()
        //: paragraphStyle.lineBreakMode = .byWordWrapping
        paragraphStyle.lineBreakMode = .byWordWrapping
        //: paragraphStyle.alignment = .left
        paragraphStyle.alignment = .left

        //: var color = UIColor(hex: "#16D073")!
        var color = UIColor(hex: (String(str_themeContent.prefix(7))))!
        //: if self.translateStatus == .MsgTranslate_fail {
        if self.translateStatus == .MsgTranslate_fail {
            //: color = UIColor(hex: "#F95644")!
            color = UIColor(hex: (String(str_imageData.prefix(2)) + str_valueBeginTitle.replacingOccurrences(of: "effect", with: "9")))!
        }
        //: transAttrStr.addAttributes([.paragraphStyle: paragraphStyle, .font: UIFont.outsideAllSize(fontSize: 16), .foregroundColor: color], range: NSRange(location: 0, length: tempText.count))
        transAttrStr.addAttributes([.paragraphStyle: paragraphStyle, .font: UIFont.outsideAllSize(fontSize: 16), .foregroundColor: color], range: NSRange(location: 0, length: tempText.count))
        //: return transAttrStr
        return transAttrStr
    }
}
