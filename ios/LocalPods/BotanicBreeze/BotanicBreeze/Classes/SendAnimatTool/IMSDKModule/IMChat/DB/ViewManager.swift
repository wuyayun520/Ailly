
//: Declare String Begin

/*: ".db" :*/
fileprivate let str_lengthName:[Character] = [".","d","b"]

/*: "WCDB数据库打开失败：userId为空。" :*/
fileprivate let str_labValue:String = "WCDB数据lab self main user constraint"
fileprivate let str_tableTitle:String = "serId\u{4e3a}空。"

/*: "WCDB/ :*/
fileprivate let str_modelUpMakeData:String = "model appear tab makeWCDB/"

/*: "WCDB数据库打开失败： :*/
fileprivate let str_viewStatusValue:String = "WConB"
fileprivate let str_frameName:String = "max"

/*: "WCDB数据库成功打开： :*/
fileprivate let str_centerName:String = "WCDB数view type self view"
fileprivate let str_makeUserData:String = "title"

/*: "WCDB数据库成功关闭。" :*/
fileprivate let str_appValue:String = "WCDB数据库\u{6210}\u{529f}"
fileprivate let str_tableName:String = "\u{5173}\u{95ed}。"

/*: "WCDB数据库：创建表失败。error： :*/
fileprivate let str_roomName:[Character] = ["W","C","D","B","数","据","库","：","\u{521b}","建","\u{8868}","\u{5931}","\u{8d25}"]
fileprivate let str_nurseContent:String = "。error：shared index true equal height"

/*: ." :*/
fileprivate let str_topValue:String = "transform"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ViewManager.swift
//  BotanicBreeze
//
//  Created by DouXiu on 2024/8/29.
//

//: import UIKit
import UIKit

//: import WCDBSwift
import WCDBSwift

//: class WCDBManager: NSObject {
class ViewManager: NSObject {
    //: static let shared = WCDBManager()
    static let shared = ViewManager()
    /// 数据库
    //: var database: Database?
    var database: Database?
    /// 数据库名称
    //: private var wcdbName: String {
    private var wcdbName: String {
        //: return EqualThen.share.loginUserMode.userID + ".db"
        return EqualThen.share.loginUserMode.userID + ".db"
    }

    //: private override init() {
    override private init() {
        //: super.init()
        super.init()
        //: self.connectDatabase()
        self.connectFromSubdataBase()
    }

    /// 连接数据库
    //: func connectDatabase() {
    func connectFromSubdataBase() {
        //: closeDatabase()
        busyDatabase()

        //: guard !EqualThen.share.loginUserMode.userID.isEmpty else {
        guard !EqualThen.share.loginUserMode.userID.isEmpty else {
            //: DeepKeyTamperReactiveCompatible.indexView(msg: "WCDB数据库打开失败：userId为空。")
            DeepKeyTamperReactiveCompatible.indexView(msg: (String(str_labValue.prefix(6)) + "\u{5e93}打开失败：u" + str_tableTitle))
            //: return
            return
        }
        //: guard let fileURL = try? FileManager.default
        guard let fileURL = try? FileManager.default
            //: .url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: true)
            .url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: true)
            //: .appendingPathComponent("WCDB/\(wcdbName)") else { return }
            .appendingPathComponent((String(str_modelUpMakeData.suffix(5))) + "\(wcdbName)") else { return }
        //: database = Database(at: fileURL)
        database = Database(at: fileURL)
        //: guard database?.canOpen == true else {
        guard database?.canOpen == true else {
            //: DeepKeyTamperReactiveCompatible.indexView(msg: "WCDB数据库打开失败：\(fileURL.path)")
            DeepKeyTamperReactiveCompatible.indexView(msg: (str_viewStatusValue.replacingOccurrences(of: "on", with: "D") + "\u{6570}据库打开失败" + str_frameName.replacingOccurrences(of: "max", with: "：")) + "\(fileURL.path)")
            //: return
            return
        }
        //: printLog(message: "WCDB数据库成功打开：\(fileURL.path)")
        printLog(message: (String(str_centerName.prefix(5)) + "据库成功打开" + str_makeUserData.replacingOccurrences(of: "title", with: "：")) + "\(fileURL.path)")
        //: createTables()
        contemporary()
    }

    /// 关闭数据库
    //: private func closeDatabase() {
    private func busyDatabase() {
        //: guard database != nil else { return }
        guard database != nil else { return }
        //: database?.close()
        database?.close()
        //: try? database?.close(onClosed: { [weak self] in
        try? database?.close(onClosed: { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.database = nil
            self.database = nil
            //: printLog(message: "WCDB数据库成功关闭。")
            printLog(message: (str_appValue + str_tableName))
            //: })
        })
    }
}

// MARK: - 创建表

//: extension WCDBManager {
extension ViewManager {
    /// 创建表
    //: private func createTables() {
    private func contemporary() {
        //: do {
        do {
            // 用户信息表
            //: try database?.create(table: WCDBUserInfoTableName, of: WCDBUserInfoTable.self)
            try database?.create(table: kLet_timeName, of: UpInfoTable.self)
            // 语音消息表
            //: try database?.create(table: VoxReactiveCompatibleName, of: VoxReactiveCompatible.self)
            try database?.create(table: kLet_sessionName, of: VoxReactiveCompatible.self)
            //: } catch {
        } catch {
            //: DeepKeyTamperReactiveCompatible.indexView(msg: "WCDB数据库：创建表失败。error：\(error).")
            DeepKeyTamperReactiveCompatible.indexView(msg: (String(str_roomName) + String(str_nurseContent.prefix(7))) + "\(error).")
        }
    }
}
