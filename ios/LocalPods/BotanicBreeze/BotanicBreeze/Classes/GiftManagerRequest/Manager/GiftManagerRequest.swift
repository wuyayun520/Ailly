
//: Declare String Begin

/*: "app/getConfig" :*/
fileprivate let str_videoName:[Character] = ["a","p","p","/","g","e","t","C","o","n","f","i","g"]

/*: "mf/user/getMyInfo" :*/
fileprivate let str_parentValue:[Character] = ["m","f","/","u","s","e","r","/","g","e","t","M","y","I","n","f","o"]

/*: "mf/user/getInfoColumn" :*/
fileprivate let str_shootName:[Character] = ["m","f","/","u","s","e","r","/","g","e","t","I","n"]
fileprivate let str_tempContent:String = "make current selffoCo"

/*: "%.2f" :*/
fileprivate let str_attributeData:[Character] = ["%",".","2","f"]

/*: "mfCoin" :*/
fileprivate let str_customName:[Character] = ["m","f","C","o","i","n"]

/*: "mf/index/getConfig" :*/
fileprivate let str_interactionName:String = "mf/into color type name in"
fileprivate let str_requestName:[Character] = ["o","n","f","i","g"]

/*: _ :*/
fileprivate let str_shareName:String = "white"

/*: "baseinfo =  :*/
fileprivate let str_locationValue:[Character] = ["b","a","s"]
fileprivate let str_colorValue:[Character] = ["e","i","n","f","o"," ","="," "]

/*: "UserBasicInfoSetting" :*/
fileprivate let str_inputData:String = "Usernormal let"
fileprivate let str_userValue:[Character] = ["B","a","s","i","c","I","n","f","o","S","e","t","t","i","n","g"]

/*: "/userTag.json" :*/
fileprivate let str_homeContent:String = "info remove var case fill/userT"
fileprivate let str_textData:[Character] = ["n"]

/*: "json 解析失败" :*/
fileprivate let str_indexNextTitle:String = "pic shared view selfjson "

/*: "app/reportDeviceId" :*/
fileprivate let str_layerContent:String = "app/repath equal height clear"
fileprivate let str_cornerName:[Character] = ["D","e","v","i","c","e","I","d"]

/*: "p0" :*/
fileprivate let str_iconRestoreText:[Character] = ["p","0"]

/*: "token" :*/
fileprivate let str_errTextValue:[UInt8] = [0x6e,0x65,0x6b,0x6f,0x74]

/*: "app/reportFcmPushToken" :*/
fileprivate let str_removeName:[Character] = ["a","p","p","/","r","e","p","o","r","t","F","c","m","P","u","s","h","T","o","k","e","n"]

/*: "app/init" :*/
fileprivate let str_blockValue:[Character] = ["a","p","p"]
fileprivate let str_labelData:String = "/initcolor guard input small app"

