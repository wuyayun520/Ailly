
//: Declare String Begin

/*: "%zd:%02zd:%02zd" :*/
fileprivate let str_normalMinData:String = "height manager height about to%zd:"
fileprivate let str_innerData:String = "d:%02session var text view error"
fileprivate let str_addValue:[Character] = ["z","d"]

/*: "%02zd:%02zd" :*/
fileprivate let str_whiteValue:String = "model equal%02zd:"

/*: "MM-dd-YYYY HH:mm" :*/
fileprivate let str_videoName:[UInt8] = [0xeb,0xeb,0x8b,0xc2,0xc2,0x8b,0xff,0xff,0xff,0xff,0x86,0xee,0xee,0x9c,0xcb,0xcb]

private func toView(execute num: UInt8) -> UInt8 {
    return num ^ 166
}

/*: "MM-dd-YYYY" :*/
fileprivate let str_greetContent:String = "lab"
fileprivate let str_resultName:String = "check title view sufficient error-dd-YYYY"

/*: "HH:mm" :*/
fileprivate let str_callTitle:String = "HH:mmgift i permission lab"

/*: "MM-dd HH:mm" :*/
fileprivate let str_nameValue:[UInt8] = [0xf6,0xf6,0x96,0xdf,0xdf,0x9b,0xf3,0xf3,0x81,0xd6,0xd6]

private func falseLet(bit num: UInt8) -> UInt8 {
    return num ^ 187
}

/*: "MM-dd" :*/
fileprivate let str_upValue:[Character] = ["M","M","-","d","d"]

/*: "Yesterday" :*/
fileprivate let str_cellValue:String = "sign theory var viewYeste"

/*: "  :*/
fileprivate let str_leadingContent:String = " "

/*: "America/New_York" :*/
fileprivate let str_serverName:[Character] = ["A","m","e","r","i","c","a","/","N","e","w","_","Y","o"]
fileprivate let str_imageData:String = "rcontext"

/*: "en_US" :*/
fileprivate let str_loadName:String = "at add back level varen_US"

