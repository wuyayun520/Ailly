
//: Declare String Begin

/*: "PARTY_STATUS_CHANGE_NOTIFICATION" :*/
fileprivate let str_currentName:[UInt8] = [0x84,0x75,0x86,0x88,0x8d,0x93,0x87,0x88,0x75,0x88,0x89,0x87,0x93,0x77,0x7c,0x75,0x82,0x7b,0x79,0x93,0x82,0x83,0x88,0x7d,0x7a,0x7d,0x77,0x75,0x88,0x7d,0x83,0x82]

fileprivate func bankGift(text num: UInt8) -> UInt8 {
    let value = Int(num) - 52
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "p- :*/
fileprivate let str_executeEffectAfterwardData:[Character] = ["p","-"]

/*: - :*/
fileprivate let str_modeContent:[Character] = ["-"]

/*: "redirectUrl" :*/
fileprivate let str_equalData:[Character] = ["r","e","d","i","r","e","c","t","U","r","l"]

/*: "VOICEROOM: 进房模型解析失败。" :*/
fileprivate let str_backValue:String = "VresIC"
fileprivate let str_makeValue:String = " 进will型"

/*: "Party room exception" :*/
fileprivate let str_nextFrameName:[Character] = ["P","a","r","t","y"," ","r"]
fileprivate let str_colorTitle:[Character] = ["o","o"]
fileprivate let str_loadLabelName:[Character] = ["m"," ","e","x","c","e","p","t","i","o","n"]

/*: _ :*/
fileprivate let str_giftTimeData:[Character] = ["_"]

/*: "male" :*/
fileprivate let str_makeName:[UInt8] = [0x51,0x45,0x50,0x49]

fileprivate func nextAdd(time num: UInt8) -> UInt8 {
    let value = Int(num) + 28
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "female" :*/
fileprivate let str_emptyName:String = "femrequeste"

/*: "VOICEROOM: 群聊进房失败。groupId:  :*/
fileprivate let str_lockInfoTitle:String = "VOImodelE"
fileprivate let str_backgroundValue:String = " \u{7fa4}聊\u{8fdb}房失\u{8d25}。"
fileprivate let str_normalData:[Character] = ["g","r","o","u","p","I","d",":"," "]

/*: ." :*/
fileprivate let str_giftTitle:[Character] = ["."]

/*: "VOICEROOM: 切房模型解析失败。" :*/
fileprivate let str_cellValue:[Character] = ["V","O","I","C","E","R","O","O","M",":"," ","切","房","模","\u{578b}","解","析","失","败","\u{3002}"]

/*: "VOICEROOM: 群聊切房失败。groupId:  :*/
fileprivate let str_turnGiftName:[Character] = ["V","O","I","C","E"]
fileprivate let str_smallTitle:[Character] = ["R","O","O","M",":"," ","群","聊","切"]
fileprivate let str_resultContent:[Character] = ["房","失","败","。","g","r","o","u","p","I","d",":"," "]

/*: "errCode" :*/
fileprivate let str_listData:[UInt8] = [0x62,0x6f,0x6f,0x40,0x6c,0x61,0x62]

fileprivate func valueTo(icon num: UInt8) -> UInt8 {
    let value = Int(num) + 3
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "custom_kickout_message" :*/
fileprivate let str_appData:[Character] = ["c","u","s","t","o","m","_","k","i","c","k","o","u","t","_","m","e","s"]
fileprivate let str_maxValue:String = "saerrore"

/*: "closeRoom" :*/
fileprivate let str_actualSessionValue:String = "sex returncloseRo"
fileprivate let str_ofText:String = "omessage"

/*: "adminCloseRoom" :*/
fileprivate let str_closeName:String = "admplayer"
fileprivate let str_imageText:String = "equal fatal fileeRoom"

/*: "The room is closed, please go to another room" :*/
fileprivate let str_dateName:[UInt8] = [0x7a,0x8e,0x8b,0x46,0x98,0x95,0x95,0x93,0x46,0x8f,0x99,0x46,0x89,0x92,0x95,0x99,0x8b,0x8a,0x52,0x46,0x96,0x92,0x8b,0x87,0x99,0x8b,0x46,0x8d,0x95,0x46,0x9a,0x95,0x46,0x87,0x94,0x95,0x9a,0x8e,0x8b,0x98,0x46,0x98,0x95,0x95,0x93]

fileprivate func selfEnd(sound num: UInt8) -> UInt8 {
    let value = Int(num) - 38
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "OK" :*/
fileprivate let str_changeValue:String = "line"

/*: "You were kicked out of the room" :*/
fileprivate let str_headData:[UInt8] = [0xf7,0xc1,0xdb,0x8e,0xd9,0xcb,0xdc,0xcb,0x8e,0xc5,0xc7,0xcd,0xc5,0xcb,0xca,0x8e,0xc1,0xdb,0xda,0x8e,0xc1,0xc8,0x8e,0xda,0xc6,0xcb,0x8e,0xdc,0xc1,0xc1,0xc3]

/*: "VOICEROOM：进房失败，roomID:  :*/
fileprivate let str_rowText:String = "VOmomentCE"
fileprivate let str_pageText:String = "\u{ff1a}进房失败"
fileprivate let str_upValue:String = "self count type dismissmID:"
fileprivate let str_edgeValue:String = "read"

/*: , error:  :*/
fileprivate let str_colorText:String = "cover "
fileprivate let str_scaleValue:String = "mp let data self forerror: "

/*: , reason:  :*/
fileprivate let str_valueText:[Character] = [","," ","r","e","a","s","o","n",":"," "]

/*: , extendedData:  :*/
fileprivate let str_bottomName:String = "remove to crop, ex"
fileprivate let str_viewNextTitle:String = "tapd"
fileprivate let str_popName:String = "var view make cornerData: "

/*: "VOICEROOM: 当前用户推流失败，roomID:  :*/
fileprivate let str_liveTitle:[Character] = ["V","O","I","C","E","R","O","O","M",":"," ","当","\u{524d}","用","户","推","流","失","\u{8d25}","\u{ff0c}","r","o","o","m","I","D",":"," "]

/*: , errorCode:  :*/
fileprivate let str_barName:[Character] = [","," ","e","r","r","o","r","C","o","d","e",":"," "]

/*: , streamID:  :*/
fileprivate let str_frameName:[Character] = [","," ","s","t","r","e"]
fileprivate let str_viewName:[Character] = ["a","m","I","D",":"," "]

/*: "An error occurred, please try again" :*/
fileprivate let str_frontValue:[UInt8] = [0xa7,0xd4,0x86,0xcb,0xd8,0xd8,0xd5,0xd8,0x86,0xd5,0xc9,0xc9,0xdb,0xd8,0xd8,0xcb,0xca,0x92,0x86,0xd6,0xd2,0xcb,0xc7,0xd9,0xcb,0x86,0xda,0xd8,0xdf,0x86,0xc7,0xcd,0xc7,0xcf,0xd4]

fileprivate func cellReturn(pic num: UInt8) -> UInt8 {
    let value = Int(num) - 102
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "VOICEROOM: 拉流失败，roomID:  :*/
fileprivate let str_arrayTouchData:String = "voicer"
fileprivate let str_receiveData:String = " \u{62c9}流\u{5931}败"
fileprivate let str_adjustName:String = "model top else case gift，room"

/*: "VOICEROOM: 信令解析失败，command:  :*/
fileprivate let str_secondData:String = "voice"
fileprivate let str_fullValue:[Character] = [":"," ","信","令","解","析","失"]
fileprivate let str_contentData:String = "\u{8d25}\u{ff0c}co"

/*: , roomID:  :*/
fileprivate let str_thanText:String = "import pic, roo"

/*: "data" :*/
fileprivate let str_toTitle:String = "dindextindex"

/*: "position" :*/
fileprivate let str_valueTitle:String = "poscamerai"
fileprivate let str_whiteAppearanceData:[Character] = ["o","n"]

/*: "xxxx--  :*/
fileprivate let str_leadingValue:String = "size bottom select leading modexxxx-- "

/*: "opType" :*/
fileprivate let str_tempTitle:String = "self shared data ifopType"

/*: "party:changeMike" :*/
fileprivate let str_makeTitle:String = "pausert"
fileprivate let str_itemPostName:String = "angeMikeapp file add share background"

/*: "type" :*/
fileprivate let str_targetTitle:String = "typcolor"

/*: "toPosition" :*/
fileprivate let str_pageValue:String = "toPouser attribute"

/*: "party:adminChangeMike" :*/
fileprivate let str_barTitle:String = "selectedarty"
fileprivate let str_normalName:String = "inChangphoto document"
fileprivate let str_addLabToData:String = "eMiketext in image view view"

/*: "You were kicked off the seat" :*/
fileprivate let str_tableValue:[Character] = ["Y","o","u"," ","w","e","r","e"," ","k"]
fileprivate let str_atText:[Character] = ["i","c","k","e","d"," ","o","f","f"," ","t","h","e"]
fileprivate let str_genderValue:[Character] = [" ","s","e","a","t"]

/*: "party:changeCoin" :*/
fileprivate let str_somebodyValue:String = "parcolory"
fileprivate let str_maxName:String = "app play datageCoin"

/*: "party:closeStream" :*/
fileprivate let str_layerName:[Character] = ["p","a","r","t","y",":","c","l","o","s","e","S","t","r","e","a","m"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ViewRoomManager.swift
//  Adjust
//
//  Created by DouXiu on 2024/9/12.
//

//: import ZegoExpressEngine
import ZegoExpressEngine

/// 语聊房状态变更通知
//: public let PARTY_STATUS_CHANGE_NOTIFICATION = NSNotification.Name(rawValue: "PARTY_STATUS_CHANGE_NOTIFICATION")
public let kLet_messageData = NSNotification.Name(rawValue: String(bytes: str_currentName.map{bankGift(text: $0)}, encoding: .utf8)!)
/// 麦位数
//: public let MIKE_SEAT_COUNT = 8
public let kLet_imageSystemTitle = 8

/// 语聊房角色
//: enum VoiceRoomRole: Int {
enum ParadigmExpressionConvertible: Int {
    //: case host = 1
    case host = 1 // 房主
    //: case audience = 2
    case audience = 2 // 观众
    //: case manager = 4
    case manager = 4 // 管理员
}

//: class TalkingVoiceRoomManager: NSObject {
class ViewRoomManager: NSObject {
    /// 语聊房模型
    //: private(set) var partyModel = TalkingVoiceRoomModel()
    private(set) var partyModel = TitleMeasurable()
    /// 是否正在语聊房中（状态变更时发送通知）
    //: private(set) var isParty: Bool = false {
    private(set) var isParty: Bool = false {
        //: didSet {
        didSet {
            //: NotificationCenter.default.post(name: PARTY_STATUS_CHANGE_NOTIFICATION, object: self)
            NotificationCenter.default.post(name: kLet_messageData, object: self)
        }
    }

    /// 是否小窗口模式
    //: private(set) var isSmallMode: Bool = false
    private(set) var isSmallMode: Bool = false
    /// singleton
    //: private static var _instance: TalkingVoiceRoomManager?
    private static var _instance: ViewRoomManager?
    // 语聊房控制器
    //: private var voiceRoomVC: TalkingVoiceRoomViewController?
    private var voiceRoomVC: SourceManagerDelegate?
    /// 麦位信息字典 [麦位 0~7：麦位模型]
    //: private var mikePositionDict = [Int: TalkingMikeListItemModel]()
    private var mikePositionDict = [Int: WithTransformable]()
    //: private let mplock = NSLock()
    private let mplock = NSLock()
    /// 正在进房请求中（防止多次调用）
    //: private var isEnterRoomReq = false
    private var isEnterRoomReq = false
    /// 麦克风操作请求中（防止多次调用）
    //: private var isMicReq = false
    private var isMicReq = false

    //: override init() {
    override init() {
        //: super.init()
        super.init()
        //: self.mikePositionDict = initMikePosition()
        self.mikePositionDict = viewIn()
    }

    //: class func shared() -> TalkingVoiceRoomManager {
    class func astatine() -> ViewRoomManager {
        //: guard _instance != nil else {
        guard _instance != nil else {
            //: _instance = TalkingVoiceRoomManager()
            _instance = ViewRoomManager()
            //: return _instance!
            return _instance!
        }
        //: return _instance!
        return _instance!
    }

    //: class func destroy() {
    class func onUser() {
        //: if TalkingVoiceRoomManager._instance != nil {
        if ViewRoomManager._instance != nil {
            //: TalkingVoiceRoomManager._instance = nil
            ViewRoomManager._instance = nil
        }
    }

    // MARK: - Lazy Load

    // 语聊房小窗口悬浮窗
    //: private lazy var miniView: TalkingVoiceRoomMiniView = {
    private lazy var miniView: ControlContentMiniView = {
        //: let mini = TalkingVoiceRoomMiniView.buildLiveMiniView()
        let mini = ControlContentMiniView.militaryPost()
        //: mini.isHidden = true
        mini.isHidden = true
        //: mini.tapGestureBlock = { [weak self] in
        mini.tapGestureBlock = { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.voiceRoom_goback()
            self.titleEqual()
        }
        //: return mini
        return mini
        //: }()
    }()
}

// MARK: - 操作麦位请求

//: extension TalkingVoiceRoomManager {
extension ViewRoomManager {
    /// 房主/观众 麦位操作请求
    /// - Parameters:
    ///   - type: 1 上麦，2 下麦，3 切麦，4 开麦，5 闭麦
    ///   - position: 麦位
    ///   - toPosition: 目标麦位（切麦传值）
    //: func voiceRoom_reqChangeMike(type: Int, position: Int, toPosition: Int? = nil) {
    func endPosition(type: Int, position: Int, toPosition: Int? = nil) {
        //: guard isMicReq == false else { return }
        guard isMicReq == false else { return }
        //: isMicReq = true
        isMicReq = true
        //: TalkingVoiceRoomReqTool.req_changeMike(roomId: partyModel.roomId,
        SurgeryReqTool.consultingServiceCompletion(roomId: partyModel.roomId,
                                                            //: uid: Int(EqualThen.share.loginUid) ?? 0,
                                                            uid: Int(EqualThen.share.loginUid) ?? 0,
                                                            //: type: type,
                                                            type: type,
                                                            //: position: position,
                                                            position: position,
                                                            //: toPos: toPosition)
                                                            toPos: toPosition)
        //: { succeed, result, errorModel in
        { succeed, result, errorModel in
            //: self.isMicReq = false
            self.isMicReq = false
            //: guard succeed else {
            guard succeed else { // 失败提示
                //: if errorModel?.errorCode == 20001 {
                if errorModel?.errorCode == 20001 { // 已在麦位，开始推流，刷新UI
                    //: ZegoExpressEngine.shared().mutePublishStreamAudio(false)
                    ZegoExpressEngine.shared().mutePublishStreamAudio(false)
                    //: let streamID = self.voiceRoom_getStreamID()
                    let streamID = self.corner()
                    //: ZegoExpressEngine.shared().startPublishingStream(streamID)
                    ZegoExpressEngine.shared().startPublishingStream(streamID)
                    //: guard let dict = result as? [String: Any] else { return }
                    guard let dict = result as? [String: Any] else { return }
                    //: guard let mikeModel = TalkingMikeListItemModel.deserialize(from: dict) else { return }
                    guard let mikeModel = WithTransformable.deserialize(from: dict) else { return }
                    //: self.updateMikePosition(position: position, model: mikeModel)
                    self.sign(position: position, model: mikeModel)
                }
                //: return
                return
            }

            // 成功后只做逻辑处理，在接收信令处统一刷新UI
            //: switch type {
            switch type {
            //: case 1:
            case 1: // 上麦成功
                //: ZegoExpressEngine.shared().mutePublishStreamAudio(false)
                ZegoExpressEngine.shared().mutePublishStreamAudio(false)
                //: let streamID = self.voiceRoom_getStreamID()
                let streamID = self.corner()
                //: ZegoExpressEngine.shared().startPublishingStream(streamID)
                ZegoExpressEngine.shared().startPublishingStream(streamID)

            //: case 2:
            case 2: // 下麦成功
                //: ZegoExpressEngine.shared().stopPublishingStream()
                ZegoExpressEngine.shared().stopPublishingStream()

            //: case 3:
            case 3: // 切麦成功
                //: break
                break

            //: case 4:
            case 4: // 开麦成功
                //: ZegoExpressEngine.shared().mutePublishStreamAudio(false)
                ZegoExpressEngine.shared().mutePublishStreamAudio(false)

            //: case 5:
            case 5: // 闭麦成功
                //: ZegoExpressEngine.shared().mutePublishStreamAudio(true)
                ZegoExpressEngine.shared().mutePublishStreamAudio(true)

            //: default:
            default:
                //: break
                break
            }
        }
    }

    /// 房主对他人操作请求
    /// - Parameters:
    ///   - uid: 用户Id
    ///   - type: 1 锁麦，2 解锁麦，3 踢下麦，4 开麦，5 闭麦
    ///   - position: 麦位
    //: func voiceRoom_reqAdminChangeMike(uid: Int, type: Int, position: Int) {
    func destroyAction(uid: Int, type: Int, position: Int) {
        //: guard isMicReq == false else { return }
        guard isMicReq == false else { return }
        //: isMicReq = true
        isMicReq = true
        //: TalkingVoiceRoomReqTool.req_adminChangeMike(roomId: partyModel.roomId,
        SurgeryReqTool.infoAppear(roomId: partyModel.roomId,
                                           //: uid: uid,
                                           uid: uid,
                                           //: type: type,
                                           type: type,
                                           //: position: position)
                                           position: position)
        //: { _, _, _ in
        { _, _, _ in
            //: self.isMicReq = false
            self.isMicReq = false
        }
    }

    /// 获取推流Id
    //: private func voiceRoom_getStreamID() -> String {
    private func corner() -> String {
        //: return "p-\(EqualThen.share.loginUid)-\(partyModel.roomId)"
        return "p-\(EqualThen.share.loginUid)-\(partyModel.roomId)"
    }
}

// MARK: - 权限检测，开启/进入/切换 语聊房

//: extension TalkingVoiceRoomManager {
extension ViewRoomManager {
    /// 检测状态并进入语聊房
    /// - Parameters:
    ///   - roomId: 房间Id（nil：创建房间；有值：进入房间）
    //: func voiceRoom_checkAndTurnOn(roomId: String? = nil) {
    func voiceBuildVomitoryHallway(roomId: String? = nil) {
        //: guard isParty == false else { return }
        guard isParty == false else { return }
        //: guard isEnterRoomReq == false else { return }
        guard isEnterRoomReq == false else { return }
        //: isEnterRoomReq = true
        isEnterRoomReq = true

        // 1. 权限检测
        //: TalkingPermissionTool.func__openRecordServiceWithBlock(true) { isOpen in
        RubricThen.valueClose(true) { isOpen in
            //: guard isOpen == true else {
            guard isOpen == true else {
                //: self.func__showStatusBarErrorMsg(showMsg: kMessage_permissions_error)
                self.oversight(showMsg: kLet_likeCancelData)
                //: self.isEnterRoomReq = false
                self.isEnterRoomReq = false
                //: return
                return
            }

            // 2. 接口是否禁播检测
            //: TalkingVoiceRoomReqTool.req_voiceRoomCheck(roomId: roomId) { succeed, result, errorModel in
            SurgeryReqTool.nextEqual(roomId: roomId) { succeed, result, errorModel in
                //: self.isEnterRoomReq = false
                self.isEnterRoomReq = false
                //: guard succeed else {
                guard succeed else {
                    //: if errorModel?.errorCode == 302 {
                    if errorModel?.errorCode == 302 { // 失败，跳转H5
                        //: if let result = result as? [String: Any] {
                        if let result = result as? [String: Any] {
                            //: EditTextThen.share.func__pushToWebVC(urlStr: result["redirectUrl"] as? String)
                            EditTextThen.share.bileOf(urlStr: result[(String(str_equalData))] as? String)
                        }
                        //: } else if errorModel?.errorMsg.count ?? 0 > 0 {
                    } else if errorModel?.errorMsg.count ?? 0 > 0 {
                        //: self.func__showStatusBarErrorMsg(showMsg: errorModel!.errorMsg)
                        self.oversight(showMsg: errorModel!.errorMsg)
                    }
                    //: return
                    return
                }

                // 3. 是否正在音视频通话中
                //: guard TalkingSocketManager.shared.isTalking == false else {
                guard DeviceSocketDelegate.shared.isTalking == false else {
                    //: self.func__showStatusBarErrorMsg(showMsg: kMessage_videoTalking_limit)
                    self.oversight(showMsg: kLet_replaceTitle)
                    //: return
                    return
                }

                // 4. 校验成功，解析模型
                //: guard let model = TalkingVoiceRoomModel.deserialize(from: result as? Dictionary) else {
                guard let model = TitleMeasurable.deserialize(from: result as? Dictionary) else {
                    //: DeepKeyTamperReactiveCompatible.indexView(msg: "VOICEROOM: 进房模型解析失败。")
                    DeepKeyTamperReactiveCompatible.indexView(msg: (str_backValue.replacingOccurrences(of: "res", with: "O") + "EROOM:" + str_makeValue.replacingOccurrences(of: "will", with: "房模") + "解析失败。"))
                    //: self.func__showStatusBarErrorMsg(showMsg: "Party room exception".localized)
                    self.oversight(showMsg: (String(str_nextFrameName) + String(str_colorTitle) + String(str_loadLabelName)).localized)
                    //: return
                    return
                }
                //: self.partyModel = model
                self.partyModel = model

                // 5. 创建语聊房UI，同时调用sdk创建房间
                //: self.voiceRoomVC = TalkingVoiceRoomViewController()
                self.voiceRoomVC = SourceManagerDelegate()
                //: self.getNavigationController()?.pushViewController(self.voiceRoomVC!, animated: true)
                self.getApp()?.pushViewController(self.voiceRoomVC!, animated: true)
                //: self.miniView.refreshMiniView()
                self.miniView.afterFor()
                //: self.miniView.isHidden = true
                self.miniView.isHidden = true
                //: self.voiceRoom_create()
                self.visualisation()
                //: UIApplication.shared.isIdleTimerDisabled = true
                UIApplication.shared.isIdleTimerDisabled = true // 防止息屏
                //: self.isParty = true
                self.isParty = true

                // 6. 埋点
                //: uploadRecord.uploadRecordEvent(eventID: "\(click_partyDetail_enter)_\(EqualThen.share.loginUserMode.sex == Gender.male.rawValue ? "male" : "female")")
                kLet_textData.historicalPaper(eventID: "\(kLet_bottomInviteValue)_\(EqualThen.share.loginUserMode.sex == RunReplaceableCollection.male.rawValue ? String(bytes: str_makeName.map{nextAdd(time: $0)}, encoding: .utf8)! : (str_emptyName.replacingOccurrences(of: "request", with: "al")))")

                // 7. 初始化弹幕群聊
                //: TalkingDanmuManager.joinLiveRoomDanmu(groupId: self.partyModel.chatGroupId, announcementMsg: self.partyModel.notification) { succeed in
                UserListBankManagerReactiveCompatible.pathCell(groupId: self.partyModel.chatGroupId, announcementMsg: self.partyModel.notification) { succeed in
                    //: if succeed == false {
                    if succeed == false {
                        //: DeepKeyTamperReactiveCompatible.indexView(msg: "VOICEROOM: 群聊进房失败。groupId: \(self.partyModel.chatGroupId).")
                        DeepKeyTamperReactiveCompatible.indexView(msg: (str_lockInfoTitle.replacingOccurrences(of: "model", with: "C") + "ROOM:" + str_backgroundValue + String(str_normalData)) + "\(self.partyModel.chatGroupId).")
                        //: self.func__showStatusBarErrorMsg(showMsg: "Party room exception".localized)
                        self.oversight(showMsg: (String(str_nextFrameName) + String(str_colorTitle) + String(str_loadLabelName)).localized)
                        //: self.voiceRoom_releaseAllResource()
                        self.fastening()
                    }
                }
            }
        }
    }

    /// 切换语聊房
    /// - Parameters:
    ///   - roomId: 当前进入房间Id
    ///   - beforeRoomId: 上一房间Id
    //: func voiceRoom_switch(roomId: String, beforeRoomId: String) {
    func common(roomId: String, beforeRoomId: String) {
        //: guard isEnterRoomReq == false else { return }
        guard isEnterRoomReq == false else { return }
        //: isEnterRoomReq = true
        isEnterRoomReq = true
        // 1. 调用切房接口
        //: TalkingVoiceRoomReqTool.req_voiceRoomSwitch(roomId: roomId, beforeRoomId: beforeRoomId) { succeed, result, _ in
        SurgeryReqTool.withCompletion(roomId: roomId, beforeRoomId: beforeRoomId) { succeed, result, _ in
            //: self.isEnterRoomReq = false
            self.isEnterRoomReq = false
            //: guard succeed else { return }
            guard succeed else { return }
            // 2. 释放上个房间资源 (使用partyModel旧值)
            //: self.voiceRoomVC?.releaseAllResourceAndPop()
            self.voiceRoomVC?.modeRemove()

            // 3. 主播切房，需要关闭底部tabbar动效 (使用partyModel旧值)
            //: if String(self.partyModel.streamerInfo.uid) == EqualThen.share.loginUid {
            if String(self.partyModel.streamerInfo.uid) == EqualThen.share.loginUid {
                //: self.isParty = false
                self.isParty = false
            }

            // 4. 校验成功，解析模型（给partyModel重新赋值）
            //: guard let model = TalkingVoiceRoomModel.deserialize(from: result as? Dictionary) else {
            guard let model = TitleMeasurable.deserialize(from: result as? Dictionary) else {
                //: DeepKeyTamperReactiveCompatible.indexView(msg: "VOICEROOM: 切房模型解析失败。")
                DeepKeyTamperReactiveCompatible.indexView(msg: (String(str_cellValue)))
                //: self.func__showStatusBarErrorMsg(showMsg: "Party room exception".localized)
                self.oversight(showMsg: (String(str_nextFrameName) + String(str_colorTitle) + String(str_loadLabelName)).localized)
                //: return
                return
            }
            //: self.partyModel = model
            self.partyModel = model

            // 5. 创建语聊房UI，同时调用sdk切房
            //: self.voiceRoomVC = TalkingVoiceRoomViewController()
            self.voiceRoomVC = SourceManagerDelegate()
            //: self.getNavigationController()?.pushViewController(self.voiceRoomVC!, animated: true)
            self.getApp()?.pushViewController(self.voiceRoomVC!, animated: true)
            //: self.miniView.refreshMiniView()
            self.miniView.afterFor()
            //: self.miniView.isHidden = true
            self.miniView.isHidden = true
            //: self.voiceRoom_switch(beforeRoomId: beforeRoomId)
            self.pastSize(beforeRoomId: beforeRoomId)
            //: self.isParty = true
            self.isParty = true
            //: self.isSmallMode = false
            self.isSmallMode = false

            // 6. 埋点
            //: uploadRecord.uploadRecordEvent(eventID: "\(click_partyDetail_enter)_\(EqualThen.share.loginUserMode.sex == Gender.male.rawValue ? "male" : "female")")
            kLet_textData.historicalPaper(eventID: "\(kLet_bottomInviteValue)_\(EqualThen.share.loginUserMode.sex == RunReplaceableCollection.male.rawValue ? String(bytes: str_makeName.map{nextAdd(time: $0)}, encoding: .utf8)! : (str_emptyName.replacingOccurrences(of: "request", with: "al")))")

            // 7. 初始化弹幕群聊
            //: TalkingDanmuManager.joinLiveRoomDanmu(groupId: self.partyModel.chatGroupId, announcementMsg: self.partyModel.notification) { succeed in
            UserListBankManagerReactiveCompatible.pathCell(groupId: self.partyModel.chatGroupId, announcementMsg: self.partyModel.notification) { succeed in
                //: if succeed == false {
                if succeed == false {
                    //: DeepKeyTamperReactiveCompatible.indexView(msg: "VOICEROOM: 群聊切房失败。groupId: \(self.partyModel.chatGroupId).")
                    DeepKeyTamperReactiveCompatible.indexView(msg: (String(str_turnGiftName) + String(str_smallTitle) + String(str_resultContent)) + "\(self.partyModel.chatGroupId).")
                    //: self.func__showStatusBarErrorMsg(showMsg: "Party room exception".localized)
                    self.oversight(showMsg: (String(str_nextFrameName) + String(str_colorTitle) + String(str_loadLabelName)).localized)
                    //: self.voiceRoom_releaseAllResource()
                    self.fastening()
                }
            }
        }
    }
}

// MARK: - Public Event

//: extension TalkingVoiceRoomManager {
extension ViewRoomManager {
    /// 最小化语聊房
    //: func voiceRoom_mini() {
    func singingVoice() {
        //: isSmallMode = true
        isSmallMode = true
        //: miniView.isHidden = false
        miniView.isHidden = false
        //: voiceRoomVC?.popCurrentViewController()
        voiceRoomVC?.orbitEqual()
    }

    /// 返回语聊房
    //: func voiceRoom_goback() {
    func titleEqual() {
        //: isSmallMode = false
        isSmallMode = false
        //: miniView.isHidden = true
        miniView.isHidden = true
        //: guard voiceRoomVC != nil else { return }
        guard voiceRoomVC != nil else { return }
        //: guard let currentVC = currentViewController() else { return }
        guard let currentVC = infoController() else { return }
        // 如果顶部视图是私信页，先返回列表，避免多个私信页消息同步问题
        //: if currentVC.isKind(of: TalkingPrivateChatController.self) {
        if currentVC.isKind(of: SendReactiveCompatible.self) {
            //: if var vcArr = currentVC.navigationController?.viewControllers {
            if var vcArr = currentVC.navigationController?.viewControllers {
                //: vcArr.removeLast()
                vcArr.removeLast()
                //: vcArr.append(voiceRoomVC!)
                vcArr.append(voiceRoomVC!)
                //: currentVC.navigationController?.setViewControllers(vcArr, animated: true)
                currentVC.navigationController?.setViewControllers(vcArr, animated: true)
            }
            //: } else {
        } else {
            //: currentVC.navigationController?.pushViewController(voiceRoomVC!, animated: true)
            currentVC.navigationController?.pushViewController(voiceRoomVC!, animated: true)
        }
    }

    /// 销毁语聊房所有资源
    //: func voiceRoom_releaseAllResource() {
    func fastening() {
        //: DispatchQueue.main.async {
        DispatchQueue.main.async {
            //: self.isParty = false
            self.isParty = false // 有通知监听，需置为false
            //: UIApplication.shared.isIdleTimerDisabled = false
            UIApplication.shared.isIdleTimerDisabled = false // 恢复息屏
            //: self.miniView.removeFromSuperview()
            self.miniView.removeFromSuperview() // 移除小窗口
            //: self.voiceRoomVC?.releaseAllResourceAndPop()
            self.voiceRoomVC?.modeRemove() // 将语聊房视图从栈中移除并释放资源
            //: if self.partyModel.position >= 0 {
            if self.partyModel.position >= 0 { // 退房下麦
                //: self.voiceRoom_reqChangeMike(type: 2, position: self.partyModel.position)
                self.endPosition(type: 2, position: self.partyModel.position)
            }
            //: ZegoExpressEngine.shared().logoutRoom()
            ZegoExpressEngine.shared().logoutRoom() // 退出房间
            //: ZegoExpressEngine.destroy(nil)
            ZegoExpressEngine.destroy(nil) // 销毁引擎
            //: TalkingVoiceRoomManager.destroy()
            ViewRoomManager.onUser() // 销毁当前单例
        }
    }
}

// MARK: - Private Event

//: extension TalkingVoiceRoomManager {
extension ViewRoomManager {
    /// 创建语聊房
    //: private func voiceRoom_create() {
    private func visualisation() {
        // 创建引擎
        //: let profile = ZegoEngineProfile()
        let profile = ZegoEngineProfile()
        //: profile.appID = MacroDefine.getVoiceRoomAppId()
        profile.appID = UserMacroDefine.equalId()
        //: profile.scenario = .standardChatroom
        profile.scenario = .standardChatroom
        //: ZegoExpressEngine.createEngine(with: profile, eventHandler: self)
        ZegoExpressEngine.createEngine(with: profile, eventHandler: self)
        // 进阶配置，进入房间
        //: let config = ZegoRoomConfig()
        let config = ZegoRoomConfig()
        //: config.token = partyModel.token
        config.token = partyModel.token
        //: let user = ZegoUser(userID: EqualThen.share.loginUid)
        let user = ZegoUser(userID: EqualThen.share.loginUid)
        //: ZegoExpressEngine.shared().loginRoom(partyModel.roomId, user: user, config: config)
        ZegoExpressEngine.shared().loginRoom(partyModel.roomId, user: user, config: config)
    }

    /// 切换语聊房
    /// - Parameter beforeRoomId: 上一房间Id
    //: private func voiceRoom_switch(beforeRoomId: String) {
    private func pastSize(beforeRoomId: String) {
        //: let config = ZegoRoomConfig()
        let config = ZegoRoomConfig()
        //: config.token = partyModel.token
        config.token = partyModel.token
        //: ZegoExpressEngine.shared().switchRoom(beforeRoomId, toRoomID: partyModel.roomId, config: config)
        ZegoExpressEngine.shared().switchRoom(beforeRoomId, toRoomID: partyModel.roomId, config: config)
    }
}

// MARK: - ZegoEventHandler

//: extension TalkingVoiceRoomManager: ZegoEventHandler {
extension ViewRoomManager: ZegoEventHandler {
    // MARK: - 进房/切房 监听回调

    /// 进房/切房 回调
    //: func onRoomStateChanged(_ reason: ZegoRoomStateChangedReason, errorCode: Int32, extendedData: [AnyHashable: Any], roomID: String) {
    func onRoomStateChanged(_ reason: ZegoRoomStateChangedReason, errorCode: Int32, extendedData: [AnyHashable: Any], roomID: String) {
        //: guard roomID == partyModel.roomId else { return }
        guard roomID == partyModel.roomId else { return }
        //: if errorCode == 0, reason == .logined {
        if errorCode == 0, reason == .logined { // 进房成功
            // 启动声浪等级监控
            //: ZegoExpressEngine.shared().startSoundLevelMonitor()
            ZegoExpressEngine.shared().startSoundLevelMonitor()
            // 开启音量稳定控制
            //: ZegoExpressEngine.shared().enableAEC(true)
            ZegoExpressEngine.shared().enableAEC(true)
            // 获取嘉宾列表接口
            //: TalkingVoiceRoomReqTool.req_getMikeList(roomId: partyModel.roomId) { list in
            SurgeryReqTool.screenCompletion(roomId: partyModel.roomId) { list in
                // 保存麦位列表信息
                //: for (key, value) in list.enumerated() {
                for (key, value) in list.enumerated() {
                    //: self.modifyMikePosition(key: key, model: value)
                    self.messageDoing(key: key, model: value)
                }
                // 刷新麦位列表UI
                //: self.voiceRoomVC?.mikePositionView.refreshAllMikeView()
                self.voiceRoomVC?.mikePositionView.commitView()
                // 房主首次创建房间，主动上麦
                //: if self.partyModel.userRole == VoiceRoomRole.host.rawValue, self.partyModel.isCreate == true {
                if self.partyModel.userRole == ParadigmExpressionConvertible.host.rawValue, self.partyModel.isCreate == true {
                    //: self.voiceRoom_reqChangeMike(type: 1, position: 0)
                    self.endPosition(type: 1, position: 0)
                }
            }

            //: } else if reason == .logining || reason == .reconnectFailed || reason == .reconnecting || reason == .reconnected {
        } else if reason == .logining || reason == .reconnectFailed || reason == .reconnecting || reason == .reconnected {
            //: if errorCode == 0, reason == .reconnected {
            if errorCode == 0, reason == .reconnected { // 重连成功
                //: TalkingVoiceRoomReqTool.req_getMikeList(roomId: partyModel.roomId) { list in
                SurgeryReqTool.screenCompletion(roomId: partyModel.roomId) { list in
                    // 更新麦位列表信息
                    //: for (key, value) in list.enumerated() {
                    for (key, value) in list.enumerated() {
                        //: self.modifyMikePosition(key: key, model: value)
                        self.messageDoing(key: key, model: value)
                        //: if String(value.uid) == EqualThen.share.loginUid {
                        if String(value.uid) == EqualThen.share.loginUid {
                            //: if value.mikeStatus == 1 {
                            if value.mikeStatus == 1 { // 房主闭麦
                                //: ZegoExpressEngine.shared().stopPublishingStream()
                                ZegoExpressEngine.shared().stopPublishingStream()
                                //: } else {
                            } else {
                                //: let streamID = self.voiceRoom_getStreamID()
                                let streamID = self.corner()
                                //: ZegoExpressEngine.shared().startPublishingStream(streamID)
                                ZegoExpressEngine.shared().startPublishingStream(streamID)
                                //: let isMute = value.mikeStatus == 0 ? true : false
                                let isMute = value.mikeStatus == 0 ? true : false
                                //: ZegoExpressEngine.shared().mutePublishStreamAudio(isMute)
                                ZegoExpressEngine.shared().mutePublishStreamAudio(isMute)
                            }
                        }
                    }
                    // 刷新麦位列表UI
                    //: self.voiceRoomVC?.mikePositionView.refreshAllMikeView()
                    self.voiceRoomVC?.mikePositionView.commitView()
                }
                //: } else if errorCode != 0 {
            } else if errorCode != 0 {
                // 进房失败埋点
                //: uploadRecord.uploadRecordEvent(eventID: click_partyTab_creParty_fail, parameterStr: ["errCode": String(errorCode)])
                kLet_textData.pictureOf(eventID: kLet_viewTitle, parameterStr: [String(bytes: str_listData.map{valueTo(icon: $0)}, encoding: .utf8)!: String(errorCode)])
            }

            //: } else {
        } else { // 进房失败
            //: if errorCode == 1002055 || errorCode == 1002050 {
            if errorCode == 1_002_055 || errorCode == 1_002_050 { // 用户退出 || 被踢出房间
                //: let json = JSON(extendedData)
                let json = JSON(extendedData)
                //: let value = json["custom_kickout_message"].stringValue
                let value = json[(String(str_appData) + str_maxValue.replacingOccurrences(of: "error", with: "g"))].stringValue
                //: if value == "closeRoom" || value == "adminCloseRoom" { // 关闭房间
                if value == (String(str_actualSessionValue.suffix(7)) + str_ofText.replacingOccurrences(of: "message", with: "m")) || value == (str_closeName.replacingOccurrences(of: "player", with: "in") + "Clos" + String(str_imageText.suffix(5))) { // 关闭房间
                    //: voiceRoom_releaseAllResource()
                    fastening()
                    //: let config = ShowAlertConfig()
                    let config = AtAlertConfig()
                    //: config.alignment = .center
                    config.alignment = .center
                    //: TalkingAlertShow.customAlert(message: "The room is closed, please go to another room".localized, rightBtnTitle: "OK".localized, rightBlock: {
                    MotilityThen.customLabel(message: String(bytes: str_dateName.map{selfEnd(sound: $0)}, encoding: .utf8)!.localized, rightBtnTitle: "OK".localized, rightBlock: {
                        // 跳转到首页tab-party
                        //: NotificationCenter.default.post(name: SWITCH_TABBAR_HOME_PARTY_NOTIFICATION, object: nil, userInfo: nil)
                        NotificationCenter.default.post(name: kLet_videoAgeHeightData, object: nil, userInfo: nil)
                        //: }, config: config)
                    }, config: config)

                    //: } else {
                } else { // 被踢出房间
                    //: func__showStatusBarErrorMsg(showMsg: "You were kicked out of the room".localized)
                    oversight(showMsg: String(bytes: str_headData.map{$0^174}, encoding: .utf8)!.localized)
                }

                //: } else {
            } else {
                //: DeepKeyTamperReactiveCompatible.indexView(msg: "VOICEROOM：进房失败，roomID: \(roomID), error: \(errorCode), reason: \(reason), extendedData: \(extendedData).")
                DeepKeyTamperReactiveCompatible.indexView(msg: (str_rowText.replacingOccurrences(of: "moment", with: "I") + "ROOM" + str_pageText + "，roo" + String(str_upValue.suffix(4)) + str_edgeValue.replacingOccurrences(of: "read", with: " ")) + "\(roomID)" + (str_colorText.replacingOccurrences(of: "cover", with: ",") + String(str_scaleValue.suffix(7))) + "\(errorCode)" + (String(str_valueText)) + "\(reason)" + (String(str_bottomName.suffix(4)) + "tend" + str_viewNextTitle.replacingOccurrences(of: "tap", with: "e") + String(str_popName.suffix(6))) + "\(extendedData).")
                //: func__showStatusBarErrorMsg(showMsg: "Party room exception".localized)
                oversight(showMsg: (String(str_nextFrameName) + String(str_colorTitle) + String(str_loadLabelName)).localized)
                // 进房失败埋点
                //: uploadRecord.uploadRecordEvent(eventID: click_partyTab_creParty_fail, parameterStr: ["errCode": String(errorCode)])
                kLet_textData.pictureOf(eventID: kLet_viewTitle, parameterStr: [String(bytes: str_listData.map{valueTo(icon: $0)}, encoding: .utf8)!: String(errorCode)])
            }
            //: voiceRoom_releaseAllResource()
            fastening()
        }
    }

    // MARK: - 推流回调

    /// 当前用户推流状态回调
    //: func onPublisherStateUpdate(_ state: ZegoPublisherState, errorCode: Int32, extendedData: [AnyHashable: Any]?, streamID: String) {
    func onPublisherStateUpdate(_: ZegoPublisherState, errorCode: Int32, extendedData _: [AnyHashable: Any]?, streamID: String) {
        //: guard errorCode == 0 || errorCode == 1003020 || errorCode == 1002055 else {
        guard errorCode == 0 || errorCode == 1_003_020 || errorCode == 1_002_055 else { // 推流失败，用户下麦
            //: DeepKeyTamperReactiveCompatible.indexView(msg: "VOICEROOM: 当前用户推流失败，roomID: \(partyModel.roomId), errorCode: \(errorCode), streamID: \(streamID).")
            DeepKeyTamperReactiveCompatible.indexView(msg: (String(str_liveTitle)) + "\(partyModel.roomId)" + (String(str_barName)) + "\(errorCode)" + (String(str_frameName) + String(str_viewName)) + "\(streamID).")
            //: func__showStatusBarErrorMsg(showMsg: "An error occurred, please try again".localized)
            oversight(showMsg: String(bytes: str_frontValue.map{cellReturn(pic: $0)}, encoding: .utf8)!.localized)
            //: let dict = getAllMikePositions()
            let dict = valuePositions()
            //: for (position, model) in dict where String(model.uid) == EqualThen.share.loginUid {
            for (position, model) in dict where String(model.uid) == EqualThen.share.loginUid {
                //: voiceRoom_reqChangeMike(type: 2, position: position)
                endPosition(type: 2, position: position)
                //: resetMikePosition(position: position, model: model)
                equalBy(position: position, model: model)
            }
            //: if errorCode == 1002078 {
            if errorCode == 1_002_078 { // token过期，关闭房间
                //: voiceRoom_releaseAllResource()
                fastening()
            }
            //: return
            return
        }
    }

    // MARK: - 拉流回调

    /// 当前用户拉流状态回调
    //: func onPlayerStateUpdate(_ state: ZegoPlayerState, errorCode: Int32, extendedData: [AnyHashable: Any]?, streamID: String) {
    func onPlayerStateUpdate(_: ZegoPlayerState, errorCode: Int32, extendedData _: [AnyHashable: Any]?, streamID: String) {
        //: guard errorCode == 0 else {
        guard errorCode == 0 else { // 拉流失败
            //: DeepKeyTamperReactiveCompatible.indexView(msg: "VOICEROOM: 拉流失败，roomID: \(partyModel.roomId), errorCode: \(errorCode), streamID: \(streamID).")
            DeepKeyTamperReactiveCompatible.indexView(msg: (str_arrayTouchData.uppercased() + "OOM:" + str_receiveData + String(str_adjustName.suffix(5)) + "ID: ") + "\(partyModel.roomId)" + (String(str_barName)) + "\(errorCode)" + (String(str_frameName) + String(str_viewName)) + "\(streamID).")
            //: if errorCode == 1002078 {
            if errorCode == 1_002_078 { // token过期，关闭房间
                //: voiceRoom_releaseAllResource()
                fastening()
            }

            //: return
            return
        }
    }

    // MARK: - 流更新回调

    /// 流更新回调
    //: func onRoomStreamUpdate(_ updateType: ZegoUpdateType, streamList: [ZegoStream], extendedData: [AnyHashable: Any]?, roomID: String) {
    func onRoomStreamUpdate(_ updateType: ZegoUpdateType, streamList: [ZegoStream], extendedData _: [AnyHashable: Any]?, roomID: String) {
        //: guard roomID == partyModel.roomId else { return }
        guard roomID == partyModel.roomId else { return }
        //: switch updateType {
        switch updateType {
        //: case .add:
        case .add:
            //: streamList.forEach { zego in
            for zego in streamList {
                // 开始拉流
                //: ZegoExpressEngine.shared().startPlayingStream(zego.streamID)
                ZegoExpressEngine.shared().startPlayingStream(zego.streamID)
            }

        //: case .delete:
        case .delete:
            //: streamList.forEach { zego in
            for zego in streamList {
                // 停止拉流
                //: ZegoExpressEngine.shared().stopPlayingStream(zego.streamID)
                ZegoExpressEngine.shared().stopPlayingStream(zego.streamID)
            }

        //: @unknown default:
        @unknown default:
            //: fatalError()
            fatalError()
        }
    }

    // MARK: - 声浪等级监听回调

    /// 本地声浪等级
    //: func onCapturedSoundLevelUpdate(_ soundLevel: NSNumber) {
    func onCapturedSoundLevelUpdate(_ soundLevel: NSNumber) {
        //: guard Int(truncating: soundLevel) > 0 else { return }
        guard Int(truncating: soundLevel) > 0 else { return }
        //: voiceRoomVC?.mikePositionView.refreshSoundLevelAnimation(position: partyModel.position, level: soundLevel)
        voiceRoomVC?.mikePositionView.sameLevel(position: partyModel.position, level: soundLevel)
    }

    /// 远端声浪等级
    //: func onRemoteSoundLevelUpdate(_ soundLevels: [String: NSNumber]) {
    func onRemoteSoundLevelUpdate(_ soundLevels: [String: NSNumber]) {
        //: let dict = getAllMikePositions()
        let dict = valuePositions()
        //: for (streamID, level) in soundLevels {
        for (streamID, level) in soundLevels {
            //: let components = streamID.split(separator: "-").map(String.init)
            let components = streamID.split(separator: "-").map(String.init)
            //: guard components.count > 2 else { continue }
            guard components.count > 2 else { continue }
            //: if let position = dict.first(where: { String($0.value.uid) == components[1] })?.key {
            if let position = dict.first(where: { String($0.value.uid) == components[1] })?.key {
                //: voiceRoomVC?.mikePositionView.refreshSoundLevelAnimation(position: position, level: level)
                voiceRoomVC?.mikePositionView.sameLevel(position: position, level: level)
            }
        }
    }

    // MARK: - 信令

    /// 上麦、下麦、锁麦、解锁麦、切麦操作会收到后端下发信令
    //: func onIMRecvCustomCommand(_ command: String, from fromUser: ZegoUser, roomID: String) {
    func onIMRecvCustomCommand(_ command: String, from _: ZegoUser, roomID: String) {
        //: guard roomID == partyModel.roomId else { return }
        guard roomID == partyModel.roomId else { return }
        //: guard let decodedStr = command.removingPercentEncoding else {
        guard let decodedStr = command.removingPercentEncoding else {
            //: DeepKeyTamperReactiveCompatible.indexView(msg: "VOICEROOM: 信令解析失败，command: \(command), roomID: \(roomID).")
            DeepKeyTamperReactiveCompatible.indexView(msg: (str_secondData.uppercased() + "ROOM" + String(str_fullValue) + str_contentData + "mmand: ") + "\(command)" + (String(str_thanText.suffix(5)) + "mID: ") + "\(roomID).")
            //: return
            return
        }
        // 更新麦位信息，刷新列表UI
        //: let json = JSON(parseJSON: decodedStr)
        let json = JSON(parseJSON: decodedStr)
        //: let position = json["data"]["position"].intValue
        let position = json[(str_toTitle.replacingOccurrences(of: "index", with: "a"))][(str_valueTitle.replacingOccurrences(of: "camera", with: "it") + String(str_whiteAppearanceData))].intValue
        //: guard position < MIKE_SEAT_COUNT else { return }
        guard position < kLet_imageSystemTitle else { return }
        //: guard let mikeModel = TalkingMikeListItemModel.deserialize(from: json["data"].dictionaryObject) else { return }
        guard let mikeModel = WithTransformable.deserialize(from: json[(str_toTitle.replacingOccurrences(of: "index", with: "a"))].dictionaryObject) else { return }
        //: printLog(message: "xxxx-- \(json.rawValue)")
        printLog(message: (String(str_leadingValue.suffix(7))) + "\(json.rawValue)")
        //: if json["opType"].stringValue == "party:changeMike" { // 房主/观众 麦位操作信令
        if json[(String(str_tempTitle.suffix(6)))].stringValue == (str_makeTitle.replacingOccurrences(of: "user", with: "r") + "y:ch" + String(str_itemPostName.prefix(8))) { // 房主/观众 麦位操作信令
            //: let type = json["data"]["type"].intValue
            let type = json[(str_toTitle.replacingOccurrences(of: "index", with: "a"))][(str_targetTitle.replacingOccurrences(of: "color", with: "e"))].intValue
            //: switch type {
            switch type {
            //: case 1:
            case 1: // 上麦
                //: mikeModel.needGift = true
                mikeModel.needGift = true
                //: updateMikePosition(position: position, model: mikeModel)
                sign(position: position, model: mikeModel)

            //: case 2:
            case 2: // 下麦
                //: if let oldModel = getMikePosition(key: position) {
                if let oldModel = followThrough(key: position) {
                    //: resetMikePosition(position: position, model: oldModel)
                    equalBy(position: position, model: oldModel)
                }

            //: case 3:
            case 3: // 切麦
                //: resetMikePosition(position: position, model: mikeModel)
                equalBy(position: position, model: mikeModel)
                //: let toPosition = json["data"]["toPosition"].intValue
                let toPosition = json[(str_toTitle.replacingOccurrences(of: "index", with: "a"))][(String(str_pageValue.prefix(4)) + "sition")].intValue
                //: mikeModel.needGift = true
                mikeModel.needGift = true
                //: updateMikePosition(position: toPosition, model: mikeModel)
                sign(position: toPosition, model: mikeModel)

            //: case 4, 5:
            case 4, 5: // 开麦、闭麦
                //: updateMikePosition(position: position, model: mikeModel)
                sign(position: position, model: mikeModel)

            //: default:
            default:
                //: break
                break
            }
            // 刷新礼物面板头像
            //: if type == 1 || type == 2 || type == 3 {
            if type == 1 || type == 2 || type == 3 {
                //: voiceRoomVC?.bottomView.refreshGiftIcon()
                voiceRoomVC?.bottomView.accentuation()
            }

            //: } else if json["opType"].stringValue == "party:adminChangeMike" { // 房主对他人操作信令
        } else if json[(String(str_tempTitle.suffix(6)))].stringValue == (str_barTitle.replacingOccurrences(of: "selected", with: "p") + ":adm" + String(str_normalName.prefix(7)) + String(str_addLabToData.prefix(5))) { // 房主对他人操作信令
            //: switch json["data"]["type"].intValue {
            switch json[(str_toTitle.replacingOccurrences(of: "index", with: "a"))][(str_targetTitle.replacingOccurrences(of: "color", with: "e"))].intValue {
            //: case 1, 2:
            case 1, 2: // 锁麦、解锁麦
                //: updateMikePosition(position: position, model: mikeModel)
                sign(position: position, model: mikeModel)

            //: case 3:
            case 3: // 踢下麦
                //: if let oldModel = getMikePosition(key: position) {
                if let oldModel = followThrough(key: position) {
                    //: resetMikePosition(position: position, model: oldModel)
                    equalBy(position: position, model: oldModel)
                    // 刷新礼物面板头像
                    //: voiceRoomVC?.bottomView.refreshGiftIcon()
                    voiceRoomVC?.bottomView.accentuation()
                    //: guard String(oldModel.uid) == EqualThen.share.loginUid else { return }
                    guard String(oldModel.uid) == EqualThen.share.loginUid else { return }
                    //: ZegoExpressEngine.shared().stopPublishingStream()
                    ZegoExpressEngine.shared().stopPublishingStream()
                    //: func__showStatusBarErrorMsg(showMsg: "You were kicked off the seat".localized)
                    oversight(showMsg: (String(str_tableValue) + String(str_atText) + String(str_genderValue)).localized)
                }

            //: case 4:
            case 4: // 开麦
                //: updateMikePosition(position: position, model: mikeModel)
                sign(position: position, model: mikeModel)
                //: guard String(mikeModel.uid) == EqualThen.share.loginUid else { return }
                guard String(mikeModel.uid) == EqualThen.share.loginUid else { return }
                //: ZegoExpressEngine.shared().mutePublishStreamAudio(false)
                ZegoExpressEngine.shared().mutePublishStreamAudio(false)

            //: case 5:
            case 5: // 闭麦
                //: updateMikePosition(position: position, model: mikeModel)
                sign(position: position, model: mikeModel)
                //: guard String(mikeModel.uid) == EqualThen.share.loginUid else { return }
                guard String(mikeModel.uid) == EqualThen.share.loginUid else { return }
                //: ZegoExpressEngine.shared().mutePublishStreamAudio(true)
                ZegoExpressEngine.shared().mutePublishStreamAudio(true)

            //: default:
            default:
                //: break
                break
            }

            //: } else if json["opType"].stringValue == "party:changeCoin" { // 更新用户麦位金币
        } else if json[(String(str_tempTitle.suffix(6)))].stringValue == (str_somebodyValue.replacingOccurrences(of: "color", with: "t") + ":chan" + String(str_maxName.suffix(6))) { // 更新用户麦位金币
            //: TalkingVoiceRoomManager.shared().getAllMikePositions().forEach { position, model in
            for (position, model) in ViewRoomManager.astatine().valuePositions() {
                //: if model.uid == mikeModel.uid {
                if model.uid == mikeModel.uid {
                    //: model.coin = mikeModel.coin
                    model.coin = mikeModel.coin
                    //: updateMikePosition(position: position, model: model)
                    sign(position: position, model: model)
                    //: return
                    continue
                }
            }

            //: } else if json["opType"].stringValue == "party:closeStream" { // 推流失败
        } else if json[(String(str_tempTitle.suffix(6)))].stringValue == (String(str_layerName)) { // 推流失败
            //: ZegoExpressEngine.shared().stopPublishingStream()
            ZegoExpressEngine.shared().stopPublishingStream()
        }
    }
}

// MARK: - 信令处理

//: extension TalkingVoiceRoomManager {
extension ViewRoomManager {
    /// 更新麦位数据，刷新UI
    /// - Parameters:
    ///   - position: 麦位
    ///   - model: 数据
    //: private func updateMikePosition(position: Int, model: TalkingMikeListItemModel) {
    private func sign(position: Int, model: WithTransformable) {
        //: modifyMikePosition(key: position, model: model)
        messageDoing(key: position, model: model)
        //: voiceRoomVC?.mikePositionView.refreshSingleMikeView(position: position)
        voiceRoomVC?.mikePositionView.jumpOut(position: position)
        //: updateBottomMicStatusIfCurrentUser(uid: model.uid)
        militaryQuartersUid(uid: model.uid)
    }

    /// 重置麦位数据，刷新UI
    /// - Parameters:
    ///   - position: 麦位
    ///   - model: 数据
    //: private func resetMikePosition(position: Int, model: TalkingMikeListItemModel) {
    private func equalBy(position: Int, model: WithTransformable) {
        //: modifyMikePosition(key: position, model: TalkingMikeListItemModel())
        messageDoing(key: position, model: WithTransformable())
        //: voiceRoomVC?.mikePositionView.refreshSingleMikeView(position: position)
        voiceRoomVC?.mikePositionView.jumpOut(position: position)
        //: updateBottomMicStatusIfCurrentUser(uid: model.uid)
        militaryQuartersUid(uid: model.uid)
    }

    /// 更新本人麦位、底部麦克风状态
    /// - Parameter uid: 用户Id
    //: private func updateBottomMicStatusIfCurrentUser(uid: Int) {
    private func militaryQuartersUid(uid: Int) {
        //: guard String(uid) == EqualThen.share.loginUid else { return }
        guard String(uid) == EqualThen.share.loginUid else { return }
        //: let dict = getAllMikePositions()
        let dict = valuePositions()
        //: if let position = dict.first(where: { $0.value.uid == uid })?.key {
        if let position = dict.first(where: { $0.value.uid == uid })?.key {
            //: partyModel.position = position
            partyModel.position = position
            //: } else {
        } else {
            //: partyModel.position = -1
            partyModel.position = -1
        }
        //: voiceRoomVC?.bottomView.refreshBottomMicStatus()
        voiceRoomVC?.bottomView.cameraTo()
    }
}

// MARK: - 麦位字典安全操作

//: extension TalkingVoiceRoomManager {
extension ViewRoomManager {
    /// 获取初始化模型
    //: private func initMikePosition() -> [Int: TalkingMikeListItemModel] {
    private func viewIn() -> [Int: WithTransformable] {
        //: for index in 0 ..< MIKE_SEAT_COUNT {
        for index in 0 ..< kLet_imageSystemTitle {
            //: modifyMikePosition(key: index, model: TalkingMikeListItemModel())
            messageDoing(key: index, model: WithTransformable())
        }
        //: return mikePositionDict
        return mikePositionDict
    }

    /// 添加/修改 麦位
    //: func modifyMikePosition(key: Int, model: TalkingMikeListItemModel) {
    func messageDoing(key: Int, model: WithTransformable) {
        //: mplock.lock()
        mplock.lock()
        //: defer { mplock.unlock() }
        defer { mplock.unlock() }
        //: mikePositionDict[key] = model
        mikePositionDict[key] = model
    }

    /// 获取麦位
    //: func getMikePosition(key: Int) -> TalkingMikeListItemModel? {
    func followThrough(key: Int) -> WithTransformable? {
        //: mplock.lock()
        mplock.lock()
        //: defer { mplock.unlock() }
        defer { mplock.unlock() }
        //: return mikePositionDict[key]
        return mikePositionDict[key]
    }

    /// 获取所有麦位
    //: func getAllMikePositions() -> [Int: TalkingMikeListItemModel] {
    func valuePositions() -> [Int: WithTransformable] {
        //: mplock.lock()
        mplock.lock()
        //: defer { mplock.unlock() }
        defer { mplock.unlock() }
        //: return mikePositionDict
        return mikePositionDict
    }
}
