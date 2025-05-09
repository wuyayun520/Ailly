
//: Declare String Begin

/*: "There is no data to upload" :*/
fileprivate let str_hiddenName:String = "center let block manager trueThere i"
fileprivate let str_photoName:[Character] = ["s"," ","n","o"," ","d","a","t","a"," ","t","o"," ","u","p","l","o","a","d"]

/*: "Upload Log successfully!" :*/
fileprivate let str_toData:String = "tool sub userUploa"
fileprivate let str_labelText:String = "kit returnd Log "
fileprivate let str_pathName:String = "stabcc"

/*: "UID:  :*/
fileprivate let str_stopData:String = "as view rightUID: "

/*: "/com_tencent_imsdk_log" :*/
fileprivate let str_backgroundData:[Character] = ["/","c","o","m","_","t","e","n","c","e","n","t","_","i"]
fileprivate let str_colorTitle:[Character] = ["m","s","d","k","_","l","o","g"]

/*: "/log" :*/
fileprivate let str_appTitle:String = "/logcolor list"

/*: "/TempLogZip" :*/
fileprivate let str_makePhoneName:String = "/TempLogshoot self frame length model"
fileprivate let str_titleName:[Character] = ["Z","i","p"]

/*: "/LogZip.zip" :*/
fileprivate let str_videoTitle:String = "if next self/LogZ"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  DeepKeyTamperReactiveCompatible.swift
//  Adjust
//
//  Created by DouXiu on 2024/5/22.
//

//: import UIKit
import UIKit

//: import DXMarsXlog
import DXMarsXlog

//: class UploadLogTool: NSObject {
class DeepKeyTamperReactiveCompatible: NSObject {
    /// 上传7天内
    //: private let uploadDay = 7
    private let uploadDay = 7
    //: static let shared = UploadLogTool()
    static let shared = DeepKeyTamperReactiveCompatible()

