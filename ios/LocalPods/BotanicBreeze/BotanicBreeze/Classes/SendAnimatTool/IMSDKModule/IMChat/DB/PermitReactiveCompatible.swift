
//: Declare String Begin

/*: "serialQueue" :*/
fileprivate let str_viewClueText:String = "serialQulast to list up"
fileprivate let str_makeData:String = "EUE"

/*: "fromUids" :*/
fileprivate let str_trimName:[UInt8] = [0x51,0x5d,0x5a,0x58,0x40,0x54,0x4f,0x5e]

fileprivate func toEqual(image num: UInt8) -> UInt8 {
    let value = Int(num) + 21
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//  PermitReactiveCompatible.swift
//  AbroadTalking
//
//  Created by DouXiu on 2024/6/12.
//

//: import UIKit
import UIKit

/// 每次请求最大数
//: let PER_REQUEST_COUNT_LIMIT = 50
let kLet_needData = 50

//: @objcMembers
@objcMembers
//: public class PermitReactiveCompatible: NSObject {
public class PermitReactiveCompatible: NSObject {
    /// 消息列表还未初始化时，先把要请求的用户信息缓存；待消息列表初始化后，一次性发送请求；
    //: var needReqUidsSet: Set<String>?
    var needReqUidsSet: Set<String>?
    /// 已经请求过的用户ids（防止重复请求）
    //: private var reqedUidsSet = Set<String>()
    private var reqedUidsSet = Set<String>()

    /// singleton
    //: private static var _instance: PermitReactiveCompatible?
    private static var _instance: PermitReactiveCompatible?
    //: class func shared() -> PermitReactiveCompatible {
    class func ginseng() -> PermitReactiveCompatible {
        //: guard _instance != nil else {
        guard _instance != nil else {
            //: _instance = PermitReactiveCompatible()
            _instance = PermitReactiveCompatible()
            // 添加退出账号通知
            //: NotificationCenter.default.addObserver(_instance!,
            NotificationCenter.default.addObserver(_instance!,
                                                   //: selector: #selector(accountLogout),
                                                   selector: #selector(withLogout),
                                                   //: name: DID_LOGIN_OUT_SUCCESS_NOTIFICATION,
                                                   name: kLet_useName,
                                                   //: object: nil)
                                                   object: nil)
            //: return _instance!
            return _instance!
        }
        //: return _instance!
        return _instance!
    }

    //: override init() {
    override init() {
        //: super.init()
        super.init()
        //: needReqUidsSet = Set<String>()
        needReqUidsSet = Set<String>()
    }

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    /// 销毁单例
    //: class func destroy() {
    class func close() {
        //: DispatchQueue.main.async {
        DispatchQueue.main.async {
            //: if _instance != nil {
            if _instance != nil {
                //: _instance = nil
                _instance = nil
            }
        }
    }

    /// 退出登录
    //: @objc private func accountLogout() {
    @objc private func withLogout() {
        //: PermitReactiveCompatible.destroy()
        PermitReactiveCompatible.close()
    }
}

// MARK: - 【获取用户信息、在线状态】

//: extension PermitReactiveCompatible {
extension PermitReactiveCompatible {
    /// 获取用户消息
    /// - Parameters:
    ///   - userIdsArr: 用户ids
    ///   - completion: 回调
    //: class func cache_getUserInfo(with userIdsArr: [String], completion: @escaping ([SoulCacheModel]?, Error?) -> Void) {
    class func appCompletion(with userIdsArr: [String], completion: @escaping ([SoulCacheModel]?, Error?) -> Void) {
        // 数量过多，wcdb的where语句会因过长而报错，所以做分页
        //: var newUserIdsArr = userIdsArr
        var newUserIdsArr = userIdsArr
        //: if PermitReactiveCompatible.shared().needReqUidsSet != nil {
        if PermitReactiveCompatible.ginseng().needReqUidsSet != nil { // 合并去重
            //: newUserIdsArr = Array(PermitReactiveCompatible.shared().needReqUidsSet!.union(userIdsArr))
            newUserIdsArr = Array(PermitReactiveCompatible.ginseng().needReqUidsSet!.union(userIdsArr))
            //: PermitReactiveCompatible.shared().needReqUidsSet = nil
            PermitReactiveCompatible.ginseng().needReqUidsSet = nil
        }

        //: let limitSum = newUserIdsArr.count
        let limitSum = newUserIdsArr.count
        //: guard limitSum > 0 else {
        guard limitSum > 0 else {
            //: completion(nil, nil)
            completion(nil, nil)
            //: return
            return
        }

        //: var location = 0
        var location = 0
        //: let pageSize = PER_REQUEST_COUNT_LIMIT
        let pageSize = kLet_needData
        //: repeat {
        repeat {
            //: let len = min(pageSize, limitSum - location)
            let len = min(pageSize, limitSum - location)
            //: let range = NSRange(location: location, length: len)
            let range = NSRange(location: location, length: len)
            //: let subArr: [String] = Array(newUserIdsArr[range.location ..< range.location + range.length])
            let subArr: [String] = Array(newUserIdsArr[range.location ..< range.location + range.length])
            //: inner_getUserInfo(with: subArr, completion: completion)
            stochastic(with: subArr, completion: completion)
            //: location += len
            location += len

            //: } while location < limitSum
        } while location < limitSum
    }

    /// 获取会话用户的在线状态
    /// - Parameters:
    ///   - userArr: 用户ids
    ///   - completion: 回调
    //: class func cache_getChatUserStatus(with userArr: [String], completion: @escaping ([[String: Any]]?, Error?) -> Void) {
    class func sewingRoom(with userArr: [String], completion: @escaping ([[String: Any]]?, Error?) -> Void) {
        //: guard userArr.count > 0 else {
        guard userArr.count > 0 else {
            //: DispatchQueue.main.async {
            DispatchQueue.main.async {
                //: completion(nil, nil)
                completion(nil, nil)
            }
            //: return
            return
        }

        //: let Maxindex = 50
        let Maxindex = 50
        //: let serialQueue = DispatchQueue(label: "serialQueue")
        let serialQueue = DispatchQueue(label: (String(str_viewClueText.prefix(8)) + str_makeData.lowercased()))
        //: var alldata = [[String: Any]]()
        var alldata = [[String: Any]]()
        //: let finalArray = stride(from: 0, to: userArr.endIndex, by: Maxindex).map {
        let finalArray = stride(from: 0, to: userArr.endIndex, by: Maxindex).map {
            //: Array(userArr[$0 ..< min($0 + Maxindex, userArr.count)])
            Array(userArr[$0 ..< min($0 + Maxindex, userArr.count)])
        }
        //: serialQueue.async {
        serialQueue.async {
            //: let sema = DispatchSemaphore(value: 0)
            let sema = DispatchSemaphore(value: 0)
            //: for item in finalArray {
            for item in finalArray {
                //: let requestUidsStr = item.map { String(describing: $0) }.joined(separator: ",")
                let requestUidsStr = item.map { String(describing: $0) }.joined(separator: ",")
                //: DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                    //: PostulationReactiveCompatible.req_queryStatus(toUids: requestUidsStr) { _, list in
                    PostulationReactiveCompatible.tillMessage(toUids: requestUidsStr) { _, list in
                        //: defer { sema.signal() }
                        defer { sema.signal() }
                        //: alldata.append(contentsOf: list ?? [])
                        alldata.append(contentsOf: list ?? [])
                    }
                }
                //: sema.wait()
                sema.wait()
            }
            //: DispatchQueue.main.async {
            DispatchQueue.main.async {
                //: completion(alldata, nil)
                completion(alldata, nil)
            }
        }
    }

    /// 根据TX消息体获取语音模型
    /// - Parameter message: TX消息体
    //: public class func cache_getAudioDB(message: V2TIMMessage) -> VoxReactiveCompatible {
    public class func currency(message: V2TIMMessage) -> VoxReactiveCompatible {
        //: let key = TUISocialChatManager.checkPrimaryKey(withMsgModel: message)
        let key = TUISocialChatManager.checkPrimaryKey(withMsgModel: message)
        //: var cacheWrap = VoxReactiveCompatible.db_getVoiceMsg(with: key)
        var cacheWrap = VoxReactiveCompatible.destroy(with: key)
        //: if cacheWrap == nil {
        if cacheWrap == nil {
            //: let info = TUISocialChatManager.packageDict(withTXMessage: message)
            let info = TUISocialChatManager.packageDict(withTXMessage: message)
            //: cacheWrap = VoxReactiveCompatible.db_inserVoiceMsgToDB(info)
            cacheWrap = VoxReactiveCompatible.pointView(info)
        }
        //: return cacheWrap!
        return cacheWrap!
    }
}

