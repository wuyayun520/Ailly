
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_centerTitle:[UInt8] = [0xaf,0xa8,0xaf,0xb2,0xee,0xa5,0xa9,0xa2,0xa3,0xb4,0xfc,0xef,0xe6,0xae,0xa7,0xb5,0xe6,0xa8,0xa9,0xb2,0xe6,0xa4,0xa3,0xa3,0xa8,0xe6,0xaf,0xab,0xb6,0xaa,0xa3,0xab,0xa3,0xa8,0xb2,0xa3,0xa2]

private func denounceBlack(leading num: UInt8) -> UInt8 {
    return num ^ 198
}

/*: "gift" :*/
fileprivate let str_byTitle:String = "gifsex"

/*: "iosEffect" :*/
fileprivate let str_indexData:[Character] = ["i"]
fileprivate let str_titleName:[Character] = ["o","s","E","f","f","e","c","t"]

/*: "iosEmperorEffect" :*/
fileprivate let str_nextContent:[Character] = ["i","o","s","E"]
fileprivate let str_modelValue:[Character] = ["m","p","e","r","o","r","E","f","f","e","c","t"]

/*: "fromUid" :*/
fileprivate let str_endText:String = "let status iconfromUi"
fileprivate let str_colorName:[Character] = ["d"]

/*: "fromNickname" :*/
fileprivate let str_managerName:String = "fromNilet to string bile ret"
fileprivate let str_jumpValue:String = "heart"

/*: "fromHeadPic" :*/
fileprivate let str_listTitle:String = "fromHsize app self minimum"

/*: "pid" :*/
fileprivate let str_statusData:[Character] = ["p","i","d"]

/*: "num" :*/
fileprivate let str_nameManagerProgressTitle:[Character] = ["n","u","m"]

/*: "pname" :*/
fileprivate let str_sessionData:String = "pnamcamera"

/*: "name" :*/
fileprivate let str_frontData:String = "viewme"

/*: "giftPic" :*/
fileprivate let str_topText:String = "giftPicpage else view return to"

/*: "imgPreview" :*/
fileprivate let str_pushName:String = "imgPreelse equal frame to"

/*: "comboNum" :*/
fileprivate let str_leadingData:String = "comboNumframe become stop"

/*: "showType" :*/
fileprivate let str_managerStyleName:String = "label falseshowType"

/*: "animationTimes" :*/
fileprivate let str_iconData:String = "anempty"
fileprivate let str_containerValue:String = "iblocks"

/*: "id" :*/
fileprivate let str_toText:String = "maked"

/*: "iosVapEffect" :*/
fileprivate let str_editTitle:String = "source titleiosVap"

/*: "giftNum" :*/
fileprivate let str_modelContent:String = "section viewgiftNum"

/*: "Send to %@" :*/
fileprivate let str_topEqualPlayerTitle:String = "number make at centerSend "

/*: "all" :*/
fileprivate let str_shareName:String = "afile"

/*: "Send to All Numbers" :*/
fileprivate let str_addValue:String = "Sendas let"
fileprivate let str_indicatorName:String = "to of result video countAll Nu"
fileprivate let str_viewValue:[Character] = ["m","b","e","r","s"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  OfReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/3/7.
//

//: import UIKit
import UIKit

/// 私聊 礼物动效层
//: class TalkingPrivateChatAnimatView: UIView {
class OfReactiveCompatible: UIView {
    //: var animatArray: NSMutableArray =  NSMutableArray.init(capacity: 0)
    var animatArray: NSMutableArray = .init(capacity: 0)
    //: var isPlayAnimat = false
    var isPlayAnimat = false

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.addSubviews()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_centerTitle.map{denounceBlack(leading: $0)}, encoding: .utf8)!)
    }

    //: deinit {
    deinit {}

    // 懒加载初始化
    //: public lazy var giftAnimatView: TalkingGiftAnimatView = {
    public lazy var giftAnimatView: DiaphragmViewDelegate = {
        //: let view = TalkingGiftAnimatView.init()
        let view = DiaphragmViewDelegate()
        //: return view
        return view
        //: }()
    }()
}

//: extension TalkingPrivateChatAnimatView {
extension OfReactiveCompatible {
    /// 自己私聊送礼,动效处理

