
//: Declare String Begin

/*: "DBUserVoiceTable" :*/
fileprivate let str_ofPlayerMaskData:String = "DBUsererror self at true"
fileprivate let str_buttonAddName:String = "Voicname will image"

/*: "msgId" :*/
fileprivate let str_centerValue:[Character] = ["m","s","g","I","d"]

/*: "toUid" :*/
fileprivate let str_viewMagnitudeName:String = "toUidmanager normal"

/*: "senderId" :*/
fileprivate let str_fileUserText:String = "sumnd"

/*: "audioSandbox" :*/
fileprivate let str_dataViewTitle:String = "add status make letaudioS"
fileprivate let str_enterValue:String = "avaluebox"

/*: "audioLength" :*/
fileprivate let str_makeName:String = "audioLeon share"
fileprivate let str_normalValue:String = "ngdatah"

/*: "audioData" :*/
fileprivate let str_viewValue:[Character] = ["a","u","d","i","o","D","a","t","a"]

/*: "audioUri" :*/
fileprivate let str_hiMessageContent:[Character] = ["a"]
fileprivate let str_sizeName:String = "udioUrielse attractive name"

/*: "isRead" :*/
fileprivate let str_listViewContent:[Character] = ["i"]
fileprivate let str_textValue:[Character] = ["s","R","e","a","d"]

/*: "WCDB表 :*/
fileprivate let str_hiddenData:[Character] = ["W","C","D","B","表"]

/*: : 批量插入数据失败。error： :*/
fileprivate let str_ofShadowText:[Character] = [":"," ","批","量","插","入","数"]
fileprivate let str_equalData:String = "据失\u{8d25}。e"
fileprivate let str_hiddenName:[Character] = ["r","r","o","r","\u{ff1a}"]

/*: ." :*/
fileprivate let str_managerColorName:String = "."

/*: : 更新数据失败。error： :*/
fileprivate let str_mPleaseData:[Character] = [":"," ","更","新","\u{6570}","据","失","败","。","e","r","r","o","r","："]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  VoxReactiveCompatible.swift
//  BotanicBreeze
//
//  Created by DouXiu on 2024/8/29.
//

//: import UIKit
import UIKit

//: import WCDBSwift
import WCDBSwift

/// 表名
//: let VoxReactiveCompatibleName = "DBUserVoiceTable"
let kLet_sessionName = (String(str_ofPlayerMaskData.prefix(6)) + String(str_buttonAddName.prefix(4)) + "eTable")
//: @objcMembers
@objcMembers
//: public final class VoxReactiveCompatible: NSObject, TableCodable {
public final class VoxReactiveCompatible: NSObject, TableCodable {
    /// 消息Id【主键】
    //: public var msgId: String = ""
    public var msgId: String = ""
    /// 语音长度
    //: public var db_audioLength: String = ""
    public var db_audioLength: String = ""
    /// 缓存路径
    //: public var db_filePath: String = ""
    public var db_filePath: String = ""
    /// 下载路径
    //: var db_voiceUri: String = ""
    var db_voiceUri: String = ""
    /// 发送方
    //: var db_senduid: String = ""
    var db_senduid: String = ""
    /// 接收方
    //: var db_touid: String = ""
    var db_touid: String = ""
    /// 是否已读; 0未读，1已读
    //: var db_isRead: String = ""
    var db_isRead: String = ""
    /// 下载状态
    //: var downloadStatus: String = ""
    var downloadStatus: String = ""

    //: public enum CodingKeys: String, CodingTableKey {
    public enum CodingKeys: String, CodingTableKey {
        //: public typealias Root = VoxReactiveCompatible
        public typealias Root = VoxReactiveCompatible
        //: case msgId
        case msgId
        //: case db_voiceUri
        case db_voiceUri
        //: case db_filePath
        case db_filePath
        //: case db_senduid
        case db_senduid
        //: case db_touid
        case db_touid
        //: case db_isRead
        case db_isRead
        //: case db_audioLength
        case db_audioLength
        //: case downloadStatus
        case downloadStatus

        //: public static let objectRelationalMapping = TableBinding(CodingKeys.self) {
        public static let objectRelationalMapping = TableBinding(CodingKeys.self) {
            //: BindColumnConstraint(msgId, isPrimary: true)
            BindColumnConstraint(msgId, isPrimary: true)
        }
    }
}

// MARK: - 增、删、改、查