// MARK: - 操作数据库【数据库更新尽量放在此处中间层】

//: extension PermitReactiveCompatible {
extension PermitReactiveCompatible {
    /// 获取用户数据（从数据库取）
    /// - Parameter targetId: id
    /// - Returns: 用户信息model
    //: @discardableResult
    @discardableResult
    //: class func cache_getCachedUserInfo(targetId: String) -> SoulCacheModel? {
    class func targetAppear(targetId: String) -> SoulCacheModel? {
        //: return WCDBUserInfoTable.db_getUserInfo(with: targetId)
        return UpInfoTable.explainView(with: targetId)
    }

    /// 更新数据库【用户模型】，并发送通知
    /// - Parameter userInfo: 用户信息model
    //: class func cache_updateMsgUserInfoAndPostNotif(with userInfo: SoulCacheModel?) {
    class func communication(with userInfo: SoulCacheModel?) {
        //: guard let userInfo = userInfo, !userInfo.uid.isEmpty else { return }
        guard let userInfo = userInfo, !userInfo.uid.isEmpty else { return }
        //: let model = PermitReactiveCompatible.cache_getCachedUserInfo(targetId: userInfo.uid)
        let model = PermitReactiveCompatible.targetAppear(targetId: userInfo.uid)
        // 自定义字段需要赋值，防止被覆盖
        //: userInfo.isHaveSession = model?.isHaveSession ?? false
        userInfo.isHaveSession = model?.isHaveSession ?? false
        //: userInfo.intimateTime = Int(Date().timeIntervalSince1970)
        userInfo.intimateTime = Int(Date().timeIntervalSince1970)
        //: userInfo.readReceiptTime = model?.readReceiptTime ?? 0
        userInfo.readReceiptTime = model?.readReceiptTime ?? 0
        //: WCDBUserInfoTable.db_updateUserInfo(userInfo)
        UpInfoTable.sumerchange(userInfo)
        //: DispatchQueue.main.async {
        DispatchQueue.main.async {
            //: NotificationCenter.default.post(name: USER_INFO_MSG_LIST_NOTIFICATION, object: [userInfo.uid: userInfo])
            NotificationCenter.default.post(name: kLet_barTitle, object: [userInfo.uid: userInfo])
        }
    }

