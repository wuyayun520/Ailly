
//: Declare String Begin

/*: "Free" :*/
fileprivate let str_eventValue:String = "Freestatus self text"

/*: " Free 1min" :*/
fileprivate let str_countData:String = " Frpath self"
fileprivate let str_freeValue:String = "ee 1mincolor bottom let scale"

/*: "Video Call" :*/
fileprivate let str_toValue:String = "Videohidden make"
fileprivate let str_successfullyText:String = "text"

/*: "icon_video_bd" :*/
fileprivate let str_imageMyText:[Character] = ["i","c","o","n","_","v","i","d","e","o"]
fileprivate let str_photoName:String = "else theory_bd"

/*: "\n %@/min" :*/
fileprivate let str_messageValue:[Character] = ["\n"," ","%","@","/","m","i","n"]

/*: "icon_coin_pre" :*/
fileprivate let str_opName:String = "icon_cadd leading write background"

/*: "\n %@ %@/min" :*/
fileprivate let str_bigData:String = "\n %@ %"
fileprivate let str_messageName:[Character] = ["@","/","m","i","n"]

/*: "%@/min" :*/
fileprivate let str_whenValue:String = "%@/minroom icon"

/*: "#D8D8D8" :*/
fileprivate let str_addValue:[Character] = ["#","D","8","D","8","D","8"]

/*: "Voice Call" :*/
fileprivate let str_labelTitle:String = "Voicleading tag shade"
fileprivate let str_dataTitle:String = "e Callret view center"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  PriceStrExtension.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/6/15.
//

//: import Foundation
import Foundation

