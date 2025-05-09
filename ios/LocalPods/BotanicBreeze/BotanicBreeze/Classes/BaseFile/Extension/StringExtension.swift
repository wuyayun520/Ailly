
//: Declare String Begin

/*: "ZUhWdWQzVnNiM1ps" :*/
fileprivate let str_styleData:[Character] = ["Z","U","h","W","d","W","Q","z","V","n","N","i","M","1","p","s"]

/*: "OrKulDHBYyjUHZTy1sS7dw==" :*/
fileprivate let str_shareUserTitle:String = "OrKulDin level data white var"
fileprivate let str_bottomSectionName:String = "uhzt"
fileprivate let str_viewName:[Character] = ["7","d","w","=","="]

/*: "null" :*/
fileprivate let str_labelData:String = "nushareshare"

/*: "(null)" :*/
fileprivate let str_frameName:String = "view user clear mini(null)"

/*: "nil" :*/
fileprivate let str_coinViewTitle:[Character] = ["n","i","l"]

/*: "<null>" :*/
fileprivate let str_aspectData:String = "image online hidden user true<null"
fileprivate let str_thanksValue:String = ">"

/*: "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMnopQRSTUVWXYZ0123456789" :*/
fileprivate let str_allTitle:[UInt8] = [0x7d,0x7e,0x7f,0x80,0x81,0x82,0x83,0x84,0x85,0x86,0x87,0x88,0x89,0x8a,0x8b,0x8c,0x8d,0x8e,0x8f,0x90,0x91,0x92,0x93,0x94,0x95,0x96,0x5d,0x5e,0x5f,0x60,0x61,0x62,0x63,0x64,0x65,0x66,0x67,0x68,0x69,0x8a,0x8b,0x8c,0x6d,0x6e,0x6f,0x70,0x71,0x72,0x73,0x74,0x75,0x76,0x4c,0x4d,0x4e,0x4f,0x50,0x51,0x52,0x53,0x54,0x55]

