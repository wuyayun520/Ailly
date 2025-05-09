
//: Declare String Begin

/*: "/dist/loungePlus/index5.html" :*/
fileprivate let str_coordinateData:String = "/distcamera equal"
fileprivate let str_eachDataText:String = "/loutype string one else height"
fileprivate let str_viewOffName:String = "us/inequal table item manager"
fileprivate let str_pathImageValue:String = "rendertml"

/*: "&type=1" :*/
fileprivate let str_whiteValue:String = "succeed"
fileprivate let str_infoViewTitle:[Character] = ["t","y","p","e","=","1"]

/*: "PremiumStarPlanBanner" :*/
fileprivate let str_pageText:String = "Premtype guard self color lab"
fileprivate let str_bagName:String = "past text onlinetarPla"
fileprivate let str_inputValue:String = "cell model item letnBanner"

/*: "uid" :*/
fileprivate let str_picSucceedSendValue:[Character] = ["u","i","d"]

/*: "mfChatGift" :*/
fileprivate let str_cellText:[Character] = ["m","f","C","h","a","t","G","i","f","t"]

/*: "mfChat" :*/
fileprivate let str_liveContent:String = "mfChatedit original self feedback add"

/*: "user" :*/
fileprivate let str_remarkCountNameValue:String = "usequal"

/*: "Please verification first" :*/
fileprivate let str_nameValue:String = "view me centerPlea"
fileprivate let str_showNorData:String = "ERIF"
fileprivate let str_strokeName:String = "on ffor gift call in in"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  DealTransformable.swift
//  AbroadTalking
//
//  Created by young on 2022/9/9.
//

//: import UIKit
import UIKit

//: struct SocialAdBannerModel: HandyJSON {
struct DealTransformable: HandyJSON {
    // 广告图
    //: var pic: String = ""
    var pic: String = ""
    // 跳转链接
    //: var url: String = ""
    var url: String = ""
    // 跳转类型 0=无，1=跳转网页，2=跳转原生页面，3=游戏跳转，4=外部网页
    //: var type = 0
    var type = 0
    // 游戏宽高
    //: var widthHeight: Double?
    var widthHeight: Double?
    // 广告小图
    //: var thumbnail: String = ""
    var thumbnail: String = ""
}

// MARK: - Event