//: extension VoxReactiveCompatible {
extension VoxReactiveCompatible {
    /// 插入单条数据
    /// - Parameter dic: 字典
    /// - Returns: 模型
    //: @discardableResult
    @discardableResult
    //: public class func db_inserVoiceMsgToDB(_ dic: [AnyHashable: Any]) -> VoxReactiveCompatible {
    public class func pointView(_ dic: [AnyHashable: Any]) -> VoxReactiveCompatible {
        //: let cache = VoxReactiveCompatible()
        let cache = VoxReactiveCompatible()
        //: cache.msgId = dic["msgId"] as? String ?? ""
        cache.msgId = dic[(String(str_centerValue))] as? String ?? ""
        //: cache.db_touid = String(dic["toUid"] as? Int ?? 0)
        cache.db_touid = String(dic[(String(str_viewMagnitudeName.prefix(5)))] as? Int ?? 0)
        //: cache.db_senduid = dic["senderId"] as? String ?? ""
        cache.db_senduid = dic[(str_fileUserText.replacingOccurrences(of: "sum", with: "se") + "erId")] as? String ?? ""
        //: cache.db_filePath = dic["audioSandbox"] as? String ?? ""
        cache.db_filePath = dic[(String(str_dataViewTitle.suffix(6)) + str_enterValue.replacingOccurrences(of: "value", with: "nd"))] as? String ?? ""
        //: cache.db_audioLength = dic["audioLength"] as? String ?? ""
        cache.db_audioLength = dic[(String(str_makeName.prefix(7)) + str_normalValue.replacingOccurrences(of: "data", with: "t"))] as? String ?? ""
        //: if dic.keys.contains("audioData") {
        if dic.keys.contains((String(str_viewValue))) {
            //: cache.db_voiceUri = dic["audioData"] as? String ?? ""
            cache.db_voiceUri = dic[(String(str_viewValue))] as? String ?? ""
        }
        //: if cache.db_voiceUri.isEmpty {
        if cache.db_voiceUri.isEmpty {
            //: if dic.keys.contains("audioUri") {
            if dic.keys.contains((String(str_hiMessageContent) + String(str_sizeName.prefix(7)))) {
                //: cache.db_voiceUri = dic["audioUri"] as? String ?? ""
                cache.db_voiceUri = dic[(String(str_hiMessageContent) + String(str_sizeName.prefix(7)))] as? String ?? ""
            }
        }
        //: cache.db_isRead = dic["isRead"] as? String ?? ""
        cache.db_isRead = dic[(String(str_listViewContent) + String(str_textValue))] as? String ?? ""
        //: cache.downloadStatus = "0"
        cache.downloadStatus = "0"
        //: db_updateVoiceMsg(cache)
        pastTarget(cache)
        //: return cache
        return cache
    }

    /// 插入单条数据
    /// - Parameter voiceMsg: 数据模型
    //: class func db_insertVoiceMsg(_ voiceMsg: VoxReactiveCompatible) {
    class func nearList(_ voiceMsg: VoxReactiveCompatible) {
        //: VoxReactiveCompatible.db_insertVoiceMsgs([voiceMsg])
        VoxReactiveCompatible.playerMsgs([voiceMsg])
    }

    /// 插入多条数据
    /// - Parameter voiceMsgs: 数据数组
    //: class func db_insertVoiceMsgs(_ voiceMsgs: [VoxReactiveCompatible]) {
    class func playerMsgs(_ voiceMsgs: [VoxReactiveCompatible]) {
        //: try? WCDBManager.shared.database?.run(transaction: { _ in
        try? ViewManager.shared.database?.run(transaction: { _ in
            //: do {
            do {
                //: try WCDBManager.shared.database?.insert(voiceMsgs, intoTable: VoxReactiveCompatibleName)
                try ViewManager.shared.database?.insert(voiceMsgs, intoTable: kLet_sessionName)
                //: } catch {
            } catch {
                //: DeepKeyTamperReactiveCompatible.indexView(msg: "WCDB表\(VoxReactiveCompatibleName): 批量插入数据失败。error：\(error).")
                DeepKeyTamperReactiveCompatible.indexView(msg: (String(str_hiddenData)) + "\(kLet_sessionName)" + (String(str_ofShadowText) + str_equalData + String(str_hiddenName)) + "\(error).")
            }
            //: })
        })
    }

    /// 查询单个数据
    /// - Parameter msgId: 消息id
    /// - Returns: 模型
    //: public class func db_getVoiceMsg(with msgId: String) -> VoxReactiveCompatible? {
    public class func destroy(with msgId: String) -> VoxReactiveCompatible? {
        //: if let voiceMsgs = VoxReactiveCompatible.db_getVoiceMsgs(with: [msgId]) {
        if let voiceMsgs = VoxReactiveCompatible.totaleraction(with: [msgId]) {
            //: return voiceMsgs.first
            return voiceMsgs.first
        }
        //: return nil
        return nil
    }

    /// 查询多条数据
    /// - Parameter msgIds: id数据
    /// - Returns: 数据数组
    //: class func db_getVoiceMsgs(with msgIds: [String]) -> [VoxReactiveCompatible]? {
    class func totaleraction(with msgIds: [String]) -> [VoxReactiveCompatible]? {
        //: do {
        do {
            //: let condition = VoxReactiveCompatible.Properties.msgId.in(msgIds)
            let condition = VoxReactiveCompatible.Properties.msgId.in(msgIds)
            //: let voiceMsgs: [VoxReactiveCompatible]? = try WCDBManager.shared.database?.getObjects(on: VoxReactiveCompatible.Properties.all, fromTable: VoxReactiveCompatibleName, where: condition)
            let voiceMsgs: [VoxReactiveCompatible]? = try ViewManager.shared.database?.getObjects(on: VoxReactiveCompatible.Properties.all, fromTable: kLet_sessionName, where: condition)
            //: return voiceMsgs
            return voiceMsgs
            //: } catch {
        } catch {
            //: return nil
            return nil
        }
    }