/*: "Asia/Shanghai" :*/
fileprivate let str_styleTitle:String = "add view current blackAsia/Sh"
fileprivate let str_indexName:[Character] = ["a","n","g","h","a","i"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  DateExtension.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/1/25.
//

//: import Foundation
import Foundation

//: let dateformatter = DateFormatter()
let kLet_cancelValue = DateFormatter()

//: extension NSDate {
extension NSDate {
    // override 继承
    // class、static 类方法
    // 当前的时间戳字符串 用static关键字指定的类方法是不能被子类重写的,

    /// 展示当前日期
    /// - Returns: 返回日期格式（包含年、月、日、时、分、秒、星期几）
    //: static func getCurrentDateComponents() -> DateComponents {
    static func labOf() -> DateComponents {
        //: let calendar = NSCalendar.current
        let calendar = NSCalendar.current
        //: let components = calendar.dateComponents(
        let components = calendar.dateComponents(
            //: Set<Calendar.Component>([.year, .month, .day, .hour, .minute, .second, .weekday]), from: Date())
            Set<Calendar.Component>([.year, .month, .day, .hour, .minute, .second, .weekday]), from: Date()
        )
        //: return components
        return components
    }

    /// 返回当前的时间戳
    /// - Returns: 当前的时间戳字符串
    //: static func getCurrentTimeStamp() ->String {
    static func pushFinish() -> String {
        //: let nowDate = Date.init()
        let nowDate = Date()
        //: let interval = Int(nowDate.timeIntervalSince1970)
        let interval = Int(nowDate.timeIntervalSince1970)
        //: return "\(interval)"
        return "\(interval)"
    }

    /// 时间字符串转换成对应格式的时间字符串【以美东时间为标准】
    /// - Parameters:
    ///   - timeString: 时间字符串，如：“2022-10-22”
    ///   - currDateFormat: 当前时间格式，如：“yyyy-MM-dd”
    ///   - newDateFormat: 新时间格式，如：”MMMM yyyy“
    /// - Returns: 格式化后的日期字符串
    //: static func getDateStringFromTimeString(_ timeString: String, currDateFormat: String, newDateFormat: String) -> String {
    static func textCount(_ timeString: String, currDateFormat: String, newDateFormat: String) -> String {
        //: let date = getDateFromTimeString(timeString, dateFormat: currDateFormat)
        let date = maturityVideo(timeString, dateFormat: currDateFormat)
        //: return getTimeString(date: date, dateFormat: newDateFormat)
        return comeOut(date: date, dateFormat: newDateFormat)
    }

    /// 根据秒转换视频播放时间
    /// - Parameter totalTime: 总时间【秒】
    /// - Returns: 视频播放时间字符串
    //: @objc static public func videoTimeFormat(totalTime: NSInteger) -> String {
    @objc public static func outsideViewTime(totalTime: NSInteger) -> String {
        //: if totalTime < 0 {
        if totalTime < 0 {
            //: return ""
            return ""
        }
        //: let durHour = totalTime / 3600
        let durHour = totalTime / 3600
        //: let durMin = (totalTime / 60) % 60
        let durMin = (totalTime / 60) % 60
        //: let durSec = totalTime % 60
        let durSec = totalTime % 60

        //: if durHour > 0 {
        if durHour > 0 {
            //: return  String(format: "%zd:%02zd:%02zd", durHour, durMin, durSec)
            return String(format: (String(str_normalMinData.suffix(4)) + "%02z" + String(str_innerData.prefix(5)) + String(str_addValue)), durHour, durMin, durSec)
            //: } else {
        } else {
            //: return  String(format: "%02zd:%02zd", durMin, durSec)
            return String(format: "%02zd:%02zd", durMin, durSec)
        }
    }

    //: @objc static public func tx_messageTimeString(showDetail: Bool, date: Date) -> String {
    @objc public static func someFirst(showDetail: Bool, date: Date) -> String {
        //: let calendar = NSCalendar.current
        let calendar = NSCalendar.current
        //: let components = calendar.dateComponents(
        let components = calendar.dateComponents(
            //: Set<Calendar.Component>([.year, .month, .day]), from: date )
            Set<Calendar.Component>([.year, .month, .day]), from: date
        )
        //: let nowComponents = calendar.dateComponents(
        let nowComponents = calendar.dateComponents(
            //: Set<Calendar.Component>([.year, .month, .day]), from: Date())
            Set<Calendar.Component>([.year, .month, .day]), from: Date()
        )
        //: var  isYesterday = false
        var isYesterday = false

        //: let dateformatter = DateFormatter()
        let dateformatter = DateFormatter()
        //: if components.year != nowComponents.year {
        if components.year != nowComponents.year {
            //: dateformatter.dateFormat = showDetail ? "MM-dd-YYYY HH:mm" : "MM-dd-YYYY"
            dateformatter.dateFormat = showDetail ? String(bytes: str_videoName.map{toView(execute: $0)}, encoding: .utf8)! : (str_greetContent.replacingOccurrences(of: "lab", with: "MM") + String(str_resultName.suffix(8)))
            //: } else {
        } else {
            //: let tempDay: Int = nowComponents.day!-components.day!
            let tempDay: Int = nowComponents.day! - components.day!

            //: if tempDay == 0 {
            if tempDay == 0 {
                //: dateformatter.dateFormat = "HH:mm"
                dateformatter.dateFormat = (String(str_callTitle.prefix(5)))
                //: } else if(tempDay == 1) {
            } else if tempDay == 1 {
                //: isYesterday = true
                isYesterday = true
                //: dateformatter.dateFormat = "HH:mm"
                dateformatter.dateFormat = (String(str_callTitle.prefix(5)))
                //: } else {
            } else {
                //: dateformatter.dateFormat = showDetail ? "MM-dd HH:mm" : "MM-dd"
                dateformatter.dateFormat = showDetail ? String(bytes: str_nameValue.map{falseLet(bit: $0)}, encoding: .utf8)! : (String(str_upValue))
            }
        }

        //: var str = dateformatter.string(from: date)
        var str = dateformatter.string(from: date)
        //: if isYesterday {
        if isYesterday {
            //: if showDetail {
            if showDetail {
                //: str = "Yesterday".localized + " \(str)"
                str = (String(str_cellValue.suffix(5)) + "rday").localized + " \(str)"
                //: } else {
            } else {
                //: str = "Yesterday".localized
                str = (String(str_cellValue.suffix(5)) + "rday").localized
            }
        }

        //: return str
        return str
    }
}

// MARK: - 以美东时间为标准

//: extension NSDate {
extension NSDate {
    /// 根据时间字符串获取date【以美东时间为标准】
    /// - Parameters:
    ///   - timeString: 时间字符串，如：“2022-10-22”
    ///   - dateFormat: 时间格式，如：“yyyy-MM-dd”
    /// - Returns: date
    //: static func getDateFromTimeString(_ timeString: String, dateFormat: String) -> Date {
    static func maturityVideo(_ timeString: String, dateFormat: String) -> Date {
        //: dateformatter.timeZone = TimeZone(identifier: "America/New_York")
        kLet_cancelValue.timeZone = TimeZone(identifier: (String(str_serverName) + str_imageData.replacingOccurrences(of: "context", with: "k")))
        //: dateformatter.dateFormat = dateFormat
        kLet_cancelValue.dateFormat = dateFormat
        //: return dateformatter.date(from: timeString) ?? Date()
        return kLet_cancelValue.date(from: timeString) ?? Date()
    }

    /// 根据date获取时间字符串
    /// - Parameters:
    ///   - date: date
    ///   - dateFormat: 时间格式，如：“yyyy-MM-dd”
    /// - Returns: 时间字符串
    //: static func getTimeString(date: Date, dateFormat: String) -> String {
    static func comeOut(date: Date, dateFormat: String) -> String {
        //: dateformatter.timeZone = TimeZone(identifier: "America/New_York")
        kLet_cancelValue.timeZone = TimeZone(identifier: (String(str_serverName) + str_imageData.replacingOccurrences(of: "context", with: "k")))
        //: dateformatter.dateFormat = dateFormat
        kLet_cancelValue.dateFormat = dateFormat
        //: dateformatter.locale = Locale(identifier: "en_US")
        kLet_cancelValue.locale = Locale(identifier: (String(str_loadName.suffix(5))))
        //: return dateformatter.string(from: date)
        return kLet_cancelValue.string(from: date)
    }
}

// MARK: - 以设备所在时区为标准

//: extension NSDate {
extension NSDate {
    /// 将东八区时间字符串转换成设备所在时区的字符串
    /// - Parameters:
    ///   - dateFormat: 时间格式（默认："HH:mm"）
    ///   - shDateStr: 【东八区】时间字符串
    /// - Returns: 【设备所在时区】时间字符串
    //: static func getCurrentZoneDateString(dateFormat: String = "HH:mm", shDateStr: String) -> String {
    static func blockStr(dateFormat _: String = (String(str_callTitle.prefix(5))), shDateStr: String) -> String {
        // 计算GMT时差（小时）
        //: let shTimeZone = TimeZone(identifier: "Asia/Shanghai")!
        let shTimeZone = TimeZone(identifier: (String(str_styleTitle.suffix(7)) + String(str_indexName)))!
        //: let shTimeOffset = shTimeZone.secondsFromGMT()
        let shTimeOffset = shTimeZone.secondsFromGMT()
        //: let currentTimeOffset = TimeZone.autoupdatingCurrent.secondsFromGMT()
        let currentTimeOffset = TimeZone.autoupdatingCurrent.secondsFromGMT()
        //: let timeOffsetDiff = (currentTimeOffset - shTimeOffset)
        let timeOffsetDiff = (currentTimeOffset - shTimeOffset)

        // 获取东八区时间
        //: dateformatter.dateFormat = "HH:mm"
        kLet_cancelValue.dateFormat = (String(str_callTitle.prefix(5)))
        //: dateformatter.timeZone = shTimeZone
        kLet_cancelValue.timeZone = shTimeZone
        //: if let shDate = dateformatter.date(from: shDateStr) {
        if let shDate = kLet_cancelValue.date(from: shDateStr) {
            // 东八区加上GMT时差，计算出当地时间
            //: let opFormatter = DateFormatter()
            let opFormatter = DateFormatter()
            //: opFormatter.dateFormat = "HH:mm"
            opFormatter.dateFormat = (String(str_callTitle.prefix(5)))
            //: opFormatter.timeZone = shTimeZone
            opFormatter.timeZone = shTimeZone
            //: let localDate = shDate.addingTimeInterval(TimeInterval(timeOffsetDiff))
            let localDate = shDate.addingTimeInterval(TimeInterval(timeOffsetDiff))
            //: let opStr = opFormatter.string(from: localDate)
            let opStr = opFormatter.string(from: localDate)

            //: return opStr
            return opStr
        }

        //: return ""
        return ""
    }

    /// 比较当前时间是否在时间段内
    /// - Parameters:
    ///   - startTime: 开始时间（如："09:30"）
    ///   - endTime: 结束时间（如："18:30"）
    /// - Returns: 比较结果
    //: static func compareCurrentTimeIsIncluded(startTime: String, endTime: String) -> Bool {
    static func upwardAnalogDigitalConverter(startTime: String, endTime: String) -> Bool {
        //: let now = Date()
        let now = Date()
        //: let nowFormatter = DateFormatter()
        let nowFormatter = DateFormatter()
        //: nowFormatter.dateFormat = "HH:mm"
        nowFormatter.dateFormat = (String(str_callTitle.prefix(5)))
        //: nowFormatter.timeZone = TimeZone.autoupdatingCurrent
        nowFormatter.timeZone = TimeZone.autoupdatingCurrent
        //: let nowTime = nowFormatter.string(from: now)
        let nowTime = nowFormatter.string(from: now)
        //: let nowTimeInt = Int(nowTime.replacingOccurrences(of: ":", with: "")) ?? 0
        let nowTimeInt = Int(nowTime.replacingOccurrences(of: ":", with: "")) ?? 0
        //: let startTimeInt = Int(startTime.replacingOccurrences(of: ":", with: "")) ?? 0
        let startTimeInt = Int(startTime.replacingOccurrences(of: ":", with: "")) ?? 0
        //: let endTimeInt = Int(endTime.replacingOccurrences(of: ":", with: "")) ?? 0
        let endTimeInt = Int(endTime.replacingOccurrences(of: ":", with: "")) ?? 0

        //: if startTimeInt > endTimeInt {
        if startTimeInt > endTimeInt { // 跨天
            //: if nowTimeInt >= startTimeInt || nowTimeInt <= endTimeInt {
            if nowTimeInt >= startTimeInt || nowTimeInt <= endTimeInt {
                //: return true
                return true
                //: } else {
            } else {
                //: return false
                return false
            }

            //: } else {
        } else {
            //: if nowTimeInt >= startTimeInt && nowTimeInt <= endTimeInt {
            if nowTimeInt >= startTimeInt && nowTimeInt <= endTimeInt {
                //: return true
                return true
                //: } else {
            } else {
                //: return false
                return false
            }
        }
    }
}
