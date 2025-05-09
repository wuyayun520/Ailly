
//: Declare String Begin

/*: "party/enter" :*/
fileprivate let str_rawTitle:String = "statusrty"

/*: "roomId" :*/
fileprivate let str_progressValue:[UInt8] = [0x64,0x49,0x6d,0x6f,0x6f,0x72]

/*: "party/start" :*/
fileprivate let str_modeTitle:[Character] = ["p","a","r","t","y","/","s","t","a","r","t"]

/*: "party/close" :*/
fileprivate let str_modelData:String = "pacentert"

/*: "party/changeRoom" :*/
fileprivate let str_statusContent:String = "party/chtext label self"
fileprivate let str_userData:[Character] = ["a","n","g","e","R","o","o","m"]

/*: "beforeRoomId" :*/
fileprivate let str_sizeText:[UInt8] = [0x64,0x49,0x6d,0x6f,0x6f,0x52,0x65,0x72,0x6f,0x66,0x65,0x62]

/*: "party/mikeList" :*/
fileprivate let str_willHiddenResultData:[Character] = ["p","a","r","t","y","/","m","i"]
fileprivate let str_whiteName:String = "equal first equal itemkeList"

/*: "uid" :*/
fileprivate let str_stretchData:[UInt8] = [0x64,0x69,0x75]

/*: "type" :*/
fileprivate let str_bindData:[UInt8] = [0x80,0x85,0x7c,0x71]

