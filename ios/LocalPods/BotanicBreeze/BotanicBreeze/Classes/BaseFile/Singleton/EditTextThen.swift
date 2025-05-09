
//: Declare String Begin

/*: "fee" :*/
fileprivate let str_behindTitle:[Character] = ["f","e","e"]

/*: "VIPFee" :*/
fileprivate let str_originName:String = "VIPFeeself make send"

/*: "chattingNum" :*/
fileprivate let str_againstTitle:String = "chatoto"
fileprivate let str_useEqualName:String = "viewm"

/*: "You're already in her live room" :*/
fileprivate let str_videoValue:[UInt8] = [0x36,0x4c,0x52,0x4,0x4f,0x42,0xfd,0x3e,0x49,0x4f,0x42,0x3e,0x41,0x56,0xfd,0x46,0x4b,0xfd,0x45,0x42,0x4f,0xfd,0x49,0x46,0x53,0x42,0xfd,0x4f,0x4c,0x4c,0x4a]

fileprivate func accumulationTitle(draft num: UInt8) -> UInt8 {
    let value = Int(num) + 35
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "toUid" :*/
fileprivate let str_kitTitle:[UInt8] = [0x9f,0x9a,0x80,0x94,0x8f]

fileprivate func gestureTable(user num: UInt8) -> UInt8 {
    let value = Int(num) - 43
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "momentId" :*/
fileprivate let str_toValue:[UInt8] = [0x64,0x49,0x74,0x6e,0x65,0x6d,0x6f,0x6d]

/*: "extra" :*/
fileprivate let str_modelData:[UInt8] = [0xad,0xb0,0xbc,0xba,0xa9]

private func mentalImage(leading num: UInt8) -> UInt8 {
    return num ^ 200
}

/*: "uid" :*/
fileprivate let str_labName:[UInt8] = [0x87,0x9b,0x96]

/*: "onlineStatus" :*/
fileprivate let str_addData:[UInt8] = [0x6c,0x6d,0x6f,0x6a,0x6d,0x66,0x50,0x77,0x62,0x77,0x76,0x70]

/*: "isNewUser" :*/
fileprivate let str_equalValue:[UInt8] = [0xf4,0xee,0xd3,0xf8,0xea,0xc8,0xee,0xf8,0xef]

private func physicalStructure(cell num: UInt8) -> UInt8 {
    return num ^ 157
}

/*: "userStatus" :*/
fileprivate let str_indexName:[UInt8] = [0x73,0x75,0x74,0x61,0x74,0x53,0x72,0x65,0x73,0x75]

/*: "Account is restricted！" :*/
fileprivate let str_constraintValue:[Character] = ["A","c","c","o","u","n","t"," ","i","s"," ","r","e"]
fileprivate let str_formatName:String = "stopri"

/*: "Failed to enter the chat room. Please try again later" :*/
fileprivate let str_levelValue:[UInt8] = [0x72,0x65,0x74,0x61,0x6c,0x20,0x6e,0x69,0x61,0x67,0x61,0x20,0x79,0x72,0x74,0x20,0x65,0x73,0x61,0x65,0x6c,0x50,0x20,0x2e,0x6d,0x6f,0x6f,0x72,0x20,0x74,0x61,0x68,0x63,0x20,0x65,0x68,0x74,0x20,0x72,0x65,0x74,0x6e,0x65,0x20,0x6f,0x74,0x20,0x64,0x65,0x6c,0x69,0x61,0x46]

/*: "url" :*/
fileprivate let str_nameValue:[Character] = ["u","r","l"]

/*: "userDetail" :*/
fileprivate let str_infoText:[Character] = ["u","s","e","r","D","e","t"]
fileprivate let str_cornerCenterTitle:String = "astylel"

/*: "&type=7" :*/
fileprivate let str_wrapData:[Character] = ["&","t","y","p","e","="]
fileprivate let str_bottomValue:[Character] = ["7"]

/*: "&type=0" :*/
fileprivate let str_giftValue:[Character] = ["&","t"]
fileprivate let str_indexTextData:[Character] = ["y","p","e","=","0"]

/*: "amount" :*/
fileprivate let str_sourceContent:[UInt8] = [0x9e,0x92,0x90,0x8a,0x91,0x8b]

/*: "transparency" :*/
fileprivate let str_modeValue:String = "transequal"

/*: "`%^{}\"[]|\\<>" :*/
fileprivate let str_thenData:[Character] = ["`","%","^","{","}","\"","[","]","|","\\","<"]
fileprivate let str_closeCropTitle:String = "label"

/*: "version= :*/
fileprivate let str_fieldContent:String = "vershare"
fileprivate let str_toValueName:String = "on=request if"

/*: &packageId= :*/
fileprivate let str_startTitle:[Character] = ["&","p","a"]
fileprivate let str_tabData:String = "ckageId=frame target"

/*: &bundleId= :*/
fileprivate let str_selectName:String = "&bundmake if back model index"

/*: & :*/
fileprivate let str_colorContent:String = "page"

/*: ? :*/
fileprivate let str_modeSucceedVoiceValue:String = "?"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  EditTextThen.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/8/31.
//

//: import UIKit
import UIKit

//: public class EditTextThen: NSObject {
public class EditTextThen: NSObject {
    //: @objc static public let share = EditTextThen()
    @objc public static let share = EditTextThen()
    //: private override init() {}
    override private init() {}
}

//: extension EditTextThen {
extension EditTextThen {
    // MARK: - 随机视频入口

    //: func func__pushToRandomVideoVC(isBeginRand: Bool) {
    func equalLine(isBeginRand: Bool) {
        //: uploadRecord.uploadRecordEvent(eventID: ClickInRandomvideo)
        kLet_textData.historicalPaper(eventID: kLet_recordName)
        //: guard TalkingSocketManager.shared.isTalking == false else {
        guard DeviceSocketDelegate.shared.isTalking == false else {
            //: self.func__showStatusBarErrorMsg(showMsg: kMessage_videoTalking_limit)
            self.oversight(showMsg: kLet_replaceTitle)
            //: return
            return
        }
        //: TalkingPermissionTool.checkCameraAndMicrophone { isOpen in
        RubricThen.andThen { isOpen in
            //: guard isOpen == true else { return }
            guard isOpen == true else { return }
            //: TalkingQuickVideoManager.req_videoMatchCheck() { succeed, result, errorModel in
            TitleReactiveCompatible.resumeCompletion { succeed, result, _ in
                //: guard succeed else { return }
                guard succeed else { return }
                //: let json = JSON(result ?? [String: Any]())
                let json = JSON(result ?? [String: Any]())
                //: let vc = TalkingRandomVideoViewController()
                let vc = EqualCaptureReactiveCompatible()
                //: vc.fee = json["fee"].intValue
                vc.fee = json[(String(str_behindTitle))].intValue
                //: vc.vipFee = json["VIPFee"].intValue
                vc.vipFee = json[(String(str_originName.prefix(6)))].intValue
                //: vc.chattingNum = json["chattingNum"].intValue
                vc.chattingNum = json[(str_againstTitle.replacingOccurrences(of: "to", with: "t") + "ingN" + str_useEqualName.replacingOccurrences(of: "view", with: "u"))].intValue
                //: vc.isBeginRand = isBeginRand
                vc.isBeginRand = isBeginRand
                //: vc.isFirstRandow = isBeginRand
                vc.isFirstRandow = isBeginRand
                //: self.currentViewController()?.navigationController?.pushViewController(vc, animated: true)
                self.infoController()?.navigationController?.pushViewController(vc, animated: true)
            }
        }
    }

    // MARK: - 完善资料

    //: func func__pushToFillUserInfoVC() {
    func refill() {
        //: EqualThen.share.userFillInfoMode = UserFillInfoModel.init()
        EqualThen.share.userFillInfoMode = BullInfoModel()
        //: let VC = TalkingLoginGenderVC()
        let VC = CustomViewController()
        //: let currentVC = func__getCurrentActivityVC()
        let currentVC = addGet()
        //: if currentVC != nil {
        if currentVC != nil {
            //: currentVC?.navigationController?.pushViewController(VC, animated: true)
            currentVC?.navigationController?.pushViewController(VC, animated: true)
        }
    }

    // MARK: - 绑定邮箱

    /// - Parameters:
    ///   - type: 类型
    ///   - isShowBack: 是否显示返回按钮
    //: func func__pushToLockUserEmailVC(isShowBack: Bool = true) {
    func actionTo(isShowBack: Bool = true) {
        //: let currentVC = func__getCurrentActivityVC()
        let currentVC = addGet()
        //: if currentVC != nil {
        if currentVC != nil {
            //: if currentVC!.isKind(of: TalkingLoginBindEmailVC.self) ||
            if currentVC!.isKind(of: BeautyThen.self) ||
                //: currentVC!.isKind(of: TalkingLoginMainViewController.self) {
                currentVC!.isKind(of: EqualRecognizerDelegate.self)
            {
                //: return
                return
            }
            //: let vc = TalkingLoginBindEmailVC()
            let vc = BeautyThen()
            //: vc.isBack = isShowBack
            vc.isBack = isShowBack
            //: currentVC?.navigationController?.pushViewController(vc, animated: true)
            currentVC?.navigationController?.pushViewController(vc, animated: true)
        }
    }

    // MARK: - 跳转个人资料

    //: func func__pushToUserDetailVC(uid: String?) {
    func soulAge(uid: String?) {
        //: guard let currentVC = self.currentViewController() else { return }
        guard let currentVC = self.infoController() else { return }
        //: if let liveVC = currentVC as? TalkingLiveBeautifyViewController, TalkingLiveManager.shared().isLive {
        if let liveVC = currentVC as? StreetSmartViewController, UserPushListener.sexApp().isLive {
            // 从主播页跳转个人资料时，切小屏模式
            //: liveVC.topView.miniButtonClick()
            liveVC.topView.makeLast()

            //: } else if currentVC.isKind(of: TalkingVoiceRoomViewController.self), TalkingVoiceRoomManager.shared().isParty {
        } else if currentVC.isKind(of: SourceManagerDelegate.self), ViewRoomManager.astatine().isParty {
            //: TalkingVoiceRoomManager.shared().voiceRoom_mini()
            ViewRoomManager.astatine().singingVoice()

            //: } else if let profileVC = currentVC as? TalkingUserDetailViewController {
        } else if let profileVC = currentVC as? HeadTalkingRecognizerDelegate {
            // 同一用户的资料页已经在顶部，只刷新
            //: if profileVC.uid == uid {
            if profileVC.uid == uid {
                //: profileVC.requestAllData()
                profileVC.mediumName()
                //: return
                return
            }
        }

        //: let vc = TalkingUserDetailViewController(tempUid: uid)
        let vc = HeadTalkingRecognizerDelegate(tempUid: uid)
        //: getNavigationController()?.pushViewController(vc, animated: true)
        getApp()?.pushViewController(vc, animated: true)
    }

    // MARK: - 观众侧进入直播间

    /// 观众侧跳转到直播间
    /// - Parameters:
    ///   - uid: 主播id
    ///   - enterType: 入口
    //: func func_audiencePushToLiveRoomVC(uid: String, enterType: LiveEnterType) {
    func studyShow(uid: String, enterType: TextEnterType) {
        //: guard TalkingPermissionTool.isLiveOrPartyActive() == false else { return }
        guard RubricThen.socialistPartyActive() == false else { return }

        // 同一直播间只能进一次
        //: guard String(TalkingLiveManager.shared().liveRoomModel.streamerInfo.uid) != uid else {
        guard String(UserPushListener.sexApp().liveRoomModel.streamerInfo.uid) != uid else {
            //: self.func__showStatusBarErrorMsg(showMsg: "You're already in her live room".localized)
            self.oversight(showMsg: String(bytes: str_videoValue.map{accumulationTitle(draft: $0)}, encoding: .utf8)!.localized)
            //: return
            return
        }
        // 校验接口，通过后进入直播间
        //: TalkingAudienceManager().req_enterLiveRoom(streamerUid: uid) { succeed, result, errorModel in
        ExecutiveAudienceManager().listenerPop(streamerUid: uid) { succeed, result, _ in
            //: guard succeed else { return }
            guard succeed else { return }
            //: guard let livemodel = TalkingLiveRoomModel.deserialize(from: result as? Dictionary) else { return }
            guard let livemodel = UpwardlyTransformable.deserialize(from: result as? Dictionary) else { return }
            // 退出之前的直播间
            //: let currentVC = self.func__getCurrentActivityVC()
            let currentVC = self.addGet()
            //: if let vcArr = currentVC?.navigationController?.viewControllers {
            if let vcArr = currentVC?.navigationController?.viewControllers {
                //: for index in 0..<(vcArr.count) {
                for index in 0 ..< (vcArr.count) {
                    //: let vc = vcArr[index]
                    let vc = vcArr[index]
                    //: if vc.isKind(of: TalkingLivePullStreamsViewController.self) == true {
                    if vc.isKind(of: NaturalManagerDelegate.self) == true {
                        //: (vc as! TalkingLivePullStreamsViewController).popCurrentViewController()
                        (vc as! NaturalManagerDelegate).partyAnimated()
                    }
                }
            }

            // 进入新直播间
            //: TalkingLiveManager.shared().liveRoomModel = livemodel
            UserPushListener.sexApp().liveRoomModel = livemodel
            //: let liveVc = TalkingLivePullStreamsViewController()
            let liveVc = NaturalManagerDelegate()
            //: liveVc.type = enterType
            liveVc.type = enterType
            //: currentVC?.navigationController?.pushViewController(liveVc, animated: true)
            currentVC?.navigationController?.pushViewController(liveVc, animated: true)
            // 埋点
            //: switch enterType {
            switch enterType {
            //: case .match:
            case .match:
                //: uploadRecord.uploadRecordEvent(eventID: ClickMatchLiveWindowNoP, toUid: uid)
                kLet_textData.historicalPaper(eventID: kLet_barLengthText, toUid: uid)
            //: case .userDetail:
            case .userDetail:
                //: uploadRecord.uploadRecordEvent(eventID: ClickProfileLiveWindowNoP, toUid: uid)
                kLet_textData.historicalPaper(eventID: kLet_errText, toUid: uid)
            //: case .unknown: break
            case .unknown: break
            }
        }
    }

    /// 进入语聊房
    /// - Parameters:
    ///   - roomId: 房间Id（nil：创建房间；有值：进入房间）
    //: func func_pushToVoiceRoomVC(roomId: String? = nil) {
    func loadId(roomId: String? = nil) {
        //: if TalkingLiveManager.shared().isLive == true {
        if UserPushListener.sexApp().isLive == true { // 直播中
            //: func__showStatusBarErrorMsg(showMsg: kMessage_live_limit)
            oversight(showMsg: kLet_domainData)
            //: return
            return
        }
        //: if roomId == TalkingVoiceRoomManager.shared().partyModel.roomId {
        if roomId == ViewRoomManager.astatine().partyModel.roomId { // 返回语聊房
            //: TalkingVoiceRoomManager.shared().voiceRoom_goback()
            ViewRoomManager.astatine().titleEqual()
            //: return
            return
        }
        //: if TalkingVoiceRoomManager.shared().isParty == true {
        if ViewRoomManager.astatine().isParty == true { // 切换语聊房
            //: if roomId != nil {
            if roomId != nil {
                //: TalkingVoiceRoomManager.shared().voiceRoom_switch(roomId: roomId!, beforeRoomId: TalkingVoiceRoomManager.shared().partyModel.roomId)
                ViewRoomManager.astatine().common(roomId: roomId!, beforeRoomId: ViewRoomManager.astatine().partyModel.roomId)
            }
            //: return
            return
        }
        //: TalkingVoiceRoomManager.shared().voiceRoom_checkAndTurnOn(roomId: roomId)
        ViewRoomManager.astatine().voiceBuildVomitoryHallway(roomId: roomId)
    }

    // MARK: - 跳转聊天

    /// 跳转到消息列表页
    /// - Parameter isHalf: 是否半屏展示
    //: func func__pushToChatListVC(isHalfView: Bool = false) {
    func chatMake(isHalfView: Bool = false) {
        //: let vc = TalkingChatListViewController(isHalfView: isHalfView)
        let vc = PopViewDelegate(isHalfView: isHalfView)
        //: let currentVC = func__getCurrentActivityVC()
        let currentVC = addGet()
        //: if isHalfView == false {
        if isHalfView == false {
            //: currentVC?.navigationController?.pushViewController(vc, animated: true)
            currentVC?.navigationController?.pushViewController(vc, animated: true)
            //: } else {
        } else {
            //: currentVC?.addChild(vc)
            currentVC?.addChild(vc)
            //: currentVC?.view.addSubview(vc.view)
            currentVC?.view.addSubview(vc.view)
        }
    }

    /// 跳转到消息聊天页
    /// - Parameters:
    ///   - chatID: 对方Id
    ///   - isFrom: 私聊页入口
    /// - Returns: 消息聊天页

    //: func func__pushToPriveteChatVC(chatID: String, isFrom: PrivateChatIsFromEnum = .Normal, completion: ((_ vc: TalkingPrivateChatController) -> Void)? = nil ) {
    func fullMoon(chatID: String, isFrom: ToFromEnum = .Normal, completion: ((_ vc: SendReactiveCompatible) -> Void)? = nil) {
        //: guard chatID.count > 0 else { return }
        guard chatID.count > 0 else { return }

        //: if chatID != MacroDefine.getXiaoMiID() {
        if chatID != UserMacroDefine.underGet() { // 系统消息
            //: ProgressHUD.show()
            ModelReactiveCompatible.fromTarget()
            //: let param = ["toUid": chatID, "momentId": "0", "extra": "1"]
            let param = [String(bytes: str_kitTitle.map{gestureTable(user: $0)}, encoding: .utf8)!: chatID, String(bytes: str_toValue.reversed(), encoding: .utf8)!: "0", String(bytes: str_modelData.map{mentalImage(leading: $0)}, encoding: .utf8)!: "1"]
            //: PostulationReactiveCompatible.req_refreshUserChatInfo(param: param) { [weak self] succeed, result, errorModel in
            PostulationReactiveCompatible.doUp(param: param) { [weak self] succeed, result, _ in
                //: ProgressHUD.dismiss()
                ModelReactiveCompatible.dataConverterCan()
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: guard succeed else { return }
                guard succeed else { return }

                //: let userWrap = SoulCacheModel.func__transformedChatinfo(userDic: result as! Dictionary<String, Any>)
                let userWrap = SoulCacheModel.behindObserve(userDic: result as! [String: Any])
                //: PermitReactiveCompatible.cache_updateMsgUserInfoAndPostNotif(with: userWrap)
                PermitReactiveCompatible.communication(with: userWrap)
                // 更新消息列表用户在线状态
                //: let userInfo = ["uid": chatID,
                let userInfo = [String(bytes: str_labName.map{$0^242}, encoding: .utf8)!: chatID,
                                //: "onlineStatus": userWrap.onlineStatus,
                                String(bytes: str_addData.map{$0^3}, encoding: .utf8)!: userWrap.onlineStatus,
                                //: "isNewUser":userWrap.isNewUser,
                                String(bytes: str_equalValue.map{physicalStructure(cell: $0)}, encoding: .utf8)!: userWrap.isNewUser,
                                //: "userStatus": userWrap.userStatus]
                                String(bytes: str_indexName.reversed(), encoding: .utf8)!: userWrap.userStatus]
                //: NotificationCenter.default.post(name: MSGLIST_UPDATE_ONLINESTATUS_NOTIFICATION,
                NotificationCenter.default.post(name: kLet_viewName,
                                                //: object: nil,
                                                object: nil,
                                                //: userInfo: userInfo)
                                                userInfo: userInfo)
                //: if userWrap.userStatus == 3 {
                if userWrap.userStatus == 3 { /// 被封号
                    //: self.func__showStatusBarErrorMsg(showMsg: "Account is restricted！".localized)
                    self.oversight(showMsg: (String(str_constraintValue) + str_formatName.replacingOccurrences(of: "top", with: "t") + "cted！").localized)
                    //: return
                    return
                }
                //: DispatchQueue.main.async {
                DispatchQueue.main.async {
                    //: let chatVC = self.func__canPushToPriveteChatVC(chatID: chatID, isFrom: isFrom, userWrap: userWrap)
                    let chatVC = self.person(chatID: chatID, isFrom: isFrom, userWrap: userWrap)
                    //: completion?(chatVC)
                    completion?(chatVC)
                }
            }
            //: }else{
        } else {
            //: DispatchQueue.main.async {
            DispatchQueue.main.async {
                //: let chatVC = self.func__canPushToPriveteChatVC(chatID: chatID, isFrom: isFrom, userWrap: SoulCacheModel())
                let chatVC = self.person(chatID: chatID, isFrom: isFrom, userWrap: SoulCacheModel())
                //: completion?(chatVC)
                completion?(chatVC)
            }
        }
    }

    //: func func__canPushToPriveteChatVC(chatID: String, isFrom: PrivateChatIsFromEnum = .Normal, userWrap: SoulCacheModel ) -> TalkingPrivateChatController {
    func person(chatID: String, isFrom: ToFromEnum = .Normal, userWrap: SoulCacheModel) -> SendReactiveCompatible {
        //: let currentVC = func__getCurrentActivityVC()
        let currentVC = addGet()
        //: if isFrom != .LiveRoom, let vcArr = currentVC?.navigationController?.viewControllers {
        if isFrom != .LiveRoom, let vcArr = currentVC?.navigationController?.viewControllers {
            //: for index in 0..<(vcArr.count) {
            for index in 0 ..< (vcArr.count) {
                //: if vcArr[index] .isKind(of: TalkingPrivateChatController.self) == true {
                if vcArr[index].isKind(of: SendReactiveCompatible.self) == true {
                    //: let vc = vcArr[index] as! TalkingPrivateChatController
                    let vc = vcArr[index] as! SendReactiveCompatible
                    //: if vc.targetId == chatID {
                    if vc.targetId == chatID {
                        //: currentVC?.navigationController?.popToViewController(vc, animated: true)
                        currentVC?.navigationController?.popToViewController(vc, animated: true)
                        //: return vc
                        return vc
                    }
                }
            }
        }

        //: let vc = TalkingPrivateChatController(chatID: chatID, isFrom: isFrom, userWrap: userWrap)
        let vc = SendReactiveCompatible(chatID: chatID, isFrom: isFrom, userWrap: userWrap)
        //: if isFrom == .LiveRoom {
        if isFrom == .LiveRoom {
            //: currentVC?.addChild(vc)
            currentVC?.addChild(vc)
            //: currentVC?.view.addSubview(vc.view)
            currentVC?.view.addSubview(vc.view)
            //: } else {
        } else {
            //: currentVC?.navigationController?.pushViewController(vc, animated: true)
            currentVC?.navigationController?.pushViewController(vc, animated: true)
        }
        //: return vc
        return vc
    }

    // MARK: - 跳转群聊

    //: func func__pushToGroupChat(groupId: String) {
    func turn(groupId: String) {
        //: guard groupId.count > 0 else { return }
        guard groupId.count > 0 else { return }
        //: ProgressHUD.show()
        ModelReactiveCompatible.fromTarget()
        //: PostulationReactiveCompatible.req_checkChatRoom(roomId: groupId) { succeed, result, errorModel in
        PostulationReactiveCompatible.borderCollection(roomId: groupId) { succeed, result, errorModel in
            //: ProgressHUD.dismiss()
            ModelReactiveCompatible.dataConverterCan()
            //: guard succeed == true else {
            guard succeed == true else {
                //: if errorModel?.errorCode == 106 {
                if errorModel?.errorCode == 106 {
                    //: } else {
                } else {
                    //: self.func__showStatusBarErrorMsg(showMsg: errorModel?.errorMsg ?? "")
                    self.oversight(showMsg: errorModel?.errorMsg ?? "")
                    //: if errorModel?.errorCode == 103 {
                    if errorModel?.errorCode == 103 { // 不在家族里
                    }
                }

                //: return
                return
            }

            //: guard let data = result as? [String: Any] else {
            guard let data = result as? [String: Any] else {
                //: return
                return
            }

            //: if MacroDefine.isGroupChat(groupId) {
            if UserMacroDefine.equalChat(groupId) {
                //: } else {
            } else { // 公共聊天室
                //: V2TIMManager.sharedInstance().joinGroup(groupId, msg: nil) {
                V2TIMManager.sharedInstance().joinGroup(groupId, msg: nil) {
                    //: guard self.func__checkIsGroupChatVC(roomId: groupId) == false else { return }
                    guard self.toBag(roomId: groupId) == false else { return }
                    //: let vc = TalkingGroupChatController(groupType: GroupType_Meeting, infoData: data)
                    let vc = SocialGroupPopRecognizerDelegate(groupType: GroupType_Meeting, infoData: data)
                    //: self.func__getCurrentActivityVC()?.navigationController?.pushViewController(vc, animated: true)
                    self.addGet()?.navigationController?.pushViewController(vc, animated: true)

                    //: } fail: { code, desc in
                } fail: { code, _ in
                    //: if code == 10013 {
                    if code == 10013 { // 程序异常退出，未退出聊天室
                        //: guard self.func__checkIsGroupChatVC(roomId: groupId) == false else { return }
                        guard self.toBag(roomId: groupId) == false else { return }
                        //: let vc = TalkingGroupChatController(groupType: GroupType_Meeting, infoData: data)
                        let vc = SocialGroupPopRecognizerDelegate(groupType: GroupType_Meeting, infoData: data)
                        //: self.func__getCurrentActivityVC()?.navigationController?.pushViewController(vc, animated: true)
                        self.addGet()?.navigationController?.pushViewController(vc, animated: true)
                        //: } else {
                    } else {
                        //: self.func__showStatusBarErrorMsg(showMsg: "Failed to enter the chat room. Please try again later".localized)
                        self.oversight(showMsg: String(bytes: str_levelValue.reversed(), encoding: .utf8)!.localized)
                    }
                }
            }
        }
    }

    /// 检测堆栈中是否有群聊控制器，有则跳转到群聊页
    /// - Parameter roomId: 房间Id
    /// - Returns: 检测结果（true: 有; false: 无）
    //: private func func__checkIsGroupChatVC(roomId: String) -> Bool {
    private func toBag(roomId: String) -> Bool {
        //: let currentVC = self.func__getCurrentActivityVC()
        let currentVC = self.addGet()
        //: if let vcArr = currentVC?.navigationController?.viewControllers {
        if let vcArr = currentVC?.navigationController?.viewControllers {
            //: for index in 0..<(vcArr.count) {
            for index in 0 ..< (vcArr.count) {
                //: if vcArr[index].isKind(of: TalkingGroupChatController.self) == true {
                if vcArr[index].isKind(of: SocialGroupPopRecognizerDelegate.self) == true {
                    //: let vc = vcArr[index] as! TalkingGroupChatController
                    let vc = vcArr[index] as! SocialGroupPopRecognizerDelegate
                    //: if vc.infoModel.roomId == roomId {
                    if vc.infoModel.roomId == roomId {
                        //: currentVC?.navigationController?.popToViewController(vc, animated: true)
                        currentVC?.navigationController?.popToViewController(vc, animated: true)
                        //: return true
                        return true
                    }
                }
            }
        }

        //: return false
        return false
    }

    // MARK: - 真人认证

    //: func func__pushUserVerifyController(toast: String?) {
    func alongTarget(toast: String?) {
        //: let tpAuth = TPUserAuth(rawValue: EqualThen.share.loginUserMode.isTPAuth)
        let tpAuth = SkinComparable(rawValue: EqualThen.share.loginUserMode.isTPAuth)
        //: switch(tpAuth) {
        switch tpAuth {
        //: case .unknown, .isRefused:
        case .unknown, .isRefused:
            //: let vc = TalkingFaceVerificationVC()
            let vc = CameraVerificationVc()
            //: vc.toastStr = toast ?? ""
            vc.toastStr = toast ?? ""
            //: let currentVC = func__getCurrentActivityVC()
            let currentVC = addGet()
            //: currentVC?.navigationController?.pushViewController(vc, animated: true)
            currentVC?.navigationController?.pushViewController(vc, animated: true)

        //: case .isOnGoing:
        case .isOnGoing:
            //: let vc = TalkingFinalVerificationVC()
            let vc = StatusThen()
            //: let currentVC = func__getCurrentActivityVC()
            let currentVC = addGet()
            //: currentVC?.navigationController?.pushViewController(vc, animated: true)
            currentVC?.navigationController?.pushViewController(vc, animated: true)

        //: default:
        default:
            //: break
            break
        }
    }

    // MARK: - 任意用户的动态列表

    //: func func__pushUserPostListWithUid(uid: String) {
    func menuUid(uid _: String) {}

    // MARK: - 反馈feebook

    //: func func__pushFeedbackVC() {
    func forceBack() {
        //: let currentVC = func__getCurrentActivityVC()
        let currentVC = addGet()
        //: let vc = TalkingFeedbackVC.init()
        let vc = CounteractionAtFieldDelegate()
        //: currentVC?.navigationController?.pushViewController(vc, animated: true)
        currentVC?.navigationController?.pushViewController(vc, animated: true)
    }

    // MARK: - 消息跳转

    //: func func__actionPushForMessage(jumpModel: TalkingMessageJumpModel) {
    func makeEnableAdd(jumpModel: UpwardModelType) {
        //: if jumpModel.jumpKey == "url" {
        if jumpModel.jumpKey == (String(str_nameValue)) {
            //: func__pushToWebVC(urlStr: jumpModel.url)
            bileOf(urlStr: jumpModel.url)
            //: } else if jumpModel.jumpKey == "userDetail"{
        } else if jumpModel.jumpKey == (String(str_infoText) + str_cornerCenterTitle.replacingOccurrences(of: "style", with: "i")) {}
    }

    // MARK: - 会员订阅网页

    //: @objc public func func__pushToSubscribePageWebVC() {
    @objc public func whole() {
        //: EditTextThen.share.func__pushToWebVC(webViewType: .SubscribePage)
        EditTextThen.share.hailType(webViewType: .SubscribePage)
    }

    // MARK: - 设置密码页面

    /// 跳转设置密码页面
    /// - Parameters:
    ///   - type: 手机号/邮箱
    ///   - content: 展示内容
    ///   - isNewPwd: 是否新设置密码（修改需要验证码）
    //: func func__pushToSetNewPasswordVC(type: LoginType, content: String, isNewPwd: Bool) {
    func feelList(type: VariantSchemaConvertible, content: String, isNewPwd: Bool) {
        //: let vc = TalkingSetNewPasswordVC()
        let vc = TalkingViewController()
        //: vc.type = type
        vc.type = type
        //: vc.content = content
        vc.content = content
        //: vc.isNewPwd = isNewPwd
        vc.isNewPwd = isNewPwd
        //: func__getCurrentActivityVC()?.navigationController?.pushViewController(vc, animated: true)
        addGet()?.navigationController?.pushViewController(vc, animated: true)
    }
}

// MARK: - 跳转H5

//: extension EditTextThen {
extension EditTextThen {
    // 跳转全屏H5入口
    //: func func__pushToWebVC(webViewType: WebUrlType) {
    func hailType(webViewType: TypeNameLiteral) {
        //: func__pushToWebVC(webViewType: webViewType, webConfig: TalkingWebConfig())
        humanBeing(webViewType: webViewType, webConfig: AddConfig())
    }

    /// 余额不足跳转充值/订阅页
    /// - Parameters:
    ///   - clickEvent: 埋点事件
    ///   - sufficient: 余额是否充足（默认true）
    //: func func__jumpToWebRecharge(clickEvent: String = "", sufficient: Bool = true, appendParams: String = "&type=7") {
    func activityParams(clickEvent: String = "", sufficient: Bool = true, appendParams: String = (String(str_wrapData) + String(str_bottomValue))) {
        //: let payWinType = EqualThen.share.appUserConfigMode.payWinType
        let payWinType = EqualThen.share.appUserConfigMode.payWinType
        // 样式：半屏充值页 || (已订阅 && 余额不足)
        //: if payWinType == 1 || (EqualThen.share.loginUserMode.loungePlus && sufficient == false) {
        if payWinType == 1 || (EqualThen.share.loginUserMode.loungePlus && sufficient == false) { // 半屏充值页
            //: func__pushToHalfWebVC(webViewType: .RechargeHalfPage, clickEvent: clickEvent)
            plumage(webViewType: .RechargeHalfPage, clickEvent: clickEvent)

            //: } else if payWinType == 2 {
        } else if payWinType == 2 { // 会员订阅弹窗
            //: func__pushToSubscribeAlert(appendParams: appendParams)
            addShowParams(appendParams: appendParams)
        }
    }

    /// 跳转会员充值弹窗
    /// - Parameter appendParams: 1 私密照片、2 私密视频、3 视频包、4 音频包
    //: func func__pushToRechargeAlert(appendParams: String = "&type=0") {
    func pause(appendParams: String = (String(str_giftValue) + String(str_indexTextData))) {
        //: var urlStr = TalkingWebManager.getFullUrl(urlType: .RechargeAlert)
        var urlStr = SendManager.duringTap(urlType: .RechargeAlert)
        //: urlStr.append(appendParams)
        urlStr.append(appendParams)
        //: EditTextThen.share.func__pushToWebVC(urlStr: urlStr)
        EditTextThen.share.bileOf(urlStr: urlStr)
    }

    /// 跳转会员订阅弹窗
    /// - Parameter appendParams: url拼接参数（假视频流程拼接："&type=6；默认流程："&type=7"）
    //: func func__pushToSubscribeAlert(appendParams: String = "&type=7") {
    func addShowParams(appendParams: String = (String(str_wrapData) + String(str_bottomValue))) {
        //: var urlStr = TalkingWebManager.getFullUrl(urlType: .SubscribeAlert)
        var urlStr = SendManager.duringTap(urlType: .SubscribeAlert)
        //: urlStr.append(appendParams)
        urlStr.append(appendParams)
        //: EditTextThen.share.func__pushToWebVC(urlStr: urlStr)
        EditTextThen.share.bileOf(urlStr: urlStr)
        // 曝光用户数埋点
        //: uploadRecord.uploadRecordEvent(eventID: subscribtionRecordButton, parameterStr: ["amount": 0])
        kLet_textData.pictureOf(eventID: kLet_clickText, parameterStr: [String(bytes: str_sourceContent.map{$0^255}, encoding: .utf8)!: 0])
    }

    /// 跳转半屏H5入口
    /// - Parameters:
    ///   - webViewType: 网页URL
    ///   - clickEvent: 埋点事件
    //: func func__pushToHalfWebVC(webViewType: WebUrlType, clickEvent: String = "") {
    func plumage(webViewType: TypeNameLiteral, clickEvent: String = "") {
        //: var config = TalkingWebConfig.init()
        var config = AddConfig()
        //: config.showLoadingView = false
        config.showLoadingView = false
        //: config.isHalfView = true
        config.isHalfView = true
        //: func__pushToWebVC(webViewType: webViewType, webConfig: config)
        humanBeing(webViewType: webViewType, webConfig: config)
        // 充值埋点
        //: if webViewType == .RechargeHalfPage {
        if webViewType == .RechargeHalfPage {
            //: RECHARGE_CLICK_EVENT = clickEvent
            kLet_keyData = clickEvent
            //: if clickEvent.count > 0 {
            if clickEvent.count > 0 {
                //: uploadRecord.uploadRecordEvent(eventID: clickEvent, parameterStr: ["amount": 0])
                kLet_textData.pictureOf(eventID: clickEvent, parameterStr: [String(bytes: str_sourceContent.map{$0^255}, encoding: .utf8)!: 0])
            }
        }
    }

    //: func func__pushToWebVC(webViewType: WebUrlType, webConfig: TalkingWebConfig) {
    func humanBeing(webViewType: TypeNameLiteral, webConfig: AddConfig) {
        //: let urlStr = TalkingWebManager.getFullUrl(urlType: webViewType)
        let urlStr = SendManager.duringTap(urlType: webViewType)
        //: func__pushToWebView(urlStr: urlStr, webViewType: webViewType, webConfig: webConfig)
        successConfig(urlStr: urlStr, webViewType: webViewType, webConfig: webConfig)
    }

    //: func func__pushToWebVC(urlStr: String?, webConfig: TalkingWebConfig? = nil) {
    func bileOf(urlStr: String?, webConfig: AddConfig? = nil) {
        //: let config = (webConfig == nil) ? TalkingWebConfig():webConfig
        let config = (webConfig == nil) ? AddConfig() : webConfig
        //: func__pushToWebView(urlStr: urlStr, webViewType: nil, webConfig: config!)
        successConfig(urlStr: urlStr, webViewType: nil, webConfig: config!)
    }

    //: func func__pushToWebView(urlStr: String?, webViewType: WebUrlType?, webConfig: TalkingWebConfig) {
    func successConfig(urlStr: String?, webViewType: TypeNameLiteral?, webConfig: AddConfig) {
        //: guard urlStr != nil && urlStr != "" else { return }
        guard urlStr != nil, urlStr != "" else { return }
        //: var config = webConfig
        var config = webConfig

        // 有值且大于0，半屏按照比例展示
        //: if config.widthHeight ?? 0 > 0 {
        if config.widthHeight ?? 0 > 0 {
            //: config.isHalfView = true
            config.isHalfView = true
        }
        // 解析url中带的参数
        //: let urlParams = JSON(urlStr!.urlParameters ?? [:])
        let urlParams = JSON(urlStr!.urlParameters ?? [:])
        //: if urlParams["transparency"].stringValue == "1" { // 透明背景
        if urlParams[(str_modeValue.replacingOccurrences(of: "equal", with: "p") + "arency")].stringValue == "1" { // 透明背景
            //: config.clearBgColor = true
            config.clearBgColor = true
        }

        // url拼接参数
        //: let allowCharSet: CharacterSet = CharacterSet.init(charactersIn: "`%^{}\"[]|\\<>").inverted
        let allowCharSet = CharacterSet(charactersIn: "`%^{}\"[]|\\<>").inverted
        //: var urlStr = urlStr!.addingPercentEncoding(withAllowedCharacters: allowCharSet)!
        var urlStr = urlStr!.addingPercentEncoding(withAllowedCharacters: allowCharSet)!
        //: let otherParams = "version=\(AppNetVersion)&packageId=\(PackageID)&bundleId=\(AppBundle)"
        let otherParams = (str_fieldContent.replacingOccurrences(of: "share", with: "si") + String(str_toValueName.prefix(3))) + "\(kLet_descriptionData)" + (String(str_startTitle) + String(str_tabData.prefix(8))) + "\(kLet_playPageValue)" + (String(str_selectName.prefix(5)) + "leId=") + "\(kLet_succeedLineViewData)"
        //: if urlStr.contains("?") {
        if urlStr.contains("?") {
            //: urlStr = "\(urlStr)&\(otherParams)"
            urlStr = "\(urlStr)&\(otherParams)"
            //: } else {
        } else {
            //: urlStr = "\(urlStr)?\(otherParams)"
            urlStr = "\(urlStr)?\(otherParams)"
        }

        //: let vc = TalkingWebViewController.init(urlString: urlStr, webViewType: webViewType, webConfig: config)
        let vc = IgnitionKeyViewController(urlString: urlStr, webViewType: webViewType, webConfig: config)

        // 展示网页
        //: if let currentVC = func__getCurrentActivityVC() {
        if let currentVC = addGet() {
            // 如果当前视图是模态上来的，跳转到下级时只能使用模态效果跳转
            //: var currentVCIsPresent = false
            var currentVCIsPresent = false
            //: if currentVC.isKind(of: TalkingWebViewController.self) &&
            if currentVC.isKind(of: IgnitionKeyViewController.self) &&
                //: (currentVC as! TalkingWebViewController).isModal == true {
                (currentVC as! IgnitionKeyViewController).isModal == true
            {
                //: currentVCIsPresent = true
                currentVCIsPresent = true
            }

            //: if config.isHalfView {
            if config.isHalfView { // 半屏使用present
                //: if config.widthHeight == nil {
                if config.widthHeight == nil {
                    //: vc.tranConfig.frameOfPresentedView = CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight*2/3)
                    vc.tranConfig.frameOfPresentedView = CGRect(x: 0, y: 0, width: kLet_cameraValue, height: kLet_clickData * 2 / 3)
                    //: vc.tranConfig.configCorner(corners: [.topLeft, .topRight], radius: 18)
                    vc.tranConfig.atRadius(corners: [.topLeft, .topRight], radius: 18)
                    //: } else {
                } else {
                    //: vc.tranConfig.frameOfPresentedView = CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenWidth/config.widthHeight!)
                    vc.tranConfig.frameOfPresentedView = CGRect(x: 0, y: 0, width: kLet_cameraValue, height: kLet_cameraValue / config.widthHeight!)
                }
                //: vc.isModal = true
                vc.isModal = true
                //: currentVC.present(vc, animated: true)
                currentVC.present(vc, animated: true)

                //: } else if config.clearBgColor || currentVCIsPresent {
            } else if config.clearBgColor || currentVCIsPresent { // 透明背景只能用present
                //: vc.tranConfig.frameOfPresentedView = CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight)
                vc.tranConfig.frameOfPresentedView = CGRect(x: 0, y: 0, width: kLet_cameraValue, height: kLet_clickData)
                //: vc.isModal = true
                vc.isModal = true
                //: currentVC.present(vc, animated: true)
                currentVC.present(vc, animated: true)

                //: } else {
            } else {
                //: vc.isModal = false
                vc.isModal = false
                //: currentVC.navigationController?.pushViewController(vc, animated: true)
                currentVC.navigationController?.pushViewController(vc, animated: true)
            }
        }
    }
}

// MARK: - 获取当前视图、导航

//: extension EditTextThen {
public extension EditTextThen {
    //: @objc public func func__getCurrentActivityVC() -> UIViewController? {
    @objc func addGet() -> UIViewController? {
        //: return currentViewController()
        return infoController()
    }
}

//: struct TalkingMessageJumpModel: HandyJSON {
struct UpwardModelType: HandyJSON {
    //: var jumpKey: String?
    var jumpKey: String? // 评论的id
    //: var jumpUid: String?
    var jumpUid: String?
    //: var url: String?
    var url: String?
}
