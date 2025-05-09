
//: Declare String Begin

/*: "user/updateInfo" :*/
fileprivate let str_videoValue:String = "user/self user write self"
fileprivate let str_messageContent:[Character] = ["e","I","n","f","o"]

/*: "gallery/getGalleryByUid" :*/
fileprivate let str_lessEqualName:[Character] = ["g","a","l","l","e","r"]
fileprivate let str_toValue:[Character] = ["y","/","g","e","t","G","a","l","l","e","r","y"]
fileprivate let str_addData:[Character] = ["B","y","U","i","d"]

/*: "gallery/upload" :*/
fileprivate let str_areaStatusTitle:[Character] = ["g","a","l","l","e","r","y","/"]
fileprivate let str_nameMakeText:String = "uplinsided"

/*: "gallery/deletePic" :*/
fileprivate let str_whitePushName:[Character] = ["g","a","l","l","e","r","y","/","d","e","l","e","t","e","P","i","c"]

/*: "user/tagDelete" :*/
fileprivate let str_inviteValue:[Character] = ["u","s","e","r","/","t","a","g"]
fileprivate let str_observerValue:String = "skip wrapDelete"

/*: "mf/user/tagEdit" :*/
fileprivate let str_errData:String = "mf/uview normal file"
fileprivate let str_userTitle:String = "make self inEdit"

/*: "app/feedback" :*/
fileprivate let str_failData:String = "row"
fileprivate let str_redValue:[Character] = ["p","p","/","f","e","e","d","b","a","c","k"]

/*: "IM/getMyBlackList" :*/
fileprivate let str_onlineValue:[Character] = ["I","M","/","g","e","t","M","y","B","l","a","c","k","L"]
fileprivate let str_matchName:[Character] = ["i","s","t"]

/*: "mf/user/getSetting" :*/
fileprivate let str_onOfText:String = "view each manager bag equalmf/us"
fileprivate let str_requestBackModelName:String = "TING"

/*: "mf/user/setConfig" :*/
fileprivate let str_dataTitle:String = "mf/usereturn case"
fileprivate let str_pointValue:String = "tConfigdata lab pick"

/*: "mf/user/settingStatus" :*/
fileprivate let str_viewContent:String = "mf/usextension var request instance"
fileprivate let str_timeName:String = "block if starttingS"
fileprivate let str_errorName:String = "labalabus"

/*: "type" :*/
fileprivate let str_addName:[UInt8] = [0xac,0xa1,0xa8,0xbd]

private func upCountimate(location num: UInt8) -> UInt8 {
    return num ^ 216
}

/*: "user/lockAccount" :*/
fileprivate let str_taskTitle:[Character] = ["u","s","e","r","/","l","o","c","k","A","c"]
fileprivate let str_arrayData:[Character] = ["c","o","u","n","t"]

/*: "mf/user/editInfo" :*/
fileprivate let str_labelData:String = "model equal cell pending shadowmf/u"
fileprivate let str_keyTitle:[Character] = ["d","i","t","I","n","f","o"]

/*: "mf/userSign/list" :*/
fileprivate let str_messageText:[Character] = ["m","f","/","u","s"]
fileprivate let str_borderValue:[Character] = ["e","r","S","i","g","n","/","l","i","s","t"]

/*: "mf/userSign/signIn" :*/
fileprivate let str_downText:String = "to indexmf/u"
fileprivate let str_pathName:String = "up tapgn/sign"
fileprivate let str_titleName:String = "Inmanager image lab self"

/*: "mf/dating/saveVideo" :*/
fileprivate let str_appData:[Character] = ["m","f","/","d","a","t","i","n"]
fileprivate let str_nowPushData:[Character] = ["g","/","s","a","v","e"]
fileprivate let str_headName:[Character] = ["V","i","d","e","o"]

/*: "mf/dating/getConfig" :*/
fileprivate let str_mText:String = "other array make model makemf/dat"
fileprivate let str_toTitle:String = "tConfigcontainer female temp index log"

/*: "mf/dating/deleteVideo" :*/
fileprivate let str_styleName:[Character] = ["m","f","/","d","a","t","i","n","g","/","d","e","l"]
fileprivate let str_halfValue:String = "etitle"
fileprivate let str_localValue:[Character] = ["e","V","i","d","e","o"]

/*: "mf/greet/updateAudioRemark" :*/
fileprivate let str_contentData:String = "mf/gview message size opportunity"
fileprivate let str_hiddenTapText:String = "view viewpdateA"
fileprivate let str_pathTitle:String = "marsource"

/*: "mf/greet/list" :*/
fileprivate let str_onName:String = "mf/greefirst cell"
fileprivate let str_statusText:String = "me"
fileprivate let str_youAddLabelName:String = "content outside view/list"

