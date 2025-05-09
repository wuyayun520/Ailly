
//: Declare String Begin

/*: "PingFangSC-Regular" :*/
fileprivate let str_textValue:[Character] = ["P"]
fileprivate let str_tipValue:String = "ingFamatch click if"
fileprivate let str_bottomName:String = "routegular"

/*: "PingFangSC-Medium" :*/
fileprivate let str_upWithTitle:String = "false namePin"
fileprivate let str_actualShakeContent:[Character] = ["g","F","a","n","g","S","C","-","M","e","d","i","u","m"]

/*: "PingFangSC-Semibold" :*/
fileprivate let str_valueColorText:String = "previous add inPingFa"
fileprivate let str_rangeName:String = "sourcemibold"

/*: "PingFangSC-Thin" :*/
fileprivate let str_upTitle:[Character] = ["P","i","n","g","F","a","n","g","S"]
fileprivate let str_fromValue:String = "C-Thintrue err equal class let"

/*: "PingFangSC-Light" :*/
fileprivate let str_rawText:String = "color messagePing"
fileprivate let str_modelEffectName:[Character] = ["S","C","-","L","i","g","h","t"]

/*: "PingFangSC-Ultralight" :*/
fileprivate let str_interestShowTitle:String = "input gift title more makePingFa"
fileprivate let str_modelValue:String = "LTRAL"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  FontExtension.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/1/25.
//

//: import Foundation
import Foundation

//: import UIKit
import UIKit

//: extension UIFont {
public extension UIFont {
    //: static func pingfangFont(type: PingFangFontType, fontSize: CGFloat) -> UIFont {
    internal static func pingfang(type: PlayFontType, fontSize: CGFloat) -> UIFont {
        //: var font: UIFont?
        var font: UIFont?
        //: switch type {
        switch type {
        //: case .Regular:
        case .Regular:
            //: font = UIFont(name: "PingFangSC-Regular", size: fontSize)
            font = UIFont(name: (String(str_textValue) + String(str_tipValue.prefix(5)) + "ngSC-R" + str_bottomName.replacingOccurrences(of: "route", with: "e")), size: fontSize)
        //: break
        //: case .Medium:
        case .Medium:
            //: font = UIFont(name: "PingFangSC-Medium", size: fontSize)
            font = UIFont(name: (String(str_upWithTitle.suffix(3)) + String(str_actualShakeContent)), size: fontSize)
        //: break
        //: case .Semibold:
        case .Semibold:
            //: font = UIFont(name: "PingFangSC-Semibold", size: fontSize)
            font = UIFont(name: (String(str_valueColorText.suffix(6)) + "ngSC-S" + str_rangeName.replacingOccurrences(of: "source", with: "e")), size: fontSize)
        //: break
        //: case .Thin:
        case .Thin:
            //: font = UIFont(name: "PingFangSC-Thin", size: fontSize)
            font = UIFont(name: (String(str_upTitle) + String(str_fromValue.prefix(6))), size: fontSize)
        //: break
        //: case .Light:
        case .Light:
            //: font = UIFont(name: "PingFangSC-Light", size: fontSize)
            font = UIFont(name: (String(str_rawText.suffix(4)) + "Fang" + String(str_modelEffectName)), size: fontSize)
        //: break
        //: case .Ultralight:
        case .Ultralight:
            //: font = UIFont(name: "PingFangSC-Ultralight", size: fontSize)
            font = UIFont(name: (String(str_interestShowTitle.suffix(6)) + "ngSC-U" + str_modelValue.lowercased() + "ight"), size: fontSize)
            //: break
        }
        //: return font ?? UIFont.systemFont(ofSize: fontSize)
        return font ?? UIFont.systemFont(ofSize: fontSize)
    }

    //: @objc static public func pingfangRugularFont(fontSize: CGFloat) -> UIFont {
    @objc static func outsideAllSize(fontSize: CGFloat) -> UIFont {
        //: return UIFont.pingfangFont(type: .Regular, fontSize: fontSize)
        return UIFont.pingfang(type: .Regular, fontSize: fontSize)
    }

    //: @objc static public func pingfangMediumFont(fontSize: CGFloat) -> UIFont {
    @objc static func pingfangWithDiameter(fontSize: CGFloat) -> UIFont {
        //: return UIFont.pingfangFont(type: .Medium, fontSize: fontSize)
        return UIFont.pingfang(type: .Medium, fontSize: fontSize)
    }
}
