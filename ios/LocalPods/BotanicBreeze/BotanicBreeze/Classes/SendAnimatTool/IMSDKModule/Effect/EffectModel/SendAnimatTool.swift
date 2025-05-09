
//: Declare String Begin

/*: "unarchive failure in init" :*/
fileprivate let str_byTitle:[Character] = ["u","n","a","r","c","h","i","v","e"," "]
fileprivate let str_colorShowContent:[Character] = ["f","a","i","l","u","r","e"," ","i"]
fileprivate let str_menuPhotoVideoData:String = "var origin bag letn init"

/*: "App" :*/
fileprivate let str_voiceTotalervalText:String = "Appfalse all estimated a let"

/*: "privateChatEffect%@" :*/
fileprivate let str_numberName:[Character] = ["p","r","i","v","a","t"]
fileprivate let str_ofData:[Character] = ["e","C","h","a","t","E","f","f","e","c","t","%","@"]

/*: "extra" :*/
fileprivate let str_angleTitle:[Character] = ["e","x","t","r","a"]

/*: "user" :*/
fileprivate let str_topData:[Character] = ["u","s","e","r"]

/*: "%@" :*/
fileprivate let str_styleName:[Character] = ["%","@"]

/*: "id" :*/
fileprivate let str_toolData:String = "ipush"

/*: "gift" :*/
fileprivate let str_rowRequestValue:[Character] = ["g","i","f","t"]

/*: "fromUid" :*/
fileprivate let str_modelLabName:String = "F"
fileprivate let str_informationName:String = "search clickromUid"

/*: "fromNickname" :*/
fileprivate let str_colorName:[Character] = ["f","r","o","m","N","i","c","k"]
fileprivate let str_makeTitle:[Character] = ["n","a","m","e"]

/*: "name" :*/
fileprivate let str_buttonContent:[Character] = ["n","a","m","e"]

/*: "fromHeadPic" :*/
fileprivate let str_colorData:String = "status selffromH"

/*: "icon" :*/
fileprivate let str_messageName:[Character] = ["i","c","o","n"]

/*: "pid" :*/
fileprivate let str_rawManagerData:String = "lengthd"

/*: "num" :*/
fileprivate let str_bigTitle:String = "iconm"

/*: "pname" :*/
fileprivate let str_withValue:String = "pnamparty"

/*: "giftPic" :*/
fileprivate let str_equalData:String = "log block whitegiftPic"

/*: "comboNum" :*/
fileprivate let str_labelData:String = "caddmbadd"
fileprivate let str_appTitle:String = "error inputNum"

/*: "iosEffect" :*/
fileprivate let str_modelData:String = "ibutton"
fileprivate let str_greetPathSubValue:String = "else startsEffect"

/*: "showType" :*/
fileprivate let str_borderTitle:String = "executehow"

/*: "animationTimes" :*/
fileprivate let str_countValue:String = "aniaddtio"
fileprivate let str_errorStyleContent:String = "view user subnTimes"

/*: "iosVapEffect" :*/
fileprivate let str_bottomValue:String = "view leading coin foriosV"
fileprivate let str_bringName:String = "FECT"

/*: "msgInfo" :*/
fileprivate let str_theName:String = "msgInfor view"
fileprivate let str_originData:[Character] = ["f","o"]

/*: "mfBean" :*/
fileprivate let str_intervalName:[UInt8] = [0xb6,0xbd,0x99,0xbe,0xba,0xb5]

private func beginCall(actual num: UInt8) -> UInt8 {
    return num ^ 219
}

/*: "toUser" :*/
fileprivate let str_renderData:String = "room"
fileprivate let str_pathData:String = "oUsermodel jump touch view"

/*: "uid" :*/
fileprivate let str_targetData:[Character] = ["u","i","d"]

/*: "giftNum" :*/
fileprivate let str_sayName:[Character] = ["g"]
fileprivate let str_lockName:[Character] = ["i","f","t","N","u","m"]

/*: "nickname" :*/
fileprivate let str_indexName:String = "viewick"

/*: "Send to %@" :*/
fileprivate let str_effectGenreName:[Character] = ["S","e","n","d"," ","t","o"," ","%"]
fileprivate let str_profileName:String = "@"

/*: "Send to All Numbers" :*/
fileprivate let str_tableLabelText:String = "Send target icon label var as"
fileprivate let str_cellText:String = "use let source domainl Numb"
fileprivate let str_collectionName:String = "erpick"

/*: "headPic" :*/
fileprivate let str_viewActionValue:[Character] = ["h","e","a","d","P","i","c"]

/*: "LiveGift_%@" :*/
fileprivate let str_replacementExplainValue:[Character] = ["L","i","v","e","G","i","f","t","_","%","@"]

/*: "toUid" :*/
fileprivate let str_upTitle:String = "toUidview value status view"

/*: "PartyGift_%@" :*/
fileprivate let str_rowName:String = "change let else imageParty"
fileprivate let str_viewTitle:String = "text manager else group selfGift_%@"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  SendAnimatTool.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/3/6.
//

/// 私聊 动效管理  会话id->礼物动效数组  本地存起来

//: import UIKit
import UIKit

//: @objc class AbTalkingPrivateChatAnimatTool: NSObject {
@objc class SendAnimatTool: NSObject {
    //: var cachDict = NSMutableDictionary(capacity: 0)
    var cachDict = NSMutableDictionary(capacity: 0)

    //: @objc static let shared = AbTalkingPrivateChatAnimatTool()
    @objc static let shared = SendAnimatTool()

    //: override private init() {
    override private init() {
        //: super.init()
        super.init()
        //: readAnimatData()
        straitAndNarrow()
    }

    //: override func copy() -> Any { return self }
    override func copy() -> Any { return self }
    //: override func mutableCopy() -> Any { return self }
    override func mutableCopy() -> Any { return self }
}

