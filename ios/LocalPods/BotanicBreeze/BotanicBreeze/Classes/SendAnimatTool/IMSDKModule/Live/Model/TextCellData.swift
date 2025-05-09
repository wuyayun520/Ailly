
//: Declare String Begin

/*: "MF:LiveChatWelMsg" :*/
fileprivate let str_dataValue:String = "model text marginMF:L"
fileprivate let str_pathData:[Character] = ["i","v","e","C","h","a","t","W","e","l","M","s","g"]

/*: "MF:PartyChatWelMsg" :*/
fileprivate let str_modelValue:[Character] = ["M","F",":","P","a","r","t","y","C","h","a","t","W","e","l"]
fileprivate let str_makeName:[Character] = ["M","s","g"]

/*: "MF:LiveChatPrizeMsg" :*/
fileprivate let str_viewValue:String = "info stall item top viewMF:Liv"
fileprivate let str_toValue:String = "rizeMstrue center"
fileprivate let str_labText:String = "level"

/*: "MF:PartyChatPrizeMsg" :*/
fileprivate let str_maleName:String = "MF:Pweight profile max self age"
fileprivate let str_observerPhotoData:String = "case colorChatPrize"
fileprivate let str_voiceTopData:[Character] = ["M","s","g"]

/*: "MF:LiveChatAttentionMsg" :*/
fileprivate let str_equalValue:String = "MF:Lextension label error"
fileprivate let str_stateValue:String = "mode centeratAtt"
fileprivate let str_toTitle:String = "nMsgmake data equal text"

/*: "MF:PartyChatAttentionMsg" :*/
fileprivate let str_replyContent:[Character] = ["M","F",":","P","a","r","t","y","C","h","a","t","A","t","t","e","n"]
fileprivate let str_titleName:String = "T"
fileprivate let str_partyRowTrueData:[Character] = ["i","o","n","M","s","g"]

/*: ：" :*/
fileprivate let str_mData:String = "first"

/*: "#BAFBFF" :*/
fileprivate let str_pairContent:String = "bottom array equal user#BAFBFF"

/*: "uid" :*/
fileprivate let str_nameCallViewTitle:String = "permissionid"

/*: "<at>@[\\S\\s]+?</at>" :*/
fileprivate let str_textData:String = "<at>model in equal"
fileprivate let str_barErrorText:[Character] = ["]","+","?","<","/","a","t",">"]

/*: "Sent " :*/
fileprivate let str_inputContent:[Character] = ["S","e","n","t"," "]

/*:  " :*/
fileprivate let str_quoteValue:String = "image"

/*: "#FFA4CF" :*/
fileprivate let str_equalContent:String = "list hide live color#FFA4"
fileprivate let str_modeName:[Character] = ["C","F"]

/*: "* :*/
fileprivate let str_clearContent:[Character] = ["*"]

/*: "Here comes " :*/
fileprivate let str_equalName:String = "style valueHere"
fileprivate let str_nameCallViewValue:String = "input voice color tos "

/*: "#FFE386" :*/
fileprivate let str_matchValue:String = "#FFE38title succeed request"
fileprivate let str_targetName:String = "6"

/*:   :*/
fileprivate let str_itemModelName:String = " "

/*: "followed the anchor" :*/
fileprivate let str_viewTransformValue:String = "label make self icon userfollowed "
fileprivate let str_leadingHiddenReturnValue:[Character] = ["t","h","e"]
fileprivate let str_ofName:String = " anchorview accept make"

/*: "party_seat_host" :*/
fileprivate let str_generateName:[Character] = ["p","a","r","t","y","_","s","e"]
fileprivate let str_videoValue:String = "at_hostselected false error"

/*: "level_ :*/
fileprivate let str_makeData:[Character] = ["l"]
fileprivate let str_textName:String = "model toevel_"

/*: "icon_lounge" :*/
fileprivate let str_statusValue:String = "icon_lfor data click video"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  TextCellData.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/7/11.
//

//: import UIKit
import UIKit

//: typealias ActionUserBlock = (_ atUid: String?) -> Void
typealias ActionUserBlock = (_ atUid: String?) -> Void