    /// 更新数据库【会话】
    /// - Parameter targetId: 用户Id
    //: class func cache_updateSessionAndPostNotif(with targetId: String) {
    class func outsideUserWith(with targetId: String) {
        //: guard let model = PermitReactiveCompatible.cache_getCachedUserInfo(targetId: targetId) else { return }
        guard let model = PermitReactiveCompatible.targetAppear(targetId: targetId) else { return }
        //: guard model.isHaveSession == false else { return }
        guard model.isHaveSession == false else { return }
        //: model.isHaveSession = true
        model.isHaveSession = true
        //: WCDBUserInfoTable.db_updateUserInfo(model)
        UpInfoTable.sumerchange(model)
        //: DispatchQueue.main.async {
        DispatchQueue.main.async {
            //: NotificationCenter.default.post(name: USER_INFO_MSG_LIST_NOTIFICATION, object: [targetId: model])
            NotificationCenter.default.post(name: kLet_barTitle, object: [targetId: model])
        }
    }

    /// 更新数据库【亲密值】
    /// - Parameters:
    ///   - targetId: 用户Id
    ///   - intimate: 亲密值
    ///   - currTime: 当前更新时间
    //: class func cache_updateIntimate(with targetId: String, intimate: Int, currTime: Int) {
    class func closePlayer(with targetId: String, intimate: Int, currTime: Int) {
        //: guard let model = PermitReactiveCompatible.cache_getCachedUserInfo(targetId: targetId) else { return }
        guard let model = PermitReactiveCompatible.targetAppear(targetId: targetId) else { return }
        //: model.intimate = intimate
        model.intimate = intimate
        //: model.intimateTime = currTime
        model.intimateTime = currTime
        //: WCDBUserInfoTable.db_updateUserInfo(model)
        UpInfoTable.sumerchange(model)
    }

    /// 更新数据库【对方已读消息回执时间戳】
    /// - Parameter time: 时间戳
    //: class func cache_updateReadReceiptTime(with targetId: String, time: Int) {
    class func moveConstraint(with targetId: String, time: Int) {
        //: guard let model = PermitReactiveCompatible.cache_getCachedUserInfo(targetId: targetId) else { return }
        guard let model = PermitReactiveCompatible.targetAppear(targetId: targetId) else { return }
        //: model.readReceiptTime = time
        model.readReceiptTime = time
        //: WCDBUserInfoTable.db_updateUserInfo(model)
        UpInfoTable.sumerchange(model)
    }

    /// 删除DB中记录的信息
    /// - Parameter targetUid: 用户id
    //: class func db_removeRecord(with targetUid: String) {
    class func countIn(with targetUid: String) {
        //: WCDBUserInfoTable.db_deleteUserInfo(with: targetUid)
        UpInfoTable.popAir(with: targetUid)
        //: PermitReactiveCompatible.shared().reqedUidsSet.remove(targetUid)
        PermitReactiveCompatible.ginseng().reqedUidsSet.remove(targetUid)
    }
}