//: @objc extension AbTalkingPrivateChatAnimatTool {
@objc extension SendAnimatTool {
    /// 初始化,读取缓存归档的文件
    //: func readAnimatData() {
    func straitAndNarrow() {
        //: if #available(iOS 11.0, *) {
        if #available(iOS 11.0, *) {
            //: do {
            do {
                //: let data = try Data(contentsOf: URL(fileURLWithPath: getPrivateChatAnimtoFile()))
                let data = try Data(contentsOf: URL(fileURLWithPath: labFile()))
                //: if let dict: NSDictionary = try NSKeyedUnarchiver.unarchiveTopLevelObjectWithData(data) as? NSDictionary {
                if let dict: NSDictionary = try NSKeyedUnarchiver.unarchiveTopLevelObjectWithData(data) as? NSDictionary {
                    //: self.cachDict = NSMutableDictionary(dictionary: dict)
                    self.cachDict = NSMutableDictionary(dictionary: dict)
                }
                //: } catch {
            } catch {
                //: printLog(message: "unarchive failure in init")
                printLog(message: (String(str_byTitle) + String(str_colorShowContent) + String(str_menuPhotoVideoData.suffix(6))))
            }
            //: } else {
        } else {
            //: let dict: NSDictionary? = NSKeyedUnarchiver.unarchiveObject(withFile: self.getPrivateChatAnimtoFile()) as? NSDictionary
            let dict: NSDictionary? = NSKeyedUnarchiver.unarchiveObject(withFile: self.labFile()) as? NSDictionary
            //: if dict != nil {
            if dict != nil {
                //: self.cachDict = NSMutableDictionary(dictionary: dict!)
                self.cachDict = NSMutableDictionary(dictionary: dict!)
            }
        }
    }

    /// 存储缓存
    //: func saveAnimatDataToFile() {
    func overAnimat() {
        //: if #available(iOS 11.0, *) {
        if #available(iOS 11.0, *) {
            //: do {
            do {
                //: let data = try NSKeyedArchiver.archivedData(withRootObject: self.cachDict, requiringSecureCoding: true)
                let data = try NSKeyedArchiver.archivedData(withRootObject: self.cachDict, requiringSecureCoding: true)
                //: try data.write(to: URL(fileURLWithPath: getPrivateChatAnimtoFile()))
                try data.write(to: URL(fileURLWithPath: labFile()))
                //: } catch {
            } catch {
                //: printLog(message: error)
                printLog(message: error)
            }

            //: } else {
        } else {
            //: NSKeyedArchiver.archiveRootObject(self.cachDict, toFile: self.getPrivateChatAnimtoFile())
            NSKeyedArchiver.archiveRootObject(self.cachDict, toFile: self.labFile())
        }
    }

    //: func getPrivateChatAnimtoFile() -> String {
    func labFile() -> String {
        //: let documentFilePath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first ?? ""
        let documentFilePath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first ?? ""
        //: let appPath = (documentFilePath as NSString).appendingPathComponent("App")
        let appPath = (documentFilePath as NSString).appendingPathComponent((String(str_voiceTotalervalText.prefix(3))))

        //: let fm = FileManager.default
        let fm = FileManager.default
        //: if fm.fileExists(atPath: appPath) == false {
        if fm.fileExists(atPath: appPath) == false {
            //: try? FileManager.default.createDirectory(atPath: appPath, withIntermediateDirectories: true)
            try? FileManager.default.createDirectory(atPath: appPath, withIntermediateDirectories: true)
        }

        //: let name = String(format: "privateChatEffect%@", EqualThen.share.loginUserMode.userID)
        let name = String(format: (String(str_numberName) + String(str_ofData)), EqualThen.share.loginUserMode.userID)
        //: let filePath = (appPath as NSString).appendingPathComponent(name)
        let filePath = (appPath as NSString).appendingPathComponent(name)
        //: return filePath
        return filePath
    }

    /// 根据会话获取需要播放的礼物动效数组,同时会删除
    //: func getConverCacheGiftAnimat(tagetId: String) -> NSMutableArray {
    func find(tagetId: String) -> NSMutableArray {
        //: let data: NSMutableArray? = self.cachDict.object(forKey: tagetId) as? NSMutableArray
        let data: NSMutableArray? = self.cachDict.object(forKey: tagetId) as? NSMutableArray
        //: let modelArray = NSMutableArray(capacity: 0)
        let modelArray = NSMutableArray(capacity: 0)
        //: if data != nil {
        if data != nil {
            //: for dict in data! {
            for dict in data! {
                //: if let giftModel = JSONDeserializer<TalkingGiftMsgAnimatModel>.deserializeFrom(dict: dict as? [String: Any], designatedPath: nil) {
                if let giftModel = JSONDeserializer<StatusMeasurable>.deserializeFrom(dict: dict as? [String: Any], designatedPath: nil) {
                    //: modelArray.add(giftModel)
                    modelArray.add(giftModel)
                }
            }
            //: self.cachDict.removeObject(forKey: tagetId)
            self.cachDict.removeObject(forKey: tagetId)
        }
        //: self.saveAnimatDataToFile()
        self.overAnimat()
        //: return modelArray
        return modelArray
    }

    /// 删除会话,同步删除缓存
    //: func removeConversionAnimat(targetID: String) {
    func scaleOfMeasurement(targetID: String) {
        //: if !targetID.isEmptyString, self.cachDict.object(forKey: targetID) != nil {
        if !targetID.isEmptyString, self.cachDict.object(forKey: targetID) != nil {
            //: self.cachDict.removeObject(forKey: targetID)
            self.cachDict.removeObject(forKey: targetID)
            //: self.saveAnimatDataToFile()
            self.overAnimat()
        }
    }

    /// 收到礼物消息处理
    //: func disposeReceiveGiftMsg(giftMessageDic: NSDictionary) {
    func receiveOf(giftMessageDic: NSDictionary) {
        //: DispatchQueue.main.async {
        DispatchQueue.main.async {
            //: let extraDict: Dictionary? = giftMessageDic["extra"] as? [String: Any]
            let extraDict: Dictionary? = giftMessageDic[(String(str_angleTitle))] as? [String: Any]
            //: let user: NSDictionary? = giftMessageDic["user"] as? NSDictionary
            let user: NSDictionary? = giftMessageDic[(String(str_topData))] as? NSDictionary
            //: let targetId = String(format: "%@", user?["id"] as! CVarArg)
            let targetId = String(format: "%@", user?["id"] as! CVarArg)

            //: if extraDict == nil || extraDict?.keys.contains("gift") == false {
            if extraDict == nil || extraDict?.keys.contains((String(str_rowRequestValue))) == false {
                //: return
                return
            }
            //: if let roomGiftModel = JSONDeserializer<TalkingGiftChatMsgAnimatModel>.deserializeFrom(dict: extraDict!["gift"] as? [String: Any], designatedPath: nil) {
            if let roomGiftModel = JSONDeserializer<ProgressMeasurable>.deserializeFrom(dict: extraDict![(String(str_rowRequestValue))] as? [String: Any], designatedPath: nil) {
                //: var effect = roomGiftModel.iosEffect
                var effect = roomGiftModel.iosEffect
                //: if effect.count == 0 {
                if effect.count == 0 {
                    //: effect = roomGiftModel.effect
                    effect = roomGiftModel.effect
                }

                //: let tempGiftModel = NSMutableArray()
                let tempGiftModel = NSMutableArray()
                //: let tempDictM = NSMutableArray()
                let tempDictM = NSMutableArray()

                // 帝王礼物特效
                //: if roomGiftModel.iosEmperorEffect?.count ?? 0 > 0 {
                if roomGiftModel.iosEmperorEffect?.count ?? 0 > 0 {
                    // 开头动效
                    //: let giftArr: NSMutableArray? = roomGiftModel.iosEmperorEffect as? NSMutableArray
                    let giftArr: NSMutableArray? = roomGiftModel.iosEmperorEffect as? NSMutableArray
                    //: giftArr?.insert(roomGiftModel.iosEffect, at: 0)
                    giftArr?.insert(roomGiftModel.iosEffect, at: 0)

                    //: let tempArr = NSMutableArray()
                    let tempArr = NSMutableArray()
                    //: let tempDicArr = NSMutableArray()
                    let tempDicArr = NSMutableArray()

                    //: for giftStr in giftArr! {
                    for giftStr in giftArr! {
                        //: let dictM = NSMutableDictionary(capacity: 0)
                        let dictM = NSMutableDictionary(capacity: 0)
                        //: dictM["fromUid"] = targetId
                        dictM[(str_modelLabName.lowercased() + String(str_informationName.suffix(6)))] = targetId
                        //: dictM["fromNickname"] = user?["name"]
                        dictM[(String(str_colorName) + String(str_makeTitle))] = user?[(String(str_buttonContent))]
                        //: dictM["fromHeadPic"] = user?["icon"]
                        dictM[(String(str_colorData.suffix(5)) + "eadPic")] = user?[(String(str_messageName))]
                        //: dictM["pid"] = "0" // 缓存兼容
                        dictM[(str_rawManagerData.replacingOccurrences(of: "length", with: "pi"))] = "0" // 缓存兼容
                        //: dictM["num"] = (roomGiftModel.giftNum)
                        dictM[(str_bigTitle.replacingOccurrences(of: "icon", with: "nu"))] = (roomGiftModel.giftNum)
                        //: dictM["pname"] = roomGiftModel.name
                        dictM[(str_withValue.replacingOccurrences(of: "party", with: "e"))] = roomGiftModel.name
                        //: dictM["giftPic"] = roomGiftModel.imgPreview
                        dictM[(String(str_equalData.suffix(7)))] = roomGiftModel.imgPreview
                        //: dictM["comboNum"] = (roomGiftModel.comboNum)
                        dictM[(str_labelData.replacingOccurrences(of: "add", with: "o") + String(str_appTitle.suffix(3)))] = (roomGiftModel.comboNum)
                        //: dictM["iosEffect"] = giftStr
                        dictM[(str_modelData.replacingOccurrences(of: "button", with: "o") + String(str_greetPathSubValue.suffix(7)))] = giftStr
                        //: dictM["showType"] = (roomGiftModel.showType)
                        dictM[(str_borderTitle.replacingOccurrences(of: "execute", with: "s") + "Type")] = (roomGiftModel.showType)
                        //: dictM["animationTimes"] = "1"
                        dictM[(str_countValue.replacingOccurrences(of: "add", with: "ma") + String(str_errorStyleContent.suffix(6)))] = "1"

                        //: if let giftModel = JSONDeserializer<TalkingGiftMsgAnimatModel>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                        if let giftModel = JSONDeserializer<StatusMeasurable>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                            //: tempArr.add(giftModel)
                            tempArr.add(giftModel)
                            //: tempDicArr.add(dictM)
                            tempDicArr.add(dictM)
                        }
                    }
                    // 循环播放次数
                    //: var animationTimes = 1
                    var animationTimes = 1
                    //: if roomGiftModel.animationTimes > 0 {
                    if roomGiftModel.animationTimes > 0 {
                        //: animationTimes = roomGiftModel.animationTimes
                        animationTimes = roomGiftModel.animationTimes
                        //: } else {
                    } else {
                        //: animationTimes = roomGiftModel.giftNum
                        animationTimes = roomGiftModel.giftNum
                    }
                    //: let tempGiftArr = tempArr
                    let tempGiftArr = tempArr
                    //: for _ in 0..<animationTimes {
                    for _ in 0 ..< animationTimes {
                        //: tempGiftModel.addObjects(from: tempGiftArr as! [Any])
                        tempGiftModel.addObjects(from: tempGiftArr as! [Any])
                        //: tempDictM.addObjects(from: tempDicArr as! [Any])
                        tempDictM.addObjects(from: tempDicArr as! [Any])
                    }
                    //: } else {
                } else {
                    //: let dictM = NSMutableDictionary(capacity: 0)
                    let dictM = NSMutableDictionary(capacity: 0)

                    //: dictM["fromUid"] = targetId
                    dictM[(str_modelLabName.lowercased() + String(str_informationName.suffix(6)))] = targetId
                    //: dictM["fromNickname"] = user?["name"]
                    dictM[(String(str_colorName) + String(str_makeTitle))] = user?[(String(str_buttonContent))]
                    //: dictM["fromHeadPic"] = user?["icon"]
                    dictM[(String(str_colorData.suffix(5)) + "eadPic")] = user?[(String(str_messageName))]

                    //: dictM["pid"] = roomGiftModel.giftId
                    dictM[(str_rawManagerData.replacingOccurrences(of: "length", with: "pi"))] = roomGiftModel.giftId
                    //: dictM["num"] = (roomGiftModel.giftNum)
                    dictM[(str_bigTitle.replacingOccurrences(of: "icon", with: "nu"))] = (roomGiftModel.giftNum)
                    //: dictM["pname"] = roomGiftModel.name
                    dictM[(str_withValue.replacingOccurrences(of: "party", with: "e"))] = roomGiftModel.name
                    //: dictM["giftPic"] = roomGiftModel.imgPreview
                    dictM[(String(str_equalData.suffix(7)))] = roomGiftModel.imgPreview
                    //: dictM["comboNum"] = (roomGiftModel.comboNum)
                    dictM[(str_labelData.replacingOccurrences(of: "add", with: "o") + String(str_appTitle.suffix(3)))] = (roomGiftModel.comboNum)
                    //: dictM["iosEffect"] = effect
                    dictM[(str_modelData.replacingOccurrences(of: "button", with: "o") + String(str_greetPathSubValue.suffix(7)))] = effect
                    //: dictM["iosVapEffect"] = roomGiftModel.iosVapEffect
                    dictM[(String(str_bottomValue.suffix(4)) + "apEf" + str_bringName.lowercased())] = roomGiftModel.iosVapEffect

                    //: dictM["showType"] = (roomGiftModel.showType)
                    dictM[(str_borderTitle.replacingOccurrences(of: "execute", with: "s") + "Type")] = (roomGiftModel.showType)
                    //: if roomGiftModel.animationTimes > 0 {
                    if roomGiftModel.animationTimes > 0 {
                        //: dictM["animationTimes"] = (roomGiftModel.animationTimes)
                        dictM[(str_countValue.replacingOccurrences(of: "add", with: "ma") + String(str_errorStyleContent.suffix(6)))] = (roomGiftModel.animationTimes)
                        //: } else {
                    } else {
                        //: dictM["animationTimes"] = dictM["num"]
                        dictM[(str_countValue.replacingOccurrences(of: "add", with: "ma") + String(str_errorStyleContent.suffix(6)))] = dictM[(str_bigTitle.replacingOccurrences(of: "icon", with: "nu"))]
                    }

                    //: if let giftModel = JSONDeserializer<TalkingGiftMsgAnimatModel>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                    if let giftModel = JSONDeserializer<StatusMeasurable>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                        //: tempGiftModel.add(giftModel)
                        tempGiftModel.add(giftModel)
                        //: tempDictM.add(dictM)
                        tempDictM.add(dictM)
                    }
                }

                //: guard let currentVC = self.currentViewController() else { return }
                guard let currentVC = self.infoController() else { return }

                // 直播收到礼物，积分更改
                //: if TalkingLiveManager.shared().isLive {
                if UserPushListener.sexApp().isLive {
                    //: let msgInfo: Dictionary? = extraDict?["msgInfo"] as? [String: Any]
                    let msgInfo: Dictionary? = extraDict?[(String(str_theName.prefix(5)) + String(str_originData))] as? [String: Any]
                    //: let mfBean = msgInfo?["mfBean"] as? Double
                    let mfBean = msgInfo?[String(bytes: str_intervalName.map{beginCall(actual: $0)}, encoding: .utf8)!] as? Double
                    //: NotificationCenter.default.post(name: LIVE_USER_POINT_CHANGE, object: nil, userInfo: ["mfBean": mfBean ?? 0.0])
                    NotificationCenter.default.post(name: kLet_statusText, object: nil, userInfo: [String(bytes: str_intervalName.map{beginCall(actual: $0)}, encoding: .utf8)!: mfBean ?? 0.0])
                }
                // 当前处于该对话页 添加到当前动画队列里
                //: if let videoVC = currentVC as? TalkingVideoChatViewController {
                if let videoVC = currentVC as? MakeCallerDelegate {
                    // 音视频通话时，只展示通话人的礼物
                    //: if EqualThen.share.loginUserMode.userID != targetId,
                    if EqualThen.share.loginUserMode.userID != targetId,
                       //: videoVC.chatModel?.pairUid == targetId
                       videoVC.chatModel?.pairUid == targetId
                    {
                        //: videoVC.receiveGiftPlay(giftArr: tempGiftModel as! [Any])
                        videoVC.addWithArr(giftArr: tempGiftModel as! [Any])
                        //: return
                        return
                    }

                    //: } else if let voiceVC = currentVC as? TalkingVoiceChatViewController {
                } else if let voiceVC = currentVC as? PtolemaicSystemViewController {
                    // 音视频通话时，只展示通话人的礼物
                    //: if EqualThen.share.loginUserMode.userID != targetId,
                    if EqualThen.share.loginUserMode.userID != targetId,
                       //: voiceVC.chatModel?.pairUid == targetId
                       voiceVC.chatModel?.pairUid == targetId
                    {
                        //: voiceVC.receiveGiftPlay(giftArr: tempGiftModel as! [Any])
                        voiceVC.bigness(giftArr: tempGiftModel as! [Any])
                        //: return
                        return
                    }

                    //: } else if let chatVC = currentVC as? TalkingPrivateChatController {
                } else if let chatVC = currentVC as? SendReactiveCompatible {
                    //: if chatVC.getChatVCTargetId() == targetId {
                    if chatVC.smallness() == targetId {
                        //: chatVC.addGiftEffectModelArr(giftArr: tempGiftModel as! [Any])
                        chatVC.withArr(giftArr: tempGiftModel as! [Any])
                        //: return
                        return
                    }

                    /// 直播中/语聊房 半屏私聊收到个人私聊礼物
                    //: } else if currentVC.isKind(of: TalkingLiveBeautifyViewController.self) ||
                } else if currentVC.isKind(of: StreetSmartViewController.self) ||
                    //: currentVC.isKind(of: TalkingVoiceRoomViewController.self) {
                    currentVC.isKind(of: SourceManagerDelegate.self)
                {
                    //: for vc in currentVC.children {
                    for vc in currentVC.children {
                        //: if vc.isKind(of: TalkingPrivateChatController.self) {
                        if vc.isKind(of: SendReactiveCompatible.self) {
                            //: let chatVC = vc as! TalkingPrivateChatController
                            let chatVC = vc as! SendReactiveCompatible
                            //: if chatVC.getChatVCTargetId() == targetId {
                            if chatVC.smallness() == targetId {
                                //: chatVC.addGiftEffectModelArr(giftArr: tempGiftModel as! [Any])
                                chatVC.withArr(giftArr: tempGiftModel as! [Any])
                                //: return
                                return
                            }
                        }
                    }
                }

                // 不是该会话 或者 不处于会话页  即使通话也是处于最小化, 则若是礼物动效 存到本地 供下次打开播放
                //: var giftArray: NSMutableArray? = self.cachDict[targetId] as? NSMutableArray
                var giftArray: NSMutableArray? = self.cachDict[targetId] as? NSMutableArray
                //: if giftArray == nil {
                if giftArray == nil {
                    //: giftArray = NSMutableArray(capacity: 0)
                    giftArray = NSMutableArray(capacity: 0)
                }
                //: giftArray?.addObjects(from: tempDictM as! [Any])
                giftArray?.addObjects(from: tempDictM as! [Any])
                //: self.cachDict[targetId] = giftArray
                self.cachDict[targetId] = giftArray
                //: self.saveAnimatDataToFile()
                self.overAnimat()
            }
        }
    }

    /// 聊天室收到礼物消息处理
    //: func chatRoomDisposeReceiveGiftMsg(giftMessageDic: NSDictionary) {
    func nearTitle(giftMessageDic: NSDictionary) {
        //: DispatchQueue.main.async {
        DispatchQueue.main.async {
            //: let extraDict: Dictionary? = giftMessageDic["extra"] as? [String: Any]
            let extraDict: Dictionary? = giftMessageDic[(String(str_angleTitle))] as? [String: Any]
            //: let user: NSDictionary? = extraDict?["user"] as? NSDictionary
            let user: NSDictionary? = extraDict?[(String(str_topData))] as? NSDictionary
            //: let touser: NSDictionary? = extraDict?["toUser"] as? NSDictionary
            let touser: NSDictionary? = extraDict?[(str_renderData.replacingOccurrences(of: "room", with: "t") + String(str_pathData.prefix(5)))] as? NSDictionary
            //: let targetId = user?["uid"] as? String
            let targetId = user?[(String(str_targetData))] as? String

            //: if extraDict == nil || extraDict?.keys.contains("gift") == false {
            if extraDict == nil || extraDict?.keys.contains((String(str_rowRequestValue))) == false {
                //: return
                return
            }
            //: if var roomGiftModel = JSONDeserializer<TalkingGiftChatMsgAnimatModel>.deserializeFrom(dict: extraDict!["gift"] as? [String: Any], designatedPath: nil) {
            if var roomGiftModel = JSONDeserializer<ProgressMeasurable>.deserializeFrom(dict: extraDict![(String(str_rowRequestValue))] as? [String: Any], designatedPath: nil) {
                //: let dic = extraDict?["gift"] as? [String: Any]
                let dic = extraDict?[(String(str_rowRequestValue))] as? [String: Any]
                //: roomGiftModel.giftNum = dic?["giftNum"] as? Int ?? 0
                roomGiftModel.giftNum = dic?[(String(str_sayName) + String(str_lockName))] as? Int ?? 0
                //: var effect = roomGiftModel.iosEffect
                var effect = roomGiftModel.iosEffect
                //: if effect.count == 0 {
                if effect.count == 0 {
                    //: effect = roomGiftModel.effect
                    effect = roomGiftModel.effect
                }

                //: let tempGiftModel = NSMutableArray()
                let tempGiftModel = NSMutableArray()
                //: let tempDictM = NSMutableArray()
                let tempDictM = NSMutableArray()

                // 帝王礼物特效
                //: if roomGiftModel.iosEmperorEffect?.count ?? 0 > 0 {
                if roomGiftModel.iosEmperorEffect?.count ?? 0 > 0 {
                    // 开头动效
                    //: let giftArr: NSMutableArray? = roomGiftModel.iosEmperorEffect as? NSMutableArray
                    let giftArr: NSMutableArray? = roomGiftModel.iosEmperorEffect as? NSMutableArray
                    //: giftArr?.insert(roomGiftModel.iosEffect, at: 0)
                    giftArr?.insert(roomGiftModel.iosEffect, at: 0)

                    //: let tempArr = NSMutableArray()
                    let tempArr = NSMutableArray()
                    //: let tempDicArr = NSMutableArray()
                    let tempDicArr = NSMutableArray()

                    //: for giftStr in giftArr! {
                    for giftStr in giftArr! {
                        //: let dictM = NSMutableDictionary(capacity: 0)
                        let dictM = NSMutableDictionary(capacity: 0)
                        //: dictM["fromUid"] = targetId
                        dictM[(str_modelLabName.lowercased() + String(str_informationName.suffix(6)))] = targetId
                        //: dictM["fromNickname"] = user?["name"]
                        dictM[(String(str_colorName) + String(str_makeTitle))] = user?[(String(str_buttonContent))]
                        //: dictM["fromHeadPic"] = user?["icon"]
                        dictM[(String(str_colorData.suffix(5)) + "eadPic")] = user?[(String(str_messageName))]
                        //: dictM["pid"] = "0" // 缓存兼容
                        dictM[(str_rawManagerData.replacingOccurrences(of: "length", with: "pi"))] = "0" // 缓存兼容
                        //: dictM["num"] = (roomGiftModel.giftNum)
                        dictM[(str_bigTitle.replacingOccurrences(of: "icon", with: "nu"))] = (roomGiftModel.giftNum)
                        //: let str = touser?["nickname"] as? String ?? ""
                        let str = touser?[(str_indexName.replacingOccurrences(of: "view", with: "n") + "name")] as? String ?? ""
                        //: dictM["pname"] = "Send to %@".localizedArguments(str)
                        dictM[(str_withValue.replacingOccurrences(of: "party", with: "e"))] = (String(str_effectGenreName) + str_profileName.capitalized).localizedArguments(str)
                        //: if touser == nil {
                        if touser == nil {
                            //: dictM["pname"] = "Send to All Numbers".localized
                            dictM[(str_withValue.replacingOccurrences(of: "party", with: "e"))] = (String(str_tableLabelText.prefix(5)) + "to Al" + String(str_cellText.suffix(6)) + str_collectionName.replacingOccurrences(of: "pick", with: "s")).localized
                        }
                        //: dictM["giftPic"] = roomGiftModel.imgPreview
                        dictM[(String(str_equalData.suffix(7)))] = roomGiftModel.imgPreview
                        //: dictM["comboNum"] = (roomGiftModel.comboNum)
                        dictM[(str_labelData.replacingOccurrences(of: "add", with: "o") + String(str_appTitle.suffix(3)))] = (roomGiftModel.comboNum)
                        //: dictM["iosEffect"] = giftStr
                        dictM[(str_modelData.replacingOccurrences(of: "button", with: "o") + String(str_greetPathSubValue.suffix(7)))] = giftStr
                        //: dictM["showType"] = (roomGiftModel.showType)
                        dictM[(str_borderTitle.replacingOccurrences(of: "execute", with: "s") + "Type")] = (roomGiftModel.showType)
                        //: dictM["animationTimes"] = "1"
                        dictM[(str_countValue.replacingOccurrences(of: "add", with: "ma") + String(str_errorStyleContent.suffix(6)))] = "1"

                        //: if let giftModel = JSONDeserializer<TalkingGiftMsgAnimatModel>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                        if let giftModel = JSONDeserializer<StatusMeasurable>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                            //: tempArr.add(giftModel)
                            tempArr.add(giftModel)
                            //: tempDicArr.add(dictM)
                            tempDicArr.add(dictM)
                        }
                    }
                    // 循环播放次数
                    //: var animationTimes = 1
                    var animationTimes = 1
                    //: if roomGiftModel.animationTimes > 0 {
                    if roomGiftModel.animationTimes > 0 {
                        //: animationTimes = roomGiftModel.animationTimes
                        animationTimes = roomGiftModel.animationTimes
                        //: } else {
                    } else {
                        //: animationTimes = roomGiftModel.giftNum
                        animationTimes = roomGiftModel.giftNum
                    }
                    //: let tempGiftArr = tempArr
                    let tempGiftArr = tempArr
                    //: for _ in 0..<animationTimes {
                    for _ in 0 ..< animationTimes {
                        //: tempGiftModel.addObjects(from: tempGiftArr as! [Any])
                        tempGiftModel.addObjects(from: tempGiftArr as! [Any])
                        //: tempDictM.addObjects(from: tempDicArr as! [Any])
                        tempDictM.addObjects(from: tempDicArr as! [Any])
                    }
                    //: } else {
                } else {
                    //: let dictM = NSMutableDictionary(capacity: 0)
                    let dictM = NSMutableDictionary(capacity: 0)

                    //: dictM["fromUid"] = targetId
                    dictM[(str_modelLabName.lowercased() + String(str_informationName.suffix(6)))] = targetId
                    //: dictM["fromNickname"] = user?["nickname"]
                    dictM[(String(str_colorName) + String(str_makeTitle))] = user?[(str_indexName.replacingOccurrences(of: "view", with: "n") + "name")]
                    //: dictM["fromHeadPic"] = user?["headPic"]
                    dictM[(String(str_colorData.suffix(5)) + "eadPic")] = user?[(String(str_viewActionValue))]

                    //: dictM["pid"] = roomGiftModel.giftId
                    dictM[(str_rawManagerData.replacingOccurrences(of: "length", with: "pi"))] = roomGiftModel.giftId
                    //: dictM["num"] = (roomGiftModel.giftNum)
                    dictM[(str_bigTitle.replacingOccurrences(of: "icon", with: "nu"))] = (roomGiftModel.giftNum)
                    // 显示送给谁
                    //: let str = touser?["nickname"] as? String ?? ""
                    let str = touser?[(str_indexName.replacingOccurrences(of: "view", with: "n") + "name")] as? String ?? ""
                    //: dictM["pname"] = "Send to %@".localizedArguments(str)
                    dictM[(str_withValue.replacingOccurrences(of: "party", with: "e"))] = (String(str_effectGenreName) + str_profileName.capitalized).localizedArguments(str)
                    //: if touser == nil {
                    if touser == nil {
                        //: dictM["pname"] = "Send to All Numbers".localized
                        dictM[(str_withValue.replacingOccurrences(of: "party", with: "e"))] = (String(str_tableLabelText.prefix(5)) + "to Al" + String(str_cellText.suffix(6)) + str_collectionName.replacingOccurrences(of: "pick", with: "s")).localized
                    }
                    //: dictM["giftPic"] = roomGiftModel.imgPreview
                    dictM[(String(str_equalData.suffix(7)))] = roomGiftModel.imgPreview
                    //: dictM["comboNum"] = (roomGiftModel.comboNum)
                    dictM[(str_labelData.replacingOccurrences(of: "add", with: "o") + String(str_appTitle.suffix(3)))] = (roomGiftModel.comboNum)
                    //: dictM["iosEffect"] = effect
                    dictM[(str_modelData.replacingOccurrences(of: "button", with: "o") + String(str_greetPathSubValue.suffix(7)))] = effect
                    //: dictM["iosVapEffect"] = roomGiftModel.iosVapEffect
                    dictM[(String(str_bottomValue.suffix(4)) + "apEf" + str_bringName.lowercased())] = roomGiftModel.iosVapEffect

                    //: dictM["showType"] = (roomGiftModel.showType)
                    dictM[(str_borderTitle.replacingOccurrences(of: "execute", with: "s") + "Type")] = (roomGiftModel.showType)
                    //: if roomGiftModel.animationTimes > 0 {
                    if roomGiftModel.animationTimes > 0 {
                        //: dictM["animationTimes"] = (roomGiftModel.animationTimes)
                        dictM[(str_countValue.replacingOccurrences(of: "add", with: "ma") + String(str_errorStyleContent.suffix(6)))] = (roomGiftModel.animationTimes)
                        //: } else {
                    } else {
                        //: dictM["animationTimes"] = dictM["num"]
                        dictM[(str_countValue.replacingOccurrences(of: "add", with: "ma") + String(str_errorStyleContent.suffix(6)))] = dictM[(str_bigTitle.replacingOccurrences(of: "icon", with: "nu"))]
                    }

                    //: if let giftModel = JSONDeserializer<TalkingGiftMsgAnimatModel>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                    if let giftModel = JSONDeserializer<StatusMeasurable>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                        //: tempGiftModel.add(giftModel)
                        tempGiftModel.add(giftModel)
                        //: tempDictM.add(dictM)
                        tempDictM.add(dictM)
                    }
                }

                // 直播在聊天室收到礼物，积分更改
                //: let touid = touser?["uid"] as? Int
                let touid = touser?[(String(str_targetData))] as? Int
                //: if TalkingLiveManager.shared().isLive, EqualThen.share.loginUserMode.userID == "\(touid ?? 0)" || touser == nil {
                if UserPushListener.sexApp().isLive, EqualThen.share.loginUserMode.userID == "\(touid ?? 0)" || touser == nil {
                    //: let msgInfo: Dictionary? = extraDict?["msgInfo"] as? [String: Any]
                    let msgInfo: Dictionary? = extraDict?[(String(str_theName.prefix(5)) + String(str_originData))] as? [String: Any]
                    //: let mfBean = msgInfo?["mfBean"] as? Double
                    let mfBean = msgInfo?[String(bytes: str_intervalName.map{beginCall(actual: $0)}, encoding: .utf8)!] as? Double
                    //: NotificationCenter.default.post(name: LIVE_USER_POINT_CHANGE, object: nil, userInfo: ["mfBean": mfBean ?? 0.0])
                    NotificationCenter.default.post(name: kLet_statusText, object: nil, userInfo: [String(bytes: str_intervalName.map{beginCall(actual: $0)}, encoding: .utf8)!: mfBean ?? 0.0])
                }

                // 当前处于该对话页 添加到当前动画队列里
                //: if EditTextThen.share.func__getCurrentActivityVC()!.isKind(of: TalkingGroupChatController.self) {
                if EditTextThen.share.addGet()!.isKind(of: SocialGroupPopRecognizerDelegate.self) {
                    //: let chatVC = EditTextThen.share.func__getCurrentActivityVC() as! TalkingGroupChatController
                    let chatVC = EditTextThen.share.addGet() as! SocialGroupPopRecognizerDelegate
                    //: chatVC.addGiftEffectModelArr(giftArr: tempGiftModel as! [Any])
                    chatVC.free(giftArr: tempGiftModel as! [Any])
                }
            }
        }
    }

    /// 收到 直播/语音房 礼物消息处理
    //: func disposeReceiveLiveRoomGiftMsg(giftMessageDic: NSDictionary) {
    func miscue(giftMessageDic: NSDictionary) {
        //: DispatchQueue.main.async {
        DispatchQueue.main.async {
            //: let extraDict: Dictionary? = giftMessageDic["extra"] as? [String: Any]
            let extraDict: Dictionary? = giftMessageDic[(String(str_angleTitle))] as? [String: Any]
            //: let user: NSDictionary? = extraDict?["user"] as? NSDictionary
            let user: NSDictionary? = extraDict?[(String(str_topData))] as? NSDictionary
            //: let targetId = String(format: "%@", user?["uid"] as! CVarArg)
            let targetId = String(format: "%@", user?[(String(str_targetData))] as! CVarArg)
            //: var toUid = ""
            var toUid = ""
            //: if TalkingLiveManager.shared().isLive {
            if UserPushListener.sexApp().isLive {
                //: toUid = String(format: "LiveGift_%@", extraDict?["toUid"] as? CVarArg ?? "")
                toUid = String(format: (String(str_replacementExplainValue)), extraDict?[(String(str_upTitle.prefix(5)))] as? CVarArg ?? "")
                //: } else if TalkingVoiceRoomManager.shared().isParty {
            } else if ViewRoomManager.astatine().isParty {
                //: toUid = String(format: "PartyGift_%@", extraDict?["toUid"] as? CVarArg ?? "")
                toUid = String(format: (String(str_rowName.suffix(5)) + String(str_viewTitle.suffix(7))), extraDict?[(String(str_upTitle.prefix(5)))] as? CVarArg ?? "")
            }
            //: let gift = extraDict?["gift"] as? NSDictionary
            let gift = extraDict?[(String(str_rowRequestValue))] as? NSDictionary

            //: if extraDict == nil || extraDict?.keys.contains("gift") == false {
            if extraDict == nil || extraDict?.keys.contains((String(str_rowRequestValue))) == false {
                //: return
                return
            }
            //: if let roomGiftModel = JSONDeserializer<TalkingGiftChatMsgAnimatModel>.deserializeFrom(dict: extraDict!["gift"] as? [String: Any], designatedPath: nil) {
            if let roomGiftModel = JSONDeserializer<ProgressMeasurable>.deserializeFrom(dict: extraDict![(String(str_rowRequestValue))] as? [String: Any], designatedPath: nil) {
                //: var effect = roomGiftModel.iosEffect
                var effect = roomGiftModel.iosEffect
                //: if effect.count == 0 {
                if effect.count == 0 {
                    //: effect = roomGiftModel.effect
                    effect = roomGiftModel.effect
                }

                //: let tempGiftModel = NSMutableArray()
                let tempGiftModel = NSMutableArray()
                //: let tempDictM = NSMutableArray()
                let tempDictM = NSMutableArray()

                //: let dictM = NSMutableDictionary(capacity: 0)
                let dictM = NSMutableDictionary(capacity: 0)

                //: dictM["fromUid"] = targetId
                dictM[(str_modelLabName.lowercased() + String(str_informationName.suffix(6)))] = targetId
                //: dictM["fromNickname"] = user?["nickname"]
                dictM[(String(str_colorName) + String(str_makeTitle))] = user?[(str_indexName.replacingOccurrences(of: "view", with: "n") + "name")]
                //: dictM["fromHeadPic"] = user?["headPic"]
                dictM[(String(str_colorData.suffix(5)) + "eadPic")] = user?[(String(str_viewActionValue))]

                //: dictM["pid"] = gift?["id"] as? String
                dictM[(str_rawManagerData.replacingOccurrences(of: "length", with: "pi"))] = gift?["id"] as? String
                //: dictM["num"] = gift?["num"] as? String
                dictM[(str_bigTitle.replacingOccurrences(of: "icon", with: "nu"))] = gift?[(str_bigTitle.replacingOccurrences(of: "icon", with: "nu"))] as? String
                //: dictM["pname"] = roomGiftModel.name
                dictM[(str_withValue.replacingOccurrences(of: "party", with: "e"))] = roomGiftModel.name
                //: dictM["giftPic"] = roomGiftModel.imgPreview
                dictM[(String(str_equalData.suffix(7)))] = roomGiftModel.imgPreview
                //: dictM["comboNum"] = (roomGiftModel.comboNum)
                dictM[(str_labelData.replacingOccurrences(of: "add", with: "o") + String(str_appTitle.suffix(3)))] = (roomGiftModel.comboNum)
                //: dictM["iosEffect"] = effect
                dictM[(str_modelData.replacingOccurrences(of: "button", with: "o") + String(str_greetPathSubValue.suffix(7)))] = effect
                //: dictM["iosVapEffect"] = roomGiftModel.iosVapEffect
                dictM[(String(str_bottomValue.suffix(4)) + "apEf" + str_bringName.lowercased())] = roomGiftModel.iosVapEffect

                //: dictM["showType"] = (roomGiftModel.showType)
                dictM[(str_borderTitle.replacingOccurrences(of: "execute", with: "s") + "Type")] = (roomGiftModel.showType)
                //: if roomGiftModel.animationTimes > 0 {
                if roomGiftModel.animationTimes > 0 {
                    //: dictM["animationTimes"] = (roomGiftModel.animationTimes)
                    dictM[(str_countValue.replacingOccurrences(of: "add", with: "ma") + String(str_errorStyleContent.suffix(6)))] = (roomGiftModel.animationTimes)
                    //: } else {
                } else {
                    //: dictM["animationTimes"] = dictM["num"]
                    dictM[(str_countValue.replacingOccurrences(of: "add", with: "ma") + String(str_errorStyleContent.suffix(6)))] = dictM[(str_bigTitle.replacingOccurrences(of: "icon", with: "nu"))]
                }

                //: if let giftModel = JSONDeserializer<TalkingGiftMsgAnimatModel>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                if let giftModel = JSONDeserializer<StatusMeasurable>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                    //: tempGiftModel.add(giftModel)
                    tempGiftModel.add(giftModel)
                    //: tempDictM.add(dictM)
                    tempDictM.add(dictM)
                }

                // 礼物动效 存到本地 供下次打开播放
                //: var giftArray: NSMutableArray? = self.cachDict[toUid] as? NSMutableArray
                var giftArray: NSMutableArray? = self.cachDict[toUid] as? NSMutableArray
                //: if giftArray == nil {
                if giftArray == nil {
                    //: giftArray = NSMutableArray(capacity: 0)
                    giftArray = NSMutableArray(capacity: 0)
                }
                //: if giftArray?.count ?? 0 >= 10 {
                if giftArray?.count ?? 0 >= 10 {
                    //: giftArray?.removeFirstObject()
                    giftArray?.removeFirstObject()
                }
                //: giftArray?.addObjects(from: tempDictM as! [Any])
                giftArray?.addObjects(from: tempDictM as! [Any])
                //: self.cachDict[toUid] = giftArray
                self.cachDict[toUid] = giftArray
                //: self.saveAnimatDataToFile()
                self.overAnimat()
            }
        }
    }
}
