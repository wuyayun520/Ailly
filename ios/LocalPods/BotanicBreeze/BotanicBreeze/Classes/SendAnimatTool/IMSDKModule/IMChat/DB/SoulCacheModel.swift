
//: Declare String Begin

/*: "toUserInfo" :*/
fileprivate let str_playText:[Character] = ["t","o","U","s","e"]
fileprivate let str_toData:String = "rInfomeeting make"

/*: "toUid" :*/
fileprivate let str_infoContent:String = "path path view male imagetoUid"

/*: "nickname" :*/
fileprivate let str_viewValue:String = "nicknamcell"

/*: "headPic" :*/
fileprivate let str_messageOfTitle:String = "model image iconheadPic"

/*: "sex" :*/
fileprivate let str_topLabValue:String = "sepath"

/*: "age" :*/
fileprivate let str_cellData:String = "AGE"

/*: "tpAuth" :*/
fileprivate let str_nextName:[Character] = ["t","p","A","u","t","h"]

/*: "interest" :*/
fileprivate let str_levelValue:[Character] = ["i","n","t","e","r","e","s","t"]

/*: "picture" :*/
fileprivate let str_modelName:[Character] = ["p","i","c","t","u","r","e"]

/*: "loungePlus" :*/
fileprivate let str_fatalText:[Character] = ["l","o","u","n","g","e","P","l","u","s"]

/*: "vipSkinId" :*/
fileprivate let str_momentTitle:[Character] = ["v","i","p","S","k","i"]
fileprivate let str_cardText:[Character] = ["n","I","d"]

/*: "voicePrice" :*/
fileprivate let str_requestData:String = "continue model if valuevoiceP"
fileprivate let str_equalText:[Character] = ["r","i","c","e"]

/*: "videoPrice" :*/
fileprivate let str_countData:[Character] = ["v","i","d","e","o","P","r","i","c","e"]

/*: "voiceVIPPrice" :*/
fileprivate let str_matchTitle:String = "verrorice"
fileprivate let str_keyMakeTitle:[Character] = ["V","I","P","P","r","i","c","e"]

/*: "videoVIPPrice" :*/
fileprivate let str_cellText:String = "VIDE"

/*: "version" :*/
fileprivate let str_partyValue:String = "start"
fileprivate let str_hiddenData:String = "ersinumbern"

/*: "headPicFrame" :*/
fileprivate let str_socialContent:String = "headPheight label maximum"
fileprivate let str_withText:String = "let self screen row viewicFrame"

/*: "signature" :*/
fileprivate let str_commentData:[Character] = ["s","i","g","n","a","t"]
fileprivate let str_messageData:[Character] = ["u","r","e"]

/*: "constellation" :*/
fileprivate let str_collectName:String = "cerrorste"

/*: "onlineStatus" :*/
fileprivate let str_labelToTitle:[Character] = ["o","n","l","i","n"]
fileprivate let str_pageData:String = "eStatuscell class super button"

/*: "isNewUser" :*/
fileprivate let str_inviteKindText:[Character] = ["i","s","N","e","w","U","s"]
fileprivate let str_withName:[Character] = ["e","r"]

/*: "isOfficial" :*/
fileprivate let str_clickValue:String = "equal log draftisOf"

/*: "userStatus" :*/
fileprivate let str_dismissData:String = "userStitle invite"
fileprivate let str_labelUpContent:String = "record"

/*: "remarkInfo" :*/
fileprivate let str_translateValue:[Character] = ["r","e","m","a","r","k","I","n","f","o"]

/*: "content" :*/
fileprivate let str_skipToName:String = "CONTE"
fileprivate let str_indexTitle:String = "nsize"

/*: "top" :*/
fileprivate let str_nameData:String = "ttimep"

/*: "enableVideoCall" :*/
fileprivate let str_bottomData:String = "enableVview vertical up voice model"
fileprivate let str_textContent:String = "on model termsideoCall"

/*: "voiceBean" :*/
fileprivate let str_photoFatalValue:[Character] = ["v","o","i","c","e","B","e","a","n"]

/*: "videoBean" :*/
fileprivate let str_labRequestLabelData:String = "viindexo"

/*: "prompt" :*/
fileprivate let str_headText:String = "low"
fileprivate let str_viewName:[Character] = ["r","o","m","p","t"]

/*: "matchRate" :*/
fileprivate let str_fatalName:String = "matchRsucceed var name"
fileprivate let str_shareName:[Character] = ["a","t","e"]