//: class TalkingLiveRoomDammuCellData: NSObject {
class TextCellData: NSObject {
    //: var actionUserBlock: ActionUserBlock?
    var actionUserBlock: ActionUserBlock?
    //: var longUserBlock: ActionUserBlock?
    var longUserBlock: ActionUserBlock?

    //: var model = TalkingLiveRoomDanmuModel.init()
    var model = ModeDanmuModel()

    //: func caculateMsgHeight(model: TalkingLiveRoomDanmuModel) -> TalkingLiveRoomDanmuModel {
    func can(model: ModeDanmuModel) -> ModeDanmuModel {
        //: self.model = model
        self.model = model
        /// 普通文本消息,礼物消息
        //: if self.model.msgInfo?.messageType == 1 || self.model.msgInfo?.messageType == 2 || self.model.msgInfo?.messageType == 3 {
        if self.model.msgInfo?.messageType == 1 || self.model.msgInfo?.messageType == 2 || self.model.msgInfo?.messageType == 3 {
            //: caculateComment()
            caculateCell()
            /// 欢迎消息
            //: } else if self.model.MsgExtension == "MF:LiveChatWelMsg" || self.model.MsgExtension == "MF:PartyChatWelMsg" {
        } else if self.model.MsgExtension == (String(str_dataValue.suffix(4)) + String(str_pathData)) || self.model.MsgExtension == (String(str_modelValue) + String(str_makeName)) {
            //: caculateWelMsg()
            presentName()
            /// 中奖消息
            //: } else if self.model.MsgExtension == "MF:LiveChatPrizeMsg" || self.model.MsgExtension == "MF:PartyChatPrizeMsg" {
        } else if self.model.MsgExtension == (String(str_viewValue.suffix(6)) + "eChatP" + String(str_toValue.prefix(6)) + str_labText.replacingOccurrences(of: "level", with: "g")) || self.model.MsgExtension == (String(str_maleName.prefix(4)) + "arty" + String(str_observerPhotoData.suffix(9)) + String(str_voiceTopData)) {
            //: self.model.bgColor = UIColor.init(rgb: 0x8C7BFD, alpha: 0.4)
            self.model.bgColor = UIColor(rgb: 0x8C7BFD, alpha: 0.4)
            //: caculatewinningMsg()
            lodgeInLoad()
            /// 关注消息
            //: } else if self.model.MsgExtension == "MF:LiveChatAttentionMsg" || self.model.MsgExtension == "MF:PartyChatAttentionMsg"  {
        } else if self.model.MsgExtension == (String(str_equalValue.prefix(4)) + "iveCh" + String(str_stateValue.suffix(5)) + "entio" + String(str_toTitle.prefix(4))) || self.model.MsgExtension == (String(str_replyContent) + str_titleName.lowercased() + String(str_partyRowTrueData)) {
            //: caculAttionMsg()
            caculOfMsg()
        }
        //: return self.model
        return self.model
    }

