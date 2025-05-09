
//: Declare String Begin

/*: "http://" :*/
fileprivate let str_userTitle:[Character] = ["h","t","t","p",":","/","/"]

/*: "https://" :*/
fileprivate let str_topData:String = "okttp"

/*: "platform=iphone&version=%@&packageId=%@&bundleId=%@" :*/
fileprivate let str_modeValue:[UInt8] = [0x40,0x25,0x3d,0x64,0x49,0x65,0x6c,0x64,0x6e,0x75,0x62,0x26,0x40,0x25,0x3d,0x64,0x49,0x65,0x67,0x61,0x6b,0x63,0x61,0x70,0x26,0x40,0x25,0x3d,0x6e,0x6f,0x69,0x73,0x72,0x65,0x76,0x26,0x65,0x6e,0x6f,0x68,0x70,0x69,0x3d,0x6d,0x72,0x6f,0x66,0x74,0x61,0x6c,0x70]

/*: "%@%@&%@" :*/
fileprivate let str_norGroupTitle:String = "%style%style&%style"

/*: "url" :*/
fileprivate let str_nextText:[Character] = ["u","r","l"]

/*: "id" :*/
fileprivate let str_executeText:String = "labeld"

/*: "length" :*/
fileprivate let str_frameTitle:String = "levelngth"

/*: "getFileSize error : :*/
fileprivate let str_leadingViewName:String = "to forgetF"
fileprivate let str_firstData:String = "key statusileSiz"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  RawTaskModel.swift
//  BotanicBreeze
//
//  Created by DouXiu on 2024/8/26.
//

//: import UIKit
import UIKit

//: enum DownloadTaskStatus: Int {
enum ControlFreeWidthNumber: Int {
    //: case none = 0
    case none = 0 // 未定义
    //: case prepare = 1
    case prepare = 1 // 准备
    //: case running = 10
    case running = 10 // 下载中
    //: case pause = 20
    case pause = 20 // 暂停
    //: case cancel = 30
    case cancel = 30 // 取消
    //: case expired = 40
    case expired = 40 // 过期
    //: case finish = 100
    case finish = 100 // 完成
    //: case error = 1000
    case error = 1000 // 错误
}

//: enum DownloadTaskTypeID: Int {
enum EqualComparable: Int {
    //: case undefined = 0
    case undefined = 0 // 未定义
    //: case chatRecord = 1
    case chatRecord = 1 // 语音聊天
    //: case oneKeyGreet = 2
    case oneKeyGreet = 2 // 一键发送打招呼语音
}

//: class VoiceDownloadTaskModel: NSObject {
class RawTaskModel: NSObject {
    //: var taskId: String = ""
    var taskId: String = ""
    /// 下载地址
    //: var downloadUri: String = ""
    var downloadUri: String = ""
    /// 输出路径zip包
    //: var zipFilePath: String = ""
    var zipFilePath: String = ""
    /// 已下载大小
    //: var currentSize: Double = 0.0
    var currentSize: Double = 0.0
    /// 总大小
    //: var totalSize: Double = 0.0
    var totalSize: Double = 0.0
    /// 下载状态
    //: var taskStatus: DownloadTaskStatus = .none
    var taskStatus: ControlFreeWidthNumber = .none
    /// 解压后路径
    //: var unZipFilePath: String = ""
    var unZipFilePath: String = ""
    /// 下载区分标识回调
    //: var taskTypeId: DownloadTaskTypeID = .undefined
    var taskTypeId: EqualComparable = .undefined
    /// 语音id
    //: var vid: String = ""
    var vid: String = ""
    /// 时长
    //: var length = 0
    var length = 0
    /// 输出流
    //: var stream: OutputStream?
    var stream: OutputStream?
    /// session
    //: var dataTask: URLSessionDataTask?
    var dataTask: URLSessionDataTask?