    /// 更新单个数据【如果没有则插入】
    /// - Parameter voiceMsg: 数据模型
    //: class func db_updateVoiceMsg(_ voiceMsg: VoxReactiveCompatible) {
    class func pastTarget(_ voiceMsg: VoxReactiveCompatible) {
        //: try? WCDBManager.shared.database?.run(transaction: { _ in
        try? ViewManager.shared.database?.run(transaction: { _ in
            // 数据库中已存在，则更新数据
            //: if VoxReactiveCompatible.db_getVoiceMsg(with: voiceMsg.msgId) != nil {
            if VoxReactiveCompatible.destroy(with: voiceMsg.msgId) != nil {
                //: do {
                do {
                    //: let condition = VoxReactiveCompatible.Properties.msgId == voiceMsg.msgId
                    let condition = VoxReactiveCompatible.Properties.msgId == voiceMsg.msgId
                    //: try WCDBManager.shared.database?.update(table: VoxReactiveCompatibleName,
                    try ViewManager.shared.database?.update(table: kLet_sessionName,
                                                            //: on: VoxReactiveCompatible.Properties.all,
                                                            on: VoxReactiveCompatible.Properties.all,
                                                            //: with: voiceMsg,
                                                            with: voiceMsg,
                                                            //: where: condition)
                                                            where: condition)
                    //: } catch {
                } catch {
                    //: DeepKeyTamperReactiveCompatible.indexView(msg: "WCDB表\(VoxReactiveCompatibleName): 更新数据失败。error：\(error).")
                    DeepKeyTamperReactiveCompatible.indexView(msg: (String(str_hiddenData)) + "\(kLet_sessionName)" + (String(str_mPleaseData)) + "\(error).")
                }

                //: } else {
            } else {
                // 数据库中不存在，则插入数据
                //: VoxReactiveCompatible.db_insertVoiceMsg(voiceMsg)
                VoxReactiveCompatible.nearList(voiceMsg)
            }
            //: })
        })
    }

    /// 更新单个数据【如果没有则插入】
    /// - Parameters:
    ///   - msgId: 消息Id
    ///   - status: 状态
    ///   - filePath: 路径
    //: class func db_updateVoiceMsg(msgId: String, status: String = "", filePath: String = "") {
    class func toAGreaterExtent(msgId: String, status: String = "", filePath: String = "") {
        //: guard let dbModel = VoxReactiveCompatible.db_getVoiceMsg(with: msgId) else { return }
        guard let dbModel = VoxReactiveCompatible.destroy(with: msgId) else { return }
        //: if status.isEmpty == false {
        if status.isEmpty == false {
            //: dbModel.downloadStatus = status
            dbModel.downloadStatus = status
        }
        //: if filePath.isEmpty == false {
        if filePath.isEmpty == false {
            //: dbModel.db_filePath = filePath
            dbModel.db_filePath = filePath
        }
        //: VoxReactiveCompatible.db_updateVoiceMsg(dbModel)
        VoxReactiveCompatible.pastTarget(dbModel)
    }

    /// 根据消息Id删除数据
    /// - Parameter msgId: 消息Id
    //: class func db_deleteVoiceMsg(msgId: String) {
    class func titleId(msgId: String) {
        //: try? WCDBManager.shared.database?.run(transaction: { _ in
        try? ViewManager.shared.database?.run(transaction: { _ in
            //: let condition = VoxReactiveCompatible.Properties.msgId == msgId
            let condition = VoxReactiveCompatible.Properties.msgId == msgId
            //: try? WCDBManager.shared.database?.delete(fromTable: VoxReactiveCompatibleName,
            try? ViewManager.shared.database?.delete(fromTable: kLet_sessionName,
                                                     //: where: condition)
                                                     where: condition)
            //: })
        })
    }

    /// 根据userId、toUid删除数据
    /// - Parameters:
    ///   - userId: 用户id
    ///   - toUid: 对方id
    //: class func db_deleteVoiceMsg(_ userId: String, toUid: String) {
    class func anvilName(_ userId: String, toUid: String) {
        //: try? WCDBManager.shared.database?.run(transaction: { _ in
        try? ViewManager.shared.database?.run(transaction: { _ in
            //: let condition = VoxReactiveCompatible.Properties.db_senduid == userId && VoxReactiveCompatible.Properties.db_touid == toUid
            let condition = VoxReactiveCompatible.Properties.db_senduid == userId && VoxReactiveCompatible.Properties.db_touid == toUid
            //: try? WCDBManager.shared.database?.delete(fromTable: VoxReactiveCompatibleName,
            try? ViewManager.shared.database?.delete(fromTable: kLet_sessionName,
                                                     //: where: condition)
                                                     where: condition)
            //: })
        })
    }
}