    /// 上传日志
    /// - Parameter showTips: 是否展示提示
    //: func uploadLog(_ showTips: Bool = true) {
    func treatNurseLog(_ showTips: Bool = true) {
        //: let reachability = try? Reachability()
        let reachability = try? Reachability()
        //: if reachability?.connection == .unavailable {
        if reachability?.connection == .unavailable {
            //: func__showStatusBarErrorMsg(showMsg: kNetErrorMsg)
            oversight(showMsg: kLet_errorData)
            //: return
            return
        }
        //: if showTips {
        if showTips {
            //: ProgressHUD.show()
            ModelReactiveCompatible.fromTarget()
        }
        // im
        //: if let path = UploadLogTool.getIMSDKLogPath() {
        if let path = DeepKeyTamperReactiveCompatible.removePath() {
            //: copyLogToTempPath(logPath: path)
            picTo(logPath: path)
        }
        // trtc
        //: if let path = UploadLogTool.getTRTCLogPath() {
        if let path = DeepKeyTamperReactiveCompatible.plugIn() {
            //: copyLogToTempPath(logPath: path)
            picTo(logPath: path)
        }
        // xlog
        //: DXMarsXLogger.shared().flush()
        DXMarsXLogger.shared().flush()
        //: copyLogToTempPath(logPath: DXMarsXLogger.getLogPath())
        picTo(logPath: DXMarsXLogger.getLogPath())

        // 压缩上传
        //: if let tempPath = UploadLogTool.getTempUploadLogPath(), let zipPath = UploadLogTool.getZipLogPath() {
        if let tempPath = DeepKeyTamperReactiveCompatible.roomAcross(), let zipPath = DeepKeyTamperReactiveCompatible.resignAdd() {
            //: SSZipArchive.createZipFile(atPath: zipPath, withContentsOfDirectory: tempPath, keepParentDirectory: true)
            SSZipArchive.createZipFile(atPath: zipPath, withContentsOfDirectory: tempPath, keepParentDirectory: true)
            //: if let file = NSData(contentsOfFile: zipPath) {
            if let file = NSData(contentsOfFile: zipPath) {
                //: if file.length < 10 {
                if file.length < 10 {
                    //: ProgressHUD.dismiss()
                    ModelReactiveCompatible.dataConverterCan()
                    //: if showTips {
                    if showTips {
                        //: self.func__showStatusBarErrorMsg(showMsg: "There is no data to upload".localized)
                        self.oversight(showMsg: (String(str_hiddenName.suffix(7)) + String(str_photoName)).localized)
                    }
                    //: return
                    return
                }
                // cos上传
                //: TalkingMomentVideoManager.shared.cos_uploadLog(filePath: zipPath) { succeed, errorMsg in
                ListReactiveCompatible.shared.sizeCompletion(filePath: zipPath) { succeed, errorMsg in
                    //: ProgressHUD.dismiss()
                    ModelReactiveCompatible.dataConverterCan()
                    //: guard succeed else {
                    guard succeed else {
                        //: if showTips, errorMsg?.isEmpty == false {
                        if showTips, errorMsg?.isEmpty == false {
                            //: self.func__showStatusBarErrorMsg(showMsg: errorMsg!)
                            self.oversight(showMsg: errorMsg!)
                        }
                        //: return
                        return
                    }

                    //: if showTips {
                    if showTips {
                        //: self.func__showStatusBarSuccessMsg(showMsg: "Upload Log successfully!".localized)
                        self.fileFirst(showMsg: (String(str_toData.suffix(5)) + String(str_labelText.suffix(6)) + str_pathName.replacingOccurrences(of: "tab", with: "u") + "essfully!").localized)
                    }

                    // 移除缓存
                    //: try? FileManager.default.removeItem(atPath: zipPath)
                    try? FileManager.default.removeItem(atPath: zipPath)
                    //: try? FileManager.default.removeItem(atPath: tempPath)
                    try? FileManager.default.removeItem(atPath: tempPath)
                    //: self.clearContentsOfDirectory(atPath: DXMarsXLogger.getLogPath())
                    self.stayTogether(atPath: DXMarsXLogger.getLogPath())
                }
            }
        }
    }
}

// MARK: - 写入用户行为日志到本地文件

//: extension UploadLogTool {
extension DeepKeyTamperReactiveCompatible {
    /// 写入用户行为日志到本地文件
    /// - Parameter msg: 日志
    //: static func writeLog<T>(msg: T,
    static func indexView<T>(msg: T,
                             //: file: String = #file,
                             file: String = #file,
                             //: method: String = #function,
                             method: String = #function,
                             //: line: Int = #line) {
                             line: Int = #line)
    {
        //: DXMarsXLogger.logInfo("UID: \(EqualThen.share.loginUserMode.userID)",
        DXMarsXLogger.logInfo((String(str_stopData.suffix(5))) + "\(EqualThen.share.loginUserMode.userID)",
                              //: message: "\(msg)",
                              message: "\(msg)",
                              //: file: file,
                              file: file,
                              //: line: line,
                              line: line,
                              //: function: method)
                              function: method)
        //: DXMarsXLogger.shared().flush()
        DXMarsXLogger.shared().flush()
    }
}

// MARK: - 日志路径操作

//: extension UploadLogTool {
extension DeepKeyTamperReactiveCompatible {
    /// Copy符合条件的日志到指定路径
    //: private func copyLogToTempPath(logPath: String) {
    private func picTo(logPath: String) {
        //: guard let subpaths = FileManager.default.subpaths(atPath: logPath) else { return }
        guard let subpaths = FileManager.default.subpaths(atPath: logPath) else { return }
        // 获取当前日期和指定天数前的日期
        //: let calendar = Calendar.current
        let calendar = Calendar.current
        //: let today = Date()
        let today = Date()
        //: guard let daysAgo = calendar.date(byAdding: .day, value: -uploadDay, to: calendar.startOfDay(for: today)) else { return }
        guard let daysAgo = calendar.date(byAdding: .day, value: -uploadDay, to: calendar.startOfDay(for: today)) else { return }
        //: subpaths.forEach { fileName in
        subpaths.forEach { fileName in
            //: let fullPath = logPath + "/" + fileName
            let fullPath = logPath + "/" + fileName
            //: guard let dict = try? FileManager.default.attributesOfItem(atPath: fullPath),
            guard let dict = try? FileManager.default.attributesOfItem(atPath: fullPath),
                  //: let modificationDate = dict[FileAttributeKey.modificationDate] as? Date else { return }
                  let modificationDate = dict[FileAttributeKey.modificationDate] as? Date else { return }
            // 获取文件修改日期的开始时间
            //: let fileDate = calendar.startOfDay(for: modificationDate)
            let fileDate = calendar.startOfDay(for: modificationDate)
            // 判断文件日期是否在指定天数范围内
            //: if fileDate > daysAgo,
            if fileDate > daysAgo,
               //: let tempPath = UploadLogTool.getTempUploadLogPath() {
               let tempPath = DeepKeyTamperReactiveCompatible.roomAcross()
            {
                //: try? FileManager.default.copyItem(atPath: fullPath, toPath: tempPath + "/" + fileName)
                try? FileManager.default.copyItem(atPath: fullPath, toPath: tempPath + "/" + fileName)
            }
        }
    }