//: extension String {
extension String {
    //: static func setPriceStr(fee: Int, originalFee: Int, freeCallTimes: Int = 0, callBtnStyle: Int = 0)-> NSMutableAttributedString {
    static func setPriceStr(fee: Int, originalFee: Int, freeCallTimes: Int = 0, callBtnStyle: Int = 0) -> NSMutableAttributedString {
        //: if EqualThen.share.appStatus == AppSkinStatus.special.rawValue {
        if EqualThen.share.appStatus == PhaseOfTheMoonPropertyProtocol.special.rawValue {
            //: return NSMutableAttributedString.init(string: "Free".localized)
            return NSMutableAttributedString(string: (String(str_eventValue.prefix(4))).localized)
            //: } else if freeCallTimes > 0 || fee == 0 {
        } else if freeCallTimes > 0 || fee == 0 {
            //: var text = ""
            var text = ""
            //: if fee == 0 {
            if fee == 0 {
                //: text = "Free".localized
                text = (String(str_eventValue.prefix(4))).localized
                //: } else {
            } else {
                //: if callBtnStyle == 1 {
                if callBtnStyle == 1 {
                    //: text = " Free 1min".localized
                    text = (String(str_countData.prefix(3)) + String(str_freeValue.prefix(7))).localized
                    //: } else {
                } else {
                    //: text = "Video Call".localized
                    text = (String(str_toValue.prefix(5)) + " Cal" + str_successfullyText.replacingOccurrences(of: "text", with: "l")).localized
                }
            }
            //: let attrS = NSMutableAttributedString(string: text)
            let attrS = NSMutableAttributedString(string: text)
            //: let attributes = [.foregroundColor: UIColor.white, .font: UIFont.pingfangFont(type: .Medium, fontSize: 17)] as [NSAttributedString.Key: Any]
            let attributes = [.foregroundColor: UIColor.white, .font: UIFont.pingfang(type: .Medium, fontSize: 17)] as [NSAttributedString.Key: Any]
            //: attrS.addAttributes(attributes, range: NSRange(location: 0, length: attrS.length))
            attrS.addAttributes(attributes, range: NSRange(location: 0, length: attrS.length))

            //: let attach = NSTextAttachment()
            let attach = NSTextAttachment()
            //: attach.image = UIImage.eponymUp(name: "icon_video_bd")
            attach.image = UIImage.eponymUp(name: (String(str_imageMyText) + String(str_photoName.suffix(3))))
            //: attach.bounds = CGRect(x: 0, y: -8, width: 22, height: 22)
            attach.bounds = CGRect(x: 0, y: -8, width: 22, height: 22)
            //: let attachImage = NSMutableAttributedString(attachment: attach)
            let attachImage = NSMutableAttributedString(attachment: attach)
            //: attrS.insert(attachImage, at: 0)
            attrS.insert(attachImage, at: 0)
            //: return attrS
            return attrS

            //: } else if fee != 0 || originalFee != 0 {
        } else if fee != 0 || originalFee != 0 {
            //: let text = "Video Call".localized
            let text = (String(str_toValue.prefix(5)) + " Cal" + str_successfullyText.replacingOccurrences(of: "text", with: "l")).localized
            //: let attrS = NSMutableAttributedString(string: text)
            let attrS = NSMutableAttributedString(string: text)
            //: let attributes = [.foregroundColor: UIColor.white, .font: UIFont.pingfangFont(type: .Medium, fontSize: 17)] as [NSAttributedString.Key: Any]
            let attributes = [.foregroundColor: UIColor.white, .font: UIFont.pingfang(type: .Medium, fontSize: 17)] as [NSAttributedString.Key: Any]
            //: attrS.addAttributes(attributes, range: NSRange(location: 0, length: attrS.length))
            attrS.addAttributes(attributes, range: NSRange(location: 0, length: attrS.length))

            //: let attach = NSTextAttachment()
            let attach = NSTextAttachment()
            //: attach.image = UIImage.eponymUp(name: "icon_video_bd")
            attach.image = UIImage.eponymUp(name: (String(str_imageMyText) + String(str_photoName.suffix(3))))
            //: attach.bounds = CGRect(x: 0, y: -8, width: 22, height: 22)
            attach.bounds = CGRect(x: 0, y: -8, width: 22, height: 22)
            //: let attachImage = NSMutableAttributedString(attachment: attach)
            let attachImage = NSMutableAttributedString(attachment: attach)
            //: attrS.insert(attachImage, at: 0)
            attrS.insert(attachImage, at: 0)

            //: if fee == originalFee {
            if fee == originalFee {
                //: let feetext = "\n %@/min".localizedArguments(fee)
                let feetext = (String(str_messageValue)).localizedArguments(fee)
                //: let feetattrS = NSMutableAttributedString(string: feetext)
                let feetattrS = NSMutableAttributedString(string: feetext)
                //: let attach2 = NSTextAttachment()
                let attach2 = NSTextAttachment()
                //: attach2.image = UIImage.eponymUp(name: "icon_coin_pre")
                attach2.image = UIImage.eponymUp(name: (String(str_opName.prefix(6)) + "oin_pre"))
                //: attach2.bounds = CGRect(x: 0, y: -3, width: 14, height: 14)
                attach2.bounds = CGRect(x: 0, y: -3, width: 14, height: 14)
                //: let attachImage2 = NSMutableAttributedString(attachment: attach2)
                let attachImage2 = NSMutableAttributedString(attachment: attach2)
                //: feetattrS.insert(attachImage2, at: 1)
                feetattrS.insert(attachImage2, at: 1)

                //: let attributes = [.foregroundColor: UIColor.white, .font: UIFont.pingfangFont(type: .Medium, fontSize: 10)] as [NSAttributedString.Key: Any]
                let attributes = [.foregroundColor: UIColor.white, .font: UIFont.pingfang(type: .Medium, fontSize: 10)] as [NSAttributedString.Key: Any]
                //: feetattrS.addAttributes(attributes, range: NSRange(location: 2, length: feetext.count-1))
                feetattrS.addAttributes(attributes, range: NSRange(location: 2, length: feetext.count - 1))
                //: attrS.insert(feetattrS, at: text.count+1)
                attrS.insert(feetattrS, at: text.count + 1)

                //: let paragraphStyle = NSMutableParagraphStyle.init()
                let paragraphStyle = NSMutableParagraphStyle()
                //: paragraphStyle.lineSpacing = 0
                paragraphStyle.lineSpacing = 0
                //: paragraphStyle.alignment = .center
                paragraphStyle.alignment = .center
                //: attrS.addAttribute(NSAttributedString.Key.paragraphStyle, value: paragraphStyle, range: NSRange(location: 0, length: text.count + feetext.count))
                attrS.addAttribute(NSAttributedString.Key.paragraphStyle, value: paragraphStyle, range: NSRange(location: 0, length: text.count + feetext.count))
                //: return attrS
                return attrS
                //: } else {
            } else {
                //: let ptext = "\n %@ %@/min".localizedArguments(fee, originalFee)
                let ptext = (str_bigData + String(str_messageName)).localizedArguments(fee, originalFee)
                //: let newAttrS = NSMutableAttributedString(string: ptext)
                let newAttrS = NSMutableAttributedString(string: ptext)

                //: let attach2 = NSTextAttachment()
                let attach2 = NSTextAttachment()
                //: attach2.image = UIImage.eponymUp(name: "icon_coin_pre")
                attach2.image = UIImage.eponymUp(name: (String(str_opName.prefix(6)) + "oin_pre"))
                //: attach2.bounds = CGRect(x: 0, y: -3, width: 14, height: 14)
                attach2.bounds = CGRect(x: 0, y: -3, width: 14, height: 14)
                //: let attachImage2 = NSMutableAttributedString(attachment: attach2)
                let attachImage2 = NSMutableAttributedString(attachment: attach2)
                //: newAttrS.insert(attachImage2, at: 1)
                newAttrS.insert(attachImage2, at: 1)

                //: let attributes = [.foregroundColor: UIColor.white, .font: UIFont.pingfangFont(type: .Medium, fontSize: 10)] as [NSAttributedString.Key: Any]
                let attributes = [.foregroundColor: UIColor.white, .font: UIFont.pingfang(type: .Medium, fontSize: 10)] as [NSAttributedString.Key: Any]
                //: newAttrS.addAttributes(attributes, range: NSRange(location: 2, length: ptext.count-1))
                newAttrS.addAttributes(attributes, range: NSRange(location: 2, length: ptext.count - 1))
                //: let originalFeemin = "%@/min".localizedArguments(originalFee)
                let originalFeemin = (String(str_whenValue.prefix(6))).localizedArguments(originalFee)
                //: let range: Range = ptext.range(of: originalFeemin)!
                let range: Range = ptext.range(of: originalFeemin)!
                //: let location = ptext.distance(from: ptext.startIndex, to: range.lowerBound )
                let location = ptext.distance(from: ptext.startIndex, to: range.lowerBound)
                //: let attributes2 = [.foregroundColor: UIColor.init(hex: "#D8D8D8")!, .font: UIFont.pingfangFont(type: .Medium, fontSize: 10)] as [NSAttributedString.Key: Any]
                let attributes2 = [.foregroundColor: UIColor(hex: (String(str_addValue)))!, .font: UIFont.pingfang(type: .Medium, fontSize: 10)] as [NSAttributedString.Key: Any]
                //: newAttrS.addAttributes(attributes2, range: NSRange(location: location+1, length: originalFeemin.count))
                newAttrS.addAttributes(attributes2, range: NSRange(location: location + 1, length: originalFeemin.count))

                //: newAttrS.addAttribute(.strikethroughStyle, value: NSUnderlineStyle.single.rawValue, range: NSRange(location: location+1, length: originalFeemin.count))
                newAttrS.addAttribute(.strikethroughStyle, value: NSUnderlineStyle.single.rawValue, range: NSRange(location: location + 1, length: originalFeemin.count))

                //: attrS.insert(newAttrS, at: text.count+1)
                attrS.insert(newAttrS, at: text.count + 1)

                //: let paragraphStyle = NSMutableParagraphStyle.init()
                let paragraphStyle = NSMutableParagraphStyle()
                //: paragraphStyle.lineSpacing = 0
                paragraphStyle.lineSpacing = 0
                //: paragraphStyle.alignment = .center
                paragraphStyle.alignment = .center
                //: attrS.addAttribute(NSAttributedString.Key.paragraphStyle, value: paragraphStyle, range: NSRange(location: 0, length: text.count + ptext.count))
                attrS.addAttribute(NSAttributedString.Key.paragraphStyle, value: paragraphStyle, range: NSRange(location: 0, length: text.count + ptext.count))
                //: return attrS
                return attrS
            }
        }
        //: return NSMutableAttributedString.init()
        return NSMutableAttributedString()
    }

