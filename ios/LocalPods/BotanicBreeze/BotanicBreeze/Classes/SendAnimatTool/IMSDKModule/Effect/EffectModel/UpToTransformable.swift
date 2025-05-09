
//: Declare String Begin

/*: "className" :*/
fileprivate let str_mainText:String = "bottom elseclassN"
fileprivate let str_sexTitle:[Character] = ["a","m","e"]

/*: "nativeClassName" :*/
fileprivate let str_elementName:[Character] = ["n","a","t","i","v","e","C","l","a","s","s","N","a","m","e"]

/*: "effectType" :*/
fileprivate let str_mManagerData:[Character] = ["e","f","f","e","c","t"]
fileprivate let str_playerData:String = "Typefor guard"

/*: "gifFile" :*/
fileprivate let str_equalContent:String = "gifFilelabel return layer title"

/*: "versions" :*/
fileprivate let str_insideName:String = "velabelions"

/*: "config" :*/
fileprivate let str_topValue:String = "confcellg"

/*: "mainFile" :*/
fileprivate let str_countValue:[Character] = ["m","a","i","n","F","i","l"]
fileprivate let str_momentText:[Character] = ["e"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  UpToTransformable.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/3/9.
//

//: import UIKit
import UIKit

//: enum TalkingGiftAnimatType: String {
enum IndexConvertible: String {
    //: case Gif  = "gif"
    case Gif = "gif"
    //: case Chat = "chatGift"
    case Chat = "chatGift"
}

//: enum GiftAnimatUpdateError: Int {
enum ModifyPriorityTarget: Int {
    //: case UnzipFailed  = -1001
    case UnzipFailed = -1001 // 资源 解压失败
    //: case VerifyFailed = -1002
    case VerifyFailed = -1002 // 资源 校验失败
    //: case DownLoadFailed = -1003
    case DownLoadFailed = -1003 // 资源 下载失败
}

//: enum TalkingAnimatType: Int {
enum ArrayTypeKeyColumnConvertible: Int {
    //: case Unknown  = 0
    case Unknown = 0
    //: case Gift = 1
    case Gift = 1 // 礼物动效
}

/// 动效资源的信息封装，对应一个zip资源的config.json

//: struct TalkingGiftAnimatModel: HandyJSON {
struct UpToTransformable: HandyJSON {
    //: init() {
    init() {}

    //: var className = ""
    var className = ""
    //: var nativeClassName = ""
    var nativeClassName = ""
    //: var effectType = TalkingGiftAnimatType.Gif
    var effectType = IndexConvertible.Gif /// 加载动效指定的类型
    //: var mainFile = ""
    var mainFile = ""
    //: var effectConfig = Dictionary<String, Any>()
    var effectConfig = [String: Any]()
}

//: extension TalkingGiftAnimatModel {
extension UpToTransformable {
    //: func setAnimatModek(dic: NSDictionary) -> TalkingGiftAnimatModel {
    func imageDic(dic: NSDictionary) -> UpToTransformable {
        //: var model =  TalkingGiftAnimatModel.init()
        var model = UpToTransformable()
        //: model.className = dic["className"] as? String ?? ""
        model.className = dic[(String(str_mainText.suffix(6)) + String(str_sexTitle))] as? String ?? ""
        //: model.nativeClassName = dic["nativeClassName"] as? String ?? ""
        model.nativeClassName = dic[(String(str_elementName))] as? String ?? ""
        //: model.effectType = dic["effectType"] as? TalkingGiftAnimatType ?? TalkingGiftAnimatType.Gif
        model.effectType = dic[(String(str_mManagerData) + String(str_playerData.prefix(4)))] as? IndexConvertible ?? IndexConvertible.Gif

        //: if model.effectType == .Gif {
        if model.effectType == .Gif {
            //: model.mainFile = dic["gifFile"] as? String ?? ""
            model.mainFile = dic[(String(str_equalContent.prefix(7)))] as? String ?? ""
            //: } else {
        } else {
            //: model.mainFile = dic[TalkingGiftAnimatType.Chat.rawValue] as? String ?? ""
            model.mainFile = dic[IndexConvertible.Chat.rawValue] as? String ?? ""
        }
        //: let versions: Array = dic["versions"] as! Array<Dictionary<String, Any>>
        let versions: Array = dic[(str_insideName.replacingOccurrences(of: "label", with: "rs"))] as! [[String: Any]]
        //: if versions.count <= 0 {
        if versions.count <= 0 {
            //: return model
            return model
        }
        //: let match = true
        let match = true
        /*!
         * 遍历versions数组，匹配应用版本，匹配到则使用config数据
         */
        //: for item in versions {
        for item in versions {
            //: model.effectConfig = item["config"] as! [String: Any]
            model.effectConfig = item[(str_topValue.replacingOccurrences(of: "cell", with: "i"))] as! [String: Any]
        }
        //: if (match) {
        if match {
            //: model.className       = model.effectConfig["className"] as? String ?? ""
            model.className = model.effectConfig[(String(str_mainText.suffix(6)) + String(str_sexTitle))] as? String ?? ""
            //: model.nativeClassName = model.effectConfig["nativeClassName"] as? String ?? ""
            model.nativeClassName = model.effectConfig[(String(str_elementName))] as? String ?? ""
            //: model.effectType      = model.effectConfig["effectType"] as? TalkingGiftAnimatType ?? TalkingGiftAnimatType.Gif
            model.effectType = model.effectConfig[(String(str_mManagerData) + String(str_playerData.prefix(4)))] as? IndexConvertible ?? IndexConvertible.Gif
            //: model.mainFile        = model.effectConfig["mainFile"] as? String ?? ""
            model.mainFile = model.effectConfig[(String(str_countValue) + String(str_momentText))] as? String ?? ""
        }
        //: return model
        return model
    }
}