fileprivate func succeedPlayerFrom(path num: UInt8) -> UInt8 {
    let value = Int(num) - 28
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "加密参数=  :*/
fileprivate let str_videoTitle:String = "加密add="
fileprivate let str_atTouchUserContent:String = "back"

/*: "解密结果=  :*/
fileprivate let str_managerData:String = "解密结\u{679c}= "

/*: "<.*?>" :*/
fileprivate let str_pathTitle:[Character] = ["<",".","*","?",">"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  StringExtension.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/1/26.
//

//: import Foundation
import Foundation

//: let UrlKey = "ZUhWdWQzVnNiM1ps"
let UrlKey = (String(str_styleData))

//: let UrlDomin = "OrKulDHBYyjUHZTy1sS7dw=="
let UrlDomin = (String(str_shareUserTitle.prefix(6)) + "HBYyj" + str_bottomSectionName.uppercased() + "y1sS" + String(str_viewName))

//: extension String {
extension String {
    //: var isEmptyString: Bool {
    var isEmptyString: Bool {
        //: guard !self.isEmpty else { return true }
        guard !self.isEmpty else { return true }
        //: guard self != "null" else { return true }
        guard self != (str_labelData.replacingOccurrences(of: "share", with: "l")) else { return true }
        //: guard self != "(null)" else { return true }
        guard self != (String(str_frameName.suffix(6))) else { return true }
        //: guard self != "nil" else { return true }
        guard self != (String(str_coinViewTitle)) else { return true }
        //: guard self != "<null>" else { return true }
        guard self != (String(str_aspectData.suffix(5)) + str_thanksValue.capitalized) else { return true }
        //: guard self != "" else { return true }
        guard self != "" else { return true }

        //: let trimmedStr = self.trimmingCharacters(in: .whitespacesAndNewlines)
        let trimmedStr = self.trimmingCharacters(in: .whitespacesAndNewlines)
        //: return trimmedStr.isEmpty
        return trimmedStr.isEmpty
    }

    //: var boolValue: Bool {
    var boolValue: Bool {
        //: return NSString(string: self).boolValue
        return NSString(string: self).boolValue
    }

    //: var intValue: Int {
    var intValue: Int {
        //: Int(self) ?? 0
        Int(self) ?? 0
    }

    //: var doubleValue: Double {
    var doubleValue: Double {
        //: Double(self) ?? 0
        Double(self) ?? 0
    }

    /// 字符串的匹配范围
    //: func exMatchStrRange(_ matchStr: String) -> [NSRange] {
    func exMatchStrRange(_ matchStr: String) -> [NSRange] {
        //: var selfStr = self as NSString
        var selfStr = self as NSString
        //: var withStr = Array(repeating: "X", count: (matchStr as NSString).length).joined(separator: "") // 辅助字符串
        var withStr = Array(repeating: "X", count: (matchStr as NSString).length).joined(separator: "") // 辅助字符串
        //: if matchStr == withStr { withStr = withStr.lowercased() }
        if matchStr == withStr { withStr = withStr.lowercased() } // 临时处理辅助字符串差错
        //: var allRange = [NSRange]()
        var allRange = [NSRange]()
        //: while selfStr.range(of: matchStr).location != NSNotFound {
        while selfStr.range(of: matchStr).location != NSNotFound {
            //: let range = selfStr.range(of: matchStr)
            let range = selfStr.range(of: matchStr)
            //: allRange.append(NSRange(location: range.location, length: range.length))
            allRange.append(NSRange(location: range.location, length: range.length))
            //: selfStr = selfStr.replacingCharacters(in: NSRange(location: range.location, length: range.length), with: withStr) as NSString
            selfStr = selfStr.replacingCharacters(in: NSRange(location: range.location, length: range.length), with: withStr) as NSString
        }

        //: return allRange
        return allRange
    }

    /// 从String中截取出参数
    //: var urlParameters: [String: AnyObject]? {
    var urlParameters: [String: AnyObject]? {
        // 截取是否有参数
        //: guard let urlComponents = NSURLComponents(string: self), let queryItems = urlComponents.queryItems else {
        guard let urlComponents = NSURLComponents(string: self), let queryItems = urlComponents.queryItems else {
            //: return nil
            return nil
        }
        // 参数字典
        //: var parameters = [String: AnyObject]()
        var parameters = [String: AnyObject]()

        // 遍历参数
        //: queryItems.forEach({ (item) in
        for item in queryItems {
            // 判断参数是否是数组
            //: if let existValue = parameters[item.name], let value = item.value {
            if let existValue = parameters[item.name], let value = item.value {
                // 已存在的值，生成数组
                //: if var existValue = existValue as? [AnyObject] {
                if var existValue = existValue as? [AnyObject] {
                    //: existValue.append(value as AnyObject)
                    existValue.append(value as AnyObject)
                    //: } else {
                } else {
                    //: parameters[item.name] = [existValue, value] as AnyObject
                    parameters[item.name] = [existValue, value] as AnyObject
                }

                //: } else {
            } else {
                //: parameters[item.name] = item.value as AnyObject
                parameters[item.name] = item.value as AnyObject
            }
            //: })
        }

        //: return parameters
        return parameters
    }
}

// MARK: String Encrypt

//: extension String {
extension String {
    /// 随机字符串
    /// - Parameters:
    ///   - length: 长度
    //: static func randomString(length: Int) -> String {
    static func randomString(length: Int) -> String {
        //: let letters: NSString = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMnopQRSTUVWXYZ0123456789"
        let letters: NSString = String(bytes: str_allTitle.map{succeedPlayerFrom(path: $0)}, encoding: .utf8)! as NSString
        //: let len = UInt32(letters.length)
        let len = UInt32(letters.length)
        //: var randomString = ""
        var randomString = ""
        //: for _ in 0 ..< length {
        for _ in 0 ..< length {
            //: let rand = arc4random_uniform(len)
            let rand = arc4random_uniform(len)
            //: var nextChar = letters.character(at: Int(rand))
            var nextChar = letters.character(at: Int(rand))
            //: randomString += NSString(characters: &nextChar,length: 1) as String
            randomString += NSString(characters: &nextChar, length: 1) as String
        }
        //: return randomString
        return randomString
    }

    //: func aes256Encrypt(key: String) -> String? {
    func aes256Encrypt(key: String) -> String? {
        //: printLog(message: "加密参数= \(self)")
        printLog(message: (str_videoTitle.replacingOccurrences(of: "add", with: "参数") + str_atTouchUserContent.replacingOccurrences(of: "back", with: " ")) + "\(self)")
        //: guard let inputData: Data = data(using: .utf8) else { return nil }
        guard let inputData: Data = data(using: .utf8) else { return nil }
        //: let EncryptData = (inputData as NSData).aes256Encrypt(withKey: key)
        let EncryptData = (inputData as NSData).gift(key)
        //: return NSData.base64String(from: EncryptData, length: UInt((EncryptData as NSData).length))
        return NSData.surnameLength(EncryptData, scaleLoad: UInt((EncryptData as NSData).length))
    }

    //: func aes256Decrypt(key: String) -> String? {
    func aes256Decrypt(key: String) -> String? {
        //: let encryData = NSData.base64Data(from: self)
        let encryData = NSData.ofTitle(self)
        //: let decryData = (encryData as NSData).aes256Decrypt(withKey: key)
        let decryData = (encryData as NSData).gallery(key)
        //: let decryStr = String(data: decryData, encoding: .utf8)
        let decryStr = String(data: decryData, encoding: .utf8)
        //: printLog(message: "解密结果= \(decryStr)")
        printLog(message: (str_managerData) + "\(decryStr)")
        //: return decryStr
        return decryStr
    }

    //: func urlAes256Encrypt() -> String? {
    func urlAes256Encrypt() -> String? {
        //: printLog(message: "加密参数= \(self)")
        printLog(message: (str_videoTitle.replacingOccurrences(of: "add", with: "参数") + str_atTouchUserContent.replacingOccurrences(of: "back", with: " ")) + "\(self)")
        //: guard let inputData: Data = data(using: .utf8) else { return nil }
        guard let inputData: Data = data(using: .utf8) else { return nil }
        //: let EncryptData = (inputData as NSData).aes256Encrypt(withKey: UrlKey)
        let EncryptData = (inputData as NSData).gift(UrlKey)
        //: return NSData.base64String(from: EncryptData, length: UInt((EncryptData as NSData).length))
        return NSData.surnameLength(EncryptData, scaleLoad: UInt((EncryptData as NSData).length))
    }

    //: func urlAes256Decrypt() -> String {
    func urlAes256Decrypt() -> String {
        //: let encryData = NSData.base64Data(from: self)
        let encryData = NSData.ofTitle(self)
        //: let decryData = (encryData as NSData).aes256Decrypt(withKey: UrlKey)
        let decryData = (encryData as NSData).gallery(UrlKey)
        //: let decryStr = String(data: decryData, encoding: .utf8)
        let decryStr = String(data: decryData, encoding: .utf8)
        //: return decryStr ?? ""
        return decryStr ?? ""
    }

    /// 字符串截取，表情乱码（表情长度不对问题）
    //: static func substringByUnicodeIndex(str: String, from: Int, to: Int) -> String {
    static func substringByUnicodeIndex(str: String, from: Int, to: Int) -> String {
        //: let begem = from < 0 ? 0: from
        let begem = from < 0 ? 0 : from
        //: let to = to >= str.unicodeScalars.count ?  str.unicodeScalars.count : to
        let to = to >= str.unicodeScalars.count ? str.unicodeScalars.count : to
        //: guard to >= from else {
        guard to >= from else {
            //: return str
            return str
        }
        //: let startIndex = str.unicodeScalars.index(str.unicodeScalars.startIndex, offsetBy: from)
        let startIndex = str.unicodeScalars.index(str.unicodeScalars.startIndex, offsetBy: from)
        //: let endIndex = str.unicodeScalars.index(str.unicodeScalars.startIndex, offsetBy: to)
        let endIndex = str.unicodeScalars.index(str.unicodeScalars.startIndex, offsetBy: to)
        //: return String(str.unicodeScalars[startIndex..<endIndex])
        return String(str.unicodeScalars[startIndex ..< endIndex])
    }

    /// 删除html标签
    //: func deleteHtmlTips() -> String {
    func deleteHtmlTips() -> String {
        //: let htmlPattern = "<.*?>"
        let htmlPattern = "<.*?>"
        //: return self.replacingOccurrences(of: htmlPattern, with: "", options: .regularExpression, range: nil)
        return self.replacingOccurrences(of: htmlPattern, with: "", options: .regularExpression, range: nil)
    }
}

//: extension Int {
extension Int {
    //: var boolValue: Bool {
    var boolValue: Bool {
        //: self != 0
        self != 0
    }

    //: var stringValue: String {
    var stringValue: String {
        //: String(self)
        String(self)
    }
}