    /// 免费1分钟通话结束弹窗
    /// - Parameters:
    ///   - originalFee: 原价
    ///   - vipFee: VIP价格（0：执行原价逻辑）
    /// - Returns: string
    //: static func setFreeStopPriceStr(originalFee: Int, vipFee: Int = 0) -> String {
    static func setFreeStopPriceStr(originalFee _: Int, vipFee _: Int = 0) -> String {
//        guard EqualThen.share.appStatus == PhaseOfTheMoonPropertyProtocol.normal.rawValue else {
        //: return "Video Call".localized
        return (String(str_toValue.prefix(5)) + " Cal" + str_successfullyText.replacingOccurrences(of: "text", with: "l")).localized
//        }
//        if EqualThen.share.loginUserMode.freeCallTimes > 0 {
//            if EqualThen.share.appUserConfigMode.callBtnStyle == 1 {
//                return "Free 1 min".localized
//            } else {
//                return "Video Call".localized
//            }
//        } else {
//            if vipFee > 0 {
//                return "%@ Coins/min".localizedArguments(vipFee)
//            } else {
//                return  "%@ Gold coins / Min".localizedArguments(originalFee)
//            }
//        }
    }

    /// 视频通话价格
    //: static func setVideoPriceStr(VideoPrice: Int) -> NSMutableAttributedString {
    static func setVideoPriceStr(VideoPrice _: Int) -> NSMutableAttributedString {
//        let index = GestureSignedMagnitude.nor
//        if EqualThen.share.loginUserMode.freeCallTimes > 0 && EqualThen.share.appUserConfigMode.enableFreeCallType & index.rawValue == index.rawValue {
        //: var text = ""
        var text = ""
//            if EqualThen.share.appUserConfigMode.callBtnStyle == 1 {
//                text = "Free 1 min".localized
//            } else {
        //: text = "Video Call".localized
        text = (String(str_toValue.prefix(5)) + " Cal" + str_successfullyText.replacingOccurrences(of: "text", with: "l")).localized
//            }

        //: let attrString = NSMutableAttributedString(string: text)
        let attrString = NSMutableAttributedString(string: text)
        //: let attributes = [.foregroundColor: UIColor.appTitleColor(), .font: UIFont.pingfangFont(type: .Regular, fontSize: 16)] as [NSAttributedString.Key: Any]
        let attributes = [.foregroundColor: UIColor.executeTo(), .font: UIFont.pingfang(type: .Regular, fontSize: 16)] as [NSAttributedString.Key: Any]
        //: attrString.addAttributes(attributes, range: NSRange(location: 0, length: attrString.length))
        attrString.addAttributes(attributes, range: NSRange(location: 0, length: attrString.length))
        //: return attrString
        return attrString

//        } else {
//            let VideoCall = "Video Call".localized
//            let videoStr = "Video Call (%@ Coins/min)".localizedArguments(VideoPrice)
//            let attrString = NSMutableAttributedString(string: videoStr)
//            let attributes = [.foregroundColor: UIColor.appTitleColor(), .font: UIFont.pingfangFont(type: .Regular, fontSize: 16)] as [NSAttributedString.Key: Any]
//            attrString.addAttributes(attributes, range: NSRange(location: 0, length: attrString.length))
//            let attributes2 = [.foregroundColor: UIColor.appThemeColor(), .font: UIFont.pingfangFont(type: .Regular, fontSize: 14)] as [NSAttributedString.Key: Any]
//            attrString.addAttributes(attributes2, range: NSRange(location: VideoCall.count, length: attrString.length-VideoCall.count))
//            return attrString
//        }
    }

