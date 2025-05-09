
//: Declare String Begin

/*: "mf/business/list" :*/
fileprivate let str_toName:String = "remove user typemf/bus"
fileprivate let str_toolName:String = "incolors"

/*: "Any" :*/
fileprivate let str_managerData:String = "domain letAny"

/*: "58+" :*/
fileprivate let str_applicationData:String = "58+"

/*: "Yes" :*/
fileprivate let str_modelData:String = "let view play remove selfYes"

/*: "tab" :*/
fileprivate let str_viewFrameEqualTitle:[UInt8] = [0x4e,0x5b,0x58]

private func toIf(gift num: UInt8) -> UInt8 {
    return num ^ 58
}

/*: "page" :*/
fileprivate let str_listTitle:[UInt8] = [0x80,0x91,0x97,0x95]

private func userArray(make num: UInt8) -> UInt8 {
    return num ^ 240
}

/*: "minAge" :*/
fileprivate let str_wrapContent:[UInt8] = [0xc8,0xc4,0xc9,0x9c,0xc2,0xc0]

fileprivate func listButton(people num: UInt8) -> UInt8 {
    let value = Int(num) - 91
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "maxAge" :*/
fileprivate let str_titleName:[UInt8] = [0x21,0x15,0x2c,0xf5,0x1b,0x19]

fileprivate func youAt(view num: UInt8) -> UInt8 {
    let value = Int(num) - 180
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "datingVideo" :*/
fileprivate let str_statusContent:[UInt8] = [0xf0,0xf5,0xe0,0xfd,0xfa,0xf3,0xc2,0xfd,0xf0,0xf1,0xfb]

private func groupHidden(content num: UInt8) -> UInt8 {
    return num ^ 148
}

/*: "uid" :*/
fileprivate let str_tableValue:String = "uitext"

/*: "mf/premiumStar/list" :*/
fileprivate let str_toolFlagValue:String = "model gesture estimated casemf/pr"
fileprivate let str_curveValue:String = "awake selfStar/"

/*: "mf/business/adBanner" :*/
fileprivate let str_fitData:[Character] = ["m","f","/","b","u","s","i","n","e","s"]
fileprivate let str_layerTitle:String = "s/adBashare image back"

/*: "position" :*/
fileprivate let str_toBarName:[UInt8] = [0xe6,0xf9,0xe5,0xff,0xe2,0xff,0xf9,0xf8]

private func mixInLab(reward num: UInt8) -> UInt8 {
    return num ^ 150
}

/*: "bannerList" :*/
fileprivate let str_indexValue:String = "kitanner"

/*: "mf/rank/list" :*/
fileprivate let str_userName:String = "string type classmf/r"
fileprivate let str_imageBlackTitle:String = "lihandle"

/*: "name" :*/
fileprivate let str_fromTitle:[UInt8] = [0x65,0x6d,0x61,0x6e]

/*: "period" :*/
fileprivate let str_nameValue:[UInt8] = [0x2f,0x3a,0x2d,0x36,0x30,0x3b]

private func viewIndex(tab num: UInt8) -> UInt8 {
    return num ^ 95
}

/*: "user/position" :*/
fileprivate let str_errorVideoTitle:[Character] = ["u","s","e","r","/","p","o","s","i","t"]
fileprivate let str_recordText:[Character] = ["i","o","n"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  CameraRequestManager.swift
//  AbroadTalking
//
//  Created by young on 2022/9/8.
//

//: import UIKit
import UIKit

//: enum SocialTab: Int {
enum TabletSocialVarArg: Int {
    //: case hot = 1
    case hot = 1 // 活跃
    //: case nearby  = 2
    case nearby = 2 // 附近
    //: case new  = 3
    case new = 3 // 新用户
}

//: class SocialRequestManager {
class CameraRequestManager {
    // 列表分页
    //: var listPage = 0
    var listPage = 0
    // 巨星计划分页
    //: var premiumStarPage = 0
    var premiumStarPage = 0
    // 防止重复请求
    //: var premiumStarIsLoading = false
    var premiumStarIsLoading = false
    // 巨星计划是否有更多数据
    //: var premiumStarCanLoadMore = true
    var premiumStarCanLoadMore = true
    // 最大请求次数
    //: let maxReq = 3
    let maxReq = 3
    // 当前已请求次数
    //: var haveReq = 0
    var haveReq = 0
    /// 请求首页列表数据
    /// - Parameters:
    ///   - tab: 1-活跃 2-附近 3-新人 4-同省 5-同城 6-高级用户
    ///   - page: 分页
    ///   - completion: 回调
    //: func req_socialList(tab: SocialTab, completion: @escaping FinishBlock) {
    func societalThroughCompletion(tab: TabletSocialVarArg, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = WithTitleThen()
        //: reqModel.requestPath = "mf/business/list"
        reqModel.requestPath = (String(str_toName.suffix(6)) + str_toolName.replacingOccurrences(of: "color", with: "es") + "/list")
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET

        // 筛选条件
        //: var minAge = 0
        var minAge = 0
        //: var maxAge = 0
        var maxAge = 0
        //: var datingVideo = 0
        var datingVideo = 0
        //: if SEARCH_AGE == "Any".localized {
        if kLet_tabScreenDeviceValue == (String(str_managerData.suffix(3))).localized {
            //: minAge = 18
            minAge = 18
            //: maxAge = 80
            maxAge = 80
            //: } else if SEARCH_AGE == "58+" {
        } else if kLet_tabScreenDeviceValue == "58+" {
            //: minAge = 58
            minAge = 58
            //: maxAge = 80
            maxAge = 80
            //: } else {
        } else {
            //: let arr = SEARCH_AGE.split(separator: "-")
            let arr = kLet_tabScreenDeviceValue.split(separator: "-")
            //: if arr.count > 1 {
            if arr.count > 1 {
                //: minAge = Int(arr[0]) ?? 0
                minAge = Int(arr[0]) ?? 0
                //: maxAge = Int(arr[1]) ?? 0
                maxAge = Int(arr[1]) ?? 0
            }
        }
        //: if SEARCH_VIDEOCOVER == "Yes".localized {
        if kLet_keyIconTitle == (String(str_modelData.suffix(3))).localized {
            //: datingVideo = 1
            datingVideo = 1
        }

        //: reqModel.params = ["tab": tab.rawValue,
        reqModel.params = [String(bytes: str_viewFrameEqualTitle.map{toIf(gift: $0)}, encoding: .utf8)!: tab.rawValue,
                           //: "page": listPage,
                           String(bytes: str_listTitle.map{userArray(make: $0)}, encoding: .utf8)!: listPage,
                           //: "minAge": minAge,
                           String(bytes: str_wrapContent.map{listButton(people: $0)}, encoding: .utf8)!: minAge,
                           //: "maxAge": maxAge,
                           String(bytes: str_titleName.map{youAt(view: $0)}, encoding: .utf8)!: maxAge,
                           //: "datingVideo": datingVideo]
                           String(bytes: str_statusContent.map{groupHidden(content: $0)}, encoding: .utf8)!: datingVideo]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_nextTitle.photoLive(model: reqModel) { succeed, result, errorModel in
            //: guard succeed == true else {
            guard succeed == true else {
                //: completion(succeed, result, errorModel)
                completion(succeed, result, errorModel)
                //: return
                return
            }

            //: var resultArr = result as! [Dictionary<String, Any>]
            var resultArr = result as! [[String: Any]]

            //: if self.listPage == 0 {
            if self.listPage == 0 {
                //: self.section0Data.removeAll()
                self.section0Data.removeAll()
                //: self.section1Data.removeAll()
                self.section1Data.removeAll()
                //: self.bolckRepetData.removeAll()
                self.bolckRepetData.removeAll()
            }

            /// 后台拉黑向上补齐返回数据，客户端拉取下页有重复数据过滤
            //: for uid in self.bolckRepetData {
            for uid in self.bolckRepetData {
                //: for (index, dict) in resultArr.enumerated() {
                for (index, dict) in resultArr.enumerated() {
                    //: let uidstr = dict["uid"] as? Int
                    let uidstr = dict[(str_tableValue.replacingOccurrences(of: "text", with: "d"))] as? Int
                    //: if uid == String(uidstr ?? 0) {
                    if uid == String(uidstr ?? 0) {
                        //: resultArr.remove(at: index)
                        resultArr.remove(at: index)
                    }
                }
            }

            //: for dict in resultArr {
            for dict in resultArr {
                //: if let model = SocialUserListModel.deserialize(from: dict as? Dictionary) {
                if let model = ControlWithModelType.deserialize(from: dict as? Dictionary) {
                    //: if self.section0Data.count < 4 {
                    if self.section0Data.count < 4 {
                        //: self.section0Data.append(model)
                        self.section0Data.append(model)
                        //: } else {
                    } else {
                        //: self.section1Data.append(model)
                        self.section1Data.append(model)
                    }
                    //: self.bolckRepetData.insert("\(model.uid)")
                    self.bolckRepetData.insert("\(model.uid)")
                }
            }

            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 请求巨星计划列表
    /// - Parameter completion: 回调
    //: func req_premiumStarList(completion: @escaping FinishBlock) {
    func like(completion: @escaping FinishBlock) {
        //: if premiumStarIsLoading { return }
        if premiumStarIsLoading { return }

        //: premiumStarIsLoading = true
        premiumStarIsLoading = true
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = WithTitleThen()
        //: reqModel.requestPath = "mf/premiumStar/list"
        reqModel.requestPath = (String(str_toolFlagValue.suffix(5)) + "emium" + String(str_curveValue.suffix(5)) + "list")
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.params = ["page": premiumStarPage]
        reqModel.params = [String(bytes: str_listTitle.map{userArray(make: $0)}, encoding: .utf8)!: premiumStarPage]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_nextTitle.photoLive(model: reqModel) { succeed, result, errorModel in
            //: self.premiumStarIsLoading = false
            self.premiumStarIsLoading = false
            //: guard succeed == true else {
            guard succeed == true else {
                //: completion(succeed, result, errorModel)
                completion(succeed, result, errorModel)
                //: return
                return
            }

            //: if self.premiumStarPage == 0 {
            if self.premiumStarPage == 0 {
                //: self.premiumStarListData.removeAll()
                self.premiumStarListData.removeAll()
            }

            //: let arr = result as! [Dictionary<String, Any>]
            let arr = result as! [[String: Any]]
            //: for dict in arr {
            for dict in arr {
                //: if let model = PremiumStarListModel.deserialize(from: dict as? Dictionary) {
                if let model = CurrentMeasurable.deserialize(from: dict as? Dictionary) {
                    //: self.premiumStarListData.append(model)
                    self.premiumStarListData.append(model)
                }
            }

            //: if arr.count < 20 {
            if arr.count < 20 {
                //: self.premiumStarCanLoadMore = false
                self.premiumStarCanLoadMore = false
            }

            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 获取广告位banner
    /// - Parameters:
    ///   - position: 广告位标识，1=首页，2=me,3:私聊
    ///   - completion: 回调
    //: func req_adBanner(position: Int, completion: @escaping FinishBlock) {
    func modelColor(position: Int, completion: @escaping FinishBlock) {
        //: premiumStarIsLoading = true
        premiumStarIsLoading = true
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = WithTitleThen()
        //: reqModel.requestPath = "mf/business/adBanner"
        reqModel.requestPath = (String(str_fitData) + String(str_layerTitle.prefix(6)) + "nner")
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = ["position": position]
        reqModel.params = [String(bytes: str_toBarName.map{mixInLab(reward: $0)}, encoding: .utf8)!: position]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_nextTitle.photoLive(model: reqModel) { succeed, result, errorModel in
            //: guard succeed == true else {
            guard succeed == true else {
                //: completion(succeed, result, errorModel)
                completion(succeed, result, errorModel)
                //: return
                return
            }

            //: guard let result = result as? Dictionary<String, Any> else {
            guard let result = result as? [String: Any] else {
                //: completion(succeed, result, errorModel)
                completion(succeed, result, errorModel)
                //: return
                return
            }

            //: if position == 2 {
            if position == 2 {
                //: completion(succeed, result, errorModel)
                completion(succeed, result, errorModel)
                //: return
                return
            }
            //: let array = JSON(result["bannerList"] ?? []).arrayValue
            let array = JSON(result[(str_indexValue.replacingOccurrences(of: "kit", with: "b") + "List")] ?? []).arrayValue
            //: for dict in array {
            for dict in array {
                //: if let model = SocialAdBannerModel.deserialize(from: dict.dictionaryObject) {
                if let model = DealTransformable.deserialize(from: dict.dictionaryObject) {
                    //: self.adBannerListData.append(model)
                    self.adBannerListData.append(model)
                }
            }
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    // MARK: - 首页榜单

    //: class func getRankListRequest(topName: String?, periodName: String?, completion: @escaping FinishBlock) {
    class func roundListTheme(topName: String?, periodName: String?, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = WithTitleThen()
        //: reqModel.requestPath = "mf/rank/list"
        reqModel.requestPath = (String(str_userName.suffix(4)) + "ank/" + str_imageBlackTitle.replacingOccurrences(of: "handle", with: "st"))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = ["name": topName ?? "", "period": periodName ?? ""]
        reqModel.params = [String(bytes: str_fromTitle.reversed(), encoding: .utf8)!: topName ?? "", String(bytes: str_nameValue.map{viewIndex(tab: $0)}, encoding: .utf8)!: periodName ?? ""]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_nextTitle.photoLive(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    // MARK: - 上传定位

    //: class func req_uploadPosition(params: [String: Any], completion: @escaping FinishBlock) {
    class func offLine(params: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = WithTitleThen()
        //: reqModel.requestPath = "user/position"
        reqModel.requestPath = (String(str_errorVideoTitle) + String(str_recordText))
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

    // MARK: - Lazy load

    //: lazy var section0Data: [SocialUserListModel] = {
    lazy var section0Data: [ControlWithModelType] = //: return Array<ControlWithModelType>()
        .init()
    //: }()

    //: lazy var section1Data: [SocialUserListModel] = {
    lazy var section1Data: [ControlWithModelType] = //: return Array<ControlWithModelType>()
        .init()
    //: }()

    //: lazy var bolckRepetData = Set<String>()
    lazy var bolckRepetData = Set<String>()

    //: lazy var premiumStarListData: [PremiumStarListModel] = {
    lazy var premiumStarListData: [CurrentMeasurable] = //: return Array<CurrentMeasurable>()
        .init()
    //: }()

    //: lazy var adBannerListData: [SocialAdBannerModel] = {
    lazy var adBannerListData: [DealTransformable] = //: return Array<DealTransformable>()
        .init()
    //: }()
}