fileprivate func soundMode(value num: UInt8) -> UInt8 {
    let value = Int(num) - 12
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "pos" :*/
fileprivate let str_confirmContent:[UInt8] = [0x8a,0x95,0x89]

private func atomicMagnitude85(content num: UInt8) -> UInt8 {
    return num ^ 250
}

/*: "toPos" :*/
fileprivate let str_viewData:[Character] = ["t","o","P","o","s"]

/*: "party/mike" :*/
fileprivate let str_headName:String = "partdate"
fileprivate let str_controlName:String = "class model to/mike"

/*: "party/adminMike" :*/
fileprivate let str_moreName:String = "let video text equal selfparty/"
fileprivate let str_addData:[Character] = ["n","M","i","k","e"]

/*: "party/list" :*/
fileprivate let str_toText:[Character] = ["p","a","r","t","y","/","l","i","s"]
fileprivate let str_dataName:String = "title"

/*: "party/onlineNum" :*/
fileprivate let str_countText:[Character] = ["p","a","r","t","y","/","o","n"]
fileprivate let str_bagTitle:[Character] = ["l","i"]
fileprivate let str_statusRestoreData:[Character] = ["n","e","N","u","m"]

/*: "party/onlineList" :*/
fileprivate let str_topName:String = "partitle"
fileprivate let str_managerTitle:String = "mini hiddenList"

/*: "party/mute" :*/
fileprivate let str_textData:[Character] = ["p","a","r","t","y","/","m","u","t","e"]

/*: "targetUid" :*/
fileprivate let str_makeErrorName:[UInt8] = [0xd,0x18,0xb,0x1e,0x1c,0xd,0x2c,0x10,0x1d]

private func comeThrough(status num: UInt8) -> UInt8 {
    return num ^ 121
}

/*: "duration" :*/
fileprivate let str_playerNameTitle:[UInt8] = [0x6e,0x6f,0x69,0x74,0x61,0x72,0x75,0x64]

/*: "party/unmute" :*/
fileprivate let str_dataTitleValue:[Character] = ["p","a","r","t","y","/","u"]
fileprivate let str_sectionTitle:String = "nwithute"

/*: "party/kickout" :*/
fileprivate let str_toValue:String = "paevent"
fileprivate let str_labTitle:String = "ckmodelut"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  SurgeryReqTool.swift
//  BotanicBreeze
//
//  Created by DouXiu on 2024/9/19.
//

/// 语聊房相关接口
//: class TalkingVoiceRoomReqTool {
class SurgeryReqTool {
    /// 开启语聊房
    /// - Parameters:
    ///   - roomId: 房间Id（nil：创建房间；有值：进入房间）
    ///   - completion: 回调
    //: class func req_voiceRoomCheck(roomId: String? = nil, completion: @escaping FinishBlock) {
    class func nextEqual(roomId: String? = nil, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = WithTitleThen()
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.showErrorStatusBar = false
        reqModel.showErrorStatusBar = false
        //: if let roomId = roomId {
        if let roomId = roomId { // 进入房间
            //: reqModel.requestPath = "party/enter"
            reqModel.requestPath = (str_rawTitle.replacingOccurrences(of: "status", with: "pa") + "/enter")
            //: reqModel.params = ["roomId": roomId]
            reqModel.params = [String(bytes: str_progressValue.reversed(), encoding: .utf8)!: roomId]
            //: } else {
        } else { // 创建房间
            //: reqModel.requestPath = "party/start"
            reqModel.requestPath = (String(str_modeTitle))
        }
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_nextTitle.photoLive(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 房主销毁语聊房
    //: class func req_voiceRoomClose(roomId: String, completion: FinishBlock? = nil) {
    class func giftAdd(roomId: String, completion: FinishBlock? = nil) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = WithTitleThen()
        //: reqModel.requestPath = "party/close"
        reqModel.requestPath = (str_modelData.replacingOccurrences(of: "center", with: "r") + "y/close")
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.params = ["roomId": roomId]
        reqModel.params = [String(bytes: str_progressValue.reversed(), encoding: .utf8)!: roomId]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_nextTitle.photoLive(model: reqModel) { succeed, result, errorModel in
            //: completion?(succeed, result, errorModel)
            completion?(succeed, result, errorModel)
        }
    }

    /// 切房
    /// - Parameters:
    ///   - roomId: 当前进入房间Id
    ///   - beforeRoomId: 上一房间Id
    ///   - completion: 回调
    //: class func req_voiceRoomSwitch(roomId: String, beforeRoomId: String, completion: @escaping FinishBlock) {
    class func withCompletion(roomId: String, beforeRoomId: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = WithTitleThen()
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.requestPath = "party/changeRoom"
        reqModel.requestPath = (String(str_statusContent.prefix(8)) + String(str_userData))
        //: reqModel.params = ["roomId": roomId, "beforeRoomId": beforeRoomId]
        reqModel.params = [String(bytes: str_progressValue.reversed(), encoding: .utf8)!: roomId, String(bytes: str_sizeText.reversed(), encoding: .utf8)!: beforeRoomId]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_nextTitle.photoLive(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 获取语聊房麦位列表
    //: class func req_getMikeList(roomId: String, completion: @escaping (_ data: [TalkingMikeListItemModel]) -> Void) {
    class func screenCompletion(roomId: String, completion: @escaping (_ data: [WithTransformable]) -> Void) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = WithTitleThen()
        //: reqModel.requestPath = "party/mikeList"
        reqModel.requestPath = (String(str_willHiddenResultData) + String(str_whiteName.suffix(6)))
        //: reqModel.params = ["roomId": roomId]
        reqModel.params = [String(bytes: str_progressValue.reversed(), encoding: .utf8)!: roomId]
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: GJ.startRequest(model: reqModel) { _, result, _ in
        kLet_nextTitle.photoLive(model: reqModel) { _, result, _ in
            //: var dataArr: [TalkingMikeListItemModel] = []
            var dataArr: [WithTransformable] = []
            //: guard let arr = result as? [[String: Any]] else {
            guard let arr = result as? [[String: Any]] else {
                //: completion(dataArr)
                completion(dataArr)
                //: return
                return
            }
            //: if let datas = Array<TalkingMikeListItemModel>.deserialize(from: arr as? Array) as? [TalkingMikeListItemModel] {
            if let datas = Array<WithTransformable>.deserialize(from: arr as? Array) as? [WithTransformable] {
                //: dataArr.append(contentsOf: datas)
                dataArr.append(contentsOf: datas)
            }
            //: completion(dataArr)
            completion(dataArr)
        }
    }

    /// 房主/观众 语音房操作请求
    /// - Parameters:
    ///   - roomId: 房间Id
    ///   - uid: 用户Id
    ///   - type: 1 上麦，2 下麦，3 切麦，4 开麦，5 闭麦
    ///   - position: 当前麦位
    ///   - toPos: 目标麦位（切麦传值）
    ///   - completion: 回调
    //: class func req_changeMike(roomId: String, uid: Int, type: Int, position: Int, toPos: Int? = nil, completion: @escaping FinishBlock) {
    class func consultingServiceCompletion(roomId: String, uid: Int, type: Int, position: Int, toPos: Int? = nil, completion: @escaping FinishBlock) {
        //: var params: [String: Any] = ["roomId": roomId, "uid": uid, "type": type, "pos": position]
        var params: [String: Any] = [String(bytes: str_progressValue.reversed(), encoding: .utf8)!: roomId, String(bytes: str_stretchData.reversed(), encoding: .utf8)!: uid, String(bytes: str_bindData.map{soundMode(value: $0)}, encoding: .utf8)!: type, String(bytes: str_confirmContent.map{atomicMagnitude85(content: $0)}, encoding: .utf8)!: position]
        //: if type == 3 {
        if type == 3 {
            //: params["toPos"] = toPos
            params[(String(str_viewData))] = toPos
        }
        //: let reqModel = TalkingRequestModel()
        let reqModel = WithTitleThen()
        //: reqModel.requestPath = "party/mike"
        reqModel.requestPath = (str_headName.replacingOccurrences(of: "date", with: "y") + String(str_controlName.suffix(5)))
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.params = params
        reqModel.params = params
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_nextTitle.photoLive(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 房主对他人操作请求
    /// - Parameters:
    ///   - roomId: 房间Id
    ///   - uid: 用户Id
    ///   - type: 1 锁麦，2 解锁麦，3 踢下麦，4 开麦，5 闭麦
    ///   - position: 麦位
    ///   - completion: 回调
    //: class func req_adminChangeMike(roomId: String, uid: Int, type: Int, position: Int, completion: @escaping FinishBlock) {
    class func infoAppear(roomId: String, uid: Int, type: Int, position: Int, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = WithTitleThen()
        //: reqModel.requestPath = "party/adminMike"
        reqModel.requestPath = (String(str_moreName.suffix(6)) + "admi" + String(str_addData))
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.params = ["roomId": roomId, "uid": uid, "type": type, "pos": position]
        reqModel.params = [String(bytes: str_progressValue.reversed(), encoding: .utf8)!: roomId, String(bytes: str_stretchData.reversed(), encoding: .utf8)!: uid, String(bytes: str_bindData.map{soundMode(value: $0)}, encoding: .utf8)!: type, String(bytes: str_confirmContent.map{atomicMagnitude85(content: $0)}, encoding: .utf8)!: position]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_nextTitle.photoLive(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// Party 列表
    /// - Parameters:
    ///   - completion: 回调
    //: class func req_partyList(params: Dictionary<String, Any>, completion: @escaping FinishBlock) {
    class func ladenLive(params: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = WithTitleThen()
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.requestPath = "party/list"
        reqModel.requestPath = (String(str_toText) + str_dataName.replacingOccurrences(of: "title", with: "t"))
        //: reqModel.params = params
        reqModel.params = params
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_nextTitle.photoLive(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 查询房间在线人数
    /// - Parameters:
    ///   - roomId: 房间Id
    ///   - completion: 回调
    //: class func req_partyOnlineNum(roomId: String, completion: @escaping FinishBlock) {
    class func numbereractionKuomintang(roomId: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = WithTitleThen()
        //: reqModel.requestPath = "party/onlineNum"
        reqModel.requestPath = (String(str_countText) + String(str_bagTitle) + String(str_statusRestoreData))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = ["roomId": roomId]
        reqModel.params = [String(bytes: str_progressValue.reversed(), encoding: .utf8)!: roomId]
        //: reqModel.showErrorStatusBar = false
        reqModel.showErrorStatusBar = false
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_nextTitle.photoLive(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 查询房间在线用户列表
    /// - Parameters:
    ///   - roomId: 房间Id
    ///   - completion: 回调
    //: class func req_partyOnlineList(roomId: String, completion: @escaping FinishBlock) {
    class func nameSlate(roomId: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = WithTitleThen()
        //: reqModel.requestPath = "party/onlineList"
        reqModel.requestPath = (str_topName.replacingOccurrences(of: "title", with: "t") + "y/online" + String(str_managerTitle.suffix(4)))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = ["roomId": roomId]
        reqModel.params = [String(bytes: str_progressValue.reversed(), encoding: .utf8)!: roomId]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_nextTitle.photoLive(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 禁言
    //: class func req_VoiceRoomMute(targetUid: String, roomID: String, duration: String, completion: @escaping FinishBlock) {
    class func imageName(targetUid: String, roomID: String, duration: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = WithTitleThen()
        //: reqModel.requestPath = "party/mute"
        reqModel.requestPath = (String(str_textData))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = ["targetUid": targetUid, "roomId": roomID, "duration": duration]
        reqModel.params = [String(bytes: str_makeErrorName.map{comeThrough(status: $0)}, encoding: .utf8)!: targetUid, String(bytes: str_progressValue.reversed(), encoding: .utf8)!: roomID, String(bytes: str_playerNameTitle.reversed(), encoding: .utf8)!: duration]

        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_nextTitle.photoLive(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 解禁
    //: class func req_VoiceRoomUnMute(targetUid: String, roomID: String, completion: @escaping FinishBlock) {
    class func diningRoom(targetUid: String, roomID: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = WithTitleThen()
        //: reqModel.requestPath = "party/unmute"
        reqModel.requestPath = (String(str_dataTitleValue) + str_sectionTitle.replacingOccurrences(of: "with", with: "m"))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = ["targetUid": targetUid, "roomId": roomID]
        reqModel.params = [String(bytes: str_makeErrorName.map{comeThrough(status: $0)}, encoding: .utf8)!: targetUid, String(bytes: str_progressValue.reversed(), encoding: .utf8)!: roomID]

        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_nextTitle.photoLive(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 踢出房间
    //: class func req_VoiceRoomKickout(targetUid: String, roomId: String, completion: @escaping FinishBlock) {
    class func imageCompletion(targetUid: String, roomId: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = WithTitleThen()
        //: reqModel.requestPath = "party/kickout"
        reqModel.requestPath = (str_toValue.replacingOccurrences(of: "event", with: "rt") + "y/ki" + str_labTitle.replacingOccurrences(of: "model", with: "o"))
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.params = ["targetUid": targetUid, "roomId": roomId]
        reqModel.params = [String(bytes: str_makeErrorName.map{comeThrough(status: $0)}, encoding: .utf8)!: targetUid, String(bytes: str_progressValue.reversed(), encoding: .utf8)!: roomId]

        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_nextTitle.photoLive(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }
}
