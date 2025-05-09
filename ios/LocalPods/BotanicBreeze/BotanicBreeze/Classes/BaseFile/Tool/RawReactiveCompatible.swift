
//: Declare String Begin

/*: "allowList" :*/
fileprivate let str_upMakeTitle:String = "allowLiphone data"
fileprivate let str_dismissValue:String = "gesturet"

/*: "denyList" :*/
fileprivate let str_fileName:String = "model timedenyList"

/*: "America" :*/
fileprivate let str_statusName:[Character] = ["A","m","e","r","i","c","a"]

/*: "US" :*/
fileprivate let str_aspectName:String = "modelS"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  RawReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/8/31.
//

//: import UIKit
import UIKit

//: class TalkingLocationTool: NSObject {
class RawReactiveCompatible: NSObject {
    //: var areaArr = [TalkingAreaModel]()
    var areaArr = [EventHandyJSON]() /// 注册允许国家列表（白名单）
    //: var blackListAreaArr = [TalkingAreaModel]()
    var blackListAreaArr = [EventHandyJSON]() /// 注册不允许国家列表（黑名单）

    //: static let share = TalkingLocationTool()
    static let share = RawReactiveCompatible()
    //: private override init() {
    override private init() {
        //: super.init()
        super.init()
        //: func__loadAreaCodeData()
        asState()
    }

    //: override func copy() -> Any { return self }
    override func copy() -> Any { return self }
    //: override func mutableCopy() -> Any { return self }
    override func mutableCopy() -> Any { return self }
}

//: extension TalkingLocationTool {
extension RawReactiveCompatible {
    //: private func func__loadAreaCodeData() {
    private func asState() {
        //: ProgressHUD.show()
        ModelReactiveCompatible.fromTarget()
        //: TalkingLoginRequestTool.req_countryList {succeed, result, errorModel in
        LoginRequestTool.model { succeed, result, _ in
            //: ProgressHUD.dismiss()
            ModelReactiveCompatible.dataConverterCan()
            //: if succeed {
            if succeed {
                //: let dict: Dictionary =  result as! Dictionary<String, Any>
                let dict: Dictionary = result as! [String: Any]
                //: let allowArray: Array =  dict["allowList"] as! Array<Any>
                let allowArray: Array = dict[(String(str_upMakeTitle.prefix(7)) + str_dismissValue.replacingOccurrences(of: "gesture", with: "s"))] as! [Any]
                //: let denyListArray: Array =  dict["denyList"] as! Array<Any>
                let denyListArray: Array = dict[(String(str_fileName.suffix(8)))] as! [Any]

                //: if let datas = Array<TalkingAreaModel>.deserialize(from: allowArray as? Array) {
                if let datas = Array<EventHandyJSON>.deserialize(from: allowArray as? Array) {
                    //: self.areaArr.append(contentsOf: (datas as? [TalkingAreaModel])!)
                    self.areaArr.append(contentsOf: (datas as? [EventHandyJSON])!)
                }
                //: if let blackdatas = Array<TalkingAreaModel>.deserialize(from: denyListArray as? Array) {
                if let blackdatas = Array<EventHandyJSON>.deserialize(from: denyListArray as? Array) {
                    //: self.blackListAreaArr.append(contentsOf: (blackdatas as? [TalkingAreaModel])!)
                    self.blackListAreaArr.append(contentsOf: (blackdatas as? [EventHandyJSON])!)
                }
            }
        }
    }

    /// （注册风控使用）是否包含当前国家，包含则禁止注册
    /// - Returns: false: 不包含，true: 包含
    //: static func isIncludeBlackListCountry() -> Bool {
    static func dataSession() -> Bool {
        //: var include = false
        var include = false
        //: let simInfo = UIDevice.getDeviceSimInfo()
        let simInfo = UIDevice.countimateInfo()
        //: let arr = TalkingLocationTool.share.blackListAreaArr
        let arr = RawReactiveCompatible.share.blackListAreaArr
        //: for model in arr {
        for model in arr {
            //: if simInfo.contains(model.countryCode.uppercased()) || simInfo.contains(model.countryCode.lowercased()) {
            if simInfo.contains(model.countryCode.uppercased()) || simInfo.contains(model.countryCode.lowercased()) {
                //: include = true
                include = true
                //: break
                break
            }
        }

        //: return include
        return include
    }

    /// （注册流程选择）选择国家编号使用，白名单
    //: func getDefaltCountry() -> TalkingAreaModel {
    func whish() -> EventHandyJSON {
        //: let simInfo = UIDevice.getDeviceSimInfo()
        let simInfo = UIDevice.countimateInfo()
        //: let arr = TalkingLocationTool.share.areaArr
        let arr = RawReactiveCompatible.share.areaArr
        //: for model in arr {
        for model in arr {
            //: if simInfo.contains(model.countryCode.uppercased()) || simInfo.contains(model.countryCode.lowercased()) {
            if simInfo.contains(model.countryCode.uppercased()) || simInfo.contains(model.countryCode.lowercased()) {
                //: return model
                return model
            }
        }
        //: return TalkingAreaModel.init(areaCode: "1", areaName: "America", countryCode: "US", url: "")
        return EventHandyJSON(areaCode: "1", areaName: (String(str_statusName)), countryCode: "US", url: "")
    }
}

//: class TalkingAreaModel: HandyJSON {
class EventHandyJSON: HandyJSON {
    //: var areaCode = ""
    var areaCode = ""
    //: var countryCode = ""
    var countryCode = ""
    //: @objc var areaName = ""
    @objc var areaName = ""
    //: var url = ""
    var url = ""
    //: required init() {}
    required init() {}
    //: init(areaCode: String, areaName: String, countryCode: String, url:String) {
    init(areaCode: String, areaName: String, countryCode: String, url: String) {
        //: self.areaCode = areaCode
        self.areaCode = areaCode
        //: self.areaName = areaName
        self.areaName = areaName
        //: self.countryCode = countryCode
        self.countryCode = countryCode
        //: self.url = url
        self.url = url
    }
}