/*: "mf/greet/add" :*/
fileprivate let str_disappearTitle:String = "count dismiss cameramf/gre"
fileprivate let str_meValue:[Character] = ["d"]

/*: "mf/greet/del" :*/
fileprivate let str_groupValue:String = "mf/gvar add"

/*: "mf/greet/getSettings" :*/
fileprivate let str_textTitle:String = "long var text directionmf/g"
fileprivate let str_professionalText:String = "Settadd return"

/*: "mf/greet/extraSetting" :*/
fileprivate let str_curAspectName:String = "action view interaction container livemf/gree"
fileprivate let str_goingValue:[Character] = ["t"]
fileprivate let str_valueShowName:[Character] = ["/","e","x","t","r","a","S","e","t","t","i","n","g"]

/*: "game/list" :*/
fileprivate let str_matchData:String = "game/ltrue true content"
fileprivate let str_indexValue:[Character] = ["i","s","t"]

/*: "category" :*/
fileprivate let str_viewData:[UInt8] = [0x2e,0x2c,0x39,0x28,0x2a,0x22,0x3f,0x34]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  CameraThen.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/9/9.
//

//: import UIKit
import UIKit

//: class TalkingMeRequestTool: NSObject {
class CameraThen: NSObject {
    /// 资料完善
    /// - Parameters:
    ///   - completion: 回调
    //: class func req_UpdateUserInfo(params: Dictionary<String, Any>, completion: @escaping FinishBlock) {
    class func underbelly(params: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = WithTitleThen()
        //: reqModel.requestPath = "user/updateInfo"
        reqModel.requestPath = (String(str_videoValue.prefix(5)) + "updat" + String(str_messageContent))
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

    /// 获取用户相册
    /// - Parameters:
    ///   - completion: 回调
    //: class func req_GalleryByUid(params: Dictionary<String, Any>, completion: @escaping FinishBlock) {
    class func baptise(params: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = WithTitleThen()
        //: reqModel.requestPath = "gallery/getGalleryByUid"
        reqModel.requestPath = (String(str_lessEqualName) + String(str_toValue) + String(str_addData))
        //: reqModel.params = params
        reqModel.params = params
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_nextTitle.photoLive(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 上传图片
    /// - Parameters:
    ///   - completion: 回调
    //: class func req_UploadPic(params: Dictionary<String, Any>, completion: @escaping FinishBlock) {
    class func modelCompletion(params: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = WithTitleThen()
        //: reqModel.requestPath = "gallery/upload"
        reqModel.requestPath = (String(str_areaStatusTitle) + str_nameMakeText.replacingOccurrences(of: "inside", with: "oa"))
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

    /// 删除图片
    /// - Parameters:
    ///   - completion: 回调
    //: class func req_DeletePic(params: Dictionary<String, Any>, completion: @escaping FinishBlock) {
    class func fact(params: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = WithTitleThen()
        //: reqModel.requestPath = "gallery/deletePic"
        reqModel.requestPath = (String(str_whitePushName))
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

    /// 删除单个用户标签
    /// - Parameters:
    ///   - completion: 回调
    //: class func req_DeleteTag(params: Dictionary<String, Any>, completion: @escaping FinishBlock) {
    class func corrigendaCompletion(params: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = WithTitleThen()
        //: reqModel.requestPath = "user/tagDelete"
        reqModel.requestPath = (String(str_inviteValue) + String(str_observerValue.suffix(6)))
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

    /// 编辑用户标签
    /// - Parameters:
    ///   - completion: 回调
    //: class func req_EditTag(params: Dictionary<String, Any>, completion: @escaping FinishBlock) {
    class func mentalPicture(params: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = WithTitleThen()
        //: reqModel.requestPath = "mf/user/tagEdit"
        reqModel.requestPath = (String(str_errData.prefix(4)) + "ser/tag" + String(str_userTitle.suffix(4)))
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

    /// 意见反馈
    /// - Parameters:
    ///   - completion: 回调
    //: class func req_Feedback(params: Dictionary<String, Any>, completion: @escaping FinishBlock) {
    class func attribute(params: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = WithTitleThen()
        //: reqModel.requestPath = "app/feedback"
        reqModel.requestPath = (str_failData.replacingOccurrences(of: "row", with: "a") + String(str_redValue))
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

    /// 获取黑名单列表
    /// - Parameters:
    ///   - completion: 回调
    //: class func req_BlackList(params: Dictionary<String, Any>, completion: @escaping FinishBlock) {
    class func giftConvert(params: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = WithTitleThen()
        //: reqModel.requestPath = "IM/getMyBlackList"
        reqModel.requestPath = (String(str_onlineValue) + String(str_matchName))
        //: reqModel.params = params
        reqModel.params = params
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_nextTitle.photoLive(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 获取设置信息接口
    /// - Parameters:
    ///   - completion: 回调
    //: class func req_GetSetting(params: Dictionary<String, Any>, completion: @escaping FinishBlock) {
    class func enter(params: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = WithTitleThen()
        //: reqModel.requestPath = "mf/user/getSetting"
        reqModel.requestPath = (String(str_onOfText.suffix(5)) + "er/getSet" + str_requestBackModelName.lowercased())
        //: reqModel.params = params
        reqModel.params = params
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_nextTitle.photoLive(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 个人中心设置
    /// - Parameters:
    ///   - completion: 回调
    //: class func req_SettingChange(params: Dictionary<String, Any>, completion: @escaping FinishBlock) {
    class func appClick(params: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = WithTitleThen()
        //: reqModel.requestPath = "mf/user/setConfig"
        reqModel.requestPath = (String(str_dataTitle.prefix(6)) + "r/se" + String(str_pointValue.prefix(7)))
        //: reqModel.params = params
        reqModel.params = params
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_nextTitle.photoLive(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 女性busy状态上报接口
    /// - Parameters:
    ///   - type: 0 :不活跃， 1:活跃
    ///   - completion: 回调
    //: class func req_settingStatus(type: Int, completion: @escaping FinishBlock) {
    class func allQuit(type: Int, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = WithTitleThen()
        //: reqModel.requestPath = "mf/user/settingStatus"
        reqModel.requestPath = (String(str_viewContent.prefix(5)) + "er/se" + String(str_timeName.suffix(6)) + str_errorName.replacingOccurrences(of: "lab", with: "t"))
        //: reqModel.params = ["type": type]
        reqModel.params = [String(bytes: str_addName.map{upCountimate(location: $0)}, encoding: .utf8)!: type]
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_nextTitle.photoLive(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 注销账号
    /// - Parameters:
    /// - completion: 回调
    //: class func req_LockAccount(params: Dictionary<String, Any>, completion: @escaping FinishBlock) {
    class func outLock(params: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = WithTitleThen()
        //: reqModel.requestPath = "user/lockAccount"
        reqModel.requestPath = (String(str_taskTitle) + String(str_arrayData))
        //: reqModel.params = params
        reqModel.params = params
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_nextTitle.photoLive(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 个人中心修改私信价格、开启语音授权
    /// - Parameters:
    /// - completion: 回调
    //: class func req_EditInfo(params: Dictionary<String, Any>, completion: @escaping FinishBlock) {
    class func frameCompletion(params: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = WithTitleThen()
        //: reqModel.requestPath = "mf/user/editInfo"
        reqModel.requestPath = (String(str_labelData.suffix(4)) + "ser/e" + String(str_keyTitle))
        //: reqModel.params = params
        reqModel.params = params
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_nextTitle.photoLive(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 获取签到日历列表
    /// - Parameter completion: 回调
    //: class func req_getUserSignList(completion: @escaping FinishBlock) {
    class func pickUpInsideExecuteEqual(completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = WithTitleThen()
        //: reqModel.requestPath = "mf/userSign/list"
        reqModel.requestPath = (String(str_messageText) + String(str_borderValue))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_nextTitle.photoLive(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 用户签到
    /// - Parameter completion: 回调
    //: class func req_userSignIn(completion: @escaping FinishBlock) {
    class func line(completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = WithTitleThen()
        //: reqModel.requestPath = "mf/userSign/signIn"
        reqModel.requestPath = (String(str_downText.suffix(4)) + "serSi" + String(str_pathName.suffix(7)) + String(str_titleName.prefix(2)))
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_nextTitle.photoLive(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 用户资料视频地址上传
    /// - Parameters:
    ///   - completion: 回调
    //: class func uploadVideoUserEdit(params: Dictionary<String, Any>, completion: @escaping FinishBlock) {
    class func somebody(params: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = WithTitleThen()
        //: reqModel.requestPath = "mf/dating/saveVideo"
        reqModel.requestPath = (String(str_appData) + String(str_nowPushData) + String(str_headName))
        //: reqModel.params = params
        reqModel.params = params
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_nextTitle.photoLive(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 获取当前用户上传的视频
    /// - Parameters:
    ///   - completion: 回调
    //: class func getUploadVideoInfo(completion: @escaping FinishBlock) {
    class func fee(completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = WithTitleThen()
        //: reqModel.requestPath = "mf/dating/getConfig"
        reqModel.requestPath = (String(str_mText.suffix(6)) + "ing/ge" + String(str_toTitle.prefix(7)))
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_nextTitle.photoLive(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 删除当前用户上传的视频
    /// - Parameters:
    ///   - completion: 回调
    //: class func deleteUserVideo(completion: @escaping FinishBlock) {
    class func jump(completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = WithTitleThen()
        //: reqModel.requestPath = "mf/dating/deleteVideo"
        reqModel.requestPath = (String(str_styleName) + str_halfValue.replacingOccurrences(of: "title", with: "t") + String(str_localValue))
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_nextTitle.photoLive(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 更新语音备注
    /// - Parameters:
    ///   - completion: 回调
    //: class func req_UpdateAudioRemark(completion: @escaping FinishBlock) {
    class func home(completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = WithTitleThen()
        //: reqModel.requestPath = "mf/greet/updateAudioRemark"
        reqModel.requestPath = (String(str_contentData.prefix(4)) + "reet/u" + String(str_hiddenTapText.suffix(6)) + "udioRe" + str_pathTitle.replacingOccurrences(of: "source", with: "k"))
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_nextTitle.photoLive(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 自动打招呼-查看设置列表
    /// - Parameters: type: 1=语音， 2=文本
    ///   - completion: 回调
    //: class func req_GetGreetList(params: Dictionary<String, Any>, completion: @escaping FinishBlock) {
    class func fall(params: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = WithTitleThen()
        //: reqModel.requestPath = "mf/greet/list"
        reqModel.requestPath = (String(str_onName.prefix(7)) + str_statusText.replacingOccurrences(of: "me", with: "t") + String(str_youAddLabelName.suffix(5)))
        //: reqModel.params = params
        reqModel.params = params
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_nextTitle.photoLive(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 自动打招呼-添加自定义文案/语音/图片
    /// - Parameters: type: 1：语音；2：文案；3：图片; 4:私密照片
    ///   - completion: 回调
    //: class func req_UploadGreetAdd(params: Dictionary<String, Any>, completion: @escaping FinishBlock) {
    class func dataConverterWith(params: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = WithTitleThen()
        //: reqModel.requestPath = "mf/greet/add"
        reqModel.requestPath = (String(str_disappearTitle.suffix(6)) + "et/ad" + String(str_meValue))
        //: reqModel.params = params
        reqModel.params = params
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_nextTitle.photoLive(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 自动打招呼-设置音频备注
    ///   - completion: 回调
    //: class func req_UpdateAudioRemark(params: Dictionary<String, Any>, completion: @escaping FinishBlock) {
    class func blunt(params: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = WithTitleThen()
        //: reqModel.requestPath = "mf/greet/updateAudioRemark"
        reqModel.requestPath = (String(str_contentData.prefix(4)) + "reet/u" + String(str_hiddenTapText.suffix(6)) + "udioRe" + str_pathTitle.replacingOccurrences(of: "source", with: "k"))
        //: reqModel.params = params
        reqModel.params = params
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_nextTitle.photoLive(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 自动打招呼-删除文案/音频
    ///   - completion: 回调
    //: class func req_DeleteAudio(params: Dictionary<String, Any>, completion: @escaping FinishBlock) {
    class func live(params: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = WithTitleThen()
        //: reqModel.requestPath = "mf/greet/del"
        reqModel.requestPath = (String(str_groupValue.prefix(4)) + "reet/del")
        //: reqModel.params = params
        reqModel.params = params
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_nextTitle.photoLive(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 招呼设置-查看设置
    /// - Parameters:
    ///   - completion: 回调
    //: class func req_GetGreetSetting(params: Dictionary<String, Any>, completion: @escaping FinishBlock) {
    class func completion(params: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = WithTitleThen()
        //: reqModel.requestPath = "mf/greet/getSettings"
        reqModel.requestPath = (String(str_textTitle.suffix(4)) + "reet/get" + String(str_professionalText.prefix(4)) + "ings")
        //: reqModel.params = params
        reqModel.params = params
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_nextTitle.photoLive(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 图片打招呼-额外配置礼物信息
    /// - Parameters: unlockGiftId:解锁礼物id, isBurn:设置的阅后即焚状态
    ///   - completion: 回调
    //: class func req_UploadGreetExtraSetting(params: Dictionary<String, Any>, completion: @escaping FinishBlock) {
    class func incidentCompletion(params: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = WithTitleThen()
        //: reqModel.requestPath = "mf/greet/extraSetting"
        reqModel.requestPath = (String(str_curAspectName.suffix(7)) + String(str_goingValue) + String(str_valueShowName))
        //: reqModel.params = params
        reqModel.params = params
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_nextTitle.photoLive(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 获取游戏列表
    /// - Parameters:
    ///   - category: 1=我的页面，2=私聊页面
    ///   - completion: 回调
    //: class func req_getGameList(category: Int, completion: @escaping FinishBlock) {
    class func equalSharedCompletion(category: Int, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = WithTitleThen()
        //: reqModel.requestPath = "game/list"
        reqModel.requestPath = (String(str_matchData.prefix(6)) + String(str_indexValue))
        //: reqModel.params = ["category": category]
        reqModel.params = [String(bytes: str_viewData.map{$0^77}, encoding: .utf8)!: category]
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_nextTitle.photoLive(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }
}