/*: "existSess" :*/
fileprivate let str_viewTitle:String = "list selfexistSes"
fileprivate let str_permissionData:String = "make"

/*: "totalIntimate" :*/
fileprivate let str_hiddenMagnitudeData:String = "tbackal"
fileprivate let str_lineData:String = "section"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  SoulCacheModel.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/9/16.
//

//: import UIKit
import UIKit

//: @objcMembers
@objcMembers
//: public class SoulCacheModel: NSObject, HandyJSON {
public class SoulCacheModel: NSObject, HandyJSON {
    //: public var uid: String = ""
    public var uid: String = ""
    //: public var nickname: String = ""
    public var nickname: String = ""
    //: public var age: String = "0"
    public var age: String = "0"
    //: public var headPic: String = ""
    public var headPic: String = ""
    //: public var sex: String = "0"                   // 1 男性 2 女性
    public var sex: String = "0" // 1 男性 2 女性
    //: public var version: String = "0"               // 当前用户版本
    public var version: String = "0" // 当前用户版本

    //: var interest: Array<String> = []
    var interest: [String] = []
    //: var picture: Array<String> = []
    var picture: [String] = []
    //: public var tpAuth: Bool = false
    public var tpAuth: Bool = false // 是否认证
    //: var enableVideoCall = false
    var enableVideoCall = false // 是否展示视频通话按钮，默认否
    //: public var loungePlus: Bool = false
    public var loungePlus: Bool = false // 是否订阅
    //: var vipSkinId = 0
    var vipSkinId = 0 // vip皮肤id
    //: var voicePrice: String = ""             // 语音通话价格
    var voicePrice: String = "" // 语音通话价格
    //: var videoPrice: String = ""             // 视频通话价格
    var videoPrice: String = "" // 视频通话价格
    //: var videoVIPPrice: String = ""          // 视频通话VIP价格
    var videoVIPPrice: String = "" // 视频通话VIP价格
    //: var voiceVIPPrice: String = ""          // 语音通话VIP价格
    var voiceVIPPrice: String = "" // 语音通话VIP价格
    //: var videoBean: String = ""              // 视频通话获取积分（限女性）
    var videoBean: String = "" // 视频通话获取积分（限女性）
    //: var voiceBean: String = ""              // 语音通话获取积分（限女性）
    var voiceBean: String = "" // 语音通话获取积分（限女性）
    //: var prompt: String = ""                 // VIP折扣提醒（限女性）
    var prompt: String = "" // VIP折扣提醒（限女性）
    //: public var headPicFrame: String = ""    // 头像框
    public var headPicFrame: String = "" // 头像框
    //: var matchRate = 0
    var matchRate = 0 // 匹配度
    //: var signature: String = ""              // 签名
    var signature: String = "" // 签名
    //: var constellation: String = ""          // 星座
    var constellation: String = "" // 星座
    //: var existSess: Bool = false
    var existSess: Bool = false // false表示未建立会话
    //: var onlineStatus = 0
    var onlineStatus = 0 // 用户在线状态 1=在线 0=不在线
    //: var isNewUser = false
    var isNewUser = false // 是否新用户
    //: var isHaveSession = false
    var isHaveSession = false // 是否建立会话
    //: public var isOfficial = false
    public var isOfficial = false // 是否官方账号
    //: var intimate = 0
    var intimate = 0 // 亲密度
    //: var intimateTime = 0
    var intimateTime = 0 // 亲密度保存时间
    //: var readReceiptTime = 0
    var readReceiptTime = 0 // 对方已读消息回执时间戳
    //: var userStatus = 1
    var userStatus = 1 // 用户状态 1正常2被禁言3被封号5被拉黑
    //: var content = ""                        // 置顶内容
    var content = "" // 置顶内容
    //: var top = 2
    var top = 2 // 是否置顶 1：置顶，2：否

    //: public required override init() {}
    override public required init() {}

    //: public class func func__transformedChatinfo(userDic: Dictionary<String, Any>) -> SoulCacheModel {
    public class func behindObserve(userDic: [String: Any]) -> SoulCacheModel {
        //: let wrap = SoulCacheModel.init()
        let wrap = SoulCacheModel()