    /// 弹幕消息
    //: func caculateComment() {
    func caculateCell() {
        //: let paraStyle = paragraphStyle()
        let paraStyle = cast()
        //: paraStyle.lineSpacing = 3.0
        paraStyle.lineSpacing = 3.0 // 行间距
        //: let totalAttr = getImagesAttributedString()
        let totalAttr = demonstrate()
        // 名字
        //: let firstStr = "\(self.model.user?.nickname ?? "")："
        let firstStr = "\(self.model.user?.nickname ?? "")："
        //: let nameAttr = getAttributed(text: firstStr, font: UIFont.pingfangWithDiameter(fontSize: 14), color: UIColor.init(hex: "#BAFBFF")!, isTap: true, atUid: String(self.model.user?.uid ?? 0))
        let nameAttr = pastChemicalElement(text: firstStr, font: UIFont.pingfangWithDiameter(fontSize: 14), color: UIColor(hex: (String(str_pairContent.suffix(7))))!, isTap: true, atUid: String(self.model.user?.uid ?? 0))

        //: if self.model.msgInfo?.messageType == 1 {
        if self.model.msgInfo?.messageType == 1 {
            // 内容
            //: let content = getAttributed(text: self.model.msgInfo?.content ?? "", font: UIFont.pingfangWithDiameter(fontSize: 14), color: UIColor.white, isTap: false, atUid: nil)
            let content = pastChemicalElement(text: self.model.msgInfo?.content ?? "", font: UIFont.pingfangWithDiameter(fontSize: 14), color: UIColor.white, isTap: false, atUid: nil)
            //: nameAttr.append(content)
            nameAttr.append(content)

            //: } else if self.model.msgInfo?.messageType == 2 {
        } else if self.model.msgInfo?.messageType == 2 {
            //: let jumps = self.model.msgInfo?.jumps.first
            let jumps = self.model.msgInfo?.jumps.first
            //: let atUid = jumps?["uid"] as? Int ?? 0
            let atUid = jumps?[(str_nameCallViewTitle.replacingOccurrences(of: "permission", with: "u"))] as? Int ?? 0
            //: let text = self.model.msgInfo?.content ?? ""
            let text = self.model.msgInfo?.content ?? ""
            //: let regex = try! NSRegularExpression(pattern: "<at>@[\\S\\s]+?</at>", options: [])
            let regex = try! NSRegularExpression(pattern: (String(str_textData.prefix(4)) + "@[\\S\\s" + String(str_barErrorText)), options: [])
            //: let result = regex.matches(in: text, options: [], range: NSRange(location: 0, length: text.utf16.count))
            let result = regex.matches(in: text, options: [], range: NSRange(location: 0, length: text.utf16.count))
            //: let matchRange =  result.first?.range
            let matchRange = result.first?.range
            //: if  matchRange?.length ?? 0 > 9 {
            if matchRange?.length ?? 0 > 9 {
                //: let subStr = String.substringByUnicodeIndex(str: text, from: (matchRange?.location ?? 0) + 4, to: (matchRange?.length ?? 0) - 5)
                let subStr = String.substringByUnicodeIndex(str: text, from: (matchRange?.location ?? 0) + 4, to: (matchRange?.length ?? 0) - 5)
                //: let contentStr = String.substringByUnicodeIndex(str: text, from: (matchRange?.length ?? 0), to: text.utf16.count )
                let contentStr = String.substringByUnicodeIndex(str: text, from: (matchRange?.length ?? 0), to: text.utf16.count)
                //: let atName = getAttributed(text: subStr, font: UIFont.pingfangWithDiameter(fontSize: 14), color: UIColor.init(hex: "#BAFBFF")!, isTap: true, atUid: "\(atUid)")
                let atName = pastChemicalElement(text: subStr, font: UIFont.pingfangWithDiameter(fontSize: 14), color: UIColor(hex: (String(str_pairContent.suffix(7))))!, isTap: true, atUid: "\(atUid)")
                //: let content = getAttributed(text: contentStr, font: UIFont.pingfangWithDiameter(fontSize: 14), color: UIColor.white, isTap: false, atUid: nil)
                let content = pastChemicalElement(text: contentStr, font: UIFont.pingfangWithDiameter(fontSize: 14), color: UIColor.white, isTap: false, atUid: nil)
                //: nameAttr.append(atName)
                nameAttr.append(atName)
                //: nameAttr.append(content)
                nameAttr.append(content)
            }

            //: } else if self.model.msgInfo?.messageType == 3 {
        } else if self.model.msgInfo?.messageType == 3 {
            //: guard self.model.gift != nil else { return }
            guard self.model.gift != nil else { return }
            //: let sentAttr = getAttributed(text:  "Sent ".localized, font: UIFont.pingfangWithDiameter(fontSize: 14), color: UIColor.white, isTap: false, atUid: nil)
            let sentAttr = pastChemicalElement(text: (String(str_inputContent)).localized, font: UIFont.pingfangWithDiameter(fontSize: 14), color: UIColor.white, isTap: false, atUid: nil)
            //: nameAttr.append(sentAttr)
            nameAttr.append(sentAttr)
            //: if let toUser = self.model.toUser {
            if let toUser = self.model.toUser { // 送礼接收人
                //: let nickNameAttr = getAttributed(text: "\(toUser.nickname) ", font: UIFont.pingfangFont(type: .Medium, fontSize: 14), color: UIColor(hex: "#FFA4CF")!, isTap: true, atUid: String(toUser.uid))
                let nickNameAttr = pastChemicalElement(text: "\(toUser.nickname) ", font: UIFont.pingfang(type: .Medium, fontSize: 14), color: UIColor(hex: (String(str_equalContent.suffix(5)) + String(str_modeName)))!, isTap: true, atUid: String(toUser.uid))
                //: nameAttr.append(nickNameAttr)
                nameAttr.append(nickNameAttr)
            }
            //: let giftnameStr = changeGiftName(giftmodel: self.model.gift!)
            let giftnameStr = statusMake(giftmodel: self.model.gift!)
            //: let giftAttr = getAttributed(text: giftnameStr, font: UIFont.pingfangFont(type: .Medium, fontSize: 14), color: UIColor(hex: "#FFA4CF")!, isTap: false, atUid: nil)
            let giftAttr = pastChemicalElement(text: giftnameStr, font: UIFont.pingfang(type: .Medium, fontSize: 14), color: UIColor(hex: (String(str_equalContent.suffix(5)) + String(str_modeName)))!, isTap: false, atUid: nil)
            //: nameAttr.append(giftAttr)
            nameAttr.append(giftAttr)

            //: let size = CGSize(width: 24, height: 24)
            let size = CGSize(width: 24, height: 24)
            //: let imag = self.model.gift?.giftImg?.resize(with: size)
            let imag = self.model.gift?.giftImg?.sweat(with: size)
            //: let giftIcon = NSMutableAttributedString.yy_attachmentString(withContent: imag, contentMode: .center, attachmentSize: size, alignTo: UIFont.pingfangWithDiameter(fontSize: 14), alignment: .center)
            let giftIcon = NSMutableAttributedString.yy_attachmentString(withContent: imag, contentMode: .center, attachmentSize: size, alignTo: UIFont.pingfangWithDiameter(fontSize: 14), alignment: .center)
            //: giftIcon.yy_paragraphStyle = paragraphStyle()
            giftIcon.yy_paragraphStyle = cast()
            //: nameAttr.append(giftIcon)
            nameAttr.append(giftIcon)

            //: let numAttr = self.getAttributed(text: "*\(self.model.gift?.num ?? 0)", font: UIFont.pingfangWithDiameter(fontSize: 14), color: UIColor.init(hex: "#FFA4CF")!, isTap: false, atUid: nil)
            let numAttr = self.pastChemicalElement(text: "*\(self.model.gift?.num ?? 0)", font: UIFont.pingfangWithDiameter(fontSize: 14), color: UIColor(hex: (String(str_equalContent.suffix(5)) + String(str_modeName)))!, isTap: false, atUid: nil)
            //: nameAttr.append(numAttr)
            nameAttr.append(numAttr)
        }

        //: totalAttr.append(nameAttr)
        totalAttr.append(nameAttr)
        //: nameAttr.yy_paragraphStyle = paraStyle
        nameAttr.yy_paragraphStyle = paraStyle
        //: self.model.msgAttribText = totalAttr
        self.model.msgAttribText = totalAttr
        //: YYTextLayoutSize(attribText: self.model.msgAttribText)
        ginMill(attribText: self.model.msgAttribText)
    }

