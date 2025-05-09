
//: Declare String Begin

/*: "rYMsgType" :*/
fileprivate let str_removeFinishData:String = "add main titlerYMsgTy"
fileprivate let str_giftTitle:[Character] = ["p","e"]

/*: "GJ:CallCustom" :*/
fileprivate let str_mentionContent:String = "in labelGJ:Ca"
fileprivate let str_resultData:[Character] = ["t","o","m"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  SendNotificationManager.swift
//  AbroadTalking
//
//  Created by young on 2023/5/29.
//

//: import UIKit
import UIKit

//: class TalkingMessageNotificationManager: NSObject {
class SendNotificationManager: NSObject {
    //: private var showView: TalkingMessageNotificationView?
    private var showView: ViewThen? // 当前View
    //: private var preView: TalkingMessageNotificationView?
    private var preView: ViewThen? // 旧的View
    //: private var canShowNext = true
    private var canShowNext = true // 是否可展示下一个视图
    //: private let lock = DispatchSemaphore(value: 1)
    private let lock = DispatchSemaphore(value: 1) // 信号锁

    // singleton
    //: static var shared = TalkingMessageNotificationManager()
    static var shared = SendNotificationManager()
    //: private override init() {
    override private init() {
        //: super.init()
        super.init()
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(clearData),
                                               selector: #selector(effect),
                                               //: name: DID_LOGIN_OUT_SUCCESS_NOTIFICATION,
                                               name: kLet_useName,
                                               //: object: nil)
                                               object: nil)
    }

    /// 清除数据
    //: @objc func clearData() {
    @objc func effect() {
        //: if self.preView != nil {
        if self.preView != nil {
            //: self.preView?.dismiss()
            self.preView?.ignoreEndAlpha()
        }
        //: if self.showView != nil {
        if self.showView != nil {
            //: self.showView?.dismiss()
            self.showView?.ignoreEndAlpha()
        }
        //: self.msgIdDict.removeAll()
        self.msgIdDict.removeAll()
        //: self.msgArr.removeAll()
        self.msgArr.removeAll()
        // 延迟还原状态，防止并发
        //: DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
            //: self.canShowNext = true
            self.canShowNext = true
        }
    }

    // MARK: - Lazy Load

    // 存储当前数组中的消息ID，避免遍历
    //: private lazy var msgIdDict: [String: Bool] = {
    private lazy var msgIdDict: [String: Bool] = //: return [String: Bool]()
        .init()
    //: }()

    // 需要展示的消息
    //: private lazy var msgArr: [TalkingConversationModel] = {
    private lazy var msgArr: [LengthReactiveCompatible] = //: return [LengthReactiveCompatible]()
        .init()
    //: }()
}

// MARK: - 展示消息通知

//: extension TalkingMessageNotificationManager {
extension SendNotificationManager {
    /// 处理接收到的TX消息，展示消息通知
    /// - Parameters:
    ///   - msg: V2TIMMessage
    ///   - dataDict: 消息字典
    //: func onRecvNewMessage(msg: V2TIMMessage, dataDict: [String: Any]) {
    func totalimate(msg: V2TIMMessage, dataDict: [String: Any]) {
        //: guard EqualThen.share.appStatus == AppSkinStatus.normal.rawValue else { return }
        guard EqualThen.share.appStatus == PhaseOfTheMoonPropertyProtocol.normal.rawValue else { return }
        // 1. 过滤不需要处理的消息（只在指定画面展示）
        //: guard self.msgIdDict[msg.sender] != true else { return }
        guard self.msgIdDict[msg.sender] != true else { return }
        //: guard videoCheckDisplayable() == true || homeCheckDisplayable() == true else { return }
        guard equalDisplayable() == true || query() == true else { return }
        //: guard msg.userID != MacroDefine.getCustomerServiceID() && msg.userID != MacroDefine.getXiaoMiID() else {
        guard msg.userID != UserMacroDefine.addTap(), msg.userID != UserMacroDefine.underGet() else {
            //: return
            return
        }
        //: let contenType = TUISocialChatManager.messageCellType(dataDict)
        let contenType = TUISocialChatManager.messageCellType(dataDict)
        // 提示消息
        //: if contenType == TXMessageContentType_tips { return }
        if contenType == TXMessageContentType_tips { return }
        // 匹配消息
        //: if contenType == TXMessageContentType_local { return }
        if contenType == TXMessageContentType_local { return }
        // 礼物消息
        //: if contenType == TXMessageContentType_gift { return }
        if contenType == TXMessageContentType_gift { return }
        // 音视频通话消息
        //: if contenType == TXMessageContentType_text && dataDict["rYMsgType"] as? String == "GJ:CallCustom" {
        if contenType == TXMessageContentType_text, dataDict[(String(str_removeFinishData.suffix(7)) + String(str_giftTitle))] as? String == (String(str_mentionContent.suffix(5)) + "llCus" + String(str_resultData)) {
            //: return
            return
        }

        // 2. V2TIMMessage => LengthReactiveCompatible
        //: let model = TalkingConversationModel()
        let model = LengthReactiveCompatible()
        //: model.sender = msg.sender
        model.sender = msg.sender
        //: model.userID = msg.userID
        model.userID = msg.userID
        //: model.targetId = model.userID
        model.targetId = model.userID
        //: model.draftText = ""
        model.draftText = ""
        //: model.chatType = .private
        model.chatType = .private

        //: if let userInfo: SoulCacheModel = PermitReactiveCompatible.cache_getCachedUserInfo(targetId: model.targetId) {
        if let userInfo: SoulCacheModel = PermitReactiveCompatible.targetAppear(targetId: model.targetId) {
            //: model.gj_userInfo = userInfo
            model.gj_userInfo = userInfo
        }
        //: model.listShowMessage = msg
        model.listShowMessage = msg

        // 3. 数据加入队列，展示视图
        //: lock.wait()
        lock.wait()
        //: self.msgIdDict[model.sender] = true
        self.msgIdDict[model.sender] = true
        //: self.msgArr.append(model)
        self.msgArr.append(model)
        //: showNextNotificationView()
        upShow()
        //: lock.signal()
        lock.signal()
    }

