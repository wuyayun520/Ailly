
//: Declare String Begin

/*: "V4ujGjsNUl6RvgjvgD6m91" :*/
fileprivate let str_toContent:[Character] = ["V","4","u","j","G","j","s","N","U","l","6","R","v","g","j","v","g","D","6","m","9","1"]

/*: "data/index" :*/
fileprivate let str_menuSourceName:[Character] = ["d","a","t","a"]
fileprivate let str_picValue:[Character] = ["/","i","n","d","e","x"]

/*: "toUid" :*/
fileprivate let str_touchName:[Character] = ["t","o","U","i","d"]

/*: "uid" :*/
fileprivate let str_textName:String = "ufrom"

/*: "POST" :*/
fileprivate let str_goingTitle:String = "PsourceST"

/*: "Token" :*/
fileprivate let str_centerName:String = "to broad import colorToken"

/*: "%@" :*/
fileprivate let str_handleTitle:[Character] = ["%","@"]

/*: "无法解析出JSON字符串" :*/
fileprivate let str_phoneValue:[Character] = ["无","\u{6cd5}","解","析","出"]
fileprivate let str_dataName:String = "title"
fileprivate let str_equalTitle:[Character] = ["S","O","N","字","\u{7b26}","串"]

/*: "plat" :*/
fileprivate let str_layerValue:String = "plarequest"

/*: "ios" :*/
fileprivate let str_iconName:String = "inormal"

/*: "packageId" :*/
fileprivate let str_topOpenText:String = "packacount"
fileprivate let str_videoName:String = "ace room equaleId"

/*: "channel" :*/
fileprivate let str_makeData:String = "CH"
fileprivate let str_leadingName:[Character] = ["a","n","n","e","l"]

/*: "type" :*/
fileprivate let str_inputValue:[Character] = ["t","y","p","e"]

/*: "stat" :*/
fileprivate let str_barMakeData:String = "ssendt"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  DeliverTheGoodsReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/6/19.
//

//: import Alamofire
import Alamofire

//: import UIKit
import UIKit

//: let uploadRecord = UploadRecordManage()
let kLet_textData = DeliverTheGoodsReactiveCompatible()
//: let TokenSaltStr = "V4ujGjsNUl6RvgjvgD6m91"
let kLet_topValue = (String(str_toContent))

