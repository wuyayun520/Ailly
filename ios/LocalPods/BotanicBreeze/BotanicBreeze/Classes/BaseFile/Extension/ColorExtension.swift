
//: Declare String Begin

/*: "#8A79F9" :*/
fileprivate let str_clickTitle:[Character] = ["#","8","A","7","9","F","9"]

/*: "#E6BD8B" :*/
fileprivate let str_belowRouteValue:String = "status image live#E6BD"
fileprivate let str_videoValue:[Character] = ["8","B"]

/*: "#F5F5F8" :*/
fileprivate let str_tableTitle:[Character] = ["#","F","5","F","5","F","8"]

/*: "333333" :*/
fileprivate let str_equalName:[Character] = ["3","3","3","3","3","3"]

/*: "FF2348" :*/
fileprivate let str_skipData:[Character] = ["F","F","2","3","4","8"]

/*: "666666" :*/
fileprivate let str_playerName:[Character] = ["6","6","6","6","6","6"]

/*: "999999" :*/
fileprivate let str_representationText:String = "numbernumbernumber"

/*: "7C74F4" :*/
fileprivate let str_voiceText:String = "7C74F4view top"

/*: "B97AF8" :*/
fileprivate let str_modelValue:String = "B9taskAF8"

/*: "#FF5C9D" :*/
fileprivate let str_errorTitle:String = "#FF5C9Dlist self height"

/*: "#EEEEEE" :*/
fileprivate let str_stopName:String = "of true data class file#EEEEEE"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ColorExtension.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/1/20.
//

//: import Foundation
import Foundation

//: import UIKit
import UIKit

//: extension UIColor {
extension UIColor {
    //: @objc convenience init?(hex: String) {
    @objc convenience init?(hex: String) {
        //: var hexSanitized = hex.trimmingCharacters(in: .whitespacesAndNewlines)
        var hexSanitized = hex.trimmingCharacters(in: .whitespacesAndNewlines)
        //: hexSanitized = hexSanitized.replacingOccurrences(of: "#", with: "")
        hexSanitized = hexSanitized.replacingOccurrences(of: "#", with: "")
        //: var rgb: UInt64 = 0
        var rgb: UInt64 = 0
        //: var r: CGFloat = 0.0
        var r: CGFloat = 0.0
        //: var g: CGFloat = 0.0
        var g: CGFloat = 0.0
        //: var b: CGFloat = 0.0
        var b: CGFloat = 0.0
        //: var a: CGFloat = 1.0
        var a: CGFloat = 1.0

        //: let length = hexSanitized.count
        let length = hexSanitized.count
        //: guard Scanner(string: hexSanitized).scanHexInt64(&rgb) else { return nil }
        guard Scanner(string: hexSanitized).scanHexInt64(&rgb) else { return nil }

        //: if length == 6 {
        if length == 6 {
            //: r = CGFloat((rgb & 0xFF0000) >> 16) / 255.0
            r = CGFloat((rgb & 0xFF0000) >> 16) / 255.0
            //: g = CGFloat((rgb & 0x00FF00) >> 8) / 255.0
            g = CGFloat((rgb & 0x00FF00) >> 8) / 255.0
            //: b = CGFloat(rgb & 0x0000FF) / 255.0
            b = CGFloat(rgb & 0x0000FF) / 255.0
            //: } else if length == 8 {
        } else if length == 8 {
            //: r = CGFloat((rgb & 0xFF000000) >> 24) / 255.0
            r = CGFloat((rgb & 0xFF00_0000) >> 24) / 255.0
            //: g = CGFloat((rgb & 0x00FF0000) >> 16) / 255.0
            g = CGFloat((rgb & 0x00FF_0000) >> 16) / 255.0
            //: b = CGFloat((rgb & 0x0000FF00) >> 8) / 255.0
            b = CGFloat((rgb & 0x0000_FF00) >> 8) / 255.0
            //: a = CGFloat(rgb & 0x000000FF) / 255.0
            a = CGFloat(rgb & 0x0000_00FF) / 255.0
            //: } else {
        } else {
            //: return nil
            return nil
        }
        //: self.init(red: r, green: g, blue: b, alpha: a)
        self.init(red: r, green: g, blue: b, alpha: a)
    }

