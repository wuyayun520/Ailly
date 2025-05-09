
//: Declare String Begin

/*: "mf/user/recommendUser" :*/
fileprivate let str_monthTitle:String = "return floatmf/u"
fileprivate let str_pairName:String = "coviewe"

/*: "page" :*/
fileprivate let str_minimumName:[UInt8] = [0x65,0x67,0x61,0x70]

/*: "mf/user/singleUser" :*/
fileprivate let str_executeName:String = "action temp image normal valuemf/us"
fileprivate let str_coreLocationName:String = "inrawl"
fileprivate let str_attentionName:[Character] = ["e","U","s","e","r"]

/*: "uid" :*/
fileprivate let str_moveViewData:[UInt8] = [0xac,0xb0,0xbd]

private func bottomRankEmpty(the num: UInt8) -> UInt8 {
    return num ^ 217
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ShadowReactiveCompatible.swift
//  AbroadTalking
//
//  Created by young on 2023/1/11.
//

//: import UIKit
import UIKit

//: class TalkingSearchManager: NSObject {
class ShadowReactiveCompatible: NSObject {
    // 列表分页
    //: var recommendListPage = 0
    var recommendListPage = 0

    /// 推荐用户列表
    /// - Parameter completion: 回调
    //: func req_recommendUser(completion: @escaping FinishBlock) {
    func recommend(completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = WithTitleThen()
        //: reqModel.requestPath = "mf/user/recommendUser"
        reqModel.requestPath = (String(str_monthTitle.suffix(4)) + "ser/re" + str_pairName.replacingOccurrences(of: "view", with: "mm") + "ndUser")
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = ["page": recommendListPage]
        reqModel.params = [String(bytes: str_minimumName.reversed(), encoding: .utf8)!: recommendListPage]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_nextTitle.photoLive(model: reqModel) { succeed, result, errorModel in
            //: guard succeed == true else {
            guard succeed == true else {
                //: completion(succeed, result, errorModel)
                completion(succeed, result, errorModel)
                //: return
                return
            }

            //: if self.recommendListPage == 0 {
            if self.recommendListPage == 0 {
                //: self.recommendDataArr.removeAll()
                self.recommendDataArr.removeAll()
            }

            //: for dict in result as! [Dictionary<String, Any>] {
            for dict in result as! [[String: Any]] {
                //: if let model = TalkingRecommendUserModel.deserialize(from: dict as? Dictionary) {
                if let model = EqualHandyJSON.deserialize(from: dict as? Dictionary) {
                    //: self.recommendDataArr.append(model)
                    self.recommendDataArr.append(model)
                }
            }

            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 搜索uid
    /// - Parameters:
    ///   - uid: 用户ID
    ///   - completion: 回调
    //: func req_singleUser(uid: String, completion: @escaping FinishBlock) {
    func singleRoomEqual(uid: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = WithTitleThen()
        //: reqModel.requestPath = "mf/user/singleUser"
        reqModel.requestPath = (String(str_executeName.suffix(5)) + "er/s" + str_coreLocationName.replacingOccurrences(of: "raw", with: "g") + String(str_attentionName))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = ["uid": uid]
        reqModel.params = [String(bytes: str_moveViewData.map{bottomRankEmpty(the: $0)}, encoding: .utf8)!: uid]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_nextTitle.photoLive(model: reqModel) { succeed, result, errorModel in
            //: self.searchListDataArr.removeAll()
            self.searchListDataArr.removeAll()
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

            //: if let model = TalkingRecommendUserModel.deserialize(from: result) {
            if let model = EqualHandyJSON.deserialize(from: result) {
                //: self.searchListDataArr.append(model)
                self.searchListDataArr.append(model)
            }

            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    // MARK: - Lazy Load

    //: lazy var recommendDataArr: [TalkingRecommendUserModel] = {
    lazy var recommendDataArr: [EqualHandyJSON] = //: return Array<EqualHandyJSON>()
        .init()
    //: }()

    //: lazy var searchListDataArr: [TalkingRecommendUserModel] = {
    lazy var searchListDataArr: [EqualHandyJSON] = //: return Array<EqualHandyJSON>()
        .init()
    //: }()
}