/*: "app/ping" :*/
fileprivate let str_piText:[Character] = ["a","p","p","/","p"]
fileprivate let str_titleData:[Character] = ["i","n","g"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  GiftManagerRequest.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/3/25.
//

//: import UIKit
import UIKit

//: import Alamofire
import Alamofire

//: import Adjust
import Adjust

//: import FirebaseMessaging
import FirebaseMessaging

//: var isRequestingInit = false
var kLet_barContent = false

//: var isRetryDeviceIdTime = 3.0
var kLet_informationTitle = 3.0

//: class AppManagerRequest: NSObject {
class GiftManagerRequest: NSObject {
    /// 请求app配置信息【无需登录】
    //: class func requestAppConfig(completion: @escaping FinishBlock) {
    class func server(completion: @escaping FinishBlock) {
        //: let requestModel = TalkingRequestModel.init()
        let requestModel = WithTitleThen()
        //: requestModel.requestPath = "app/getConfig"
        requestModel.requestPath = (String(str_videoName))
        //: requestModel.showErrorStatusBar = false
        requestModel.showErrorStatusBar = false
        //: ProgressHUD.show()
        ModelReactiveCompatible.fromTarget()
        //: GJ.startRequest(model: requestModel) { succeed, result, errorModel in
        kLet_nextTitle.photoLive(model: requestModel) { succeed, result, errorModel in
            //: ProgressHUD.dismiss()
            ModelReactiveCompatible.dataConverterCan()
            //: if succeed {
            if succeed {
                //: Defaults.set(result, forKey: TalkingAppConfigKey)
                kLet_turnPartyValue.set(result, forKey: kLet_rateMaxName)
                //: if let configModel = JSONDeserializer<AppConfigModel>.deserializeFrom(dict: result as? Dictionary<String, Any>, designatedPath: nil) {
                if let configModel = JSONDeserializer<AddModelType>.deserializeFrom(dict: result as? [String: Any], designatedPath: nil) {
                    //: EqualThen.share.appConfigMode = configModel
                    EqualThen.share.appConfigMode = configModel
                    // 通知
                    //: NotificationCenter.default.post(name: UPDATE_APP_GETCONFIG_NOTIFICATION, object: nil)
                    NotificationCenter.default.post(name: kLet_netName, object: nil)
                    //: completion(succeed, result, errorModel)
                    completion(succeed, result, errorModel)
                }
                //: } else {
            } else {
                //: let configInfo = Defaults.dictionary(forKey: TalkingAppConfigKey)
                let configInfo = kLet_turnPartyValue.dictionary(forKey: kLet_rateMaxName)
                //: if let configModel = JSONDeserializer<AppConfigModel>.deserializeFrom(dict: configInfo, designatedPath: nil) {
                if let configModel = JSONDeserializer<AddModelType>.deserializeFrom(dict: configInfo, designatedPath: nil) {
                    //: EqualThen.share.appConfigMode = configModel
                    EqualThen.share.appConfigMode = configModel
                    //: NotificationCenter.default.post(name: UPDATE_APP_GETCONFIG_NOTIFICATION, object: nil)
                    NotificationCenter.default.post(name: kLet_netName, object: nil)
                    //: completion(true, result, errorModel)
                    completion(true, result, errorModel)
                }
            }
        }
    }

    //: class func func__requestUserInfo(completion: @escaping FinishBlock) {
    class func makeEnable(completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = WithTitleThen()
        //: reqModel.requestPath = "mf/user/getMyInfo"
        reqModel.requestPath = (String(str_parentValue))
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_nextTitle.photoLive(model: reqModel) { succeed, result, errorModel in
            //: if succeed {
            if succeed {
                //: Defaults.set(result, forKey: TalkingLoginUserInfoCacheKey)
                kLet_turnPartyValue.set(result, forKey: kLet_buildText)
                //: if let userModel = JSONDeserializer<LoginUserModel>.deserializeFrom(dict: result as? Dictionary<String, Any>, designatedPath: nil) {
                if let userModel = JSONDeserializer<RunUserModel>.deserializeFrom(dict: result as? [String: Any], designatedPath: nil) {
                    //: EqualThen.share.loginUserMode = userModel
                    EqualThen.share.loginUserMode = userModel
                }
            }
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 查询用户余额
    //: class func func__getInfoColumn(completion: @escaping FinishBlock) {
    class func modelRow(completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = WithTitleThen()
        //: reqModel.requestPath = "mf/user/getInfoColumn"
        reqModel.requestPath = (String(str_shootName) + String(str_tempContent.suffix(4)) + "lumn")
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_nextTitle.photoLive(model: reqModel) { succeed, result, errorModel in
            //: if succeed {
            if succeed {
                //: let json = JSON(result ?? [String: Any]())
                let json = JSON(result ?? [String: Any]())
                //: EqualThen.share.loginUserMode.mf_coin = String(format: "%.2f", json["mfCoin"].doubleValue)
                EqualThen.share.loginUserMode.mf_coin = String(format: "%.2f", json[(String(str_customName))].doubleValue)
            }
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    //: class func func__requestUserConfig(completion: @escaping FinishBlock) {
    class func photoImage(completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = WithTitleThen()
        //: reqModel.requestPath = "mf/index/getConfig"
        reqModel.requestPath = (String(str_interactionName.prefix(5)) + "dex/getC" + String(str_requestName))
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_nextTitle.photoLive(model: reqModel) { succeed, result, errorModel in
            //: let configKey = "\(TalkingLoginUserConfigKey)_\(String(describing: EqualThen.share.loginUserMode.sex))"
            let configKey = "\(kLet_timeDeviceData)_\(String(describing: EqualThen.share.loginUserMode.sex))"
            //: if succeed {
            if succeed {
                //: Defaults.set(result, forKey: configKey)
                kLet_turnPartyValue.set(result, forKey: configKey)
                //: if let userModel = JSONDeserializer<AppUserConfigModel>.deserializeFrom(dict: result as? Dictionary<String, Any>, designatedPath: nil) {
                if let userModel = JSONDeserializer<ShadowTransformable>.deserializeFrom(dict: result as? [String: Any], designatedPath: nil) {
                    //: EqualThen.share.appUserConfigMode = userModel
                    EqualThen.share.appUserConfigMode = userModel
                    //: TalkingConversationListener.shared.func__LogingIn()
                    TalkingConversationListener.shared.giveAndTakeCompletion()
                    //: func__checkUserBaseinfoFileVersionWithURL(baseinfo: EqualThen.share.appUserConfigMode.baseInfo)
                    chromaticColour(baseinfo: EqualThen.share.appUserConfigMode.baseInfo)
                    // 上传用户日志
                    //: if userModel.needUploadLog == true {
                    if userModel.needUploadLog == true {
                        //: UploadLogTool.shared.uploadLog(false)
                        DeepKeyTamperReactiveCompatible.shared.treatNurseLog(false)
                    }
                    // 上报女性用户busy状态
                    //: (TalkingApplication.shared as! TalkingApplication).femaleBusyStatusReport()
                    (CellTalkingApplication.shared as! CellTalkingApplication).femaleAfterDescribe()
                }
                //: } else {
            } else {
                //: let configInfo = Defaults.dictionary(forKey: configKey)
                let configInfo = kLet_turnPartyValue.dictionary(forKey: configKey)
                //: if let userModel = JSONDeserializer<AppUserConfigModel>.deserializeFrom(dict: configInfo, designatedPath: nil) {
                if let userModel = JSONDeserializer<ShadowTransformable>.deserializeFrom(dict: configInfo, designatedPath: nil) {
                    //: EqualThen.share.appUserConfigMode = userModel
                    EqualThen.share.appUserConfigMode = userModel
                    //: TalkingConversationListener.shared.func__LogingIn()
                    TalkingConversationListener.shared.giveAndTakeCompletion()
                }
            }
            //: NotificationCenter.default.post(name: UPDATE_INDEX_GETCONFIG_NOTIFICATION, object: nil)
            NotificationCenter.default.post(name: kLet_turnName, object: nil)
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    //: class func func__checkUserBaseinfoFileVersionWithURL(baseinfo: String) {
    class func chromaticColour(baseinfo: String) {
        //: let cacheUrl = Defaults.string(forKey: TalkingUserTagCacheUrlKey)
        let cacheUrl = kLet_turnPartyValue.string(forKey: kLet_successName)
        //: printLog(message: "baseinfo = \(baseinfo)")
        printLog(message: (String(str_locationValue) + String(str_colorValue)) + "\(baseinfo)")
        //: if cacheUrl != baseinfo {
        if cacheUrl != baseinfo {
            //: AF.request(baseinfo, method: .get).responseData { responseData in
            AF.request(baseinfo, method: .get).responseData { responseData in
                //: switch responseData.result {
                switch responseData.result {
                //: case .success:
                case .success:
                    //: let responseJson = String(data: responseData.data!, encoding: .utf8)
                    let responseJson = String(data: responseData.data!, encoding: .utf8)
                    //: if let responseModel = JSONDeserializer<UserTagModel>.deserializeFrom(json: responseJson) {
                    if let responseModel = JSONDeserializer<TagModel>.deserializeFrom(json: responseJson) {
                        //: Defaults.set(baseinfo, forKey: TalkingUserTagCacheUrlKey)
                        kLet_turnPartyValue.set(baseinfo, forKey: kLet_successName)
                        //: let jsonPath = FileManager.CachesDirectory()+"UserBasicInfoSetting"
                        let jsonPath = FileManager.noLog() + (String(str_inputData.prefix(4)) + String(str_userValue))
                        //: if FileManager.createFolder(folderPath: jsonPath) {
                        if FileManager.fromGift(folderPath: jsonPath) {
                            //: FileManager.writeStringToFile(content: responseJson!, writePath: jsonPath+"/userTag.json")
                            FileManager.enterWith(content: responseJson!, writePath: jsonPath + (String(str_homeContent.suffix(6)) + "ag.jso" + String(str_textData)))
                            //: EqualThen.share.func__loadUserTagCacheData()
                            EqualThen.share.jumpTime()
                        }
                        //: } else {
                    } else {
                        //: printLog(message: "json 解析失败")
                        printLog(message: (String(str_indexNextTitle.suffix(5)) + "解析失\u{8d25}"))
                    }
                //: break
                //: case .failure:
                case .failure:

                    //: break
                    break
                }
            }
            //: } else {
        } else {
            //: EqualThen.share.func__loadUserTagCacheData()
            EqualThen.share.jumpTime()
        }
    }

    // 登录后上报FCM跟Device
    //: class func func__reportDeviceID() {
    class func dismissId() {
        //: func__reportDeviceIdentifier()
        identifier()
    }

    /// 上报adid
    //: class func func__reportDeviceIdentifier() {
    class func identifier() {
        //: let adid = Adjust.adid() ?? ""
        let adid = Adjust.adid() ?? ""
        //: if !adid.isEmptyString {
        if !adid.isEmptyString {
            //: let reqModel = TalkingRequestModel.init()
            let reqModel = WithTitleThen()
            //: reqModel.requestType = .POST
            reqModel.requestType = .POST
            //: reqModel.requestPath = "app/reportDeviceId"
            reqModel.requestPath = (String(str_layerContent.prefix(6)) + "port" + String(str_cornerName))
            //: reqModel.showErrorStatusBar = false
            reqModel.showErrorStatusBar = false
            //: var params = UIDevice.deviceInfoDic
            var params = UIDevice.deviceInfoDic
            //: if let poStr = params["p0"] {
            if let poStr = params["p0"] {
                //: let token = NSDate.getCurrentTimeStamp()
                let token = NSDate.pushFinish()
                //: reqModel.addHeaderToken = token
                reqModel.addHeaderToken = token
                //: let key = token.appending(TokenSaltStr)
                let key = token.appending(kLet_topValue)
                //: params["p0"] = (poStr as? String)?.encrypt(withKey: key)
                params["p0"] = (poStr as? String)?.lengthGallery(key)
            }
            //: reqModel.params = params
            reqModel.params = params
            //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
            kLet_nextTitle.photoLive(model: reqModel) { _, _, _ in
            }
            //: }else {
        } else {
            //: if isRetryDeviceIdTime <= 384 {
            if kLet_informationTitle <= 384 {
                //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + isRetryDeviceIdTime) {
                DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + kLet_informationTitle) {
                    //: isRetryDeviceIdTime *= 2
                    kLet_informationTitle *= 2
                    //: self.func__reportDeviceIdentifier()
                    self.identifier()
                }
            }
        }
    }

    //: class func func__reportFCMID() {
    class func scaleParty() {
        //: Messaging.messaging().token { token, error in
        Messaging.messaging().token { token, _ in
            //: if let token = token {
            if let token = token {
                //: let params = ["token": token]
                let params = [String(bytes: str_errTextValue.reversed(), encoding: .utf8)!: token]
                //: let reqModel = TalkingRequestModel.init()
                let reqModel = WithTitleThen()
                //: reqModel.requestType = .POST
                reqModel.requestType = .POST
                //: reqModel.requestPath = "app/reportFcmPushToken"
                reqModel.requestPath = (String(str_removeName))
                //: reqModel.params = params
                reqModel.params = params
                //: reqModel.showErrorStatusBar = false
                reqModel.showErrorStatusBar = false
                //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
                kLet_nextTitle.photoLive(model: reqModel) { _, _, _ in
                }
            }
        }
    }

    //: class func func__initAppRequest() {
    class func infoIn() {
        //: if isRequestingInit {
        if kLet_barContent {
            //: return
            return
        }
        //: isRequestingInit = true
        kLet_barContent = true
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = WithTitleThen()
        //: reqModel.requestPath = "app/init"
        reqModel.requestPath = (String(str_blockValue) + String(str_labelData.prefix(5)))
        //: reqModel.showErrorStatusBar = false
        reqModel.showErrorStatusBar = false
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_nextTitle.photoLive(model: reqModel) { succeed, _, _ in
            //: isRequestingInit =  false
            kLet_barContent = false
            //: if succeed && EqualThen.share.request_HasInit == false {
            if succeed && EqualThen.share.request_HasInit == false {
                //: EqualThen.share.request_HasInit = true
                EqualThen.share.request_HasInit = true
            }
        }
    }

    //: class func func__initRequestHost(completion: @escaping FinishBlock) {
    class func recordHost(completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = WithTitleThen()
        //: reqModel.requestPath = "app/ping"
        reqModel.requestPath = (String(str_piText) + String(str_titleData))
        //: reqModel.showErrorStatusBar = false
        reqModel.showErrorStatusBar = false
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_nextTitle.photoLive(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }
}