        //: if userDic.keys.contains("toUserInfo") {
        if userDic.keys.contains((String(str_playText) + String(str_toData.prefix(5)))) {
            //: let userInfoDic = userDic["toUserInfo"] as! Dictionary<String, Any>
            let userInfoDic = userDic[(String(str_playText) + String(str_toData.prefix(5)))] as! [String: Any]
            //: if userInfoDic.keys.contains("toUid") {
            if userInfoDic.keys.contains((String(str_infoContent.suffix(5)))) {
                //: wrap.uid = "\(userInfoDic["toUid"] as! NSNumber)"
                wrap.uid = "\(userInfoDic[(String(str_infoContent.suffix(5)))] as! NSNumber)"
            }
            //: wrap.nickname = userInfoDic["nickname"] as? String ?? ""
            wrap.nickname = userInfoDic[(str_viewValue.replacingOccurrences(of: "cell", with: "e"))] as? String ?? ""
            //: wrap.headPic = userInfoDic["headPic"] as? String ?? ""
            wrap.headPic = userInfoDic[(String(str_messageOfTitle.suffix(7)))] as? String ?? ""
            //: wrap.sex = userInfoDic["sex"] as? String ?? ""
            wrap.sex = userInfoDic[(str_topLabValue.replacingOccurrences(of: "path", with: "x"))] as? String ?? ""
            //: wrap.age = "\(userInfoDic["age"] as? NSNumber ?? NSNumber.init())"
            wrap.age = "\(userInfoDic[(str_cellData.lowercased())] as? NSNumber ?? NSNumber())"
            //: wrap.tpAuth = userInfoDic["tpAuth"] as? Bool ?? false
            wrap.tpAuth = userInfoDic[(String(str_nextName))] as? Bool ?? false
            //: wrap.interest = userInfoDic["interest"] as? Array<String> ?? [""]
            wrap.interest = userInfoDic[(String(str_levelValue))] as? [String] ?? [""]
            //: wrap.picture = userInfoDic["picture"] as? Array<String> ?? [""]
            wrap.picture = userInfoDic[(String(str_modelName))] as? [String] ?? [""]
            //: wrap.loungePlus = userInfoDic["loungePlus"] as? Bool ?? false
            wrap.loungePlus = userInfoDic[(String(str_fatalText))] as? Bool ?? false
            //: wrap.vipSkinId = userInfoDic["vipSkinId"] as? Int ?? 0
            wrap.vipSkinId = userInfoDic[(String(str_momentTitle) + String(str_cardText))] as? Int ?? 0
            //: wrap.voicePrice = userInfoDic["voicePrice"] as? String ?? ""
            wrap.voicePrice = userInfoDic[(String(str_requestData.suffix(6)) + String(str_equalText))] as? String ?? ""
            //: wrap.videoPrice = userInfoDic["videoPrice"] as? String ?? ""
            wrap.videoPrice = userInfoDic[(String(str_countData))] as? String ?? ""
            //: wrap.voiceVIPPrice = userInfoDic["voiceVIPPrice"] as? String ?? ""
            wrap.voiceVIPPrice = userInfoDic[(str_matchTitle.replacingOccurrences(of: "error", with: "o") + String(str_keyMakeTitle))] as? String ?? ""
            //: wrap.videoVIPPrice = userInfoDic["videoVIPPrice"] as? String ?? ""
            wrap.videoVIPPrice = userInfoDic[(str_cellText.lowercased() + "oVIPPrice")] as? String ?? ""
            //: wrap.version = userInfoDic["version"] as? String ?? ""
            wrap.version = userInfoDic[(str_partyValue.replacingOccurrences(of: "start", with: "v") + str_hiddenData.replacingOccurrences(of: "number", with: "o"))] as? String ?? ""
            //: wrap.headPicFrame = userInfoDic["headPicFrame"] as? String ?? ""
            wrap.headPicFrame = userInfoDic[(String(str_socialContent.prefix(5)) + String(str_withText.suffix(7)))] as? String ?? ""
            //: wrap.signature = userInfoDic["signature"] as? String ?? ""
            wrap.signature = userInfoDic[(String(str_commentData) + String(str_messageData))] as? String ?? ""
            //: wrap.constellation = userInfoDic["constellation"] as? String ?? ""
            wrap.constellation = userInfoDic[(str_collectName.replacingOccurrences(of: "error", with: "on") + "llation")] as? String ?? ""
            //: wrap.onlineStatus = userInfoDic["onlineStatus"] as! Int
            wrap.onlineStatus = userInfoDic[(String(str_labelToTitle) + String(str_pageData.prefix(7)))] as! Int
            //: wrap.isNewUser = userInfoDic["isNewUser"] as? Bool ?? false
            wrap.isNewUser = userInfoDic[(String(str_inviteKindText) + String(str_withName))] as? Bool ?? false
            //: wrap.isOfficial = userInfoDic["isOfficial"] as? Bool ?? false
            wrap.isOfficial = userInfoDic[(String(str_clickValue.suffix(4)) + "ficial")] as? Bool ?? false
            //: wrap.userStatus = userInfoDic["userStatus"] as? Int ?? 1
            wrap.userStatus = userInfoDic[(String(str_dismissData.prefix(5)) + "tatu" + str_labelUpContent.replacingOccurrences(of: "record", with: "s"))] as? Int ?? 1
        }
        //: if userDic.keys.contains("remarkInfo") { // 备注相关
        if userDic.keys.contains((String(str_translateValue))) { // 备注相关
            //: let remarkDict = userDic["remarkInfo"] as! [String: Any]
            let remarkDict = userDic[(String(str_translateValue))] as! [String: Any]
            //: wrap.content = remarkDict["content"] as? String ?? ""
            wrap.content = remarkDict[(str_skipToName.lowercased() + str_indexTitle.replacingOccurrences(of: "size", with: "t"))] as? String ?? ""
            //: wrap.top = remarkDict["top"] as? Int ?? 2
            wrap.top = remarkDict[(str_nameData.replacingOccurrences(of: "time", with: "o"))] as? Int ?? 2
        }
        //: if userDic.keys.contains("enableVideoCall") {
        if userDic.keys.contains((String(str_bottomData.prefix(7)) + String(str_textContent.suffix(8)))) {
            //: wrap.enableVideoCall = userDic["enableVideoCall"] as! Bool
            wrap.enableVideoCall = userDic[(String(str_bottomData.prefix(7)) + String(str_textContent.suffix(8)))] as! Bool
        }
        //: if userDic.keys.contains("voiceBean") {
        if userDic.keys.contains((String(str_photoFatalValue))) {
            //: wrap.voiceBean = userDic["voiceBean"] as! String
            wrap.voiceBean = userDic[(String(str_photoFatalValue))] as! String
        }
        //: if userDic.keys.contains("videoBean") {
        if userDic.keys.contains((str_labRequestLabelData.replacingOccurrences(of: "index", with: "de") + "Bean")) {
            //: wrap.videoBean =  userDic["videoBean"] as! String
            wrap.videoBean = userDic[(str_labRequestLabelData.replacingOccurrences(of: "index", with: "de") + "Bean")] as! String
        }
        //: if userDic.keys.contains("prompt") {
        if userDic.keys.contains((str_headText.replacingOccurrences(of: "low", with: "p") + String(str_viewName))) {
            //: wrap.prompt = userDic["prompt"] as! String
            wrap.prompt = userDic[(str_headText.replacingOccurrences(of: "low", with: "p") + String(str_viewName))] as! String
        }
        //: if userDic.keys.contains("matchRate") {
        if userDic.keys.contains((String(str_fatalName.prefix(6)) + String(str_shareName))) {
            //: wrap.matchRate =  userDic["matchRate"] as! Int
            wrap.matchRate = userDic[(String(str_fatalName.prefix(6)) + String(str_shareName))] as! Int
        }
        //: if userDic.keys.contains("existSess") {
        if userDic.keys.contains((String(str_viewTitle.suffix(8)) + str_permissionData.replacingOccurrences(of: "make", with: "s"))) {
            //: wrap.existSess = userDic["existSess"] as? Bool ?? false
            wrap.existSess = userDic[(String(str_viewTitle.suffix(8)) + str_permissionData.replacingOccurrences(of: "make", with: "s"))] as? Bool ?? false
        }
        //: if userDic.keys.contains("totalIntimate") {
        if userDic.keys.contains((str_hiddenMagnitudeData.replacingOccurrences(of: "back", with: "ot") + "Intima" + str_lineData.replacingOccurrences(of: "section", with: "te"))) {
            //: wrap.intimate = userDic["totalIntimate"] as? Int ?? 0
            wrap.intimate = userDic[(str_hiddenMagnitudeData.replacingOccurrences(of: "back", with: "ot") + "Intima" + str_lineData.replacingOccurrences(of: "section", with: "te"))] as? Int ?? 0
        }
        //: return wrap
        return wrap
    }
}