    /// 清空指定路径下的所有文件
    //: private func clearContentsOfDirectory(atPath path: String) {
    private func stayTogether(atPath path: String) {
        //: let fileManager = FileManager.default
        let fileManager = FileManager.default
        //: if let files = try? fileManager.contentsOfDirectory(atPath: path) {
        if let files = try? fileManager.contentsOfDirectory(atPath: path) {
            //: for file in files {
            for file in files {
                //: let filePath = path + "/" + file
                let filePath = path + "/" + file
                //: try? fileManager.removeItem(atPath: filePath)
                try? fileManager.removeItem(atPath: filePath)
            }
        }
    }
}

// MARK: - 日志本地路径

//: extension UploadLogTool {
extension DeepKeyTamperReactiveCompatible {
    /// 获取腾讯IM日志路径
    //: private static func getIMSDKLogPath() -> String? {
    private static func removePath() -> String? {
        //: return NSSearchPathForDirectoriesInDomains(.cachesDirectory, .userDomainMask, true).first?.appending("/com_tencent_imsdk_log")
        return NSSearchPathForDirectoriesInDomains(.cachesDirectory, .userDomainMask, true).first?.appending((String(str_backgroundData) + String(str_colorTitle)))
    }

    /// 获取腾讯TRTC日志路径
    //: private static func getTRTCLogPath() -> String? {
    private static func plugIn() -> String? {
        //: return NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first?.appending("/log")
        return NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first?.appending((String(str_appTitle.prefix(4))))
    }

    /// copy临时路径
    //: private static func getTempUploadLogPath() -> String? {
    private static func roomAcross() -> String? {
        //: if let logPath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first?.appending("/TempLogZip") {
        if let logPath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first?.appending((String(str_makePhoneName.prefix(8)) + String(str_titleName))) {
            //: if FileManager.default.fileExists(atPath: logPath) == false {
            if FileManager.default.fileExists(atPath: logPath) == false {
                //: try? FileManager.default.createDirectory(atPath: logPath, withIntermediateDirectories: true)
                try? FileManager.default.createDirectory(atPath: logPath, withIntermediateDirectories: true)
            }
            //: return logPath
            return logPath
        }
        //: return nil
        return nil
    }

    /// 压缩日志文件路径
    //: private static func getZipLogPath() -> String? {
    private static func resignAdd() -> String? {
        //: return NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first?.appending("/LogZip.zip")
        return NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first?.appending((String(str_videoTitle.suffix(5)) + "ip.zip"))
    }
}