    //: func dealGiftAnimatData(dict: Dictionary<String, Any>) {
    func toDict(dict: [String: Any]) {
        //: if dict.keys.isEmpty {
        if dict.keys.isEmpty {
            //: return
            return
        }
        //: let  giftInfo: Dictionary? = dict["gift"] as? Dictionary<String, Any>
        let giftInfo: Dictionary? = dict[(str_byTitle.replacingOccurrences(of: "sex", with: "t"))] as? [String: Any]
        //: if giftInfo == nil || giftInfo?.keys.contains("iosEffect") == false {
        if giftInfo == nil || giftInfo?.keys.contains((String(str_indexData) + String(str_titleName))) == false {
            //: return
            return
        }

        // 帝王礼物特效
        //: if  giftInfo?.keys.contains("iosEmperorEffect") != false {
        if giftInfo?.keys.contains((String(str_nextContent) + String(str_modelValue))) != false {
            // 开头动效
            //: let giftArr: NSMutableArray = giftInfo?["iosEmperorEffect"] as! NSMutableArray
            let giftArr: NSMutableArray = giftInfo?[(String(str_nextContent) + String(str_modelValue))] as! NSMutableArray

            //: giftArr.insert(giftInfo!["iosEffect"] ?? "", at: 0)
            giftArr.insert(giftInfo![(String(str_indexData) + String(str_titleName))] ?? "", at: 0)
            //: let tempArr = NSMutableArray.init()
            let tempArr = NSMutableArray()

            //: for giftStr in giftArr {
            for giftStr in giftArr {
                //: let dictM = NSMutableDictionary.init(capacity: 0)
                let dictM = NSMutableDictionary(capacity: 0)
                //: dictM["fromUid"] = EqualThen.share.loginUserMode.userID
                dictM[(String(str_endText.suffix(6)) + String(str_colorName))] = EqualThen.share.loginUserMode.userID
                //: dictM["fromNickname"] = EqualThen.share.loginUserMode.nickname
                dictM[(String(str_managerName.prefix(6)) + "cknam" + str_jumpValue.replacingOccurrences(of: "heart", with: "e"))] = EqualThen.share.loginUserMode.nickname
                //: dictM["fromHeadPic"] = EqualThen.share.loginUserMode.headPic
                dictM[(String(str_listTitle.prefix(5)) + "eadPic")] = EqualThen.share.loginUserMode.headPic
                //: dictM["pid"] = "0" // 缓存兼容
                dictM[(String(str_statusData))] = "0" // 缓存兼容
                //: dictM["num"] =  giftInfo?["num"]
                dictM[(String(str_nameManagerProgressTitle))] = giftInfo?[(String(str_nameManagerProgressTitle))]
                //: dictM["pname"] = giftInfo?["name"]
                dictM[(str_sessionData.replacingOccurrences(of: "camera", with: "e"))] = giftInfo?[(str_frontData.replacingOccurrences(of: "view", with: "na"))]
                //: dictM["giftPic"] = giftInfo?["imgPreview"]
                dictM[(String(str_topText.prefix(7)))] = giftInfo?[(String(str_pushName.prefix(6)) + "view")]
                //: dictM["comboNum"] = giftInfo?["comboNum"]
                dictM[(String(str_leadingData.prefix(8)))] = giftInfo?[(String(str_leadingData.prefix(8)))]
                //: dictM["iosEffect"] = giftStr
                dictM[(String(str_indexData) + String(str_titleName))] = giftStr
                //: dictM["showType"] = giftInfo?["showType"]
                dictM[(String(str_managerStyleName.suffix(8)))] = giftInfo?[(String(str_managerStyleName.suffix(8)))]
                //: dictM["animationTimes"] = "1"
                dictM[(str_iconData.replacingOccurrences(of: "empty", with: "im") + "ationT" + str_containerValue.replacingOccurrences(of: "block", with: "me"))] = "1"
                //: if let giftModel = JSONDeserializer<TalkingGiftMsgAnimatModel>.deserializeFrom(dict: dictM as? Dictionary<String, Any>, designatedPath: nil) {
                if let giftModel = JSONDeserializer<StatusMeasurable>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                    //: tempArr.add(giftModel)
                    tempArr.add(giftModel)
                }
            }
            // 循环播放次数
            //: var animationTimes = 1
            var animationTimes = 1
            //: if giftInfo?.keys.contains("animationTimes") != false {
            if giftInfo?.keys.contains((str_iconData.replacingOccurrences(of: "empty", with: "im") + "ationT" + str_containerValue.replacingOccurrences(of: "block", with: "me"))) != false {
                //: animationTimes = giftInfo!["animationTimes"] as! Int
                animationTimes = giftInfo![(str_iconData.replacingOccurrences(of: "empty", with: "im") + "ationT" + str_containerValue.replacingOccurrences(of: "block", with: "me"))] as! Int
                //: } else {
            } else {
                //: animationTimes = giftInfo!["num"] as! Int
                animationTimes = giftInfo![(String(str_nameManagerProgressTitle))] as! Int
            }
            //: let tempGiftArr = tempArr
            let tempGiftArr = tempArr
            //: for _ in 0..<animationTimes {
            for _ in 0 ..< animationTimes {
                //: self.animatArray.addObjects(from: tempGiftArr as! [Any])
                self.animatArray.addObjects(from: tempGiftArr as! [Any])
            }

            //: } else {
        } else {
            //: let dictM = NSMutableDictionary.init(capacity: 0)
            let dictM = NSMutableDictionary(capacity: 0)
            //: dictM["fromUid"] = EqualThen.share.loginUserMode.userID
            dictM[(String(str_endText.suffix(6)) + String(str_colorName))] = EqualThen.share.loginUserMode.userID
            //: dictM["fromNickname"] = EqualThen.share.loginUserMode.nickname
            dictM[(String(str_managerName.prefix(6)) + "cknam" + str_jumpValue.replacingOccurrences(of: "heart", with: "e"))] = EqualThen.share.loginUserMode.nickname
            //: dictM["fromHeadPic"] = EqualThen.share.loginUserMode.headPic
            dictM[(String(str_listTitle.prefix(5)) + "eadPic")] = EqualThen.share.loginUserMode.headPic
            //: dictM["pid"] = giftInfo?["id"]
            dictM[(String(str_statusData))] = giftInfo?["id"]
            //: dictM["num"] =  giftInfo?["num"]
            dictM[(String(str_nameManagerProgressTitle))] = giftInfo?[(String(str_nameManagerProgressTitle))]
            //: dictM["pname"] = giftInfo?["name"]
            dictM[(str_sessionData.replacingOccurrences(of: "camera", with: "e"))] = giftInfo?[(str_frontData.replacingOccurrences(of: "view", with: "na"))]
            //: dictM["giftPic"] = giftInfo?["imgPreview"]
            dictM[(String(str_topText.prefix(7)))] = giftInfo?[(String(str_pushName.prefix(6)) + "view")]
            //: dictM["comboNum"] = giftInfo?["comboNum"]
            dictM[(String(str_leadingData.prefix(8)))] = giftInfo?[(String(str_leadingData.prefix(8)))]
            //: dictM["iosEffect"] = giftInfo?["iosEffect"]
            dictM[(String(str_indexData) + String(str_titleName))] = giftInfo?[(String(str_indexData) + String(str_titleName))]
            //: dictM["showType"] = giftInfo?["showType"]
            dictM[(String(str_managerStyleName.suffix(8)))] = giftInfo?[(String(str_managerStyleName.suffix(8)))]
            //: dictM["iosVapEffect"] = giftInfo?["iosVapEffect"]
            dictM[(String(str_editTitle.suffix(6)) + "Effect")] = giftInfo?[(String(str_editTitle.suffix(6)) + "Effect")]

            //: if giftInfo?.keys.contains("animationTimes") != false {
            if giftInfo?.keys.contains((str_iconData.replacingOccurrences(of: "empty", with: "im") + "ationT" + str_containerValue.replacingOccurrences(of: "block", with: "me"))) != false {
                //: dictM["animationTimes"] = giftInfo?["animationTimes"]
                dictM[(str_iconData.replacingOccurrences(of: "empty", with: "im") + "ationT" + str_containerValue.replacingOccurrences(of: "block", with: "me"))] = giftInfo?[(str_iconData.replacingOccurrences(of: "empty", with: "im") + "ationT" + str_containerValue.replacingOccurrences(of: "block", with: "me"))]
                //: } else {
            } else {
                //: dictM["animationTimes"] = dictM["num"]
                dictM[(str_iconData.replacingOccurrences(of: "empty", with: "im") + "ationT" + str_containerValue.replacingOccurrences(of: "block", with: "me"))] = dictM[(String(str_nameManagerProgressTitle))]
            }
            //: if let giftModel = JSONDeserializer<TalkingGiftMsgAnimatModel>.deserializeFrom(dict: dictM as? Dictionary<String, Any>, designatedPath: nil) {
            if let giftModel = JSONDeserializer<StatusMeasurable>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                //: self.animatArray.add(giftModel)
                self.animatArray.add(giftModel)
            }
        }
        //: judgePlay()
        developTrack()
    }

    /// 视频通话送礼,模型转换
    //: func changeGiftToModel(dict: Dictionary<String, Any>) ->TalkingGiftMsgAnimatModel? {
    func atDown(dict: [String: Any]) -> StatusMeasurable? {
        //: if dict.keys.isEmpty {
        if dict.keys.isEmpty {
            //: return nil
            return nil
        }
        //: let  giftInfo: Dictionary? = dict["gift"] as? Dictionary<String, Any>
        let giftInfo: Dictionary? = dict[(str_byTitle.replacingOccurrences(of: "sex", with: "t"))] as? [String: Any]
        //: if giftInfo == nil {
        if giftInfo == nil {
            //: return nil
            return nil
        }

        // 帝王礼物特效
        //: if  giftInfo?.keys.contains("iosEmperorEffect") != false {
        if giftInfo?.keys.contains((String(str_nextContent) + String(str_modelValue))) != false {
            // 开头动效
            //: let giftArr: NSMutableArray = giftInfo?["iosEmperorEffect"] as! NSMutableArray
            let giftArr: NSMutableArray = giftInfo?[(String(str_nextContent) + String(str_modelValue))] as! NSMutableArray

            //: giftArr.insert(giftInfo!["iosEffect"] ?? "", at: 0)
            giftArr.insert(giftInfo![(String(str_indexData) + String(str_titleName))] ?? "", at: 0)

            //: for giftStr in giftArr {
            for giftStr in giftArr {
                //: let dictM = NSMutableDictionary.init(capacity: 0)
                let dictM = NSMutableDictionary(capacity: 0)
                //: dictM["fromUid"] = EqualThen.share.loginUserMode.userID
                dictM[(String(str_endText.suffix(6)) + String(str_colorName))] = EqualThen.share.loginUserMode.userID
                //: dictM["fromNickname"] = EqualThen.share.loginUserMode.nickname
                dictM[(String(str_managerName.prefix(6)) + "cknam" + str_jumpValue.replacingOccurrences(of: "heart", with: "e"))] = EqualThen.share.loginUserMode.nickname
                //: dictM["fromHeadPic"] = EqualThen.share.loginUserMode.headPic
                dictM[(String(str_listTitle.prefix(5)) + "eadPic")] = EqualThen.share.loginUserMode.headPic
                //: dictM["pid"] = "0" // 缓存兼容
                dictM[(String(str_statusData))] = "0" // 缓存兼容
                //: dictM["num"] =  giftInfo?["num"]
                dictM[(String(str_nameManagerProgressTitle))] = giftInfo?[(String(str_nameManagerProgressTitle))]
                //: dictM["pname"] = giftInfo?["name"]
                dictM[(str_sessionData.replacingOccurrences(of: "camera", with: "e"))] = giftInfo?[(str_frontData.replacingOccurrences(of: "view", with: "na"))]
                //: dictM["giftPic"] = giftInfo?["imgPreview"]
                dictM[(String(str_topText.prefix(7)))] = giftInfo?[(String(str_pushName.prefix(6)) + "view")]
                //: dictM["comboNum"] = giftInfo?["comboNum"]
                dictM[(String(str_leadingData.prefix(8)))] = giftInfo?[(String(str_leadingData.prefix(8)))]
                //: dictM["iosEffect"] = giftStr
                dictM[(String(str_indexData) + String(str_titleName))] = giftStr
                //: dictM["showType"] = giftInfo?["showType"]
                dictM[(String(str_managerStyleName.suffix(8)))] = giftInfo?[(String(str_managerStyleName.suffix(8)))]
                //: dictM["animationTimes"] = "1"
                dictM[(str_iconData.replacingOccurrences(of: "empty", with: "im") + "ationT" + str_containerValue.replacingOccurrences(of: "block", with: "me"))] = "1"
                //: if let giftModel = JSONDeserializer<TalkingGiftMsgAnimatModel>.deserializeFrom(dict: dictM as? Dictionary<String, Any>, designatedPath: nil) {
                if let giftModel = JSONDeserializer<StatusMeasurable>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                    //: return giftModel
                    return giftModel
                }
            }
            //: } else {
        } else {
            //: let dictM = NSMutableDictionary.init(capacity: 0)
            let dictM = NSMutableDictionary(capacity: 0)
            //: dictM["fromUid"] = EqualThen.share.loginUserMode.userID
            dictM[(String(str_endText.suffix(6)) + String(str_colorName))] = EqualThen.share.loginUserMode.userID
            //: dictM["fromNickname"] = EqualThen.share.loginUserMode.nickname
            dictM[(String(str_managerName.prefix(6)) + "cknam" + str_jumpValue.replacingOccurrences(of: "heart", with: "e"))] = EqualThen.share.loginUserMode.nickname
            //: dictM["fromHeadPic"] = EqualThen.share.loginUserMode.headPic
            dictM[(String(str_listTitle.prefix(5)) + "eadPic")] = EqualThen.share.loginUserMode.headPic
            //: dictM["pid"] = giftInfo?["id"]
            dictM[(String(str_statusData))] = giftInfo?["id"]
            //: dictM["num"] =  giftInfo?["num"]
            dictM[(String(str_nameManagerProgressTitle))] = giftInfo?[(String(str_nameManagerProgressTitle))]
            //: dictM["pname"] = giftInfo?["name"]
            dictM[(str_sessionData.replacingOccurrences(of: "camera", with: "e"))] = giftInfo?[(str_frontData.replacingOccurrences(of: "view", with: "na"))]
            //: dictM["giftPic"] = giftInfo?["imgPreview"]
            dictM[(String(str_topText.prefix(7)))] = giftInfo?[(String(str_pushName.prefix(6)) + "view")]
            //: dictM["comboNum"] = giftInfo?["comboNum"]
            dictM[(String(str_leadingData.prefix(8)))] = giftInfo?[(String(str_leadingData.prefix(8)))]
            //: dictM["iosEffect"] = giftInfo?["iosEffect"]
            dictM[(String(str_indexData) + String(str_titleName))] = giftInfo?[(String(str_indexData) + String(str_titleName))]
            //: dictM["showType"] = giftInfo?["showType"]
            dictM[(String(str_managerStyleName.suffix(8)))] = giftInfo?[(String(str_managerStyleName.suffix(8)))]
            //: dictM["iosVapEffect"] = giftInfo?["iosVapEffect"]
            dictM[(String(str_editTitle.suffix(6)) + "Effect")] = giftInfo?[(String(str_editTitle.suffix(6)) + "Effect")]

            //: if giftInfo?.keys.contains("animationTimes") != false {
            if giftInfo?.keys.contains((str_iconData.replacingOccurrences(of: "empty", with: "im") + "ationT" + str_containerValue.replacingOccurrences(of: "block", with: "me"))) != false {
                //: dictM["animationTimes"] = giftInfo?["animationTimes"]
                dictM[(str_iconData.replacingOccurrences(of: "empty", with: "im") + "ationT" + str_containerValue.replacingOccurrences(of: "block", with: "me"))] = giftInfo?[(str_iconData.replacingOccurrences(of: "empty", with: "im") + "ationT" + str_containerValue.replacingOccurrences(of: "block", with: "me"))]
                //: } else {
            } else {
                //: dictM["animationTimes"] = dictM["num"]
                dictM[(str_iconData.replacingOccurrences(of: "empty", with: "im") + "ationT" + str_containerValue.replacingOccurrences(of: "block", with: "me"))] = dictM[(String(str_nameManagerProgressTitle))]
            }
            //: if let giftModel = JSONDeserializer<TalkingGiftMsgAnimatModel>.deserializeFrom(dict: dictM as? Dictionary<String, Any>, designatedPath: nil) {
            if let giftModel = JSONDeserializer<StatusMeasurable>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                //: return giftModel
                return giftModel
            }
        }
        //: return nil
        return nil
    }

    /// 聊天室收到礼物消息处理
    //: func chatRoomDisposeReceiveGiftMsg(giftMessageDic: Dictionary<String, Any>, model: TalkingChatRoomMemberModel)->TalkingGiftMsgAnimatModel? {
    func pad(giftMessageDic: [String: Any], model: GrantUserMeasurable) -> StatusMeasurable? {
        //: if  giftMessageDic.keys.contains("gift") == false {
        if giftMessageDic.keys.contains((str_byTitle.replacingOccurrences(of: "sex", with: "t"))) == false {
            //: return nil
            return nil
        }
        //: if var roomGiftModel = JSONDeserializer<TalkingGiftChatMsgAnimatModel>.deserializeFrom(dict: giftMessageDic["gift"] as? Dictionary<String, Any>, designatedPath: nil) {
        if var roomGiftModel = JSONDeserializer<ProgressMeasurable>.deserializeFrom(dict: giftMessageDic[(str_byTitle.replacingOccurrences(of: "sex", with: "t"))] as? [String: Any], designatedPath: nil) {
            //: let dic =  giftMessageDic["gift"] as? Dictionary<String, Any>
            let dic = giftMessageDic[(str_byTitle.replacingOccurrences(of: "sex", with: "t"))] as? [String: Any]
            //: roomGiftModel.giftNum = dic?["giftNum"] as? Int ?? 0
            roomGiftModel.giftNum = dic?[(String(str_modelContent.suffix(7)))] as? Int ?? 0
            //: var effect = roomGiftModel.iosEffect
            var effect = roomGiftModel.iosEffect
            //: if effect.count == 0 {
            if effect.count == 0 {
                //: effect = roomGiftModel.effect
                effect = roomGiftModel.effect
            }

            //: let tempGiftModel = NSMutableArray.init()
            let tempGiftModel = NSMutableArray()
            //: let tempDictM = NSMutableArray.init()
            let tempDictM = NSMutableArray()

            // 帝王礼物特效
            //: if  roomGiftModel.iosEmperorEffect?.count ?? 0 > 0 {
            if roomGiftModel.iosEmperorEffect?.count ?? 0 > 0 {
                // 开头动效
                //: let giftArr: NSMutableArray? = roomGiftModel.iosEmperorEffect as? NSMutableArray
                let giftArr: NSMutableArray? = roomGiftModel.iosEmperorEffect as? NSMutableArray
                //: giftArr?.insert(roomGiftModel.iosEffect, at: 0)
                giftArr?.insert(roomGiftModel.iosEffect, at: 0)

                //: let tempArr = NSMutableArray.init()
                let tempArr = NSMutableArray()
                //: let tempDicArr = NSMutableArray.init()
                let tempDicArr = NSMutableArray()

                //: for giftStr in giftArr! {
                for giftStr in giftArr! {
                    //: let dictM = NSMutableDictionary.init(capacity: 0)
                    let dictM = NSMutableDictionary(capacity: 0)
                    //: dictM["fromUid"] = EqualThen.share.loginUserMode.userID
                    dictM[(String(str_endText.suffix(6)) + String(str_colorName))] = EqualThen.share.loginUserMode.userID
                    //: dictM["fromNickname"] = EqualThen.share.loginUserMode.nickname
                    dictM[(String(str_managerName.prefix(6)) + "cknam" + str_jumpValue.replacingOccurrences(of: "heart", with: "e"))] = EqualThen.share.loginUserMode.nickname
                    //: dictM["fromHeadPic"] = EqualThen.share.loginUserMode.headPic
                    dictM[(String(str_listTitle.prefix(5)) + "eadPic")] = EqualThen.share.loginUserMode.headPic
                    //: dictM["pid"] = "0" // 缓存兼容
                    dictM[(String(str_statusData))] = "0" // 缓存兼容
                    //: dictM["num"] =  (roomGiftModel.giftNum)
                    dictM[(String(str_nameManagerProgressTitle))] = (roomGiftModel.giftNum)
                    //: dictM["pname"] = "Send to %@".localizedArguments(model.nickname)
                    dictM[(str_sessionData.replacingOccurrences(of: "camera", with: "e"))] = (String(str_topEqualPlayerTitle.suffix(5)) + "to %@").localizedArguments(model.nickname)
                    //: if model.uid == "all" {
                    if model.uid == (str_shareName.replacingOccurrences(of: "file", with: "ll")) {
                        //: dictM["pname"] = "Send to All Numbers".localized
                        dictM[(str_sessionData.replacingOccurrences(of: "camera", with: "e"))] = (String(str_addValue.prefix(4)) + " to " + String(str_indicatorName.suffix(6)) + String(str_viewValue)).localized
                    }
                    //: dictM["giftPic"] = roomGiftModel.imgPreview
                    dictM[(String(str_topText.prefix(7)))] = roomGiftModel.imgPreview
                    //: dictM["comboNum"] = (roomGiftModel.comboNum)
                    dictM[(String(str_leadingData.prefix(8)))] = (roomGiftModel.comboNum)
                    //: dictM["iosEffect"] = giftStr
                    dictM[(String(str_indexData) + String(str_titleName))] = giftStr
                    //: dictM["showType"] = (roomGiftModel.showType)
                    dictM[(String(str_managerStyleName.suffix(8)))] = (roomGiftModel.showType)
                    //: dictM["animationTimes"] = "1"
                    dictM[(str_iconData.replacingOccurrences(of: "empty", with: "im") + "ationT" + str_containerValue.replacingOccurrences(of: "block", with: "me"))] = "1"

                    //: if let giftModel = JSONDeserializer<TalkingGiftMsgAnimatModel>.deserializeFrom(dict: dictM as? Dictionary<String, Any>, designatedPath: nil) {
                    if let giftModel = JSONDeserializer<StatusMeasurable>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                        //: return giftModel
                        return giftModel
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
                //: let dictM = NSMutableDictionary.init(capacity: 0)
                let dictM = NSMutableDictionary(capacity: 0)

                //: dictM["fromUid"] = EqualThen.share.loginUserMode.userID
                dictM[(String(str_endText.suffix(6)) + String(str_colorName))] = EqualThen.share.loginUserMode.userID
                //: dictM["fromNickname"] = EqualThen.share.loginUserMode.nickname
                dictM[(String(str_managerName.prefix(6)) + "cknam" + str_jumpValue.replacingOccurrences(of: "heart", with: "e"))] = EqualThen.share.loginUserMode.nickname
                //: dictM["fromHeadPic"] = EqualThen.share.loginUserMode.headPic
                dictM[(String(str_listTitle.prefix(5)) + "eadPic")] = EqualThen.share.loginUserMode.headPic

                //: dictM["pid"] = roomGiftModel.giftId
                dictM[(String(str_statusData))] = roomGiftModel.giftId
                //: dictM["num"] =  (roomGiftModel.giftNum)
                dictM[(String(str_nameManagerProgressTitle))] = (roomGiftModel.giftNum)
                // 显示送给谁
                //: dictM["pname"] = "Send to %@".localizedArguments(model.nickname)
                dictM[(str_sessionData.replacingOccurrences(of: "camera", with: "e"))] = (String(str_topEqualPlayerTitle.suffix(5)) + "to %@").localizedArguments(model.nickname)
                //: if model.uid == "all" {
                if model.uid == (str_shareName.replacingOccurrences(of: "file", with: "ll")) {
                    //: dictM["pname"] = "Send to All Numbers".localized
                    dictM[(str_sessionData.replacingOccurrences(of: "camera", with: "e"))] = (String(str_addValue.prefix(4)) + " to " + String(str_indicatorName.suffix(6)) + String(str_viewValue)).localized
                }
                //: dictM["giftPic"] = roomGiftModel.imgPreview
                dictM[(String(str_topText.prefix(7)))] = roomGiftModel.imgPreview
                //: dictM["comboNum"] = (roomGiftModel.comboNum)
                dictM[(String(str_leadingData.prefix(8)))] = (roomGiftModel.comboNum)
                //: dictM["iosEffect"] = effect
                dictM[(String(str_indexData) + String(str_titleName))] = effect
                //: dictM["iosVapEffect"] = roomGiftModel.iosVapEffect
                dictM[(String(str_editTitle.suffix(6)) + "Effect")] = roomGiftModel.iosVapEffect

                //: dictM["showType"] = (roomGiftModel.showType)
                dictM[(String(str_managerStyleName.suffix(8)))] = (roomGiftModel.showType)
                //: if (roomGiftModel.animationTimes > 0) {
                if roomGiftModel.animationTimes > 0 {
                    //: dictM["animationTimes"] = (roomGiftModel.animationTimes)
                    dictM[(str_iconData.replacingOccurrences(of: "empty", with: "im") + "ationT" + str_containerValue.replacingOccurrences(of: "block", with: "me"))] = (roomGiftModel.animationTimes)
                    //: } else {
                } else {
                    //: dictM["animationTimes"] = dictM["num"]
                    dictM[(str_iconData.replacingOccurrences(of: "empty", with: "im") + "ationT" + str_containerValue.replacingOccurrences(of: "block", with: "me"))] = dictM[(String(str_nameManagerProgressTitle))]
                }

                //: if let giftModel = JSONDeserializer<TalkingGiftMsgAnimatModel>.deserializeFrom(dict: dictM as? Dictionary<String, Any>, designatedPath: nil) {
                if let giftModel = JSONDeserializer<StatusMeasurable>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                    //: return giftModel
                    return giftModel
                }
            }
        }
        //: return nil
        return nil
    }

    /// 收到礼物消息的动效模型(私信收到)
    //: func addGiftAnimatModel(model: TalkingGiftMsgAnimatModel) {
    func tillQuantityimate(model: StatusMeasurable) {
        //: animatArray.add(model)
        animatArray.add(model)
        //: judgePlay()
        developTrack()
    }

    /// 收到礼物消息的动效组(私信收到)
    //: func addGiftAnimatModelArr(modelArr: Array<Any>) {
    func doingGoingKey(modelArr: [Any]) {
        //: animatArray.addObjects(from: modelArr)
        animatArray.addObjects(from: modelArr)
        //: judgePlay()
        developTrack()
    }

    /// 获取剩余的动画队列
    //: func getLeftGiftAnimat() ->NSMutableArray {
    func makeAnimat() -> NSMutableArray {
        //: let data = animatArray
        let data = animatArray
        //: animatArray.removeAllObjects()
        animatArray.removeAllObjects()
        //: isPlayAnimat = false
        isPlayAnimat = false
        //: return data
        return data
    }

    /// 初始化动画资源(针对通话的显示 最小化 关闭的切换)
    //: func initAnimatData(data: NSMutableArray) {
    func rawDataText(data: NSMutableArray) {
        //: animatArray.removeAllObjects()
        animatArray.removeAllObjects()
        //: isPlayAnimat = false
        isPlayAnimat = false
        //: if data.count > 0 {
        if data.count > 0 {
            //: animatArray.addObjects(from: data as! [Any])
            animatArray.addObjects(from: data as! [Any])
        }
        //: judgePlay()
        developTrack()
    }

    /// 根据会话id 将对应的缓存动画加进来

    //: func initCachAnimatData(tagetID: String) {
    func vocalismCellGroup(tagetID: String) {
        //: let data = AbTalkingPrivateChatAnimatTool.shared.getConverCacheGiftAnimat(tagetId: tagetID)
        let data = SendAnimatTool.shared.find(tagetId: tagetID)
        //: if data.count > 0 {
        if data.count > 0 {
            //: animatArray.addObjects(from: data as! [Any])
            animatArray.addObjects(from: data as! [Any])
        }
        //: judgePlay()
        developTrack()
    }

    /// 判断是否要取数组动效 开始播放
    //: func judgePlay() {
    func developTrack() {
        //: if animatArray.count>0 && isPlayAnimat == false {
        if animatArray.count > 0, isPlayAnimat == false {
            //: playNext()
            cellCountry()
        }
    }

    /// 播放
    //: func playNext() {
    func cellCountry() {
        //: if animatArray.count > 0 {
        if animatArray.count > 0 {
            //: var index = 0
            var index = 0
            //: animatArray.enumerateObjects { obj, idx, stop in
            animatArray.enumerateObjects { obj, idx, stop in
                // 盲盒礼物\帝王礼物 优先播放
                //: let model: TalkingGiftMsgAnimatModel = obj as! TalkingGiftMsgAnimatModel
                let model: StatusMeasurable = obj as! StatusMeasurable
                //: if (model.showType == ChatGiftAnimatType.myStery.rawValue || model.showType == ChatGiftAnimatType.king.rawValue) {
                if model.showType == GiftShadowCustomReflectable.myStery.rawValue || model.showType == GiftShadowCustomReflectable.king.rawValue {
                    //: index = idx
                    index = idx
                    //: stop.pointee = true
                    stop.pointee = true
                }
            }
            //: let giftModel = self.animatArray[index]
            let giftModel = self.animatArray[index]
            //: self.isPlayAnimat = true
            self.isPlayAnimat = true
            //: self.animatArray.removeObject(at: index)
            self.animatArray.removeObject(at: index)
            //: let iscanPlay = self.giftAnimatView.didReceiveMsgModel(msgModel: giftModel)
            let iscanPlay = self.giftAnimatView.gatefold(msgModel: giftModel)
            //: if !iscanPlay {
            if !iscanPlay {
                //: self.isPlayAnimat = false
                self.isPlayAnimat = false
                //: judgePlay()
                developTrack()
            }
        }
    }

    //: override var contentMode: UIView.ContentMode {
    override var contentMode: UIView.ContentMode {
        //: didSet {
        didSet {
            //: self.giftAnimatView.contentMode = contentMode
            self.giftAnimatView.contentMode = contentMode
        }
    }
}

//: extension TalkingPrivateChatAnimatView {
extension OfReactiveCompatible {
    // 添加视图
    //: private func setupSubviews() {
    private func addSubviews() {
        //: self.isUserInteractionEnabled = false
        self.isUserInteractionEnabled = false

        //: self.addSubview(giftAnimatView)
        self.addSubview(giftAnimatView)

        //: giftAnimatView.snp.makeConstraints { make in
        giftAnimatView.snp.makeConstraints { make in
            //: make.edges.equalTo(self)
            make.edges.equalTo(self)
        }
        //: giftAnimatView.animationFinishCallback = { [weak self] obj in
        giftAnimatView.animationFinishCallback = { [weak self] _ in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.isPlayAnimat = false
            self.isPlayAnimat = false
            //: self.playNext()
            self.cellCountry()
        }

        //: giftAnimatView.finishAnimBlock = { [weak self] success in
        giftAnimatView.finishAnimBlock = { [weak self] success in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: if !success {
            if !success {
                //: self.isPlayAnimat = false
                self.isPlayAnimat = false
                //: self.playNext()
                self.cellCountry()
            }
        }
    }
}