// MARK: - Private Func

//: extension PermitReactiveCompatible {
extension PermitReactiveCompatible {
    /// 获取用户消息
    /// - Parameters:
    ///   - userIdsArr: 用户ids
    ///   - completion: 回调
    //: private class func inner_getUserInfo(with userIdsArr: [String], completion: @escaping ([SoulCacheModel]?, Error?) -> Void) {
    private class func stochastic(with userIdsArr: [String], completion: @escaping ([SoulCacheModel]?, Error?) -> Void) {
        //: let userModels = WCDBUserInfoTable.db_getUserInfos(with: userIdsArr)
        let userModels = UpInfoTable.starWith(with: userIdsArr)
        //: var noDBUidArr = [String]()
        var noDBUidArr = [String]()
        // 过滤db或者请求中的数据
        //: for uid in userIdsArr where !userModels.contains(where: { $0.uid == uid }) {
        for uid in userIdsArr where !userModels.contains(where: { $0.uid == uid }) {
            //: if PermitReactiveCompatible.shared().reqedUidsSet.contains(uid) == false {
            if PermitReactiveCompatible.ginseng().reqedUidsSet.contains(uid) == false {
                //: noDBUidArr.append(uid)
                noDBUidArr.append(uid)
            }
        }
        //: completion(userModels, nil)
        completion(userModels, nil)
        //: if !noDBUidArr.isEmpty {
        if !noDBUidArr.isEmpty {
            //: PermitReactiveCompatible.inner_requestUserInfoList(with: noDBUidArr)
            PermitReactiveCompatible.inner(with: noDBUidArr)
        }
    }

    /// 请求用户消息列表
    /// - Parameters:
    ///   - withUids: 用户Ids
    ///   - completion: 回调
    //: private class func inner_requestUserInfoList(with userIdsArr: [String]) {
    private class func inner(with userIdsArr: [String]) {
        //: let requestUidsStr = userIdsArr.joined(separator: ",")
        let requestUidsStr = userIdsArr.joined(separator: ",")
        //: if requestUidsStr.isEmpty { return }
        if requestUidsStr.isEmpty { return }
        // 加入已请求Set，防止重复请求
        //: PermitReactiveCompatible.shared().reqedUidsSet = PermitReactiveCompatible.shared().reqedUidsSet.union(userIdsArr)
        PermitReactiveCompatible.ginseng().reqedUidsSet = PermitReactiveCompatible.ginseng().reqedUidsSet.union(userIdsArr)

        // 请求用户消息列表
        //: PostulationReactiveCompatible.req_refreshMsgUserListInfo(param: ["fromUids": requestUidsStr]) { succeed, dataArr in
        PostulationReactiveCompatible.memberImage(param: [String(bytes: str_trimName.map{toEqual(image: $0)}, encoding: .utf8)!: requestUidsStr]) { succeed, dataArr in
            //: guard succeed else {
            guard succeed else { // 失败还原数据
                //: PermitReactiveCompatible.shared().reqedUidsSet.subtract(userIdsArr)
                PermitReactiveCompatible.ginseng().reqedUidsSet.subtract(userIdsArr)
                //: return
                return
            }
            // 更新数据库
            //: PermitReactiveCompatible.updateMsgUserInfoTable(userInfoArr: dataArr)
            PermitReactiveCompatible.copernicanSystem(userInfoArr: dataArr)
            // 发送通知
            //: var retInfoDict: [String: SoulCacheModel] = [:]
            var retInfoDict: [String: SoulCacheModel] = [:]
            //: dataArr.forEach { model in
            for model in dataArr {
                //: retInfoDict[model.uid] = model
                retInfoDict[model.uid] = model
            }
            //: if !retInfoDict.isEmpty {
            if !retInfoDict.isEmpty {
                //: DispatchQueue.main.async {
                DispatchQueue.main.async {
                    //: NotificationCenter.default.post(name: USER_INFO_MSG_LIST_NOTIFICATION, object: retInfoDict)
                    NotificationCenter.default.post(name: kLet_barTitle, object: retInfoDict)
                }
            }
        }
    }

    /// 更新用户信息表
    /// - Parameter userInfoArr: 用户model
    //: private class func updateMsgUserInfoTable(userInfoArr: [SoulCacheModel]) {
    private class func copernicanSystem(userInfoArr: [SoulCacheModel]) {
        //: for aWrap in userInfoArr {
        for aWrap in userInfoArr {
            //: WCDBUserInfoTable.db_updateUserInfo(aWrap)
            UpInfoTable.sumerchange(aWrap)
        }
    }
}