    /// 公告富文本
    //: func showAnnouncementMsg(model: TalkingLiveRoomDanmuModel) -> TalkingLiveRoomDanmuModel {
    func labView(model: ModeDanmuModel) -> ModeDanmuModel {
        //: self.model = model
        self.model = model
        // 内容
        //: let paraStyle = paragraphStyle()
        let paraStyle = cast()
        //: let attachText = NSMutableAttributedString.init()
        let attachText = NSMutableAttributedString()
        //: let content = getAttributed(text: self.model.msgInfo?.content ?? "", font: UIFont.pingfangWithDiameter(fontSize: 14), color: UIColor.init(hex: "#BAFBFF")!, isTap: false, atUid: nil)
        let content = pastChemicalElement(text: self.model.msgInfo?.content ?? "", font: UIFont.pingfangWithDiameter(fontSize: 14), color: UIColor(hex: (String(str_pairContent.suffix(7))))!, isTap: false, atUid: nil)
        //: attachText.append(content)
        attachText.append(content)

        //: attachText.yy_paragraphStyle = paraStyle
        attachText.yy_paragraphStyle = paraStyle

        //: self.model.msgAttribText = attachText
        self.model.msgAttribText = attachText

        //: YYTextLayoutSize(attribText: self.model.msgAttribText)
        ginMill(attribText: self.model.msgAttribText)

        //: return self.model
        return self.model
    }