    //: class func RGBA(_ r: CGFloat, _ g: CGFloat, _ b: CGFloat, _ a: CGFloat) -> UIColor {
    class func showSub(_ r: CGFloat, _ g: CGFloat, _ b: CGFloat, _ a: CGFloat) -> UIColor {
        //: return UIColor.init(red: (r/255.0), green: (g/255.0), blue: (b/255.0), alpha: a)
        return UIColor(red: r / 255.0, green: g / 255.0, blue: b / 255.0, alpha: a)
    }

    //: @objc static func appThemeColor() -> UIColor {
    @objc static func plaster() -> UIColor {
        //: return UIColor.init(hex: "#8A79F9")!
        return UIColor(hex: (String(str_clickTitle)))!
    }

    //: @objc static func userVipColor() -> UIColor {
    @objc static func active() -> UIColor {
        //: return UIColor(hex: "#E6BD8B")!
        return UIColor(hex: (String(str_belowRouteValue.suffix(5)) + String(str_videoValue)))!
    }

    //: @objc static func appBgColor() -> UIColor {
    @objc static func imageColor() -> UIColor {
        //: return UIColor.init(hex: "#F5F5F8")!
        return UIColor(hex: (String(str_tableTitle)))!
    }

    //: @objc static func appTitleColor() ->UIColor {
    @objc static func executeTo() -> UIColor {
        //: return UIColor.init(hex: "333333")!
        return UIColor(hex: (String(str_equalName)))!
    }

    //: @objc static func msgTipsColor() ->UIColor {
    @objc static func trim() -> UIColor {
        //: return UIColor.init(hex: "FF2348")!
        return UIColor(hex: (String(str_skipData)))!
    }

    //: @objc static func appValueColor() ->UIColor {
    @objc static func addColor() -> UIColor {
        //: return UIColor.init(hex: "666666")!
        return UIColor(hex: (String(str_playerName)))!
    }

    //: @objc static func appValueDetailColor() ->UIColor {
    @objc static func publishView() -> UIColor {
        //: return UIColor.init(hex: "999999")!
        return UIColor(hex: (str_representationText.replacingOccurrences(of: "number", with: "99")))!
    }

    //: class func appGradientColor() ->[CGColor] {
    class func appToVoice() -> [CGColor] {
        //: return [UIColor.init(hex: "7C74F4")!.cgColor, UIColor.init(hex: "B97AF8")!.cgColor]
        return [UIColor(hex: (String(str_voiceText.prefix(6))))!.cgColor, UIColor(hex: (str_modelValue.replacingOccurrences(of: "task", with: "7")))!.cgColor]
    }

    //: class func appGradientDisableColor() ->[CGColor] {
    class func plonkDown() -> [CGColor] {
        //: return [UIColor.init(hex: "#FF5C9D")!.withAlphaComponent(0.4).cgColor, UIColor.init(hex: "#FF5C9D")!.withAlphaComponent(0.4).cgColor]
        return [UIColor(hex: (String(str_errorTitle.prefix(7))))!.withAlphaComponent(0.4).cgColor, UIColor(hex: (String(str_errorTitle.prefix(7))))!.withAlphaComponent(0.4).cgColor]
    }

    //: class func separatorLineColor() -> UIColor {
    class func showColor() -> UIColor {
        //: return UIColor.init(hex: "#EEEEEE")!
        return UIColor(hex: (String(str_stopName.suffix(7))))!
    }

    //: class func getRandomColor() -> UIColor {
    class func sessionList() -> UIColor {
        //: let red = CGFloat(arc4random_uniform(256)) / 255.0
        let red = CGFloat(arc4random_uniform(256)) / 255.0
        //: let green = CGFloat(arc4random_uniform(256)) / 255.0
        let green = CGFloat(arc4random_uniform(256)) / 255.0
        //: let blue = CGFloat(arc4random_uniform(256)) / 255.0
        let blue = CGFloat(arc4random_uniform(256)) / 255.0
        //: return UIColor(red: red, green: green, blue: blue, alpha: 1.0)
        return UIColor(red: red, green: green, blue: blue, alpha: 1.0)
    }
}
