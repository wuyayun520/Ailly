
//: Declare String Begin

/*: "title" :*/
fileprivate let str_observerName:[Character] = ["t","i","t","l","e"]

/*: "content" :*/
fileprivate let str_cellFinishContent:[Character] = ["c","o"]
fileprivate let str_nameLengthValue:[Character] = ["n","t","e","n","t"]

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_managerValue:[UInt8] = [0x89,0x8e,0x89,0x94,0xc8,0x83,0x8f,0x84,0x85,0x92,0xda,0xc9,0xc0,0x88,0x81,0x93,0xc0,0x8e,0x8f,0x94,0xc0,0x82,0x85,0x85,0x8e,0xc0,0x89,0x8d,0x90,0x8c,0x85,0x8d,0x85,0x8e,0x94,0x85,0x84]

private func tableApp(kind num: UInt8) -> UInt8 {
    return num ^ 224
}

/*: "img" :*/
fileprivate let str_sexTitle:[Character] = ["i","m","g"]

/*: "jumpKey" :*/
fileprivate let str_addValue:[Character] = ["j","u","m","p","K","e","y"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  LengthSolarThermalSystemThen.swift
//  AbroadTalking
//
//  Created by young on 2023/11/8.
//

//: import UIKit
import UIKit

//: @objcMembers public class LengthSolarThermalSystemThen: TalkingChatMsgBaseCellData {
@objcMembers public class LengthSolarThermalSystemThen: NameCellData {
    // 数据
    //: var extraJson: JSON {
    var extraJson: JSON {
        //: return JSON(extraDict)
        return JSON(extraDict)
    }

    // banner size
    //: var bannerSize = CGSize(width: actualWidth(w: 210), height: actualWidth(w: 50))
    var bannerSize = CGSize(width: actualWidth(w: 210), height: actualWidth(w: 50))
    // 是否有标题
    //: var hasBanner = false
    var hasBanner = false
    // 标题高度
    //: var titleHeight = 0.0
    var titleHeight = 0.0
    // 内容高度
    //: var contentHeight = 0.0
    var contentHeight = 0.0
    // 跳转高度
    //: var jumpHeight = 0.0
    var jumpHeight = 0.0
    // 标题富文本
    //: public lazy var titleAttrStr: NSMutableAttributedString = {
    public lazy var titleAttrStr: NSMutableAttributedString = {
        //: let attributes = [.foregroundColor: UIColor.appTitleColor(), .font: UIFont.pingfangFont(type: .Medium, fontSize: 17)] as [NSAttributedString.Key: Any]
        let attributes = [.foregroundColor: UIColor.executeTo(), .font: UIFont.pingfang(type: .Medium, fontSize: 17)] as [NSAttributedString.Key: Any]
        //: let attributeStr = NSMutableAttributedString(string: extraJson["title"].stringValue)
        let attributeStr = NSMutableAttributedString(string: extraJson[(String(str_observerName))].stringValue)
        //: attributeStr.addAttributes(attributes, range: NSRange(location: 0, length: attributeStr.length))
        attributeStr.addAttributes(attributes, range: NSRange(location: 0, length: attributeStr.length))
        //: return attributeStr
        return attributeStr
        //: }()
    }()

    // 内容富文本
    //: public lazy var contentAttrStr: NSMutableAttributedString = {
    public lazy var contentAttrStr: NSMutableAttributedString = {
        //: let attributes = [.foregroundColor: UIColor.appValueColor(), .font: UIFont.pingfangFont(type: .Regular, fontSize: 14)] as [NSAttributedString.Key: Any]
        let attributes = [.foregroundColor: UIColor.addColor(), .font: UIFont.pingfang(type: .Regular, fontSize: 14)] as [NSAttributedString.Key: Any]
        //: let attributeStr = NSMutableAttributedString(string: extraJson["content"].stringValue)
        let attributeStr = NSMutableAttributedString(string: extraJson[(String(str_cellFinishContent) + String(str_nameLengthValue))].stringValue)
        //: attributeStr.addAttributes(attributes, range: NSRange(location: 0, length: attributeStr.length))
        attributeStr.addAttributes(attributes, range: NSRange(location: 0, length: attributeStr.length))
        //: return attributeStr
        return attributeStr
        //: }()
    }()

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_managerValue.map{tableApp(kind: $0)}, encoding: .utf8)!)
    }

    //: override public init(direction: TMsgDirection) {
    override public init(direction: TMsgDirection) {
        //: super.init(direction: direction)
        super.init(direction: direction)
    }

    //: override public func contentSize() -> CGSize {
    override public func contentSize() -> CGSize {
        //: let height = self.height(ofWidth: 0)-20
        let height = self.height(ofWidth: 0) - 20
        //: return CGSize(width: bannerSize.width, height: height)
        return CGSize(width: bannerSize.width, height: height)
    }

    //: override public func height(ofWidth width: CGFloat) -> CGFloat {
    override public func height(ofWidth width: CGFloat) -> CGFloat {
        //: var height = 0.0
        var height = 0.0
        //: if extraJson["img"].stringValue.count > 0 {
        if extraJson[(String(str_sexTitle))].stringValue.count > 0 {
            //: height += bannerSize.height
            height += bannerSize.height
            //: hasBanner = true
            hasBanner = true
        }
        //: height += 10
        height += 10
        //: if extraJson["title"].stringValue.count > 0 {
        if extraJson[(String(str_observerName))].stringValue.count > 0 {
            //: let yyLayout = YYTextLayout.init(containerSize: CGSize(width: bannerSize.width-20, height: CGFLOAT_MAX), text: self.titleAttrStr)
            let yyLayout = YYTextLayout(containerSize: CGSize(width: bannerSize.width - 20, height: CGFLOAT_MAX), text: self.titleAttrStr)
            //: if let titleH = yyLayout?.textBoundingSize.height {
            if let titleH = yyLayout?.textBoundingSize.height {
                //: titleHeight = titleH
                titleHeight = titleH
                //: height += titleHeight
                height += titleHeight
            }
        }
        //: if extraJson["content"].stringValue.count > 0 {
        if extraJson[(String(str_cellFinishContent) + String(str_nameLengthValue))].stringValue.count > 0 {
            //: height += 4
            height += 4
            //: let yyLayout = YYTextLayout.init(containerSize: CGSize(width: bannerSize.width-20, height: CGFLOAT_MAX), text: self.contentAttrStr)
            let yyLayout = YYTextLayout(containerSize: CGSize(width: bannerSize.width - 20, height: CGFLOAT_MAX), text: self.contentAttrStr)
            //: if let contentH = yyLayout?.textBoundingSize.height {
            if let contentH = yyLayout?.textBoundingSize.height {
                //: contentHeight = contentH
                contentHeight = contentH
                //: height += contentHeight
                height += contentHeight
            }
        }
        //: height += 10
        height += 10
        //: if extraJson["jumpKey"].stringValue.count > 0 {
        if extraJson[(String(str_addValue))].stringValue.count > 0 {
            //: jumpHeight = 35
            jumpHeight = 35
            //: height += jumpHeight
            height += jumpHeight
        }
        // cell间距
        //: height += 20
        height += 20

        //: return height
        return height
    }
}