    /// 欢迎消息
    //: func caculateWelMsg() {
    func presentName() {
        //: let paraStyle = paragraphStyle()
        let paraStyle = cast()
        //: paraStyle.lineSpacing = 3.0
        paraStyle.lineSpacing = 3.0 // 行间距
        //: let textView = getImagesAttributedString()
        let textView = demonstrate()
        //: let strnor = "Here comes ".localized
        let strnor = (String(str_equalName.suffix(4)) + " come" + String(str_nameCallViewValue.suffix(2))).localized
        //: let strc =  "\(self.model.user?.nickname ?? "")"
        let strc = "\(self.model.user?.nickname ?? "")"
        //: let content = getAttributed(text: strnor, font: UIFont.pingfangWithDiameter(fontSize: 14), color: UIColor.init(hex: "#FFE386")!, isTap: false, atUid: nil)
        let content = pastChemicalElement(text: strnor, font: UIFont.pingfangWithDiameter(fontSize: 14), color: UIColor(hex: (String(str_matchValue.prefix(6)) + str_targetName.capitalized))!, isTap: false, atUid: nil)
        //: let attachText = getAttributed(text: strc, font: UIFont.pingfangWithDiameter(fontSize: 14), color: UIColor.init(hex: "#BAFBFF")!, isTap: true, atUid: String(self.model.user?.uid ?? 0))
        let attachText = pastChemicalElement(text: strc, font: UIFont.pingfangWithDiameter(fontSize: 14), color: UIColor(hex: (String(str_pairContent.suffix(7))))!, isTap: true, atUid: String(self.model.user?.uid ?? 0))
        //: textView.append(content)
        textView.append(content)
        //: textView.append(attachText)
        textView.append(attachText)
        //: self.model.msgAttribText = textView
        self.model.msgAttribText = textView
        //: YYTextLayoutSize(attribText: self.model.msgAttribText)
        ginMill(attribText: self.model.msgAttribText)
    }

    /// 中奖消息
    //: func caculatewinningMsg() {
    func lodgeInLoad() {
        //: let paraStyle = paragraphStyle()
        let paraStyle = cast()
        //: paraStyle.lineSpacing = 3.0
        paraStyle.lineSpacing = 3.0 // 行间距
        //: let textView = getImagesAttributedString()
        let textView = demonstrate()
        // 内容
        //: let firstStr = "\(self.model.user?.nickname ?? "") \(self.model.msgInfo?.content ?? "")"
        let firstStr = "\(self.model.user?.nickname ?? "") \(self.model.msgInfo?.content ?? "")"
        //: let content = getAttributed(text: firstStr, font: UIFont.pingfangWithDiameter(fontSize: 14), color: UIColor.white, isTap: true, atUid: String(self.model.user?.uid ?? 0))
        let content = pastChemicalElement(text: firstStr, font: UIFont.pingfangWithDiameter(fontSize: 14), color: UIColor.white, isTap: true, atUid: String(self.model.user?.uid ?? 0))
        //: textView.append(content)
        textView.append(content)
        //: self.model.msgAttribText = textView
        self.model.msgAttribText = textView
        //: YYTextLayoutSize(attribText: self.model.msgAttribText)
        ginMill(attribText: self.model.msgAttribText)
    }