    /// 音频通话价格
    //: static func setVoicePriceStr(VoicePrice: Int)-> NSMutableAttributedString {
    static func setVoicePriceStr(VoicePrice _: Int) -> NSMutableAttributedString {
//        let index = GestureSignedMagnitude.nor
//        if EqualThen.share.loginUserMode.freeCallTimes > 0 && EqualThen.share.appUserConfigMode.enableFreeCallType & index.rawValue == index.rawValue {
        //: var text = ""
        var text = ""
//            if EqualThen.share.appUserConfigMode.callBtnStyle == 1 {
//                text = "Free 1 min".localized
//            } else {
        //: text = "Voice Call".localized
        text = (String(str_labelTitle.prefix(4)) + String(str_dataTitle.prefix(6))).localized
//            }

        //: let attrString = NSMutableAttributedString(string: text)
        let attrString = NSMutableAttributedString(string: text)
        //: let attributes = [.foregroundColor: UIColor.appTitleColor(), .font: UIFont.pingfangFont(type: .Regular, fontSize: 16)] as [NSAttributedString.Key: Any]
        let attributes = [.foregroundColor: UIColor.executeTo(), .font: UIFont.pingfang(type: .Regular, fontSize: 16)] as [NSAttributedString.Key: Any]
        //: attrString.addAttributes(attributes, range: NSRange(location: 0, length: attrString.length))
        attrString.addAttributes(attributes, range: NSRange(location: 0, length: attrString.length))
        //: return attrString
        return attrString

//        } else {
//            let VoiceCall = "Voice Call".localized
//            let videoStr = "Voice Call (%@ Coins/min)".localizedArguments(VoicePrice)
//            let attrString = NSMutableAttributedString(string: videoStr)
//            let attributes = [.foregroundColor: UIColor.appTitleColor(), .font: UIFont.pingfangFont(type: .Regular, fontSize: 16)] as [NSAttributedString.Key: Any]
//            attrString.addAttributes(attributes, range: NSRange(location: 0, length: attrString.length))
//            let attributes2 = [.foregroundColor: UIColor.appThemeColor(), .font: UIFont.pingfangFont(type: .Regular, fontSize: 14)] as [NSAttributedString.Key: Any]
//            attrString.addAttributes(attributes2, range: NSRange(location: VoiceCall.count, length: attrString.length-VoiceCall.count))
//            return attrString
//        }
    }
}

// MARK: - 男性VIP价格

//: extension String {
extension String {
    /// 获取男性侧视频通话VIP展示字符串
    /// - Parameters: videoPrice: 视频通话价格
    /// - Returns: 字符串
    //: static func getMaleVIPVideoPriceString(videoPrice: String) -> String {
    static func getMaleVIPVideoPriceString(videoPrice _: String) -> String {
//        guard EqualThen.share.appStatus == PhaseOfTheMoonPropertyProtocol.normal.rawValue else {
        //: return "Video Call".localized
        return (String(str_toValue.prefix(5)) + " Cal" + str_successfullyText.replacingOccurrences(of: "text", with: "l")).localized
//        }
//        let index = GestureSignedMagnitude.nor
//        if EqualThen.share.loginUserMode.freeCallTimes > 0 && EqualThen.share.appUserConfigMode.enableFreeCallType & index.rawValue == index.rawValue {
//            if EqualThen.share.appUserConfigMode.callBtnStyle == 1 {
//                return "Free 1 min".localized
//            } else {
//                return "Video Call".localized
//            }
//        } else {
//            return "%@ Coins/min".localizedArguments(videoPrice)
//        }
    }
}