    /// 获取语音下载model
    //: class func getVoiceModel(_ tempModel: VoxReactiveCompatible) -> VoiceDownloadTaskModel {
    class func everyModel(_ tempModel: VoxReactiveCompatible) -> RawTaskModel {
        //: let model = VoiceDownloadTaskModel()
        let model = RawTaskModel()
        //: model.taskTypeId = .chatRecord
        model.taskTypeId = .chatRecord
        //: model.taskId = tempModel.msgId
        model.taskId = tempModel.msgId
        //: model.zipFilePath = tempModel.db_filePath
        model.zipFilePath = tempModel.db_filePath
        //: if tempModel.db_voiceUri.contains("http://") || tempModel.db_voiceUri.contains("https://") {
        if tempModel.db_voiceUri.contains((String(str_userTitle))) || tempModel.db_voiceUri.contains((str_topData.replacingOccurrences(of: "ok", with: "h") + "s://")) {
            //: model.downloadUri = tempModel.db_voiceUri
            model.downloadUri = tempModel.db_voiceUri
            //: } else {
        } else {
            //: let otherParams = String(format: "platform=iphone&version=%@&packageId=%@&bundleId=%@", MacroDefine.getAppNetVersion(), MacroDefine.getPackageID(), MacroDefine.getAppBundle())
            let otherParams = String(format: String(bytes: str_modeValue.reversed(), encoding: .utf8)!, UserMacroDefine.takeHome(), UserMacroDefine.dateId(), UserMacroDefine.explainBundle())
            //: model.downloadUri = String(format: "%@%@&%@", TalkingRequestAddrTool.share.serverUrlStr, tempModel.db_voiceUri, otherParams)
            model.downloadUri = String(format: "%@%@&%@", SendUpReactiveCompatible.share.serverUrlStr, tempModel.db_voiceUri, otherParams)

            //: model.currentSize = VoiceDownloadTaskModel.getFileSize(path: tempModel.db_filePath)
            model.currentSize = RawTaskModel.getBack(path: tempModel.db_filePath)
        }
        //: return model
        return model
    }

    /// 获取一键打招呼model
    //: class func getOneKeyGreetModel(_ voiceInfo: [String: Any]) -> VoiceDownloadTaskModel {
    class func get(_ voiceInfo: [String: Any]) -> RawTaskModel {
        //: let model = VoiceDownloadTaskModel()
        let model = RawTaskModel()
        //: model.taskTypeId = .oneKeyGreet
        model.taskTypeId = .oneKeyGreet
        //: model.downloadUri = voiceInfo["url"] as? String ?? ""
        model.downloadUri = voiceInfo[(String(str_nextText))] as? String ?? ""
        //: model.vid = voiceInfo["id"] as? String ?? ""
        model.vid = voiceInfo["id"] as? String ?? ""
        //: model.length = Int(voiceInfo["length"] as? String ?? "0") ?? 0
        model.length = Int(voiceInfo[(str_frameTitle.replacingOccurrences(of: "level", with: "le"))] as? String ?? "0") ?? 0
        //: let fileName = (model.downloadUri as NSString).lastPathComponent
        let fileName = (model.downloadUri as NSString).lastPathComponent
        //: let pathName = fileName.replacingOccurrences(of: ".", with: "_")
        let pathName = fileName.replacingOccurrences(of: ".", with: "_")
        //: let timeInterval = Int(Date().timeIntervalSince1970)
        let timeInterval = Int(Date().timeIntervalSince1970)
        //: model.zipFilePath = "\(GestureCacheDefine.getChatVoicePath())\(pathName)\(timeInterval)"
        model.zipFilePath = "\(GestureCacheDefine.sprechstimme())\(pathName)\(timeInterval)"
        //: return model
        return model
    }
}

//: extension VoiceDownloadTaskModel {
extension RawTaskModel {
    /// 获取文件大小
    /// - Parameter path: 文件完整路径
    /// - Returns: 文件size
    //: class func getFileSize(path: String) -> Double {
    class func getBack(path: String) -> Double {
        //: let fileManager = FileManager.default
        let fileManager = FileManager.default
        //: guard fileManager.fileExists(atPath: path) else {
        guard fileManager.fileExists(atPath: path) else {
            //: return 0.0
            return 0.0
        }
        //: do {
        do {
            //: let attr = try fileManager.attributesOfItem(atPath: path)
            let attr = try fileManager.attributesOfItem(atPath: path)
            //: let fileSize = attr[FileAttributeKey.size] as! UInt64
            let fileSize = attr[FileAttributeKey.size] as! UInt64
            //: return Double(fileSize)
            return Double(fileSize)
            //: } catch {
        } catch {
            //: printLog(message: "getFileSize error :\(error)")
            printLog(message: (String(str_leadingViewName.suffix(4)) + String(str_firstData.suffix(6)) + "e error :") + "\(error)")
            //: return 0.0
            return 0.0
        }
    }

    /// 获取文件本地存储路径
    /// - Returns: 路径
    //: func getDownloadZipFilePath() -> String {
    func themePlace() -> String {
        //: guard self.zipFilePath.isEmpty else {
        guard self.zipFilePath.isEmpty else {
            //: return self.zipFilePath
            return self.zipFilePath
        }
        //: let timeInterval = Int(Date().timeIntervalSince1970)
        let timeInterval = Int(Date().timeIntervalSince1970)
        //: return "\(GestureCacheDefine.getChatVoicePath())\(self.taskId)\(timeInterval)"
        return "\(GestureCacheDefine.sprechstimme())\(self.taskId)\(timeInterval)"
    }
}