    /// 关注消息
    //: func caculAttionMsg() {
    func caculOfMsg() {
        //: let paraStyle = paragraphStyle()
        let paraStyle = cast()
        //: paraStyle.lineSpacing = 3.0
        paraStyle.lineSpacing = 3.0 // 行间距
        //: let attachText = NSMutableAttributedString()
        let attachText = NSMutableAttributedString()
        // 内容
        //: let strnor = "followed the anchor".localized
        let strnor = (String(str_viewTransformValue.suffix(9)) + String(str_leadingHiddenReturnValue) + String(str_ofName.prefix(7))).localized
        //: let strc =  "\(self.model.user?.nickname ?? "") "
        let strc = "\(self.model.user?.nickname ?? "") "
        //: let content = getAttributed(text: strnor, font: UIFont.pingfangWithDiameter(fontSize: 14), color: UIColor.white, isTap: false, atUid: nil)
        let content = pastChemicalElement(text: strnor, font: UIFont.pingfangWithDiameter(fontSize: 14), color: UIColor.white, isTap: false, atUid: nil)
        //: let nameText = getAttributed(text: strc, font: UIFont.pingfangWithDiameter(fontSize: 14), color: UIColor.init(hex: "#BAFBFF")!, isTap: true, atUid: String(self.model.user?.uid ?? 0))
        let nameText = pastChemicalElement(text: strc, font: UIFont.pingfangWithDiameter(fontSize: 14), color: UIColor(hex: (String(str_pairContent.suffix(7))))!, isTap: true, atUid: String(self.model.user?.uid ?? 0))
        //: attachText.append(nameText)
        attachText.append(nameText)
        //: attachText.append(content)
        attachText.append(content)
        //: self.model.msgAttribText = attachText
        self.model.msgAttribText = attachText
        //: YYTextLayoutSize(attribText: self.model.msgAttribText)
        ginMill(attribText: self.model.msgAttribText)
    }

    //: func paragraphStyle()-> NSMutableParagraphStyle {
    func cast() -> NSMutableParagraphStyle {
        //: let paraStyle = NSMutableParagraphStyle.init()
        let paraStyle = NSMutableParagraphStyle()
        //: paraStyle.lineSpacing = 0.0
        paraStyle.lineSpacing = 0.0 // 行间距
        //: paraStyle.alignment = .left
        paraStyle.alignment = .left
        //: paraStyle.baseWritingDirection = .leftToRight
        paraStyle.baseWritingDirection = .leftToRight
        //: if LanguageManager.shared.direction == .rightToLeft {
        if FileReactiveCompatible.shared.direction == .rightToLeft {
            //: paraStyle.baseWritingDirection = .rightToLeft
            paraStyle.baseWritingDirection = .rightToLeft
            //: paraStyle.alignment = .right
            paraStyle.alignment = .right
        }

        //: return paraStyle
        return paraStyle
    }

    /**
     字符串生成富文本
     @param isTap 是否添加点击事件
     */
    //: func getAttributed(text: String, font: UIFont, color: UIColor, isTap: Bool, atUid: String?) -> NSMutableAttributedString {
    func pastChemicalElement(text: String, font: UIFont, color: UIColor, isTap: Bool, atUid: String?) -> NSMutableAttributedString {
        //: let attribute = NSMutableAttributedString.init(string: text)
        let attribute = NSMutableAttributedString(string: text)
        //: attribute.yy_font = font
        attribute.yy_font = font
        //: attribute.yy_color = color
        attribute.yy_color = color
        //: if LanguageManager.shared.direction == .rightToLeft {
        if FileReactiveCompatible.shared.direction == .rightToLeft {
//            attribute.yy_writingDirection = [3]
            //: } else {
        } else {
            //: attribute.yy_baseWritingDirection = .leftToRight
            attribute.yy_baseWritingDirection = .leftToRight
        }
        //: attribute.yy_paragraphStyle = paragraphStyle()
        attribute.yy_paragraphStyle = cast()

        //: if isTap == true {
        if isTap == true {
            //: guard text.count > 0 else {
            guard text.count > 0 else {
                //: return NSMutableAttributedString.init()
                return NSMutableAttributedString()
            }
            //: let range = NSRange(location: 0, length: text.count)
            let range = NSRange(location: 0, length: text.count)
            //: attribute.yy_setTextHighlight(range, color: color, backgroundColor: .clear, userInfo: nil) {  containerView, text, range, rect in
            attribute.yy_setTextHighlight(range, color: color, backgroundColor: .clear, userInfo: nil) { _, _, _, _ in
                //: if self.actionUserBlock != nil {
                if self.actionUserBlock != nil {
                    //: self.actionUserBlock!(atUid)
                    self.actionUserBlock!(atUid)
                }
                //: } longPressAction: { containerView, text, range, rect in
            } longPressAction: { _, _, _, _ in
                /// 不能@自己
                //: if atUid != EqualThen.share.loginUserMode.userID {
                if atUid != EqualThen.share.loginUserMode.userID {
                    //: if self.longUserBlock != nil {
                    if self.longUserBlock != nil {
                        //: self.longUserBlock!(atUid)
                        self.longUserBlock!(atUid)
                    }
                }
            }
        }

        //: return attribute
        return attribute
    }