//: class UploadRecordManage: NSObject {
class DeliverTheGoodsReactiveCompatible: NSObject {
    //: public func uploadRecordEvent(eventID: String, toUid: String? = nil, jsonStr: String? = nil) {
    public func historicalPaper(eventID: String, toUid: String? = nil, jsonStr: String? = nil) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = WithTitleThen()
        //: reqModel.requestPath = "data/index"
        reqModel.requestPath = (String(str_menuSourceName) + String(str_picValue))
        //: reqModel.requestServer = EqualThen.share.appConfigMode.reportDomain
        reqModel.requestServer = EqualThen.share.appConfigMode.reportDomain
        //: var dict = self.getUploadInfoDict()
        var dict = self.cellDict()
        //: dict["e"] = eventID /// 事件关键字
        dict["e"] = eventID /// 事件关键字
        //: if jsonStr?.count ?? 0 > 0 {
        if jsonStr?.count ?? 0 > 0 {
            //: dict["c"] = NSDictionary(jsonString: jsonStr!)
            dict["c"] = NSDictionary(jsonString: jsonStr!)
            //: } else {
        } else {
            //: var messageDic = [String: Any]()
            var messageDic = [String: Any]()
            //: if toUid?.count ?? 0 > 0 {
            if toUid?.count ?? 0 > 0 {
                //: messageDic["toUid"] = toUid
                messageDic[(String(str_touchName))] = toUid
            }
            //: messageDic["uid"] = EqualThen.share.loginUserMode.userID
            messageDic[(str_textName.replacingOccurrences(of: "from", with: "id"))] = EqualThen.share.loginUserMode.userID
            //: dict["c"] = messageDic /// 事件详细内容
            dict["c"] = messageDic /// 事件详细内容
        }
        //: reqModel.params = dict
        reqModel.params = dict
        //: self.uploadRecordRequest(model: reqModel) { succeed, _, _ in
        self.memorabiliaAt(model: reqModel) { succeed, _, _ in
            //: if succeed {}
            if succeed {}
        }
    }

    //: public func uploadRecordEvent(eventID: String, parameterStr: [String: Any]) {
    public func pictureOf(eventID: String, parameterStr: [String: Any]) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = WithTitleThen()
        //: reqModel.requestPath = "data/index"
        reqModel.requestPath = (String(str_menuSourceName) + String(str_picValue))
        //: reqModel.requestServer = EqualThen.share.appConfigMode.reportDomain
        reqModel.requestServer = EqualThen.share.appConfigMode.reportDomain
        //: var dict = self.getUploadInfoDict()
        var dict = self.cellDict()
        //: dict["e"] = eventID /// 事件关键字
        dict["e"] = eventID /// 事件关键字
        //: let messageDic = NSMutableDictionary(dictionary: parameterStr)
        let messageDic = NSMutableDictionary(dictionary: parameterStr)
        //: messageDic["uid"] = EqualThen.share.loginUserMode.userID
        messageDic[(str_textName.replacingOccurrences(of: "from", with: "id"))] = EqualThen.share.loginUserMode.userID
        //: dict["c"] = messageDic /// 事件详细内容
        dict["c"] = messageDic /// 事件详细内容
        //: reqModel.params = dict
        reqModel.params = dict
        //: self.uploadRecordRequest(model: reqModel) { succeed, _, _ in
        self.memorabiliaAt(model: reqModel) { succeed, _, _ in
            //: if succeed {}
            if succeed {}
        }
    }

    //: public func uploadRecordRequest(model: TalkingRequestModel, completion: @escaping FinishBlock) {
    public func memorabiliaAt(model: WithTitleThen, completion _: @escaping FinishBlock) {
        //: let serverUrl = GJ.buildServerUrl(model: model)
        let serverUrl = kLet_nextTitle.liveIndex(model: model)

        //: let token = NSDate.getCurrentTimeStamp()
        let token = NSDate.pushFinish()

        //: let request = NSMutableURLRequest()
        let request = NSMutableURLRequest()
        //: request.httpMethod = "POST"
        request.httpMethod = (str_goingTitle.replacingOccurrences(of: "source", with: "O"))
        //: request.url = NSURL(string: serverUrl) as URL?
        request.url = NSURL(string: serverUrl) as URL?
        //: request.timeoutInterval = 30
        request.timeoutInterval = 30
//        request.setValue("keep-alive", forHTTPHeaderField: "Connection")
//        request.setValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-Type")
        //: request.setValue(token, forHTTPHeaderField: "Token")
        request.setValue(token, forHTTPHeaderField: (String(str_centerName.suffix(5))))

        //: let key = token.appendingFormat("%@", TokenSaltStr)
        let key = token.appendingFormat("%@", kLet_topValue)
        //: let bodyString = self.getJSONStringFromDictionary(model.params as NSDictionary)
        let bodyString = self.online(model.params as NSDictionary)
        //: let encryStr = bodyString.encrypt(withKey: key)
        let encryStr = bodyString.lengthGallery(key)
        //: request.httpBody = encryStr?.data(using: .utf8)
        request.httpBody = encryStr?.data(using: .utf8)
        //: let session = URLSession.shared
        let session = URLSession.shared
        //: let datatask = session.dataTask(with: request as URLRequest) { data, _, error in
        let datatask = session.dataTask(with: request as URLRequest) { data, _, error in
            //: if error != nil {
            if error != nil {
                //: print(error ?? "")
                //: } else {
            } else {
                //: let jsonStr = NSString(data: data!, encoding: NSUTF8StringEncoding)
                let jsonStr = NSString(data: data!, encoding: NSUTF8StringEncoding)
                //: if let responseModel = JSONDeserializer<TalkingBaseResponse>.deserializeFrom(json: jsonStr as String?) {
                if let responseModel = JSONDeserializer<MakeTransformable>.deserializeFrom(json: jsonStr as String?) {
                    //: print(responseModel)
                }
            }
        }
        //: datatask.resume()
        datatask.resume()
    }

    //: func getJSONStringFromDictionary(_ dictionary: NSDictionary) -> String {
    func online(_ dictionary: NSDictionary) -> String {
        //: if !JSONSerialization.isValidJSONObject(dictionary) {
        if !JSONSerialization.isValidJSONObject(dictionary) {
            //: printLog(message: "无法解析出JSON字符串")
            printLog(message: (String(str_phoneValue) + str_dataName.replacingOccurrences(of: "title", with: "J") + String(str_equalTitle)))
            //: return String()
            return String()
        }
        //: let data: NSData! = try? JSONSerialization.data(withJSONObject: dictionary, options: []) as NSData?
        let data: NSData! = try? JSONSerialization.data(withJSONObject: dictionary, options: []) as NSData?
        //: let JSONString = NSString(data: data as Data, encoding: String.Encoding.utf8.rawValue)
        let JSONString = NSString(data: data as Data, encoding: String.Encoding.utf8.rawValue)
        //: return JSONString! as String
        return JSONString! as String
    }
}

//: extension UploadRecordManage {
extension DeliverTheGoodsReactiveCompatible {
    /// 获取上报字典信息
    //: private func getUploadInfoDict() -> [String: Any] {
    private func cellDict() -> [String: Any] {
        //: var dict = [String: Any]()
        var dict = [String: Any]()
        //: dict["plat"] = "ios" /// 客户端平台
        dict[(str_layerValue.replacingOccurrences(of: "request", with: "t"))] = (str_iconName.replacingOccurrences(of: "normal", with: "os")) /// 客户端平台
        //: dict["packageId"] = PackageID /// 分包号
        dict[(str_topOpenText.replacingOccurrences(of: "count", with: "g") + String(str_videoName.suffix(3)))] = kLet_playPageValue /// 分包号
        //: dict["v"] = AppNetVersion /// 客户端版本
        dict["v"] = kLet_descriptionData /// 客户端版本
        //: dict["t"] = NSDate.getCurrentTimeStamp() /// 事件发生的时间
        dict["t"] = NSDate.pushFinish() /// 事件发生的时间
        //: dict["channel"] = PackageID /// 渠道代号,ios默认和packageId 相同
        dict[(str_makeData.lowercased() + String(str_leadingName))] = kLet_playPageValue /// 渠道代号,ios默认和packageId 相同
        //: dict["type"] = "stat" /// 上报类型(stat埋点上报、pfm性能指标)
        dict[(String(str_inputValue))] = (str_barMakeData.replacingOccurrences(of: "send", with: "ta")) /// 上报类型(stat埋点上报、pfm性能指标)
        //: return dict
        return dict
    }
}