    /// 展示弹窗消息
    //: private func showNextNotificationView() {
    private func upShow() {
        //: guard self.msgArr.count > 0 else { return }
        guard self.msgArr.count > 0 else { return }
        //: guard self.canShowNext == true else { return }
        guard self.canShowNext == true else { return }
        //: guard videoCheckDisplayable() == true || homeCheckDisplayable() == true else { return }
        guard equalDisplayable() == true || query() == true else { return }
        // 从队列中取出数据
        //: let firstModel = self.msgArr.first
        let firstModel = self.msgArr.first
        //: self.msgArr.removeFirst()
        self.msgArr.removeFirst()

        //: if self.showView != nil {
        if self.showView != nil { // 当前有视图在展示，延时隐藏
            //: self.preView = self.showView
            self.preView = self.showView
            //: DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                //: self.preView?.dismiss()
                self.preView?.ignoreEndAlpha()
            }
            //: self.showView = nil
            self.showView = nil
        }

        // 展示新视图
        //: self.canShowNext = false
        self.canShowNext = false
        //: let notifView = TalkingMessageNotificationView(frame: .zero)
        let notifView = ViewThen(frame: .zero)
        //: notifView.show(firstModel)
        notifView.upwardly(firstModel)
        //: self.showView = notifView
        self.showView = notifView
        // 开始移除视图，删除Id限制
        //: notifView.startDismissBlock = { [weak self] model in
        notifView.startDismissBlock = { [weak self] model in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.lock.wait()
            self.lock.wait()
            //: self.msgIdDict.removeValue(forKey: model.sender)
            self.msgIdDict.removeValue(forKey: model.sender)
            //: self.lock.signal()
            self.lock.signal()
        }
        // 完成移除视图，清空引用
        //: notifView.finishDismissBlock = { [weak self] view in
        notifView.finishDismissBlock = { [weak self] view in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: if view == self.preView {
            if view == self.preView {
                //: self.preView = nil
                self.preView = nil
                //: } else if view == self.showView {
            } else if view == self.showView {
                //: self.showView = nil
                self.showView = nil
            }
        }

        /// 1s之后查看是否有新视图展示
        //: DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
            //: self.canShowNext = true
            self.canShowNext = true
            //: self.showNextNotificationView()
            self.upShow()
        }
    }

    /// 检测音视频页是否可展示
    //: private func videoCheckDisplayable() -> Bool {
    private func equalDisplayable() -> Bool {
        //: guard let currentVC = currentViewController() else { return false }
        guard let currentVC = infoController() else { return false }
        //: if currentVC.isKind(of: TalkingVideoChatViewController.self) ||
        if currentVC.isKind(of: MakeCallerDelegate.self) ||
            //: currentVC.isKind(of: TalkingVoiceChatViewController.self) {
            currentVC.isKind(of: PtolemaicSystemViewController.self)
        {
            //: return true
            return true
        }
        //: return false
        return false
    }

    /// 检测一级页面是否可展示
    //: private func homeCheckDisplayable() -> Bool {
    private func query() -> Bool {
        //: guard let currentVC = currentViewController() else { return false }
        guard let currentVC = infoController() else { return false }
        //: if currentVC.isKind(of: TalkingSocialViewController.self) ||
        if currentVC.isKind(of: IndexViewController.self) ||
            //: currentVC.isKind(of: SocialPopularViewController.self) ||
            currentVC.isKind(of: DeviceSocialViewController.self) ||
            //: currentVC.isKind(of: TalkingMomentViewController.self) ||
            currentVC.isKind(of: BottomViewController.self) ||
            //: currentVC.isKind(of: TalkingLiveExplainViewController.self) ||
            currentVC.isKind(of: DeviceAddReactiveCompatible.self) ||
            //: currentVC.isKind(of: TalkingMeViewController.self) ||
            currentVC.isKind(of: CurrentViewController.self) ||
            //: currentVC.isKind(of: TalkingMaleMeController.self) {
            currentVC.isKind(of: ViewCustomDataSource.self)
        {
            //: if EqualThen.share.loginUserMode.sex == Gender.female.rawValue {
            if EqualThen.share.loginUserMode.sex == RunReplaceableCollection.female.rawValue {
                //: return true
                return true
            }
        }
        //: return false
        return false
    }
}