    /// 获取cell高度
    //: func YYTextLayoutSize(attribText: NSMutableAttributedString) {
    func ginMill(attribText: NSMutableAttributedString) {
        // 距离左边8  距离右边也为8
        //: let maxWidth = MsgTableViewWidth - 16
        let maxWidth = kLet_listValue - 16

        //: let layout = YYTextLayout.init(containerSize: CGSize(width: maxWidth, height: CGFloat(MAXFLOAT)), text: attribText)
        let layout = YYTextLayout(containerSize: CGSize(width: maxWidth, height: CGFloat(MAXFLOAT)), text: attribText)
        //: let layoutSize = layout?.textBoundingRect.size ?? .zero
        let layoutSize = layout?.textBoundingRect.size ?? .zero
        //: var size = CGSize(width: ceil(layoutSize.width), height: ceil(layoutSize.height))
        var size = CGSize(width: ceil(layoutSize.width), height: ceil(layoutSize.height))

        //: if  size.height < 28 {
        if size.height < 28 {
            //: size.height = 28
            size.height = 28
            //: } else {
        } else {
            // 再加上6=文字距离上下的间距
            //: size.height += 6
            size.height += 6
        }

        //: self.model.msgHeight = Double(size.height)
        self.model.msgHeight = Double(size.height)
        //: self.model.msgWidth = Double(size.width)
        self.model.msgWidth = Double(size.width)
    }

    //: private func changeGiftName(giftmodel: TalkingGiftMsgAnimatModel) -> String {
    private func statusMake(giftmodel: StatusMeasurable) -> String {
        //: var gameName = giftmodel.pname
        var gameName = giftmodel.pname
        //: if TalkingRequestAddrTool.share.interfaceLang == LangType.en.rawValue {
        if SendUpReactiveCompatible.share.interfaceLang == EditTermConvertible.en.rawValue {
            //: gameName = giftmodel.nameI18n.en
            gameName = giftmodel.nameI18n.en
            //: } else if TalkingRequestAddrTool.share.interfaceLang == LangType.ar.rawValue {
        } else if SendUpReactiveCompatible.share.interfaceLang == EditTermConvertible.ar.rawValue {
            //: gameName = giftmodel.nameI18n.ar
            gameName = giftmodel.nameI18n.ar
            //: } else if TalkingRequestAddrTool.share.interfaceLang == LangType.es.rawValue {
        } else if SendUpReactiveCompatible.share.interfaceLang == EditTermConvertible.es.rawValue {
            //: gameName = giftmodel.nameI18n.es
            gameName = giftmodel.nameI18n.es
            //: } else if TalkingRequestAddrTool.share.interfaceLang == LangType.pt.rawValue {
        } else if SendUpReactiveCompatible.share.interfaceLang == EditTermConvertible.pt.rawValue {
            //: gameName = giftmodel.nameI18n.pt
            gameName = giftmodel.nameI18n.pt
        }
        //: return gameName
        return gameName
    }
}

// MARK: - 弹幕消息拼接图片