//: extension SocialAdBannerModel {
extension DealTransformable {
    /// 跳转事件
    //: static func jumpEvent(model: SocialAdBannerModel) {
    static func modelUser(model: DealTransformable) {
        //: if model.type == 1 {
        if model.type == 1 { // 网页跳转
            //: let newUrl: String = model.url
            let newUrl: String = model.url
            //: if newUrl.contains("/dist/loungePlus/index5.html") {
            if newUrl.contains((String(str_coordinateData.prefix(5)) + String(str_eachDataText.prefix(4)) + "ngePl" + String(str_viewOffName.prefix(5)) + "dex5." + str_pathImageValue.replacingOccurrences(of: "render", with: "h"))) {
                //: EditTextThen.share.func__pushToSubscribeAlert(appendParams: "&type=1")
                EditTextThen.share.addShowParams(appendParams: (str_whiteValue.replacingOccurrences(of: "succeed", with: "&") + String(str_infoViewTitle)))
                //: return
                return
            }
            //: EditTextThen.share.func__pushToWebVC(urlStr: model.url)
            EditTextThen.share.bileOf(urlStr: model.url)

            //: } else if model.type == 2 {
        } else if model.type == 2 { // 原生跳转
            //: guard let url = URL(string: model.url),
            guard let url = URL(string: model.url),
                  //: let components = URLComponents(url: url, resolvingAgainstBaseURL: false) else {
                  let components = URLComponents(url: url, resolvingAgainstBaseURL: false)
            else {
                //: return
                return
            }
            //: if model.url.contains("PremiumStarPlanBanner") { // 巨星计划
            if model.url.contains((String(str_pageText.prefix(4)) + "iumS" + String(str_bagName.suffix(6)) + String(str_inputValue.suffix(7)))) { // 巨星计划
                //: SocialAdBannerModel.premiumStarPlanBanner()
                DealTransformable.receiveDeadline()
                //: return
                return
            }

            //: if let uidItem = components.queryItems?.first(where: { $0.name == "uid" }) {
            if let uidItem = components.queryItems?.first(where: { $0.name == (String(str_picSucceedSendValue)) }) {
                //: let uid = uidItem.value ?? ""
                let uid = uidItem.value ?? ""
                //: if model.url.contains("mfChatGift") { // 私聊打开礼物面板
                if model.url.contains((String(str_cellText))) { // 私聊打开礼物面板
                    //: EditTextThen.share.func__pushToPriveteChatVC(chatID: uid) { vc in
                    EditTextThen.share.fullMoon(chatID: uid) { vc in
                        //: vc.msgInputView.clickgiftBtn()
                        vc.msgInputView.roundAreaLoad()
                    }
                    //: } else if model.url.contains("mfChat") { // 私聊
                } else if model.url.contains((String(str_liveContent.prefix(6)))) { // 私聊
                    //: EditTextThen.share.func__pushToPriveteChatVC(chatID: uid)
                    EditTextThen.share.fullMoon(chatID: uid)
                    //: } else if model.url.contains("user") { // 用户详情
                } else if model.url.contains((str_remarkCountNameValue.replacingOccurrences(of: "equal", with: "er"))) { // 用户详情
                    //: EditTextThen.share.func__pushToUserDetailVC(uid: uid)
                    EditTextThen.share.soulAge(uid: uid)
                }
            }

            //: } else if model.type == 3 {
        } else if model.type == 3 { // 游戏跳转
            //: var config = TalkingWebConfig()
            var config = AddConfig()
            //: config.widthHeight = model.widthHeight
            config.widthHeight = model.widthHeight
            //: config.clearBgColor = true
            config.clearBgColor = true
            //: EditTextThen.share.func__pushToWebVC(urlStr: model.url, webConfig: config)
            EditTextThen.share.bileOf(urlStr: model.url, webConfig: config)

            //: } else if model.type == 4 {
        } else if model.type == 4 { // 外部网页
            //: if let url = URL(string: model.url) {
            if let url = URL(string: model.url) {
                //: UIApplication.shared.open(url, options: [:], completionHandler: nil)
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
        }
    }

    /// 加入巨星计划
    //: static func premiumStarPlanBanner() {
    static func receiveDeadline() {
        //: if EqualThen.share.loginUserMode.isTPAuth == TPUserAuth.isSuccessed.rawValue ||
        if EqualThen.share.loginUserMode.isTPAuth == SkinComparable.isSuccessed.rawValue ||
            //: EqualThen.share.loginUserMode.isRealPersonAuth == false {
            EqualThen.share.loginUserMode.isRealPersonAuth == false
        { // 真人认证成功 || 不需要真人认证
            //: if EqualThen.share.loginUserMode.premiumStarApplyStatus != PStarStatus.isOnGoing.rawValue {
            if EqualThen.share.loginUserMode.premiumStarApplyStatus != UserKeyRepresentable.isOnGoing.rawValue {
                //: EditTextThen.share.func__pushToWebVC(webViewType: .StarPlanIndex)
                EditTextThen.share.hailType(webViewType: .StarPlanIndex)
                //: } else {
            } else {
                //: EditTextThen.share.func__pushToWebVC(webViewType: .StarPlanAudit)
                EditTextThen.share.hailType(webViewType: .StarPlanAudit)
            }
            //: } else if EqualThen.share.loginUserMode.isTPAuth == TPUserAuth.isOnGoing.rawValue {
        } else if EqualThen.share.loginUserMode.isTPAuth == SkinComparable.isOnGoing.rawValue { // 真人认证审核中
            //: NSObject().func__showStatusBarSuccessMsg(showMsg: "Please verification first".localized)
            NSObject().fileFirst(showMsg: (String(str_nameValue.suffix(4)) + "se v" + str_showNorData.lowercased() + "icati" + String(str_strokeName.prefix(4)) + "irst").localized)
            //: let vc = TalkingFinalVerificationVC()
            let vc = StatusThen()
            //: EditTextThen.share.func__getCurrentActivityVC()?.navigationController?.pushViewController(vc, animated: true)
            EditTextThen.share.addGet()?.navigationController?.pushViewController(vc, animated: true)
            //: } else {
        } else {
            //: NSObject().func__showStatusBarSuccessMsg(showMsg: "Please verification first".localized)
            NSObject().fileFirst(showMsg: (String(str_nameValue.suffix(4)) + "se v" + str_showNorData.lowercased() + "icati" + String(str_strokeName.prefix(4)) + "irst").localized)
            //: EditTextThen.share.func__pushUserVerifyController(toast: nil)
            EditTextThen.share.alongTarget(toast: nil)
        }
    }
}