//: extension TalkingLiveRoomDammuCellData {
extension TextCellData {
    /// 获取弹幕富文本图片
    //: func getImagesAttributedString() -> NSMutableAttributedString {
    func demonstrate() -> NSMutableAttributedString {
        //: let mAttrStr = NSMutableAttributedString(string: "")
        let mAttrStr = NSMutableAttributedString(string: "")
        // 语聊房房主
        //: if TalkingVoiceRoomManager.shared().isParty, model.user?.uid == TalkingVoiceRoomManager.shared().partyModel.streamerInfo.uid {
        if ViewRoomManager.astatine().isParty, model.user?.uid == ViewRoomManager.astatine().partyModel.streamerInfo.uid {
            //: let hostImgV = UIImageView()
            let hostImgV = UIImageView()
            //: hostImgV.size = CGSize(width: 16, height: 16)
            hostImgV.size = CGSize(width: 16, height: 16)
            //: hostImgV.image = UIImage.eponymUp(name: "party_seat_host")
            hostImgV.image = UIImage.eponymUp(name: (String(str_generateName) + String(str_videoValue.prefix(7))))
            //: let hostAttr = getAttachText(imageView: hostImgV)
            let hostAttr = freeAssociateUpwards(imageView: hostImgV)
            //: mAttrStr.append(hostAttr)
            mAttrStr.append(hostAttr)
            //: mAttrStr.append(NSAttributedString.init(string: " "))
            mAttrStr.append(NSAttributedString(string: " "))
        }

        // 等级
        //: let levelImgV = UIImageView()
        let levelImgV = UIImageView()
        //: levelImgV.size = CGSize(width: 35, height: 16)
        levelImgV.size = CGSize(width: 35, height: 16)
        //: levelImgV.image = UIImage.eponymUp(name: "level_\(self.model.user?.level ?? 1)")
        levelImgV.image = UIImage.eponymUp(name: (String(str_makeData) + String(str_textName.suffix(5))) + "\(self.model.user?.level ?? 1)")
        //: let levelAttr = getAttachText(imageView: levelImgV)
        let levelAttr = freeAssociateUpwards(imageView: levelImgV)
        //: mAttrStr.append(levelAttr)
        mAttrStr.append(levelAttr)
        //: mAttrStr.append(NSAttributedString.init(string: " "))
        mAttrStr.append(NSAttributedString(string: " "))

        // 会员
        //: if self.model.user?.loungePlus == true {
        if self.model.user?.loungePlus == true {
            //: let vipImgV = UIImageView()
            let vipImgV = UIImageView()
            //: vipImgV.size = CGSize(width: 16, height: 16)
            vipImgV.size = CGSize(width: 16, height: 16)
            //: vipImgV.image = UIImage.eponymUp(name: "icon_lounge")
            vipImgV.image = UIImage.eponymUp(name: (String(str_statusValue.prefix(6)) + "ounge"))
            //: let vipAttr = getAttachText(imageView: vipImgV)
            let vipAttr = freeAssociateUpwards(imageView: vipImgV)
            //: mAttrStr.append(vipAttr)
            mAttrStr.append(vipAttr)
            //: mAttrStr.append(NSAttributedString.init(string: " "))
            mAttrStr.append(NSAttributedString(string: " "))
        }
        //: return mAttrStr
        return mAttrStr
    }

    // 图片、view生成富文本
    //: func getAttachText(imageView: UIImageView) -> NSMutableAttributedString {
    func freeAssociateUpwards(imageView: UIImageView) -> NSMutableAttributedString {
        //: let attachText = NSMutableAttributedString.yy_attachmentString(withContent: imageView.image, contentMode: .scaleToFill, attachmentSize: imageView.size, alignTo: UIFont.outsideAllSize(fontSize: 12), alignment: .center)
        let attachText = NSMutableAttributedString.yy_attachmentString(withContent: imageView.image, contentMode: .scaleToFill, attachmentSize: imageView.size, alignTo: UIFont.outsideAllSize(fontSize: 12), alignment: .center)
        //: attachText.yy_paragraphStyle = paragraphStyle()
        attachText.yy_paragraphStyle = cast()
        //: return attachText
        return attachText
    }
}
